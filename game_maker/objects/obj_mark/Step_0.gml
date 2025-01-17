// Lebensdauer verringern
lifetime--;

// Markierung entfernen, wenn die Zeit abgelaufen ist
if (lifetime <= 0) {
    instance_destroy();
}
