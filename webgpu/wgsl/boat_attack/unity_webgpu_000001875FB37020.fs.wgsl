struct x_Terrain {
  x_NormalScale0 : f32,
  x_NormalScale1 : f32,
  x_NormalScale2 : f32,
  x_NormalScale3 : f32,
  x_Metallic0 : f32,
  x_Metallic1 : f32,
  x_Metallic2 : f32,
  x_Metallic3 : f32,
  x_Smoothness0 : f32,
  x_Smoothness1 : f32,
  x_Smoothness2 : f32,
  x_Smoothness3 : f32,
  x_DiffuseRemapScale0 : vec4<f32>,
  x_DiffuseRemapScale1 : vec4<f32>,
  x_DiffuseRemapScale2 : vec4<f32>,
  x_DiffuseRemapScale3 : vec4<f32>,
  x_MaskMapRemapOffset0 : vec4<f32>,
  x_MaskMapRemapOffset1 : vec4<f32>,
  x_MaskMapRemapOffset2 : vec4<f32>,
  x_MaskMapRemapOffset3 : vec4<f32>,
  x_MaskMapRemapScale0 : vec4<f32>,
  x_MaskMapRemapScale1 : vec4<f32>,
  x_MaskMapRemapScale2 : vec4<f32>,
  x_MaskMapRemapScale3 : vec4<f32>,
  x_Control_ST : vec4<f32>,
  x_Control_TexelSize : vec4<f32>,
  x_DiffuseHasAlpha0 : f32,
  x_DiffuseHasAlpha1 : f32,
  x_DiffuseHasAlpha2 : f32,
  x_DiffuseHasAlpha3 : f32,
  x_LayerHasMask0 : f32,
  x_LayerHasMask1 : f32,
  x_LayerHasMask2 : f32,
  x_LayerHasMask3 : f32,
  x_Splat0_ST : vec4<f32>,
  x_Splat1_ST : vec4<f32>,
  x_Splat2_ST : vec4<f32>,
  x_Splat3_ST : vec4<f32>,
  x_HeightTransition : f32,
  x_NumLayersCount : f32,
  @size(8)
  padding : u32,
  x_TerrainHeightmapRecipSize : vec4<f32>,
  x_TerrainHeightmapScale : vec4<f32>,
}

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(1) @binding(3) var<uniform> x_30 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(2) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_583 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2230 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2431 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2697 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2804 : AdditionalLightsCookies;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat66 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb67 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat67 : f32;
  var u_xlat44 : f32;
  var u_xlat22 : f32;
  var u_xlatb1 : bool;
  var u_xlat23 : vec3<f32>;
  var x_559 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu67 : u32;
  var u_xlati67 : i32;
  var u_xlat68 : f32;
  var u_xlat69 : f32;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlatb71 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb28 : vec2<bool>;
  var u_xlat28 : vec3<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat50 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat72 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat58 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat31 : vec2<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var u_xlat21 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat73 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb25 : vec2<bool>;
  var u_xlatb47 : bool;
  var x_2182 : f32;
  var u_xlat25 : vec3<f32>;
  var u_xlat47 : f32;
  var x_2312 : f32;
  var x_2323 : vec3<f32>;
  var u_xlatu44 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu71 : u32;
  var u_xlati72 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat74 : f32;
  var u_xlatu74 : u32;
  var u_xlati75 : i32;
  var u_xlati74 : i32;
  var u_xlati76 : i32;
  var u_xlatb74 : bool;
  var u_xlatb55 : vec2<bool>;
  var x_3096 : f32;
  var x_3109 : f32;
  var x_3161 : f32;
  var x_3172 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_35 : vec4<f32> = x_30.x_MaskMapRemapScale0;
  let x_42 : vec4<f32> = x_30.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_35.x, x_35.y, x_35.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_42.x, x_42.y, x_42.w));
  let x_48 : vec4<f32> = x_30.x_MaskMapRemapScale1;
  let x_53 : vec4<f32> = x_30.x_MaskMapRemapOffset1;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_53.x, x_53.y, x_53.w));
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_61 : vec4<f32> = x_30.x_MaskMapRemapScale2;
  let x_66 : vec4<f32> = x_30.x_MaskMapRemapOffset2;
  u_xlat2 = ((vec3<f32>(x_61.x, x_61.y, x_61.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_66.x, x_66.y, x_66.w));
  let x_72 : vec4<f32> = x_30.x_MaskMapRemapScale3;
  let x_77 : vec4<f32> = x_30.x_MaskMapRemapOffset3;
  let x_79 : vec3<f32> = ((vec3<f32>(x_72.x, x_72.w, x_72.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_77.x, x_77.w, x_77.y));
  let x_80 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_79.z);
  let x_86 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.z, x_86.w) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_94 : vec4<f32> = vs_TEXCOORD0;
  let x_96 : vec4<f32> = u_xlat4;
  let x_100 : vec2<f32> = ((vec2<f32>(x_94.x, x_94.y) * vec2<f32>(x_96.x, x_96.y)) + vec2<f32>(0.5f, 0.5f));
  let x_101 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat4;
  let x_106 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_108 : vec2<f32> = (vec2<f32>(x_103.x, x_103.y) * vec2<f32>(x_106.x, x_106.y));
  let x_109 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_121 : vec4<f32> = u_xlat4;
  let x_131 : f32 = x_126.x_GlobalMipBias.x;
  let x_132 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_121.x, x_121.y), x_131);
  u_xlat4 = x_132;
  let x_135 : vec4<f32> = u_xlat4;
  u_xlat66 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_145 : vec4<f32> = vs_TEXCOORD1;
  let x_148 : f32 = x_126.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_145.x, x_145.y), x_148);
  u_xlat5 = x_149;
  let x_155 : vec4<f32> = vs_TEXCOORD1;
  let x_158 : f32 = x_126.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_155.z, x_155.w), x_158);
  u_xlat6 = x_159;
  let x_166 : vec4<f32> = vs_TEXCOORD2;
  let x_169 : f32 = x_126.x_GlobalMipBias.x;
  let x_170 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_166.x, x_166.y), x_169);
  u_xlat7 = x_170;
  let x_176 : vec4<f32> = vs_TEXCOORD2;
  let x_179 : f32 = x_126.x_GlobalMipBias.x;
  let x_180 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_176.z, x_176.w), x_179);
  u_xlat8 = x_180;
  let x_183 : f32 = u_xlat5.w;
  u_xlat9.x = x_183;
  let x_186 : f32 = u_xlat6.w;
  u_xlat9.y = x_186;
  let x_190 : f32 = u_xlat7.w;
  u_xlat9.z = x_190;
  let x_194 : f32 = u_xlat8.w;
  u_xlat9.w = x_194;
  let x_197 : vec4<f32> = u_xlat9;
  let x_200 : f32 = x_30.x_Smoothness0;
  let x_203 : f32 = x_30.x_Smoothness1;
  let x_206 : f32 = x_30.x_Smoothness2;
  let x_209 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_197 * vec4<f32>(x_200, x_203, x_206, x_209));
  let x_218 : f32 = x_30.x_NumLayersCount;
  u_xlatb67 = (4.0f >= x_218);
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_221) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat9;
  let x_225 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_224 + -(x_225));
  let x_228 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_228 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_232 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_232, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_237 : vec4<f32> = u_xlat4;
  let x_241 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_237 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_241);
  let x_244 : vec4<f32> = u_xlat4;
  let x_245 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_244 + -(x_245));
  let x_250 : f32 = u_xlat12.x;
  let x_253 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_250 * x_253);
  let x_257 : f32 = u_xlat12.y;
  let x_260 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_257 * x_260);
  let x_264 : f32 = u_xlat12.z;
  let x_267 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_264 * x_267);
  let x_271 : f32 = u_xlat12.w;
  let x_274 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_271 * x_274);
  let x_277 : vec4<f32> = u_xlat11;
  let x_278 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_277 + x_278);
  let x_280 : bool = u_xlatb67;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat67 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_289 : f32 = u_xlat67;
  u_xlat67 = (x_289 + 6.10351562e-05f);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : f32 = u_xlat67;
  u_xlat4 = (x_292 / vec4<f32>(x_293, x_293, x_293, x_293));
  let x_296 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_301 : vec3<f32> = (vec3<f32>(x_296.x, x_296.x, x_296.x) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat4;
  let x_307 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_309 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec4<f32> = u_xlat12;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat5;
  let x_321 : vec4<f32> = u_xlat11;
  let x_324 : vec4<f32> = u_xlat6;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.y, x_321.z)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.z, x_329.z, x_329.z) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat7;
  let x_339 : vec4<f32> = u_xlat6;
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat4;
  let x_350 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_352 : vec3<f32> = (vec3<f32>(x_347.w, x_347.w, x_347.w) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat8;
  let x_357 : vec4<f32> = u_xlat6;
  let x_360 : vec4<f32> = u_xlat5;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.y, x_357.z)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_366;
  let x_369 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_369;
  let x_372 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_372;
  let x_375 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_375;
  let x_378 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_378;
  let x_381 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_381;
  let x_384 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_384;
  let x_387 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_387;
  let x_389 : vec4<f32> = u_xlat6;
  let x_390 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_389 + x_390);
  let x_393 : f32 = u_xlat0.z;
  u_xlat7.x = x_393;
  let x_396 : f32 = u_xlat1.z;
  u_xlat7.y = x_396;
  let x_399 : f32 = u_xlat2.z;
  u_xlat7.z = x_399;
  let x_402 : f32 = u_xlat3.y;
  u_xlat7.w = x_402;
  let x_404 : vec4<f32> = u_xlat9;
  let x_407 : f32 = x_30.x_Smoothness0;
  let x_409 : f32 = x_30.x_Smoothness1;
  let x_411 : f32 = x_30.x_Smoothness2;
  let x_413 : f32 = x_30.x_Smoothness3;
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_404) * vec4<f32>(x_407, x_409, x_411, x_413)) + x_416);
  let x_420 : f32 = x_30.x_LayerHasMask0;
  let x_423 : f32 = x_30.x_LayerHasMask1;
  let x_426 : f32 = x_30.x_LayerHasMask2;
  let x_429 : f32 = x_30.x_LayerHasMask3;
  let x_431 : vec4<f32> = u_xlat7;
  let x_433 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_420, x_423, x_426, x_429) * x_431) + x_433);
  let x_436 : vec4<f32> = u_xlat4;
  let x_437 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(x_436, x_437);
  let x_440 : f32 = u_xlat0.x;
  u_xlat7.x = x_440;
  let x_443 : f32 = u_xlat1.x;
  u_xlat7.y = x_443;
  let x_446 : f32 = u_xlat2.x;
  u_xlat7.z = x_446;
  let x_449 : f32 = u_xlat3.x;
  u_xlat7.w = x_449;
  let x_451 : vec4<f32> = u_xlat7;
  let x_454 : f32 = x_30.x_Metallic0;
  let x_457 : f32 = x_30.x_Metallic1;
  let x_460 : f32 = x_30.x_Metallic2;
  let x_463 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_451 + -(vec4<f32>(x_454, x_457, x_460, x_463)));
  let x_468 : f32 = x_30.x_LayerHasMask0;
  let x_470 : f32 = x_30.x_LayerHasMask1;
  let x_472 : f32 = x_30.x_LayerHasMask2;
  let x_474 : f32 = x_30.x_LayerHasMask3;
  let x_476 : vec4<f32> = u_xlat7;
  let x_479 : f32 = x_30.x_Metallic0;
  let x_481 : f32 = x_30.x_Metallic1;
  let x_483 : f32 = x_30.x_Metallic2;
  let x_485 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_468, x_470, x_472, x_474) * x_476) + vec4<f32>(x_479, x_481, x_483, x_485));
  let x_488 : vec4<f32> = u_xlat4;
  let x_489 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_488, x_489);
  let x_493 : f32 = u_xlat0.y;
  u_xlat3.x = x_493;
  let x_496 : f32 = u_xlat1.y;
  u_xlat3.y = x_496;
  let x_499 : f32 = u_xlat2.y;
  u_xlat3.z = x_499;
  let x_501 : vec4<f32> = u_xlat6;
  let x_503 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_501) + x_503);
  let x_506 : f32 = x_30.x_LayerHasMask0;
  let x_508 : f32 = x_30.x_LayerHasMask1;
  let x_510 : f32 = x_30.x_LayerHasMask2;
  let x_512 : f32 = x_30.x_LayerHasMask3;
  let x_514 : vec4<f32> = u_xlat1;
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_506, x_508, x_510, x_512) * x_514) + x_516);
  let x_519 : vec4<f32> = u_xlat4;
  let x_520 : vec4<f32> = u_xlat1;
  u_xlat22 = dot(x_519, x_520);
  let x_524 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_524 == 0.0f);
  let x_529 : vec3<f32> = vs_TEXCOORD7;
  let x_533 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat23 = (-(x_529) + x_533);
  let x_535 : vec3<f32> = u_xlat23;
  let x_536 : vec3<f32> = u_xlat23;
  u_xlat2.x = dot(x_535, x_536);
  let x_540 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_540);
  let x_543 : vec3<f32> = u_xlat23;
  let x_544 : vec3<f32> = u_xlat2;
  u_xlat23 = (x_543 * vec3<f32>(x_544.x, x_544.x, x_544.x));
  let x_549 : f32 = x_126.unity_MatrixV[0i].z;
  u_xlat2.x = x_549;
  let x_552 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.y = x_552;
  let x_556 : f32 = x_126.unity_MatrixV[2i].z;
  u_xlat2.z = x_556;
  let x_558 : bool = u_xlatb1;
  if (x_558) {
    let x_562 : vec3<f32> = u_xlat23;
    x_559 = x_562;
  } else {
    let x_564 : vec3<f32> = u_xlat2;
    x_559 = x_564;
  }
  let x_565 : vec3<f32> = x_559;
  let x_566 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_569 : vec3<f32> = vs_TEXCOORD3;
  let x_570 : vec3<f32> = vs_TEXCOORD3;
  u_xlat67 = dot(x_569, x_570);
  let x_572 : f32 = u_xlat67;
  u_xlat67 = inverseSqrt(x_572);
  let x_574 : f32 = u_xlat67;
  let x_576 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_574, x_574, x_574) * x_576);
  let x_578 : vec3<f32> = vs_TEXCOORD7;
  let x_585 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres0;
  let x_588 : vec3<f32> = (x_578 + -(vec3<f32>(x_585.x, x_585.y, x_585.z)));
  let x_589 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec3<f32> = vs_TEXCOORD7;
  let x_593 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres1;
  let x_596 : vec3<f32> = (x_591 + -(vec3<f32>(x_593.x, x_593.y, x_593.z)));
  let x_597 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec3<f32> = vs_TEXCOORD7;
  let x_602 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres2;
  let x_605 : vec3<f32> = (x_599 + -(vec3<f32>(x_602.x, x_602.y, x_602.z)));
  let x_606 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec3<f32> = vs_TEXCOORD7;
  let x_610 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres3;
  let x_613 : vec3<f32> = (x_608 + -(vec3<f32>(x_610.x, x_610.y, x_610.z)));
  let x_614 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat3;
  let x_618 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_622 : vec4<f32> = u_xlat4;
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_622.x, x_622.y, x_622.z), vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_628.x, x_628.y, x_628.z), vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_634 : vec4<f32> = u_xlat7;
  let x_636 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_634.x, x_634.y, x_634.z), vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_642 : vec4<f32> = u_xlat3;
  let x_644 : vec4<f32> = x_583.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_642 < x_644);
  let x_647 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_647);
  let x_651 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_651);
  let x_655 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_655);
  let x_659 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_659);
  let x_663 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_663);
  let x_668 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_668);
  let x_672 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_672);
  let x_675 : vec4<f32> = u_xlat3;
  let x_677 : vec4<f32> = u_xlat4;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) + vec3<f32>(x_677.y, x_677.z, x_677.w));
  let x_680 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat3;
  let x_685 : vec3<f32> = max(vec3<f32>(x_682.x, x_682.y, x_682.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_686 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_686.x, x_685.x, x_685.y, x_685.z);
  let x_688 : vec4<f32> = u_xlat4;
  u_xlat67 = dot(x_688, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_693 : f32 = u_xlat67;
  u_xlat67 = (-(x_693) + 4.0f);
  let x_698 : f32 = u_xlat67;
  u_xlatu67 = u32(x_698);
  let x_702 : u32 = u_xlatu67;
  u_xlati67 = (bitcast<i32>(x_702) << bitcast<u32>(2i));
  let x_705 : vec3<f32> = vs_TEXCOORD7;
  let x_707 : i32 = u_xlati67;
  let x_710 : i32 = u_xlati67;
  let x_714 : vec4<f32> = x_583.x_MainLightWorldToShadow[((x_707 + 1i) / 4i)][((x_710 + 1i) % 4i)];
  let x_716 : vec3<f32> = (vec3<f32>(x_705.y, x_705.y, x_705.y) * vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : i32 = u_xlati67;
  let x_721 : i32 = u_xlati67;
  let x_724 : vec4<f32> = x_583.x_MainLightWorldToShadow[(x_719 / 4i)][(x_721 % 4i)];
  let x_726 : vec3<f32> = vs_TEXCOORD7;
  let x_729 : vec4<f32> = u_xlat3;
  let x_731 : vec3<f32> = ((vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(x_726.x, x_726.x, x_726.x)) + vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : i32 = u_xlati67;
  let x_737 : i32 = u_xlati67;
  let x_741 : vec4<f32> = x_583.x_MainLightWorldToShadow[((x_734 + 2i) / 4i)][((x_737 + 2i) % 4i)];
  let x_743 : vec3<f32> = vs_TEXCOORD7;
  let x_746 : vec4<f32> = u_xlat3;
  let x_748 : vec3<f32> = ((vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_743.z, x_743.z, x_743.z)) + vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : vec4<f32> = u_xlat3;
  let x_753 : i32 = u_xlati67;
  let x_756 : i32 = u_xlati67;
  let x_760 : vec4<f32> = x_583.x_MainLightWorldToShadow[((x_753 + 3i) / 4i)][((x_756 + 3i) % 4i)];
  let x_762 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_766 : f32 = vs_TEXCOORD7.y;
  let x_768 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat67 = (x_766 * x_768);
  let x_771 : f32 = x_126.unity_MatrixV[0i].z;
  let x_773 : f32 = vs_TEXCOORD7.x;
  let x_775 : f32 = u_xlat67;
  u_xlat67 = ((x_771 * x_773) + x_775);
  let x_778 : f32 = x_126.unity_MatrixV[2i].z;
  let x_780 : f32 = vs_TEXCOORD7.z;
  let x_782 : f32 = u_xlat67;
  u_xlat67 = ((x_778 * x_780) + x_782);
  let x_784 : f32 = u_xlat67;
  let x_786 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat67 = (x_784 + x_786);
  let x_788 : f32 = u_xlat67;
  let x_791 : f32 = x_126.x_ProjectionParams.y;
  u_xlat67 = (-(x_788) + -(x_791));
  let x_794 : f32 = u_xlat67;
  u_xlat67 = max(x_794, 0.0f);
  let x_796 : f32 = u_xlat67;
  let x_798 : f32 = x_126.unity_FogParams.x;
  u_xlat67 = (x_796 * x_798);
  let x_805 : vec4<f32> = vs_TEXCOORD0;
  let x_808 : f32 = x_126.x_GlobalMipBias.x;
  let x_809 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_805.z, x_805.w), x_808);
  let x_810 : vec3<f32> = vec3<f32>(x_809.x, x_809.y, x_809.z);
  let x_811 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_815 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_816 : vec2<f32> = vec2<f32>(x_815.x, x_815.y);
  let x_820 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_816.x, x_816.y));
  let x_821 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_820.x, x_820.y, x_821.z, x_821.w);
  let x_823 : vec4<f32> = u_xlat6;
  let x_825 : vec4<f32> = hlslcc_FragCoord;
  let x_827 : vec2<f32> = (vec2<f32>(x_823.x, x_823.y) * vec2<f32>(x_825.x, x_825.y));
  let x_828 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
  let x_832 : f32 = u_xlat6.y;
  let x_834 : f32 = x_126.x_ScaleBiasRt.x;
  let x_837 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat68 = ((x_832 * x_834) + x_837);
  let x_839 : f32 = u_xlat68;
  u_xlat6.z = (-(x_839) + 1.0f);
  let x_844 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_844) * 0.959999979f) + 0.959999979f);
  let x_850 : f32 = u_xlat44;
  let x_851 : f32 = u_xlat68;
  u_xlat69 = (x_850 + -(x_851));
  let x_854 : f32 = u_xlat68;
  let x_856 : vec4<f32> = u_xlat5;
  let x_858 : vec3<f32> = (vec3<f32>(x_854, x_854, x_854) * vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat5;
  let x_865 : vec3<f32> = (vec3<f32>(x_861.x, x_861.y, x_861.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_866 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec3<f32> = u_xlat0;
  let x_870 : vec4<f32> = u_xlat5;
  let x_875 : vec3<f32> = ((vec3<f32>(x_868.x, x_868.x, x_868.x) * vec3<f32>(x_870.x, x_870.y, x_870.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_876 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : f32 = u_xlat44;
  u_xlat0.x = (-(x_878) + 1.0f);
  let x_883 : f32 = u_xlat0.x;
  let x_885 : f32 = u_xlat0.x;
  u_xlat44 = (x_883 * x_885);
  let x_887 : f32 = u_xlat44;
  u_xlat44 = max(x_887, 0.0078125f);
  let x_890 : f32 = u_xlat44;
  let x_891 : f32 = u_xlat44;
  u_xlat68 = (x_890 * x_891);
  let x_893 : f32 = u_xlat69;
  u_xlat69 = (x_893 + 1.0f);
  let x_895 : f32 = u_xlat69;
  u_xlat69 = clamp(x_895, 0.0f, 1.0f);
  let x_898 : f32 = u_xlat44;
  u_xlat70 = ((x_898 * 4.0f) + 2.0f);
  let x_907 : vec4<f32> = u_xlat6;
  let x_910 : f32 = x_126.x_GlobalMipBias.x;
  let x_911 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_907.x, x_907.z), x_910);
  u_xlat71 = x_911.x;
  let x_913 : f32 = u_xlat71;
  u_xlat6.x = (x_913 + -1.0f);
  let x_917 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_919 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_917 * x_919) + 1.0f);
  let x_923 : f32 = u_xlat22;
  let x_924 : f32 = u_xlat71;
  u_xlat22 = min(x_923, x_924);
  let x_928 : f32 = x_583.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_928);
  let x_930 : bool = u_xlatb71;
  if (x_930) {
    let x_934 : f32 = x_583.x_MainLightShadowParams.y;
    u_xlatb71 = (x_934 == 1.0f);
    let x_936 : bool = u_xlatb71;
    if (x_936) {
      let x_939 : vec4<f32> = u_xlat3;
      let x_942 : vec4<f32> = x_583.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_939.x, x_939.y, x_939.x, x_939.y) + x_942);
      let x_945 : vec4<f32> = u_xlat8;
      let x_946 : vec2<f32> = vec2<f32>(x_945.x, x_945.y);
      let x_948 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_946.x, x_946.y, x_948);
      let x_960 : vec3<f32> = txVec0;
      let x_962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_960.xy, x_960.z);
      u_xlat9.x = x_962;
      let x_965 : vec4<f32> = u_xlat8;
      let x_966 : vec2<f32> = vec2<f32>(x_965.z, x_965.w);
      let x_968 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_966.x, x_966.y, x_968);
      let x_975 : vec3<f32> = txVec1;
      let x_977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_975.xy, x_975.z);
      u_xlat9.y = x_977;
      let x_979 : vec4<f32> = u_xlat3;
      let x_982 : vec4<f32> = x_583.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_979.x, x_979.y, x_979.x, x_979.y) + x_982);
      let x_985 : vec4<f32> = u_xlat8;
      let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
      let x_988 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_986.x, x_986.y, x_988);
      let x_995 : vec3<f32> = txVec2;
      let x_997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_995.xy, x_995.z);
      u_xlat9.z = x_997;
      let x_1000 : vec4<f32> = u_xlat8;
      let x_1001 : vec2<f32> = vec2<f32>(x_1000.z, x_1000.w);
      let x_1003 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1001.x, x_1001.y, x_1003);
      let x_1010 : vec3<f32> = txVec3;
      let x_1012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1010.xy, x_1010.z);
      u_xlat9.w = x_1012;
      let x_1014 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_1014, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1023 : f32 = x_583.x_MainLightShadowParams.y;
      u_xlatb28.x = (x_1023 == 2.0f);
      let x_1027 : bool = u_xlatb28.x;
      if (x_1027) {
        let x_1031 : vec4<f32> = u_xlat3;
        let x_1034 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1037 : vec2<f32> = ((vec2<f32>(x_1031.x, x_1031.y) * vec2<f32>(x_1034.z, x_1034.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1038 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1037.x, x_1037.y, x_1038.z);
        let x_1040 : vec3<f32> = u_xlat28;
        let x_1042 : vec2<f32> = floor(vec2<f32>(x_1040.x, x_1040.y));
        let x_1043 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1042.x, x_1042.y, x_1043.z);
        let x_1045 : vec4<f32> = u_xlat3;
        let x_1048 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1051 : vec3<f32> = u_xlat28;
        let x_1054 : vec2<f32> = ((vec2<f32>(x_1045.x, x_1045.y) * vec2<f32>(x_1048.z, x_1048.w)) + -(vec2<f32>(x_1051.x, x_1051.y)));
        let x_1055 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
        let x_1057 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1057.x, x_1057.x, x_1057.y, x_1057.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1061 : vec4<f32> = u_xlat9;
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1061.x, x_1061.x, x_1061.z, x_1061.z) * vec4<f32>(x_1063.x, x_1063.x, x_1063.z, x_1063.z));
        let x_1068 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_1068.y, x_1068.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1073 : vec4<f32> = u_xlat10;
        let x_1076 : vec4<f32> = u_xlat8;
        let x_1079 : vec2<f32> = ((vec2<f32>(x_1073.x, x_1073.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1076.x, x_1076.y)));
        let x_1080 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1079.x, x_1080.y, x_1079.y, x_1080.w);
        let x_1082 : vec4<f32> = u_xlat8;
        let x_1085 : vec2<f32> = (-(vec2<f32>(x_1082.x, x_1082.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1086 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1085.x, x_1085.y, x_1086.z, x_1086.w);
        let x_1089 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_1089.x, x_1089.y), vec2<f32>(0.0f, 0.0f));
        let x_1093 : vec2<f32> = u_xlat54;
        let x_1095 : vec2<f32> = u_xlat54;
        let x_1097 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_1093) * x_1095) + vec2<f32>(x_1097.x, x_1097.y));
        let x_1100 : vec4<f32> = u_xlat8;
        let x_1102 : vec2<f32> = max(vec2<f32>(x_1100.x, x_1100.y), vec2<f32>(0.0f, 0.0f));
        let x_1103 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat8;
        let x_1108 : vec4<f32> = u_xlat8;
        let x_1111 : vec4<f32> = u_xlat9;
        let x_1113 : vec2<f32> = ((-(vec2<f32>(x_1105.x, x_1105.y)) * vec2<f32>(x_1108.x, x_1108.y)) + vec2<f32>(x_1111.y, x_1111.w));
        let x_1114 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1113.x, x_1113.y, x_1114.z, x_1114.w);
        let x_1116 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_1116 + vec2<f32>(1.0f, 1.0f));
        let x_1118 : vec4<f32> = u_xlat8;
        let x_1120 : vec2<f32> = (vec2<f32>(x_1118.x, x_1118.y) + vec2<f32>(1.0f, 1.0f));
        let x_1121 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1120.x, x_1120.y, x_1121.z, x_1121.w);
        let x_1123 : vec4<f32> = u_xlat9;
        let x_1127 : vec2<f32> = (vec2<f32>(x_1123.x, x_1123.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1128 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1127.x, x_1127.y, x_1128.z, x_1128.w);
        let x_1130 : vec4<f32> = u_xlat10;
        let x_1132 : vec2<f32> = (vec2<f32>(x_1130.x, x_1130.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1133 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec2<f32> = u_xlat54;
        let x_1136 : vec2<f32> = (x_1135 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1137 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1136.x, x_1136.y, x_1137.z, x_1137.w);
        let x_1139 : vec4<f32> = u_xlat8;
        let x_1141 : vec2<f32> = (vec2<f32>(x_1139.x, x_1139.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1142 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
        let x_1144 : vec4<f32> = u_xlat9;
        let x_1146 : vec2<f32> = (vec2<f32>(x_1144.y, x_1144.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1147 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
        let x_1150 : f32 = u_xlat10.x;
        u_xlat11.z = x_1150;
        let x_1153 : f32 = u_xlat8.x;
        u_xlat11.w = x_1153;
        let x_1156 : f32 = u_xlat13.x;
        u_xlat12.z = x_1156;
        let x_1159 : f32 = u_xlat52.x;
        u_xlat12.w = x_1159;
        let x_1161 : vec4<f32> = u_xlat11;
        let x_1163 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1161.z, x_1161.w, x_1161.x, x_1161.z) + vec4<f32>(x_1163.z, x_1163.w, x_1163.x, x_1163.z));
        let x_1167 : f32 = u_xlat11.y;
        u_xlat10.z = x_1167;
        let x_1170 : f32 = u_xlat8.y;
        u_xlat10.w = x_1170;
        let x_1173 : f32 = u_xlat12.y;
        u_xlat13.z = x_1173;
        let x_1176 : f32 = u_xlat52.y;
        u_xlat13.w = x_1176;
        let x_1178 : vec4<f32> = u_xlat10;
        let x_1180 : vec4<f32> = u_xlat13;
        let x_1182 : vec3<f32> = (vec3<f32>(x_1178.z, x_1178.y, x_1178.w) + vec3<f32>(x_1180.z, x_1180.y, x_1180.w));
        let x_1183 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
        let x_1185 : vec4<f32> = u_xlat12;
        let x_1187 : vec4<f32> = u_xlat9;
        let x_1189 : vec3<f32> = (vec3<f32>(x_1185.x, x_1185.z, x_1185.w) / vec3<f32>(x_1187.z, x_1187.w, x_1187.y));
        let x_1190 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
        let x_1192 : vec4<f32> = u_xlat10;
        let x_1198 : vec3<f32> = (vec3<f32>(x_1192.x, x_1192.y, x_1192.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1199 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
        let x_1201 : vec4<f32> = u_xlat13;
        let x_1203 : vec4<f32> = u_xlat8;
        let x_1205 : vec3<f32> = (vec3<f32>(x_1201.z, x_1201.y, x_1201.w) / vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
        let x_1206 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
        let x_1208 : vec4<f32> = u_xlat11;
        let x_1210 : vec3<f32> = (vec3<f32>(x_1208.x, x_1208.y, x_1208.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1211 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
        let x_1213 : vec4<f32> = u_xlat10;
        let x_1216 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1218 : vec3<f32> = (vec3<f32>(x_1213.y, x_1213.x, x_1213.z) * vec3<f32>(x_1216.x, x_1216.x, x_1216.x));
        let x_1219 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1219.w);
        let x_1221 : vec4<f32> = u_xlat11;
        let x_1224 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1226 : vec3<f32> = (vec3<f32>(x_1221.x, x_1221.y, x_1221.z) * vec3<f32>(x_1224.y, x_1224.y, x_1224.y));
        let x_1227 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
        let x_1230 : f32 = u_xlat11.x;
        u_xlat10.w = x_1230;
        let x_1232 : vec3<f32> = u_xlat28;
        let x_1235 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1238 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y) * vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y)) + vec4<f32>(x_1238.y, x_1238.w, x_1238.x, x_1238.w));
        let x_1241 : vec3<f32> = u_xlat28;
        let x_1244 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat10;
        let x_1249 : vec2<f32> = ((vec2<f32>(x_1241.x, x_1241.y) * vec2<f32>(x_1244.x, x_1244.y)) + vec2<f32>(x_1247.z, x_1247.w));
        let x_1250 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1249.x, x_1249.y, x_1250.z, x_1250.w);
        let x_1253 : f32 = u_xlat10.y;
        u_xlat11.w = x_1253;
        let x_1255 : vec4<f32> = u_xlat11;
        let x_1256 : vec2<f32> = vec2<f32>(x_1255.y, x_1255.z);
        let x_1257 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1257.x, x_1256.x, x_1257.z, x_1256.y);
        let x_1260 : vec3<f32> = u_xlat28;
        let x_1263 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1266 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_1260.x, x_1260.y, x_1260.x, x_1260.y) * vec4<f32>(x_1263.x, x_1263.y, x_1263.x, x_1263.y)) + vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1266.y));
        let x_1269 : vec3<f32> = u_xlat28;
        let x_1272 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1275 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y) * vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y)) + vec4<f32>(x_1275.w, x_1275.y, x_1275.w, x_1275.z));
        let x_1278 : vec3<f32> = u_xlat28;
        let x_1281 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1284 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1278.x, x_1278.y, x_1278.x, x_1278.y) * vec4<f32>(x_1281.x, x_1281.y, x_1281.x, x_1281.y)) + vec4<f32>(x_1284.x, x_1284.w, x_1284.z, x_1284.w));
        let x_1288 : vec4<f32> = u_xlat8;
        let x_1290 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_1288.x, x_1288.x, x_1288.x, x_1288.y) * vec4<f32>(x_1290.z, x_1290.w, x_1290.y, x_1290.z));
        let x_1294 : vec4<f32> = u_xlat8;
        let x_1296 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1294.y, x_1294.y, x_1294.z, x_1294.z) * x_1296);
        let x_1299 : f32 = u_xlat8.z;
        let x_1301 : f32 = u_xlat9.y;
        u_xlat28.x = (x_1299 * x_1301);
        let x_1305 : vec4<f32> = u_xlat12;
        let x_1306 : vec2<f32> = vec2<f32>(x_1305.x, x_1305.y);
        let x_1308 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
        let x_1316 : vec3<f32> = txVec4;
        let x_1318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1316.xy, x_1316.z);
        u_xlat50 = x_1318;
        let x_1320 : vec4<f32> = u_xlat12;
        let x_1321 : vec2<f32> = vec2<f32>(x_1320.z, x_1320.w);
        let x_1323 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1331 : vec3<f32> = txVec5;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1331.xy, x_1331.z);
        u_xlat72 = x_1333;
        let x_1334 : f32 = u_xlat72;
        let x_1336 : f32 = u_xlat15.y;
        u_xlat72 = (x_1334 * x_1336);
        let x_1339 : f32 = u_xlat15.x;
        let x_1340 : f32 = u_xlat50;
        let x_1342 : f32 = u_xlat72;
        u_xlat50 = ((x_1339 * x_1340) + x_1342);
        let x_1345 : vec4<f32> = u_xlat13;
        let x_1346 : vec2<f32> = vec2<f32>(x_1345.x, x_1345.y);
        let x_1348 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec6;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1355.xy, x_1355.z);
        u_xlat72 = x_1357;
        let x_1359 : f32 = u_xlat15.z;
        let x_1360 : f32 = u_xlat72;
        let x_1362 : f32 = u_xlat50;
        u_xlat50 = ((x_1359 * x_1360) + x_1362);
        let x_1365 : vec4<f32> = u_xlat11;
        let x_1366 : vec2<f32> = vec2<f32>(x_1365.x, x_1365.y);
        let x_1368 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec7;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1375.xy, x_1375.z);
        u_xlat72 = x_1377;
        let x_1379 : f32 = u_xlat15.w;
        let x_1380 : f32 = u_xlat72;
        let x_1382 : f32 = u_xlat50;
        u_xlat50 = ((x_1379 * x_1380) + x_1382);
        let x_1385 : vec4<f32> = u_xlat14;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.x, x_1385.y);
        let x_1388 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec8;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1395.xy, x_1395.z);
        u_xlat72 = x_1397;
        let x_1399 : f32 = u_xlat16.x;
        let x_1400 : f32 = u_xlat72;
        let x_1402 : f32 = u_xlat50;
        u_xlat50 = ((x_1399 * x_1400) + x_1402);
        let x_1405 : vec4<f32> = u_xlat14;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.z, x_1405.w);
        let x_1408 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec9;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1415.xy, x_1415.z);
        u_xlat72 = x_1417;
        let x_1419 : f32 = u_xlat16.y;
        let x_1420 : f32 = u_xlat72;
        let x_1422 : f32 = u_xlat50;
        u_xlat50 = ((x_1419 * x_1420) + x_1422);
        let x_1425 : vec4<f32> = u_xlat11;
        let x_1426 : vec2<f32> = vec2<f32>(x_1425.z, x_1425.w);
        let x_1428 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1426.x, x_1426.y, x_1428);
        let x_1435 : vec3<f32> = txVec10;
        let x_1437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1435.xy, x_1435.z);
        u_xlat72 = x_1437;
        let x_1439 : f32 = u_xlat16.z;
        let x_1440 : f32 = u_xlat72;
        let x_1442 : f32 = u_xlat50;
        u_xlat50 = ((x_1439 * x_1440) + x_1442);
        let x_1445 : vec4<f32> = u_xlat10;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.x, x_1445.y);
        let x_1448 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec11;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1455.xy, x_1455.z);
        u_xlat72 = x_1457;
        let x_1459 : f32 = u_xlat16.w;
        let x_1460 : f32 = u_xlat72;
        let x_1462 : f32 = u_xlat50;
        u_xlat50 = ((x_1459 * x_1460) + x_1462);
        let x_1465 : vec4<f32> = u_xlat10;
        let x_1466 : vec2<f32> = vec2<f32>(x_1465.z, x_1465.w);
        let x_1468 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1475 : vec3<f32> = txVec12;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1475.xy, x_1475.z);
        u_xlat72 = x_1477;
        let x_1479 : f32 = u_xlat28.x;
        let x_1480 : f32 = u_xlat72;
        let x_1482 : f32 = u_xlat50;
        u_xlat71 = ((x_1479 * x_1480) + x_1482);
      } else {
        let x_1485 : vec4<f32> = u_xlat3;
        let x_1488 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1491 : vec2<f32> = ((vec2<f32>(x_1485.x, x_1485.y) * vec2<f32>(x_1488.z, x_1488.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1492 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1491.x, x_1491.y, x_1492.z);
        let x_1494 : vec3<f32> = u_xlat28;
        let x_1496 : vec2<f32> = floor(vec2<f32>(x_1494.x, x_1494.y));
        let x_1497 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1496.x, x_1496.y, x_1497.z);
        let x_1499 : vec4<f32> = u_xlat3;
        let x_1502 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1505 : vec3<f32> = u_xlat28;
        let x_1508 : vec2<f32> = ((vec2<f32>(x_1499.x, x_1499.y) * vec2<f32>(x_1502.z, x_1502.w)) + -(vec2<f32>(x_1505.x, x_1505.y)));
        let x_1509 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1508.x, x_1508.y, x_1509.z, x_1509.w);
        let x_1511 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1511.x, x_1511.x, x_1511.y, x_1511.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1514 : vec4<f32> = u_xlat9;
        let x_1516 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1514.x, x_1514.x, x_1514.z, x_1514.z) * vec4<f32>(x_1516.x, x_1516.x, x_1516.z, x_1516.z));
        let x_1519 : vec4<f32> = u_xlat10;
        let x_1523 : vec2<f32> = (vec2<f32>(x_1519.y, x_1519.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1524 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1524.x, x_1523.x, x_1524.z, x_1523.y);
        let x_1526 : vec4<f32> = u_xlat10;
        let x_1529 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1526.x, x_1526.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1529.x, x_1529.y)));
        let x_1533 : vec4<f32> = u_xlat8;
        let x_1536 : vec2<f32> = (-(vec2<f32>(x_1533.x, x_1533.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1537 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1536.x, x_1537.y, x_1536.y, x_1537.w);
        let x_1539 : vec4<f32> = u_xlat8;
        let x_1541 : vec2<f32> = min(vec2<f32>(x_1539.x, x_1539.y), vec2<f32>(0.0f, 0.0f));
        let x_1542 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1541.x, x_1541.y, x_1542.z, x_1542.w);
        let x_1544 : vec4<f32> = u_xlat10;
        let x_1547 : vec4<f32> = u_xlat10;
        let x_1550 : vec4<f32> = u_xlat9;
        let x_1552 : vec2<f32> = ((-(vec2<f32>(x_1544.x, x_1544.y)) * vec2<f32>(x_1547.x, x_1547.y)) + vec2<f32>(x_1550.x, x_1550.z));
        let x_1553 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1552.x, x_1553.y, x_1552.y, x_1553.w);
        let x_1555 : vec4<f32> = u_xlat8;
        let x_1557 : vec2<f32> = max(vec2<f32>(x_1555.x, x_1555.y), vec2<f32>(0.0f, 0.0f));
        let x_1558 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1557.x, x_1557.y, x_1558.z, x_1558.w);
        let x_1560 : vec4<f32> = u_xlat10;
        let x_1563 : vec4<f32> = u_xlat10;
        let x_1566 : vec4<f32> = u_xlat9;
        let x_1568 : vec2<f32> = ((-(vec2<f32>(x_1560.x, x_1560.y)) * vec2<f32>(x_1563.x, x_1563.y)) + vec2<f32>(x_1566.y, x_1566.w));
        let x_1569 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1569.x, x_1568.x, x_1569.z, x_1568.y);
        let x_1571 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1571 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1575 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1575 * 0.081632003f);
        let x_1579 : vec2<f32> = u_xlat52;
        let x_1582 : vec2<f32> = (vec2<f32>(x_1579.y, x_1579.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1583 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1582.x, x_1582.y, x_1583.z, x_1583.w);
        let x_1585 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1585.x, x_1585.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1589 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1589 * 0.081632003f);
        let x_1593 : f32 = u_xlat12.y;
        u_xlat10.x = x_1593;
        let x_1595 : vec4<f32> = u_xlat8;
        let x_1602 : vec2<f32> = ((vec2<f32>(x_1595.x, x_1595.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1603 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1603.x, x_1602.x, x_1603.z, x_1602.y);
        let x_1605 : vec4<f32> = u_xlat8;
        let x_1609 : vec2<f32> = ((vec2<f32>(x_1605.x, x_1605.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1610 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1609.x, x_1610.y, x_1609.y, x_1610.w);
        let x_1613 : f32 = u_xlat52.x;
        u_xlat9.y = x_1613;
        let x_1616 : f32 = u_xlat11.y;
        u_xlat9.w = x_1616;
        let x_1618 : vec4<f32> = u_xlat9;
        let x_1619 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1618 + x_1619);
        let x_1621 : vec4<f32> = u_xlat8;
        let x_1624 : vec2<f32> = ((vec2<f32>(x_1621.y, x_1621.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1625 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1625.x, x_1624.x, x_1625.z, x_1624.y);
        let x_1627 : vec4<f32> = u_xlat8;
        let x_1630 : vec2<f32> = ((vec2<f32>(x_1627.y, x_1627.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1631 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1630.x, x_1631.y, x_1630.y, x_1631.w);
        let x_1634 : f32 = u_xlat52.y;
        u_xlat11.y = x_1634;
        let x_1636 : vec4<f32> = u_xlat11;
        let x_1637 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1636 + x_1637);
        let x_1639 : vec4<f32> = u_xlat9;
        let x_1640 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1639 / x_1640);
        let x_1642 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1642 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1648 : vec4<f32> = u_xlat11;
        let x_1649 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1648 / x_1649);
        let x_1651 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1651 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1653 : vec4<f32> = u_xlat9;
        let x_1656 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1653.w, x_1653.x, x_1653.y, x_1653.z) * vec4<f32>(x_1656.x, x_1656.x, x_1656.x, x_1656.x));
        let x_1659 : vec4<f32> = u_xlat11;
        let x_1662 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1659.x, x_1659.w, x_1659.y, x_1659.z) * vec4<f32>(x_1662.y, x_1662.y, x_1662.y, x_1662.y));
        let x_1665 : vec4<f32> = u_xlat9;
        let x_1666 : vec3<f32> = vec3<f32>(x_1665.y, x_1665.z, x_1665.w);
        let x_1667 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1666.x, x_1667.y, x_1666.y, x_1666.z);
        let x_1670 : f32 = u_xlat11.x;
        u_xlat12.y = x_1670;
        let x_1672 : vec3<f32> = u_xlat28;
        let x_1675 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1678 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1672.x, x_1672.y, x_1672.x, x_1672.y) * vec4<f32>(x_1675.x, x_1675.y, x_1675.x, x_1675.y)) + vec4<f32>(x_1678.x, x_1678.y, x_1678.z, x_1678.y));
        let x_1681 : vec3<f32> = u_xlat28;
        let x_1684 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1687 : vec4<f32> = u_xlat12;
        let x_1689 : vec2<f32> = ((vec2<f32>(x_1681.x, x_1681.y) * vec2<f32>(x_1684.x, x_1684.y)) + vec2<f32>(x_1687.w, x_1687.y));
        let x_1690 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1689.x, x_1689.y, x_1690.z, x_1690.w);
        let x_1693 : f32 = u_xlat12.y;
        u_xlat9.y = x_1693;
        let x_1696 : f32 = u_xlat11.z;
        u_xlat12.y = x_1696;
        let x_1698 : vec3<f32> = u_xlat28;
        let x_1701 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1704 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1698.x, x_1698.y, x_1698.x, x_1698.y) * vec4<f32>(x_1701.x, x_1701.y, x_1701.x, x_1701.y)) + vec4<f32>(x_1704.x, x_1704.y, x_1704.z, x_1704.y));
        let x_1708 : vec3<f32> = u_xlat28;
        let x_1711 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1714 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1708.x, x_1708.y) * vec2<f32>(x_1711.x, x_1711.y)) + vec2<f32>(x_1714.w, x_1714.y));
        let x_1718 : f32 = u_xlat12.y;
        u_xlat9.z = x_1718;
        let x_1720 : vec3<f32> = u_xlat28;
        let x_1723 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1726 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1720.x, x_1720.y, x_1720.x, x_1720.y) * vec4<f32>(x_1723.x, x_1723.y, x_1723.x, x_1723.y)) + vec4<f32>(x_1726.x, x_1726.y, x_1726.x, x_1726.z));
        let x_1730 : f32 = u_xlat11.w;
        u_xlat12.y = x_1730;
        let x_1733 : vec3<f32> = u_xlat28;
        let x_1736 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1739 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1733.x, x_1733.y, x_1733.x, x_1733.y) * vec4<f32>(x_1736.x, x_1736.y, x_1736.x, x_1736.y)) + vec4<f32>(x_1739.x, x_1739.y, x_1739.z, x_1739.y));
        let x_1743 : vec3<f32> = u_xlat28;
        let x_1746 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1749 : vec4<f32> = u_xlat12;
        u_xlat31 = ((vec2<f32>(x_1743.x, x_1743.y) * vec2<f32>(x_1746.x, x_1746.y)) + vec2<f32>(x_1749.w, x_1749.y));
        let x_1753 : f32 = u_xlat12.y;
        u_xlat9.w = x_1753;
        let x_1756 : vec3<f32> = u_xlat28;
        let x_1759 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1762 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1756.x, x_1756.y) * vec2<f32>(x_1759.x, x_1759.y)) + vec2<f32>(x_1762.x, x_1762.w));
        let x_1765 : vec4<f32> = u_xlat12;
        let x_1766 : vec3<f32> = vec3<f32>(x_1765.x, x_1765.z, x_1765.w);
        let x_1767 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1766.x, x_1767.y, x_1766.y, x_1766.z);
        let x_1769 : vec3<f32> = u_xlat28;
        let x_1772 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1775 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1769.x, x_1769.y, x_1769.x, x_1769.y) * vec4<f32>(x_1772.x, x_1772.y, x_1772.x, x_1772.y)) + vec4<f32>(x_1775.x, x_1775.y, x_1775.z, x_1775.y));
        let x_1779 : vec3<f32> = u_xlat28;
        let x_1782 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1785 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1779.x, x_1779.y) * vec2<f32>(x_1782.x, x_1782.y)) + vec2<f32>(x_1785.w, x_1785.y));
        let x_1789 : f32 = u_xlat9.x;
        u_xlat11.x = x_1789;
        let x_1791 : vec3<f32> = u_xlat28;
        let x_1794 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1797 : vec4<f32> = u_xlat11;
        let x_1799 : vec2<f32> = ((vec2<f32>(x_1791.x, x_1791.y) * vec2<f32>(x_1794.x, x_1794.y)) + vec2<f32>(x_1797.x, x_1797.y));
        let x_1800 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1799.x, x_1799.y, x_1800.z);
        let x_1803 : vec4<f32> = u_xlat8;
        let x_1805 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1803.x, x_1803.x, x_1803.x, x_1803.x) * x_1805);
        let x_1808 : vec4<f32> = u_xlat8;
        let x_1810 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1808.y, x_1808.y, x_1808.y, x_1808.y) * x_1810);
        let x_1813 : vec4<f32> = u_xlat8;
        let x_1815 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1813.z, x_1813.z, x_1813.z, x_1813.z) * x_1815);
        let x_1817 : vec4<f32> = u_xlat8;
        let x_1819 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1817.w, x_1817.w, x_1817.w, x_1817.w) * x_1819);
        let x_1822 : vec4<f32> = u_xlat13;
        let x_1823 : vec2<f32> = vec2<f32>(x_1822.x, x_1822.y);
        let x_1825 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1823.x, x_1823.y, x_1825);
        let x_1832 : vec3<f32> = txVec13;
        let x_1834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1832.xy, x_1832.z);
        u_xlat72 = x_1834;
        let x_1836 : vec4<f32> = u_xlat13;
        let x_1837 : vec2<f32> = vec2<f32>(x_1836.z, x_1836.w);
        let x_1839 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1837.x, x_1837.y, x_1839);
        let x_1847 : vec3<f32> = txVec14;
        let x_1849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1847.xy, x_1847.z);
        u_xlat73 = x_1849;
        let x_1850 : f32 = u_xlat73;
        let x_1852 : f32 = u_xlat19.y;
        u_xlat73 = (x_1850 * x_1852);
        let x_1855 : f32 = u_xlat19.x;
        let x_1856 : f32 = u_xlat72;
        let x_1858 : f32 = u_xlat73;
        u_xlat72 = ((x_1855 * x_1856) + x_1858);
        let x_1861 : vec4<f32> = u_xlat14;
        let x_1862 : vec2<f32> = vec2<f32>(x_1861.x, x_1861.y);
        let x_1864 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1862.x, x_1862.y, x_1864);
        let x_1871 : vec3<f32> = txVec15;
        let x_1873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1871.xy, x_1871.z);
        u_xlat73 = x_1873;
        let x_1875 : f32 = u_xlat19.z;
        let x_1876 : f32 = u_xlat73;
        let x_1878 : f32 = u_xlat72;
        u_xlat72 = ((x_1875 * x_1876) + x_1878);
        let x_1881 : vec4<f32> = u_xlat16;
        let x_1882 : vec2<f32> = vec2<f32>(x_1881.x, x_1881.y);
        let x_1884 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1882.x, x_1882.y, x_1884);
        let x_1891 : vec3<f32> = txVec16;
        let x_1893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1891.xy, x_1891.z);
        u_xlat73 = x_1893;
        let x_1895 : f32 = u_xlat19.w;
        let x_1896 : f32 = u_xlat73;
        let x_1898 : f32 = u_xlat72;
        u_xlat72 = ((x_1895 * x_1896) + x_1898);
        let x_1901 : vec4<f32> = u_xlat15;
        let x_1902 : vec2<f32> = vec2<f32>(x_1901.x, x_1901.y);
        let x_1904 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1902.x, x_1902.y, x_1904);
        let x_1911 : vec3<f32> = txVec17;
        let x_1913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1911.xy, x_1911.z);
        u_xlat73 = x_1913;
        let x_1915 : f32 = u_xlat20.x;
        let x_1916 : f32 = u_xlat73;
        let x_1918 : f32 = u_xlat72;
        u_xlat72 = ((x_1915 * x_1916) + x_1918);
        let x_1921 : vec4<f32> = u_xlat15;
        let x_1922 : vec2<f32> = vec2<f32>(x_1921.z, x_1921.w);
        let x_1924 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1922.x, x_1922.y, x_1924);
        let x_1931 : vec3<f32> = txVec18;
        let x_1933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1931.xy, x_1931.z);
        u_xlat73 = x_1933;
        let x_1935 : f32 = u_xlat20.y;
        let x_1936 : f32 = u_xlat73;
        let x_1938 : f32 = u_xlat72;
        u_xlat72 = ((x_1935 * x_1936) + x_1938);
        let x_1941 : vec2<f32> = u_xlat58;
        let x_1943 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1941.x, x_1941.y, x_1943);
        let x_1950 : vec3<f32> = txVec19;
        let x_1952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1950.xy, x_1950.z);
        u_xlat73 = x_1952;
        let x_1954 : f32 = u_xlat20.z;
        let x_1955 : f32 = u_xlat73;
        let x_1957 : f32 = u_xlat72;
        u_xlat72 = ((x_1954 * x_1955) + x_1957);
        let x_1960 : vec4<f32> = u_xlat16;
        let x_1961 : vec2<f32> = vec2<f32>(x_1960.z, x_1960.w);
        let x_1963 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1961.x, x_1961.y, x_1963);
        let x_1970 : vec3<f32> = txVec20;
        let x_1972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1970.xy, x_1970.z);
        u_xlat73 = x_1972;
        let x_1974 : f32 = u_xlat20.w;
        let x_1975 : f32 = u_xlat73;
        let x_1977 : f32 = u_xlat72;
        u_xlat72 = ((x_1974 * x_1975) + x_1977);
        let x_1980 : vec4<f32> = u_xlat17;
        let x_1981 : vec2<f32> = vec2<f32>(x_1980.x, x_1980.y);
        let x_1983 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1981.x, x_1981.y, x_1983);
        let x_1990 : vec3<f32> = txVec21;
        let x_1992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1990.xy, x_1990.z);
        u_xlat73 = x_1992;
        let x_1994 : f32 = u_xlat21.x;
        let x_1995 : f32 = u_xlat73;
        let x_1997 : f32 = u_xlat72;
        u_xlat72 = ((x_1994 * x_1995) + x_1997);
        let x_2000 : vec4<f32> = u_xlat17;
        let x_2001 : vec2<f32> = vec2<f32>(x_2000.z, x_2000.w);
        let x_2003 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2001.x, x_2001.y, x_2003);
        let x_2010 : vec3<f32> = txVec22;
        let x_2012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2010.xy, x_2010.z);
        u_xlat73 = x_2012;
        let x_2014 : f32 = u_xlat21.y;
        let x_2015 : f32 = u_xlat73;
        let x_2017 : f32 = u_xlat72;
        u_xlat72 = ((x_2014 * x_2015) + x_2017);
        let x_2020 : vec2<f32> = u_xlat31;
        let x_2022 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2020.x, x_2020.y, x_2022);
        let x_2029 : vec3<f32> = txVec23;
        let x_2031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2029.xy, x_2029.z);
        u_xlat73 = x_2031;
        let x_2033 : f32 = u_xlat21.z;
        let x_2034 : f32 = u_xlat73;
        let x_2036 : f32 = u_xlat72;
        u_xlat72 = ((x_2033 * x_2034) + x_2036);
        let x_2039 : vec2<f32> = u_xlat18;
        let x_2041 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2039.x, x_2039.y, x_2041);
        let x_2048 : vec3<f32> = txVec24;
        let x_2050 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2048.xy, x_2048.z);
        u_xlat73 = x_2050;
        let x_2052 : f32 = u_xlat21.w;
        let x_2053 : f32 = u_xlat73;
        let x_2055 : f32 = u_xlat72;
        u_xlat72 = ((x_2052 * x_2053) + x_2055);
        let x_2058 : vec4<f32> = u_xlat12;
        let x_2059 : vec2<f32> = vec2<f32>(x_2058.x, x_2058.y);
        let x_2061 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2059.x, x_2059.y, x_2061);
        let x_2068 : vec3<f32> = txVec25;
        let x_2070 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2068.xy, x_2068.z);
        u_xlat73 = x_2070;
        let x_2072 : f32 = u_xlat8.x;
        let x_2073 : f32 = u_xlat73;
        let x_2075 : f32 = u_xlat72;
        u_xlat72 = ((x_2072 * x_2073) + x_2075);
        let x_2078 : vec4<f32> = u_xlat12;
        let x_2079 : vec2<f32> = vec2<f32>(x_2078.z, x_2078.w);
        let x_2081 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2079.x, x_2079.y, x_2081);
        let x_2088 : vec3<f32> = txVec26;
        let x_2090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2088.xy, x_2088.z);
        u_xlat73 = x_2090;
        let x_2092 : f32 = u_xlat8.y;
        let x_2093 : f32 = u_xlat73;
        let x_2095 : f32 = u_xlat72;
        u_xlat72 = ((x_2092 * x_2093) + x_2095);
        let x_2098 : vec2<f32> = u_xlat55;
        let x_2100 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2098.x, x_2098.y, x_2100);
        let x_2107 : vec3<f32> = txVec27;
        let x_2109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2107.xy, x_2107.z);
        u_xlat73 = x_2109;
        let x_2111 : f32 = u_xlat8.z;
        let x_2112 : f32 = u_xlat73;
        let x_2114 : f32 = u_xlat72;
        u_xlat72 = ((x_2111 * x_2112) + x_2114);
        let x_2117 : vec3<f32> = u_xlat28;
        let x_2118 : vec2<f32> = vec2<f32>(x_2117.x, x_2117.y);
        let x_2120 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2118.x, x_2118.y, x_2120);
        let x_2127 : vec3<f32> = txVec28;
        let x_2129 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2127.xy, x_2127.z);
        u_xlat28.x = x_2129;
        let x_2132 : f32 = u_xlat8.w;
        let x_2134 : f32 = u_xlat28.x;
        let x_2136 : f32 = u_xlat72;
        u_xlat71 = ((x_2132 * x_2134) + x_2136);
      }
    }
  } else {
    let x_2140 : vec4<f32> = u_xlat3;
    let x_2141 : vec2<f32> = vec2<f32>(x_2140.x, x_2140.y);
    let x_2143 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2141.x, x_2141.y, x_2143);
    let x_2150 : vec3<f32> = txVec29;
    let x_2152 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2150.xy, x_2150.z);
    u_xlat71 = x_2152;
  }
  let x_2154 : f32 = x_583.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2154) + 1.0f);
  let x_2158 : f32 = u_xlat71;
  let x_2160 : f32 = x_583.x_MainLightShadowParams.x;
  let x_2163 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2158 * x_2160) + x_2163);
  let x_2168 : f32 = u_xlat3.z;
  u_xlatb25.x = (0.0f >= x_2168);
  let x_2173 : f32 = u_xlat3.z;
  u_xlatb47 = (x_2173 >= 1.0f);
  let x_2175 : bool = u_xlatb47;
  let x_2177 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_2175 | x_2177);
  let x_2181 : bool = u_xlatb25.x;
  if (x_2181) {
    x_2182 = 1.0f;
  } else {
    let x_2187 : f32 = u_xlat3.x;
    x_2182 = x_2187;
  }
  let x_2188 : f32 = x_2182;
  u_xlat3.x = x_2188;
  let x_2190 : vec3<f32> = vs_TEXCOORD7;
  let x_2192 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat28 = (x_2190 + -(x_2192));
  let x_2196 : vec3<f32> = u_xlat28;
  let x_2197 : vec3<f32> = u_xlat28;
  u_xlat25.x = dot(x_2196, x_2197);
  let x_2201 : f32 = u_xlat25.x;
  let x_2203 : f32 = x_583.x_MainLightShadowParams.z;
  let x_2206 : f32 = x_583.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2201 * x_2203) + x_2206);
  let x_2210 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2210, 0.0f, 1.0f);
  let x_2215 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_2215) + 1.0f);
  let x_2219 : f32 = u_xlat25.x;
  let x_2220 : f32 = u_xlat47;
  let x_2223 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2219 * x_2220) + x_2223);
  let x_2232 : f32 = x_2230.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_2232 == -1.0f));
  let x_2236 : bool = u_xlatb25.x;
  if (x_2236) {
    let x_2239 : vec3<f32> = vs_TEXCOORD7;
    let x_2242 : vec4<f32> = x_2230.x_MainLightWorldToLight[1i];
    let x_2244 : vec2<f32> = (vec2<f32>(x_2239.y, x_2239.y) * vec2<f32>(x_2242.x, x_2242.y));
    let x_2245 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2244.x, x_2244.y, x_2245.z);
    let x_2248 : vec4<f32> = x_2230.x_MainLightWorldToLight[0i];
    let x_2250 : vec3<f32> = vs_TEXCOORD7;
    let x_2253 : vec3<f32> = u_xlat25;
    let x_2255 : vec2<f32> = ((vec2<f32>(x_2248.x, x_2248.y) * vec2<f32>(x_2250.x, x_2250.x)) + vec2<f32>(x_2253.x, x_2253.y));
    let x_2256 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2255.x, x_2255.y, x_2256.z);
    let x_2259 : vec4<f32> = x_2230.x_MainLightWorldToLight[2i];
    let x_2261 : vec3<f32> = vs_TEXCOORD7;
    let x_2264 : vec3<f32> = u_xlat25;
    let x_2266 : vec2<f32> = ((vec2<f32>(x_2259.x, x_2259.y) * vec2<f32>(x_2261.z, x_2261.z)) + vec2<f32>(x_2264.x, x_2264.y));
    let x_2267 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2266.x, x_2266.y, x_2267.z);
    let x_2269 : vec3<f32> = u_xlat25;
    let x_2272 : vec4<f32> = x_2230.x_MainLightWorldToLight[3i];
    let x_2274 : vec2<f32> = (vec2<f32>(x_2269.x, x_2269.y) + vec2<f32>(x_2272.x, x_2272.y));
    let x_2275 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2274.x, x_2274.y, x_2275.z);
    let x_2277 : vec3<f32> = u_xlat25;
    let x_2280 : vec2<f32> = ((vec2<f32>(x_2277.x, x_2277.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2281 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2280.x, x_2280.y, x_2281.z);
    let x_2288 : vec3<f32> = u_xlat25;
    let x_2291 : f32 = x_126.x_GlobalMipBias.x;
    let x_2292 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2288.x, x_2288.y), x_2291);
    u_xlat8 = x_2292;
    let x_2294 : f32 = x_2230.x_MainLightCookieTextureFormat;
    let x_2296 : f32 = x_2230.x_MainLightCookieTextureFormat;
    let x_2298 : f32 = x_2230.x_MainLightCookieTextureFormat;
    let x_2300 : f32 = x_2230.x_MainLightCookieTextureFormat;
    let x_2301 : vec4<f32> = vec4<f32>(x_2294, x_2296, x_2298, x_2300);
    let x_2308 : vec4<bool> = (vec4<f32>(x_2301.x, x_2301.y, x_2301.z, x_2301.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2308.x, x_2308.y);
    let x_2311 : bool = u_xlatb25.y;
    if (x_2311) {
      let x_2316 : f32 = u_xlat8.w;
      x_2312 = x_2316;
    } else {
      let x_2319 : f32 = u_xlat8.x;
      x_2312 = x_2319;
    }
    let x_2320 : f32 = x_2312;
    u_xlat47 = x_2320;
    let x_2322 : bool = u_xlatb25.x;
    if (x_2322) {
      let x_2326 : vec4<f32> = u_xlat8;
      x_2323 = vec3<f32>(x_2326.x, x_2326.y, x_2326.z);
    } else {
      let x_2329 : f32 = u_xlat47;
      x_2323 = vec3<f32>(x_2329, x_2329, x_2329);
    }
    let x_2331 : vec3<f32> = x_2323;
    u_xlat28 = x_2331;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_2336 : vec3<f32> = u_xlat28;
  let x_2338 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat28 = (x_2336 * vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
  let x_2341 : vec4<f32> = u_xlat6;
  let x_2343 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2341.x, x_2341.x, x_2341.x) * x_2343);
  let x_2345 : vec4<f32> = u_xlat1;
  let x_2348 : vec3<f32> = u_xlat2;
  u_xlat25.x = dot(-(vec3<f32>(x_2345.x, x_2345.y, x_2345.z)), x_2348);
  let x_2352 : f32 = u_xlat25.x;
  let x_2354 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2352 + x_2354);
  let x_2357 : vec3<f32> = u_xlat2;
  let x_2358 : vec3<f32> = u_xlat25;
  let x_2362 : vec4<f32> = u_xlat1;
  let x_2365 : vec3<f32> = ((x_2357 * -(vec3<f32>(x_2358.x, x_2358.x, x_2358.x))) + -(vec3<f32>(x_2362.x, x_2362.y, x_2362.z)));
  let x_2366 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
  let x_2368 : vec3<f32> = u_xlat2;
  let x_2369 : vec4<f32> = u_xlat1;
  u_xlat25.x = dot(x_2368, vec3<f32>(x_2369.x, x_2369.y, x_2369.z));
  let x_2374 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2374, 0.0f, 1.0f);
  let x_2378 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_2378) + 1.0f);
  let x_2383 : f32 = u_xlat25.x;
  let x_2385 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2383 * x_2385);
  let x_2389 : f32 = u_xlat25.x;
  let x_2391 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2389 * x_2391);
  let x_2395 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_2395) * 0.699999988f) + 1.700000048f);
  let x_2402 : f32 = u_xlat0.x;
  let x_2403 : f32 = u_xlat47;
  u_xlat0.x = (x_2402 * x_2403);
  let x_2407 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2407 * 6.0f);
  let x_2419 : vec4<f32> = u_xlat8;
  let x_2422 : f32 = u_xlat0.x;
  let x_2423 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2419.x, x_2419.y, x_2419.z), x_2422);
  u_xlat8 = x_2423;
  let x_2425 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2425 + -1.0f);
  let x_2433 : f32 = x_2431.unity_SpecCube0_HDR.w;
  let x_2435 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2433 * x_2435) + 1.0f);
  let x_2440 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2440, 0.0f);
  let x_2444 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2444);
  let x_2448 : f32 = u_xlat0.x;
  let x_2450 : f32 = x_2431.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2448 * x_2450);
  let x_2454 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2454);
  let x_2458 : f32 = u_xlat0.x;
  let x_2460 : f32 = x_2431.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2458 * x_2460);
  let x_2463 : vec4<f32> = u_xlat8;
  let x_2465 : vec3<f32> = u_xlat0;
  let x_2467 : vec3<f32> = (vec3<f32>(x_2463.x, x_2463.y, x_2463.z) * vec3<f32>(x_2465.x, x_2465.x, x_2465.x));
  let x_2468 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2467.x, x_2467.y, x_2467.z, x_2468.w);
  let x_2470 : f32 = u_xlat44;
  let x_2472 : f32 = u_xlat44;
  let x_2476 : vec2<f32> = ((vec2<f32>(x_2470, x_2470) * vec2<f32>(x_2472, x_2472)) + vec2<f32>(-1.0f, 1.0f));
  let x_2477 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2476.x, x_2477.y, x_2476.y);
  let x_2480 : f32 = u_xlat0.z;
  u_xlat44 = (1.0f / x_2480);
  let x_2482 : vec4<f32> = u_xlat5;
  let x_2485 : f32 = u_xlat69;
  let x_2487 : vec3<f32> = (-(vec3<f32>(x_2482.x, x_2482.y, x_2482.z)) + vec3<f32>(x_2485, x_2485, x_2485));
  let x_2488 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2487.x, x_2487.y, x_2487.z, x_2488.w);
  let x_2490 : vec3<f32> = u_xlat25;
  let x_2492 : vec4<f32> = u_xlat9;
  let x_2495 : vec4<f32> = u_xlat5;
  u_xlat25 = ((vec3<f32>(x_2490.x, x_2490.x, x_2490.x) * vec3<f32>(x_2492.x, x_2492.y, x_2492.z)) + vec3<f32>(x_2495.x, x_2495.y, x_2495.z));
  let x_2498 : f32 = u_xlat44;
  let x_2500 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_2498, x_2498, x_2498) * x_2500);
  let x_2502 : vec3<f32> = u_xlat25;
  let x_2503 : vec4<f32> = u_xlat8;
  u_xlat25 = (x_2502 * vec3<f32>(x_2503.x, x_2503.y, x_2503.z));
  let x_2506 : vec4<f32> = u_xlat4;
  let x_2508 : vec4<f32> = u_xlat7;
  let x_2511 : vec3<f32> = u_xlat25;
  u_xlat25 = ((vec3<f32>(x_2506.x, x_2506.y, x_2506.z) * vec3<f32>(x_2508.x, x_2508.y, x_2508.z)) + x_2511);
  let x_2514 : f32 = u_xlat3.x;
  let x_2516 : f32 = x_2431.unity_LightData.z;
  u_xlat44 = (x_2514 * x_2516);
  let x_2518 : vec3<f32> = u_xlat2;
  let x_2520 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(x_2518, vec3<f32>(x_2520.x, x_2520.y, x_2520.z));
  let x_2525 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2525, 0.0f, 1.0f);
  let x_2528 : f32 = u_xlat44;
  let x_2530 : f32 = u_xlat3.x;
  u_xlat44 = (x_2528 * x_2530);
  let x_2532 : f32 = u_xlat44;
  let x_2534 : vec3<f32> = u_xlat28;
  let x_2535 : vec3<f32> = (vec3<f32>(x_2532, x_2532, x_2532) * x_2534);
  let x_2536 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2535.x, x_2535.y, x_2535.z, x_2536.w);
  let x_2538 : vec4<f32> = u_xlat1;
  let x_2541 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat28 = (vec3<f32>(x_2538.x, x_2538.y, x_2538.z) + vec3<f32>(x_2541.x, x_2541.y, x_2541.z));
  let x_2544 : vec3<f32> = u_xlat28;
  let x_2545 : vec3<f32> = u_xlat28;
  u_xlat44 = dot(x_2544, x_2545);
  let x_2547 : f32 = u_xlat44;
  u_xlat44 = max(x_2547, 1.17549435e-37f);
  let x_2550 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_2550);
  let x_2552 : f32 = u_xlat44;
  let x_2554 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2552, x_2552, x_2552) * x_2554);
  let x_2556 : vec3<f32> = u_xlat2;
  let x_2557 : vec3<f32> = u_xlat28;
  u_xlat44 = dot(x_2556, x_2557);
  let x_2559 : f32 = u_xlat44;
  u_xlat44 = clamp(x_2559, 0.0f, 1.0f);
  let x_2562 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2564 : vec3<f32> = u_xlat28;
  u_xlat3.x = dot(vec3<f32>(x_2562.x, x_2562.y, x_2562.z), x_2564);
  let x_2568 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2568, 0.0f, 1.0f);
  let x_2571 : f32 = u_xlat44;
  let x_2572 : f32 = u_xlat44;
  u_xlat44 = (x_2571 * x_2572);
  let x_2574 : f32 = u_xlat44;
  let x_2576 : f32 = u_xlat0.x;
  u_xlat44 = ((x_2574 * x_2576) + 1.000010014f);
  let x_2581 : f32 = u_xlat3.x;
  let x_2583 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2581 * x_2583);
  let x_2586 : f32 = u_xlat44;
  let x_2587 : f32 = u_xlat44;
  u_xlat44 = (x_2586 * x_2587);
  let x_2590 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2590, 0.100000001f);
  let x_2594 : f32 = u_xlat44;
  let x_2596 : f32 = u_xlat3.x;
  u_xlat44 = (x_2594 * x_2596);
  let x_2598 : f32 = u_xlat70;
  let x_2599 : f32 = u_xlat44;
  u_xlat44 = (x_2598 * x_2599);
  let x_2601 : f32 = u_xlat68;
  let x_2602 : f32 = u_xlat44;
  u_xlat44 = (x_2601 / x_2602);
  let x_2604 : vec4<f32> = u_xlat5;
  let x_2606 : f32 = u_xlat44;
  let x_2609 : vec4<f32> = u_xlat7;
  u_xlat28 = ((vec3<f32>(x_2604.x, x_2604.y, x_2604.z) * vec3<f32>(x_2606, x_2606, x_2606)) + vec3<f32>(x_2609.x, x_2609.y, x_2609.z));
  let x_2612 : vec4<f32> = u_xlat4;
  let x_2614 : vec3<f32> = u_xlat28;
  let x_2615 : vec3<f32> = (vec3<f32>(x_2612.x, x_2612.y, x_2612.z) * x_2614);
  let x_2616 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2616.w);
  let x_2619 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2621 : f32 = x_2431.unity_LightData.y;
  u_xlat44 = min(x_2619, x_2621);
  let x_2624 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_2624));
  let x_2628 : f32 = x_2230.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2630 : f32 = x_2230.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2632 : f32 = x_2230.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2634 : f32 = x_2230.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2635 : vec4<f32> = vec4<f32>(x_2628, x_2630, x_2632, x_2634);
  let x_2641 : vec4<bool> = (vec4<f32>(x_2635.x, x_2635.y, x_2635.z, x_2635.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb28 = vec2<bool>(x_2641.x, x_2641.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2652 : u32 = u_xlatu_loop_1;
    let x_2653 : u32 = u_xlatu44;
    if ((x_2652 < x_2653)) {
    } else {
      break;
    }
    let x_2656 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_2656 >> 2u);
    let x_2659 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_2659 & 3u));
    let x_2662 : u32 = u_xlatu71;
    let x_2665 : vec4<f32> = x_2431.unity_LightIndices[bitcast<i32>(x_2662)];
    let x_2675 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2680 : vec4<u32> = indexable[x_2675];
    u_xlat71 = dot(x_2665, bitcast<vec4<f32>>(x_2680));
    let x_2683 : f32 = u_xlat71;
    u_xlatu71 = bitcast<u32>(i32(x_2683));
    let x_2686 : vec3<f32> = vs_TEXCOORD7;
    let x_2698 : u32 = u_xlatu71;
    let x_2701 : vec4<f32> = x_2697.x_AdditionalLightsPosition[bitcast<i32>(x_2698)];
    let x_2704 : u32 = u_xlatu71;
    let x_2707 : vec4<f32> = x_2697.x_AdditionalLightsPosition[bitcast<i32>(x_2704)];
    let x_2709 : vec3<f32> = ((-(x_2686) * vec3<f32>(x_2701.w, x_2701.w, x_2701.w)) + vec3<f32>(x_2707.x, x_2707.y, x_2707.z));
    let x_2710 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2709.x, x_2709.y, x_2709.z, x_2710.w);
    let x_2712 : vec4<f32> = u_xlat9;
    let x_2714 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_2712.x, x_2712.y, x_2712.z), vec3<f32>(x_2714.x, x_2714.y, x_2714.z));
    let x_2717 : f32 = u_xlat72;
    u_xlat72 = max(x_2717, 6.10351562e-05f);
    let x_2719 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_2719);
    let x_2721 : f32 = u_xlat73;
    let x_2723 : vec4<f32> = u_xlat9;
    let x_2725 : vec3<f32> = (vec3<f32>(x_2721, x_2721, x_2721) * vec3<f32>(x_2723.x, x_2723.y, x_2723.z));
    let x_2726 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2725.x, x_2725.y, x_2725.z, x_2726.w);
    let x_2729 : f32 = u_xlat72;
    u_xlat74 = (1.0f / x_2729);
    let x_2731 : f32 = u_xlat72;
    let x_2732 : u32 = u_xlatu71;
    let x_2735 : f32 = x_2697.x_AdditionalLightsAttenuation[bitcast<i32>(x_2732)].x;
    u_xlat72 = (x_2731 * x_2735);
    let x_2737 : f32 = u_xlat72;
    let x_2739 : f32 = u_xlat72;
    u_xlat72 = ((-(x_2737) * x_2739) + 1.0f);
    let x_2742 : f32 = u_xlat72;
    u_xlat72 = max(x_2742, 0.0f);
    let x_2744 : f32 = u_xlat72;
    let x_2745 : f32 = u_xlat72;
    u_xlat72 = (x_2744 * x_2745);
    let x_2747 : f32 = u_xlat72;
    let x_2748 : f32 = u_xlat74;
    u_xlat72 = (x_2747 * x_2748);
    let x_2750 : u32 = u_xlatu71;
    let x_2753 : vec4<f32> = x_2697.x_AdditionalLightsSpotDir[bitcast<i32>(x_2750)];
    let x_2755 : vec4<f32> = u_xlat10;
    u_xlat74 = dot(vec3<f32>(x_2753.x, x_2753.y, x_2753.z), vec3<f32>(x_2755.x, x_2755.y, x_2755.z));
    let x_2758 : f32 = u_xlat74;
    let x_2759 : u32 = u_xlatu71;
    let x_2762 : f32 = x_2697.x_AdditionalLightsAttenuation[bitcast<i32>(x_2759)].z;
    let x_2764 : u32 = u_xlatu71;
    let x_2767 : f32 = x_2697.x_AdditionalLightsAttenuation[bitcast<i32>(x_2764)].w;
    u_xlat74 = ((x_2758 * x_2762) + x_2767);
    let x_2769 : f32 = u_xlat74;
    u_xlat74 = clamp(x_2769, 0.0f, 1.0f);
    let x_2771 : f32 = u_xlat74;
    let x_2772 : f32 = u_xlat74;
    u_xlat74 = (x_2771 * x_2772);
    let x_2774 : f32 = u_xlat72;
    let x_2775 : f32 = u_xlat74;
    u_xlat72 = (x_2774 * x_2775);
    let x_2778 : u32 = u_xlatu71;
    u_xlatu74 = (x_2778 >> 5u);
    let x_2781 : u32 = u_xlatu71;
    u_xlati75 = (1i << bitcast<u32>((bitcast<i32>(x_2781) & 31i)));
    let x_2786 : i32 = u_xlati75;
    let x_2788 : u32 = u_xlatu74;
    let x_2791 : f32 = x_2230.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2788)].el;
    u_xlati74 = bitcast<i32>((bitcast<u32>(x_2786) & bitcast<u32>(x_2791)));
    let x_2795 : i32 = u_xlati74;
    if ((x_2795 != 0i)) {
      let x_2805 : u32 = u_xlatu71;
      let x_2808 : f32 = x_2804.x_AdditionalLightsLightTypes[bitcast<i32>(x_2805)].el;
      u_xlati74 = i32(x_2808);
      let x_2810 : i32 = u_xlati74;
      u_xlati75 = select(1i, 0i, (x_2810 != 0i));
      let x_2814 : u32 = u_xlatu71;
      u_xlati76 = (bitcast<i32>(x_2814) << bitcast<u32>(2i));
      let x_2817 : i32 = u_xlati75;
      if ((x_2817 != 0i)) {
        let x_2821 : vec3<f32> = vs_TEXCOORD7;
        let x_2823 : i32 = u_xlati76;
        let x_2826 : i32 = u_xlati76;
        let x_2830 : vec4<f32> = x_2804.x_AdditionalLightsWorldToLights[((x_2823 + 1i) / 4i)][((x_2826 + 1i) % 4i)];
        let x_2832 : vec3<f32> = (vec3<f32>(x_2821.y, x_2821.y, x_2821.y) * vec3<f32>(x_2830.x, x_2830.y, x_2830.w));
        let x_2833 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2832.x, x_2832.y, x_2832.z, x_2833.w);
        let x_2835 : i32 = u_xlati76;
        let x_2837 : i32 = u_xlati76;
        let x_2840 : vec4<f32> = x_2804.x_AdditionalLightsWorldToLights[(x_2835 / 4i)][(x_2837 % 4i)];
        let x_2842 : vec3<f32> = vs_TEXCOORD7;
        let x_2845 : vec4<f32> = u_xlat11;
        let x_2847 : vec3<f32> = ((vec3<f32>(x_2840.x, x_2840.y, x_2840.w) * vec3<f32>(x_2842.x, x_2842.x, x_2842.x)) + vec3<f32>(x_2845.x, x_2845.y, x_2845.z));
        let x_2848 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2847.x, x_2847.y, x_2847.z, x_2848.w);
        let x_2850 : i32 = u_xlati76;
        let x_2853 : i32 = u_xlati76;
        let x_2857 : vec4<f32> = x_2804.x_AdditionalLightsWorldToLights[((x_2850 + 2i) / 4i)][((x_2853 + 2i) % 4i)];
        let x_2859 : vec3<f32> = vs_TEXCOORD7;
        let x_2862 : vec4<f32> = u_xlat11;
        let x_2864 : vec3<f32> = ((vec3<f32>(x_2857.x, x_2857.y, x_2857.w) * vec3<f32>(x_2859.z, x_2859.z, x_2859.z)) + vec3<f32>(x_2862.x, x_2862.y, x_2862.z));
        let x_2865 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2864.x, x_2864.y, x_2864.z, x_2865.w);
        let x_2867 : vec4<f32> = u_xlat11;
        let x_2869 : i32 = u_xlati76;
        let x_2872 : i32 = u_xlati76;
        let x_2876 : vec4<f32> = x_2804.x_AdditionalLightsWorldToLights[((x_2869 + 3i) / 4i)][((x_2872 + 3i) % 4i)];
        let x_2878 : vec3<f32> = (vec3<f32>(x_2867.x, x_2867.y, x_2867.z) + vec3<f32>(x_2876.x, x_2876.y, x_2876.w));
        let x_2879 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2878.x, x_2878.y, x_2878.z, x_2879.w);
        let x_2881 : vec4<f32> = u_xlat11;
        let x_2883 : vec4<f32> = u_xlat11;
        let x_2885 : vec2<f32> = (vec2<f32>(x_2881.x, x_2881.y) / vec2<f32>(x_2883.z, x_2883.z));
        let x_2886 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2885.x, x_2885.y, x_2886.z, x_2886.w);
        let x_2888 : vec4<f32> = u_xlat11;
        let x_2891 : vec2<f32> = ((vec2<f32>(x_2888.x, x_2888.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2892 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2891.x, x_2891.y, x_2892.z, x_2892.w);
        let x_2894 : vec4<f32> = u_xlat11;
        let x_2898 : vec2<f32> = clamp(vec2<f32>(x_2894.x, x_2894.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2899 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2898.x, x_2898.y, x_2899.z, x_2899.w);
        let x_2901 : u32 = u_xlatu71;
        let x_2904 : vec4<f32> = x_2804.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2901)];
        let x_2906 : vec4<f32> = u_xlat11;
        let x_2909 : u32 = u_xlatu71;
        let x_2912 : vec4<f32> = x_2804.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2909)];
        let x_2914 : vec2<f32> = ((vec2<f32>(x_2904.x, x_2904.y) * vec2<f32>(x_2906.x, x_2906.y)) + vec2<f32>(x_2912.z, x_2912.w));
        let x_2915 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2914.x, x_2914.y, x_2915.z, x_2915.w);
      } else {
        let x_2919 : i32 = u_xlati74;
        u_xlatb74 = (x_2919 == 1i);
        let x_2921 : bool = u_xlatb74;
        u_xlati74 = select(0i, 1i, x_2921);
        let x_2923 : i32 = u_xlati74;
        if ((x_2923 != 0i)) {
          let x_2927 : vec3<f32> = vs_TEXCOORD7;
          let x_2929 : i32 = u_xlati76;
          let x_2932 : i32 = u_xlati76;
          let x_2936 : vec4<f32> = x_2804.x_AdditionalLightsWorldToLights[((x_2929 + 1i) / 4i)][((x_2932 + 1i) % 4i)];
          u_xlat55 = (vec2<f32>(x_2927.y, x_2927.y) * vec2<f32>(x_2936.x, x_2936.y));
          let x_2939 : i32 = u_xlati76;
          let x_2941 : i32 = u_xlati76;
          let x_2944 : vec4<f32> = x_2804.x_AdditionalLightsWorldToLights[(x_2939 / 4i)][(x_2941 % 4i)];
          let x_2946 : vec3<f32> = vs_TEXCOORD7;
          let x_2949 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_2944.x, x_2944.y) * vec2<f32>(x_2946.x, x_2946.x)) + x_2949);
          let x_2951 : i32 = u_xlati76;
          let x_2954 : i32 = u_xlati76;
          let x_2958 : vec4<f32> = x_2804.x_AdditionalLightsWorldToLights[((x_2951 + 2i) / 4i)][((x_2954 + 2i) % 4i)];
          let x_2960 : vec3<f32> = vs_TEXCOORD7;
          let x_2963 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_2958.x, x_2958.y) * vec2<f32>(x_2960.z, x_2960.z)) + x_2963);
          let x_2965 : vec2<f32> = u_xlat55;
          let x_2966 : i32 = u_xlati76;
          let x_2969 : i32 = u_xlati76;
          let x_2973 : vec4<f32> = x_2804.x_AdditionalLightsWorldToLights[((x_2966 + 3i) / 4i)][((x_2969 + 3i) % 4i)];
          u_xlat55 = (x_2965 + vec2<f32>(x_2973.x, x_2973.y));
          let x_2976 : vec2<f32> = u_xlat55;
          u_xlat55 = ((x_2976 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2979 : vec2<f32> = u_xlat55;
          u_xlat55 = fract(x_2979);
          let x_2981 : u32 = u_xlatu71;
          let x_2984 : vec4<f32> = x_2804.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2981)];
          let x_2986 : vec2<f32> = u_xlat55;
          let x_2988 : u32 = u_xlatu71;
          let x_2991 : vec4<f32> = x_2804.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2988)];
          let x_2993 : vec2<f32> = ((vec2<f32>(x_2984.x, x_2984.y) * x_2986) + vec2<f32>(x_2991.z, x_2991.w));
          let x_2994 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2993.x, x_2993.y, x_2994.z, x_2994.w);
        } else {
          let x_2997 : vec3<f32> = vs_TEXCOORD7;
          let x_2999 : i32 = u_xlati76;
          let x_3002 : i32 = u_xlati76;
          let x_3006 : vec4<f32> = x_2804.x_AdditionalLightsWorldToLights[((x_2999 + 1i) / 4i)][((x_3002 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2997.y, x_2997.y, x_2997.y, x_2997.y) * x_3006);
          let x_3008 : i32 = u_xlati76;
          let x_3010 : i32 = u_xlati76;
          let x_3013 : vec4<f32> = x_2804.x_AdditionalLightsWorldToLights[(x_3008 / 4i)][(x_3010 % 4i)];
          let x_3014 : vec3<f32> = vs_TEXCOORD7;
          let x_3017 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3013 * vec4<f32>(x_3014.x, x_3014.x, x_3014.x, x_3014.x)) + x_3017);
          let x_3019 : i32 = u_xlati76;
          let x_3022 : i32 = u_xlati76;
          let x_3026 : vec4<f32> = x_2804.x_AdditionalLightsWorldToLights[((x_3019 + 2i) / 4i)][((x_3022 + 2i) % 4i)];
          let x_3027 : vec3<f32> = vs_TEXCOORD7;
          let x_3030 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3026 * vec4<f32>(x_3027.z, x_3027.z, x_3027.z, x_3027.z)) + x_3030);
          let x_3032 : vec4<f32> = u_xlat12;
          let x_3033 : i32 = u_xlati76;
          let x_3036 : i32 = u_xlati76;
          let x_3040 : vec4<f32> = x_2804.x_AdditionalLightsWorldToLights[((x_3033 + 3i) / 4i)][((x_3036 + 3i) % 4i)];
          u_xlat12 = (x_3032 + x_3040);
          let x_3042 : vec4<f32> = u_xlat12;
          let x_3044 : vec4<f32> = u_xlat12;
          let x_3046 : vec3<f32> = (vec3<f32>(x_3042.x, x_3042.y, x_3042.z) / vec3<f32>(x_3044.w, x_3044.w, x_3044.w));
          let x_3047 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3046.x, x_3046.y, x_3046.z, x_3047.w);
          let x_3049 : vec4<f32> = u_xlat12;
          let x_3051 : vec4<f32> = u_xlat12;
          u_xlat74 = dot(vec3<f32>(x_3049.x, x_3049.y, x_3049.z), vec3<f32>(x_3051.x, x_3051.y, x_3051.z));
          let x_3054 : f32 = u_xlat74;
          u_xlat74 = inverseSqrt(x_3054);
          let x_3056 : f32 = u_xlat74;
          let x_3058 : vec4<f32> = u_xlat12;
          let x_3060 : vec3<f32> = (vec3<f32>(x_3056, x_3056, x_3056) * vec3<f32>(x_3058.x, x_3058.y, x_3058.z));
          let x_3061 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3060.x, x_3060.y, x_3060.z, x_3061.w);
          let x_3063 : vec4<f32> = u_xlat12;
          u_xlat74 = dot(abs(vec3<f32>(x_3063.x, x_3063.y, x_3063.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3068 : f32 = u_xlat74;
          u_xlat74 = max(x_3068, 0.000001f);
          let x_3071 : f32 = u_xlat74;
          u_xlat74 = (1.0f / x_3071);
          let x_3073 : f32 = u_xlat74;
          let x_3075 : vec4<f32> = u_xlat12;
          let x_3077 : vec3<f32> = (vec3<f32>(x_3073, x_3073, x_3073) * vec3<f32>(x_3075.z, x_3075.x, x_3075.y));
          let x_3078 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3077.x, x_3077.y, x_3077.z, x_3078.w);
          let x_3081 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3081);
          let x_3085 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3085, 0.0f, 1.0f);
          let x_3089 : vec4<f32> = u_xlat13;
          let x_3092 : vec4<bool> = (vec4<f32>(x_3089.y, x_3089.z, x_3089.y, x_3089.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb55 = vec2<bool>(x_3092.x, x_3092.y);
          let x_3095 : bool = u_xlatb55.x;
          if (x_3095) {
            let x_3100 : f32 = u_xlat13.x;
            x_3096 = x_3100;
          } else {
            let x_3103 : f32 = u_xlat13.x;
            x_3096 = -(x_3103);
          }
          let x_3105 : f32 = x_3096;
          u_xlat55.x = x_3105;
          let x_3108 : bool = u_xlatb55.y;
          if (x_3108) {
            let x_3113 : f32 = u_xlat13.x;
            x_3109 = x_3113;
          } else {
            let x_3116 : f32 = u_xlat13.x;
            x_3109 = -(x_3116);
          }
          let x_3118 : f32 = x_3109;
          u_xlat55.y = x_3118;
          let x_3120 : vec4<f32> = u_xlat12;
          let x_3122 : f32 = u_xlat74;
          let x_3125 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_3120.x, x_3120.y) * vec2<f32>(x_3122, x_3122)) + x_3125);
          let x_3127 : vec2<f32> = u_xlat55;
          u_xlat55 = ((x_3127 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3130 : vec2<f32> = u_xlat55;
          u_xlat55 = clamp(x_3130, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3134 : u32 = u_xlatu71;
          let x_3137 : vec4<f32> = x_2804.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3134)];
          let x_3139 : vec2<f32> = u_xlat55;
          let x_3141 : u32 = u_xlatu71;
          let x_3144 : vec4<f32> = x_2804.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3141)];
          let x_3146 : vec2<f32> = ((vec2<f32>(x_3137.x, x_3137.y) * x_3139) + vec2<f32>(x_3144.z, x_3144.w));
          let x_3147 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3146.x, x_3146.y, x_3147.z, x_3147.w);
        }
      }
      let x_3154 : vec4<f32> = u_xlat11;
      let x_3157 : f32 = x_126.x_GlobalMipBias.x;
      let x_3158 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3154.x, x_3154.y), x_3157);
      u_xlat11 = x_3158;
      let x_3160 : bool = u_xlatb28.y;
      if (x_3160) {
        let x_3165 : f32 = u_xlat11.w;
        x_3161 = x_3165;
      } else {
        let x_3168 : f32 = u_xlat11.x;
        x_3161 = x_3168;
      }
      let x_3169 : f32 = x_3161;
      u_xlat74 = x_3169;
      let x_3171 : bool = u_xlatb28.x;
      if (x_3171) {
        let x_3175 : vec4<f32> = u_xlat11;
        x_3172 = vec3<f32>(x_3175.x, x_3175.y, x_3175.z);
      } else {
        let x_3178 : f32 = u_xlat74;
        x_3172 = vec3<f32>(x_3178, x_3178, x_3178);
      }
      let x_3180 : vec3<f32> = x_3172;
      let x_3181 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3180.x, x_3180.y, x_3180.z, x_3181.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3187 : vec4<f32> = u_xlat11;
    let x_3189 : u32 = u_xlatu71;
    let x_3192 : vec4<f32> = x_2697.x_AdditionalLightsColor[bitcast<i32>(x_3189)];
    let x_3194 : vec3<f32> = (vec3<f32>(x_3187.x, x_3187.y, x_3187.z) * vec3<f32>(x_3192.x, x_3192.y, x_3192.z));
    let x_3195 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3194.x, x_3194.y, x_3194.z, x_3195.w);
    let x_3197 : vec4<f32> = u_xlat6;
    let x_3199 : vec4<f32> = u_xlat11;
    let x_3201 : vec3<f32> = (vec3<f32>(x_3197.x, x_3197.x, x_3197.x) * vec3<f32>(x_3199.x, x_3199.y, x_3199.z));
    let x_3202 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3201.x, x_3201.y, x_3201.z, x_3202.w);
    let x_3204 : vec3<f32> = u_xlat2;
    let x_3205 : vec4<f32> = u_xlat10;
    u_xlat71 = dot(x_3204, vec3<f32>(x_3205.x, x_3205.y, x_3205.z));
    let x_3208 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3208, 0.0f, 1.0f);
    let x_3210 : f32 = u_xlat71;
    let x_3211 : f32 = u_xlat72;
    u_xlat71 = (x_3210 * x_3211);
    let x_3213 : f32 = u_xlat71;
    let x_3215 : vec4<f32> = u_xlat11;
    let x_3217 : vec3<f32> = (vec3<f32>(x_3213, x_3213, x_3213) * vec3<f32>(x_3215.x, x_3215.y, x_3215.z));
    let x_3218 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3217.x, x_3217.y, x_3217.z, x_3218.w);
    let x_3220 : vec4<f32> = u_xlat9;
    let x_3222 : f32 = u_xlat73;
    let x_3225 : vec4<f32> = u_xlat1;
    let x_3227 : vec3<f32> = ((vec3<f32>(x_3220.x, x_3220.y, x_3220.z) * vec3<f32>(x_3222, x_3222, x_3222)) + vec3<f32>(x_3225.x, x_3225.y, x_3225.z));
    let x_3228 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3227.x, x_3227.y, x_3227.z, x_3228.w);
    let x_3230 : vec4<f32> = u_xlat9;
    let x_3232 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_3230.x, x_3230.y, x_3230.z), vec3<f32>(x_3232.x, x_3232.y, x_3232.z));
    let x_3235 : f32 = u_xlat71;
    u_xlat71 = max(x_3235, 1.17549435e-37f);
    let x_3237 : f32 = u_xlat71;
    u_xlat71 = inverseSqrt(x_3237);
    let x_3239 : f32 = u_xlat71;
    let x_3241 : vec4<f32> = u_xlat9;
    let x_3243 : vec3<f32> = (vec3<f32>(x_3239, x_3239, x_3239) * vec3<f32>(x_3241.x, x_3241.y, x_3241.z));
    let x_3244 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3243.x, x_3243.y, x_3243.z, x_3244.w);
    let x_3246 : vec3<f32> = u_xlat2;
    let x_3247 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(x_3246, vec3<f32>(x_3247.x, x_3247.y, x_3247.z));
    let x_3250 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3250, 0.0f, 1.0f);
    let x_3252 : vec4<f32> = u_xlat10;
    let x_3254 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_3252.x, x_3252.y, x_3252.z), vec3<f32>(x_3254.x, x_3254.y, x_3254.z));
    let x_3257 : f32 = u_xlat72;
    u_xlat72 = clamp(x_3257, 0.0f, 1.0f);
    let x_3259 : f32 = u_xlat71;
    let x_3260 : f32 = u_xlat71;
    u_xlat71 = (x_3259 * x_3260);
    let x_3262 : f32 = u_xlat71;
    let x_3264 : f32 = u_xlat0.x;
    u_xlat71 = ((x_3262 * x_3264) + 1.000010014f);
    let x_3267 : f32 = u_xlat72;
    let x_3268 : f32 = u_xlat72;
    u_xlat72 = (x_3267 * x_3268);
    let x_3270 : f32 = u_xlat71;
    let x_3271 : f32 = u_xlat71;
    u_xlat71 = (x_3270 * x_3271);
    let x_3273 : f32 = u_xlat72;
    u_xlat72 = max(x_3273, 0.100000001f);
    let x_3275 : f32 = u_xlat71;
    let x_3276 : f32 = u_xlat72;
    u_xlat71 = (x_3275 * x_3276);
    let x_3278 : f32 = u_xlat70;
    let x_3279 : f32 = u_xlat71;
    u_xlat71 = (x_3278 * x_3279);
    let x_3281 : f32 = u_xlat68;
    let x_3282 : f32 = u_xlat71;
    u_xlat71 = (x_3281 / x_3282);
    let x_3284 : vec4<f32> = u_xlat5;
    let x_3286 : f32 = u_xlat71;
    let x_3289 : vec4<f32> = u_xlat7;
    let x_3291 : vec3<f32> = ((vec3<f32>(x_3284.x, x_3284.y, x_3284.z) * vec3<f32>(x_3286, x_3286, x_3286)) + vec3<f32>(x_3289.x, x_3289.y, x_3289.z));
    let x_3292 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3291.x, x_3291.y, x_3291.z, x_3292.w);
    let x_3294 : vec4<f32> = u_xlat9;
    let x_3296 : vec4<f32> = u_xlat11;
    let x_3299 : vec4<f32> = u_xlat8;
    let x_3301 : vec3<f32> = ((vec3<f32>(x_3294.x, x_3294.y, x_3294.z) * vec3<f32>(x_3296.x, x_3296.y, x_3296.z)) + vec3<f32>(x_3299.x, x_3299.y, x_3299.z));
    let x_3302 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3301.x, x_3301.y, x_3301.z, x_3302.w);

    continuing {
      let x_3304 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3304 + bitcast<u32>(1i));
    }
  }
  let x_3306 : vec3<f32> = u_xlat25;
  let x_3307 : f32 = u_xlat22;
  let x_3310 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_3306 * vec3<f32>(x_3307, x_3307, x_3307)) + vec3<f32>(x_3310.x, x_3310.y, x_3310.z));
  let x_3313 : vec4<f32> = u_xlat8;
  let x_3315 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3313.x, x_3313.y, x_3313.z) + x_3315);
  let x_3317 : f32 = u_xlat67;
  let x_3318 : f32 = u_xlat67;
  u_xlat1.x = (x_3317 * -(x_3318));
  let x_3323 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3323);
  let x_3326 : vec3<f32> = u_xlat0;
  let x_3327 : f32 = u_xlat66;
  let x_3331 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = ((x_3326 * vec3<f32>(x_3327, x_3327, x_3327)) + -(vec3<f32>(x_3331.x, x_3331.y, x_3331.z)));
  let x_3337 : vec4<f32> = u_xlat1;
  let x_3339 : vec3<f32> = u_xlat0;
  let x_3342 : vec4<f32> = x_126.unity_FogColor;
  let x_3344 : vec3<f32> = ((vec3<f32>(x_3337.x, x_3337.x, x_3337.x) * x_3339) + vec3<f32>(x_3342.x, x_3342.y, x_3342.z));
  let x_3345 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3344.x, x_3344.y, x_3344.z, x_3345.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

