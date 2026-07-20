using UnityEngine;

public class SkinApplier : MonoBehaviour
{
    public Material[] skinMaterials; // Los mismos 3 materiales, en el mismo orden que en ShopManager
    private Renderer playerRenderer;

    private void Start()
    {
        playerRenderer = GetComponent<Renderer>();
        ApplySelectedSkin();
    }

    private void ApplySelectedSkin()
    {
        int selectedSkin = PlayerPrefs.GetInt("SelectedSkin", 0);

        if (selectedSkin >= 0 && selectedSkin < skinMaterials.Length)
            playerRenderer.material = skinMaterials[selectedSkin];
    }
}