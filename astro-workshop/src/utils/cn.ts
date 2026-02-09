type ClassValue =
  | string
  | number
  | boolean
  | null
  | undefined
  | ClassValue[]
  | Record<string, unknown>;

function toClassNames(value: ClassValue): string[] {
  if (!value) return [];
  if (typeof value === "string" || typeof value === "number") return [String(value)];
  if (typeof value === "boolean") return [];

  if (Array.isArray(value)) {
    return value.flatMap(toClassNames);
  }

  if (typeof value === "object") {
    return Object.entries(value)
      .filter(([, v]) => Boolean(v))
      .map(([k]) => k);
  }

  return [];
}

export function cn(...values: ClassValue[]): string {
  return values.flatMap(toClassNames).join(" ").trim();
}

