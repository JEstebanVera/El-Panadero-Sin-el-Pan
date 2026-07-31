using UnityEngine;

public class SkinApplier : MonoBehaviour
{
    //public Material[] skinMaterials; // Los mismos 3 materiales, en el mismo orden que en ShopManager
    //private Renderer playerRenderer;

    //private void Start()
    //{
    //    playerRenderer = GetComponent<Renderer>();
    //    ApplySelectedSkin();
    //}

    //private void ApplySelectedSkin()
    //{
    //    int selectedSkin = PlayerPrefs.GetInt("SelectedSkin", 0);

    //    if (selectedSkin >= 0 && selectedSkin < skinMaterials.Length)
    //        playerRenderer.material = skinMaterials[selectedSkin];
    //}

    public Material[] skinMaterials;
    private Renderer playerRenderer;

    private void Start()
    {
        playerRenderer = GetComponentInChildren<SkinnedMeshRenderer>();

        // Si no encuentra SkinnedMeshRenderer, intenta con MeshRenderer
        if (playerRenderer == null)
            playerRenderer = GetComponentInChildren<MeshRenderer>();

        ApplySelectedSkin();
    }

    private void ApplySelectedSkin()
    {
        if (playerRenderer == null) return;

        int selectedSkin = PlayerPrefs.GetInt("SelectedSkin", 0);

        if (selectedSkin >= 0 && selectedSkin < skinMaterials.Length)
            playerRenderer.sharedMaterial = skinMaterials[selectedSkin]; // sharedMaterial en vez de material
    }
}