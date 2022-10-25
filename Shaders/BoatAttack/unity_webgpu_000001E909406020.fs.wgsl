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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_740 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2028 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2223 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2505 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2613 : AdditionalLightsCookies;

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
  var u_xlat63 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb64 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat64 : f32;
  var u_xlatb65 : bool;
  var u_xlat42 : f32;
  var u_xlat21 : f32;
  var u_xlatb1 : bool;
  var u_xlat22 : vec3<f32>;
  var x_561 : f32;
  var x_572 : f32;
  var x_583 : f32;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat25 : f32;
  var u_xlatb4 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb46 : vec2<bool>;
  var u_xlat46 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat67 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat69 : f32;
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
  var u_xlatb67 : bool;
  var x_1978 : f32;
  var x_2096 : f32;
  var x_2107 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu68 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat70 : f32;
  var u_xlatu70 : u32;
  var u_xlati71 : i32;
  var u_xlati70 : i32;
  var u_xlati72 : i32;
  var u_xlatb70 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_2906 : f32;
  var x_2919 : f32;
  var x_2971 : f32;
  var x_2982 : vec3<f32>;
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
  u_xlat63 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb64 = (4.0f >= x_218);
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
  let x_280 : bool = u_xlatb64;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_291 : f32 = u_xlat64;
  u_xlatb65 = (0.005f >= x_291);
  let x_293 : bool = u_xlatb65;
  if (((select(0i, 1i, x_293) * -1i) != 0i)) {
    discard;
  }
  let x_302 : f32 = u_xlat64;
  u_xlat64 = (x_302 + 6.10351562e-05f);
  let x_305 : vec4<f32> = u_xlat4;
  let x_306 : f32 = u_xlat64;
  u_xlat4 = (x_305 / vec4<f32>(x_306, x_306, x_306, x_306));
  let x_309 : vec4<f32> = u_xlat4;
  let x_312 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_314 : vec3<f32> = (vec3<f32>(x_309.x, x_309.x, x_309.x) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_322 : vec3<f32> = (vec3<f32>(x_317.y, x_317.y, x_317.y) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec4<f32> = u_xlat12;
  let x_329 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : vec4<f32> = u_xlat11;
  let x_337 : vec4<f32> = u_xlat6;
  let x_339 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_334.x, x_334.y, x_334.z)) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat4;
  let x_345 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_347 : vec3<f32> = (vec3<f32>(x_342.z, x_342.z, x_342.z) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat7;
  let x_352 : vec4<f32> = u_xlat6;
  let x_355 : vec4<f32> = u_xlat5;
  let x_357 : vec3<f32> = ((vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(x_352.x, x_352.y, x_352.z)) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat4;
  let x_363 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_365 : vec3<f32> = (vec3<f32>(x_360.w, x_360.w, x_360.w) * vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec4<f32> = u_xlat8;
  let x_370 : vec4<f32> = u_xlat6;
  let x_373 : vec4<f32> = u_xlat5;
  let x_375 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370.x, x_370.y, x_370.z)) + vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_379;
  let x_382 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_382;
  let x_385 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_385;
  let x_388 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_388;
  let x_391 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_391;
  let x_394 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_394;
  let x_397 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_397;
  let x_400 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_400;
  let x_402 : vec4<f32> = u_xlat6;
  let x_403 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_402 + x_403);
  let x_406 : f32 = u_xlat0.z;
  u_xlat7.x = x_406;
  let x_409 : f32 = u_xlat1.z;
  u_xlat7.y = x_409;
  let x_412 : f32 = u_xlat2.z;
  u_xlat7.z = x_412;
  let x_415 : f32 = u_xlat3.y;
  u_xlat7.w = x_415;
  let x_417 : vec4<f32> = u_xlat9;
  let x_420 : f32 = x_30.x_Smoothness0;
  let x_422 : f32 = x_30.x_Smoothness1;
  let x_424 : f32 = x_30.x_Smoothness2;
  let x_426 : f32 = x_30.x_Smoothness3;
  let x_429 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_417) * vec4<f32>(x_420, x_422, x_424, x_426)) + x_429);
  let x_433 : f32 = x_30.x_LayerHasMask0;
  let x_436 : f32 = x_30.x_LayerHasMask1;
  let x_439 : f32 = x_30.x_LayerHasMask2;
  let x_442 : f32 = x_30.x_LayerHasMask3;
  let x_444 : vec4<f32> = u_xlat7;
  let x_446 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_433, x_436, x_439, x_442) * x_444) + x_446);
  let x_449 : vec4<f32> = u_xlat4;
  let x_450 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_449, x_450);
  let x_453 : f32 = u_xlat0.x;
  u_xlat7.x = x_453;
  let x_456 : f32 = u_xlat1.x;
  u_xlat7.y = x_456;
  let x_459 : f32 = u_xlat2.x;
  u_xlat7.z = x_459;
  let x_462 : f32 = u_xlat3.x;
  u_xlat7.w = x_462;
  let x_464 : vec4<f32> = u_xlat7;
  let x_467 : f32 = x_30.x_Metallic0;
  let x_470 : f32 = x_30.x_Metallic1;
  let x_473 : f32 = x_30.x_Metallic2;
  let x_476 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_464 + -(vec4<f32>(x_467, x_470, x_473, x_476)));
  let x_481 : f32 = x_30.x_LayerHasMask0;
  let x_483 : f32 = x_30.x_LayerHasMask1;
  let x_485 : f32 = x_30.x_LayerHasMask2;
  let x_487 : f32 = x_30.x_LayerHasMask3;
  let x_489 : vec4<f32> = u_xlat7;
  let x_492 : f32 = x_30.x_Metallic0;
  let x_494 : f32 = x_30.x_Metallic1;
  let x_496 : f32 = x_30.x_Metallic2;
  let x_498 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_481, x_483, x_485, x_487) * x_489) + vec4<f32>(x_492, x_494, x_496, x_498));
  let x_501 : vec4<f32> = u_xlat4;
  let x_502 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_501, x_502);
  let x_506 : f32 = u_xlat0.y;
  u_xlat3.x = x_506;
  let x_509 : f32 = u_xlat1.y;
  u_xlat3.y = x_509;
  let x_512 : f32 = u_xlat2.y;
  u_xlat3.z = x_512;
  let x_514 : vec4<f32> = u_xlat6;
  let x_516 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_514) + x_516);
  let x_519 : f32 = x_30.x_LayerHasMask0;
  let x_521 : f32 = x_30.x_LayerHasMask1;
  let x_523 : f32 = x_30.x_LayerHasMask2;
  let x_525 : f32 = x_30.x_LayerHasMask3;
  let x_527 : vec4<f32> = u_xlat1;
  let x_529 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_519, x_521, x_523, x_525) * x_527) + x_529);
  let x_532 : vec4<f32> = u_xlat4;
  let x_533 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(x_532, x_533);
  let x_537 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_537 == 0.0f);
  let x_542 : vec3<f32> = vs_TEXCOORD7;
  let x_546 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat22 = (-(x_542) + x_546);
  let x_548 : vec3<f32> = u_xlat22;
  let x_549 : vec3<f32> = u_xlat22;
  u_xlat2.x = dot(x_548, x_549);
  let x_553 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_553);
  let x_556 : vec3<f32> = u_xlat22;
  let x_557 : vec3<f32> = u_xlat2;
  u_xlat22 = (x_556 * vec3<f32>(x_557.x, x_557.x, x_557.x));
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : f32 = u_xlat22.x;
    x_561 = x_565;
  } else {
    let x_568 : f32 = x_126.unity_MatrixV[0i].z;
    x_561 = x_568;
  }
  let x_569 : f32 = x_561;
  u_xlat2.x = x_569;
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_576 : f32 = u_xlat22.y;
    x_572 = x_576;
  } else {
    let x_579 : f32 = x_126.unity_MatrixV[1i].z;
    x_572 = x_579;
  }
  let x_580 : f32 = x_572;
  u_xlat2.y = x_580;
  let x_582 : bool = u_xlatb1;
  if (x_582) {
    let x_587 : f32 = u_xlat22.z;
    x_583 = x_587;
  } else {
    let x_591 : f32 = x_126.unity_MatrixV[2i].z;
    x_583 = x_591;
  }
  let x_592 : f32 = x_583;
  u_xlat2.z = x_592;
  let x_595 : vec3<f32> = vs_TEXCOORD3;
  let x_596 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_595, x_596);
  let x_600 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_600);
  let x_603 : vec4<f32> = u_xlat1;
  let x_605 : vec3<f32> = vs_TEXCOORD3;
  let x_606 : vec3<f32> = (vec3<f32>(x_603.x, x_603.x, x_603.x) * x_605);
  let x_607 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_614 : vec4<f32> = vs_TEXCOORD0;
  let x_617 : f32 = x_126.x_GlobalMipBias.x;
  let x_618 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_614.z, x_614.w), x_617);
  let x_619 : vec3<f32> = vec3<f32>(x_618.x, x_618.y, x_618.z);
  let x_620 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_624 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_625 : vec2<f32> = vec2<f32>(x_624.x, x_624.y);
  let x_629 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_625.x, x_625.y));
  let x_630 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat4;
  let x_634 : vec4<f32> = hlslcc_FragCoord;
  let x_636 : vec2<f32> = (vec2<f32>(x_632.x, x_632.y) * vec2<f32>(x_634.x, x_634.y));
  let x_637 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
  let x_640 : f32 = u_xlat4.y;
  let x_642 : f32 = x_126.x_ScaleBiasRt.x;
  let x_645 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat64 = ((x_640 * x_642) + x_645);
  let x_647 : f32 = u_xlat64;
  u_xlat4.z = (-(x_647) + 1.0f);
  let x_652 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_652) * 0.959999979f) + 0.959999979f);
  let x_658 : f32 = u_xlat42;
  let x_659 : f32 = u_xlat64;
  u_xlat65 = (x_658 + -(x_659));
  let x_662 : f32 = u_xlat64;
  let x_664 : vec4<f32> = u_xlat5;
  let x_666 : vec3<f32> = (vec3<f32>(x_662, x_662, x_662) * vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec4<f32> = u_xlat5;
  let x_673 : vec3<f32> = (vec3<f32>(x_669.x, x_669.y, x_669.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_674 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec3<f32> = u_xlat0;
  let x_678 : vec4<f32> = u_xlat5;
  let x_683 : vec3<f32> = ((vec3<f32>(x_676.x, x_676.x, x_676.x) * vec3<f32>(x_678.x, x_678.y, x_678.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_684 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : f32 = u_xlat42;
  u_xlat0.x = (-(x_686) + 1.0f);
  let x_691 : f32 = u_xlat0.x;
  let x_693 : f32 = u_xlat0.x;
  u_xlat42 = (x_691 * x_693);
  let x_695 : f32 = u_xlat42;
  u_xlat42 = max(x_695, 0.0078125f);
  let x_698 : f32 = u_xlat42;
  let x_699 : f32 = u_xlat42;
  u_xlat64 = (x_698 * x_699);
  let x_701 : f32 = u_xlat65;
  u_xlat65 = (x_701 + 1.0f);
  let x_703 : f32 = u_xlat65;
  u_xlat65 = clamp(x_703, 0.0f, 1.0f);
  let x_706 : f32 = u_xlat42;
  u_xlat66 = ((x_706 * 4.0f) + 2.0f);
  let x_715 : vec4<f32> = u_xlat4;
  let x_718 : f32 = x_126.x_GlobalMipBias.x;
  let x_719 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_715.x, x_715.z), x_718);
  u_xlat4.x = x_719.x;
  let x_724 : f32 = u_xlat4.x;
  u_xlat25 = (x_724 + -1.0f);
  let x_727 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_728 : f32 = u_xlat25;
  u_xlat25 = ((x_727 * x_728) + 1.0f);
  let x_731 : f32 = u_xlat21;
  let x_733 : f32 = u_xlat4.x;
  u_xlat21 = min(x_731, x_733);
  let x_742 : f32 = x_740.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_742);
  let x_744 : bool = u_xlatb4;
  if (x_744) {
    let x_748 : f32 = x_740.x_MainLightShadowParams.y;
    u_xlatb4 = (x_748 == 1.0f);
    let x_750 : bool = u_xlatb4;
    if (x_750) {
      let x_754 : vec4<f32> = vs_TEXCOORD8;
      let x_757 : vec4<f32> = x_740.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_754.x, x_754.y, x_754.x, x_754.y) + x_757);
      let x_760 : vec4<f32> = u_xlat7;
      let x_761 : vec2<f32> = vec2<f32>(x_760.x, x_760.y);
      let x_763 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_761.x, x_761.y, x_763);
      let x_775 : vec3<f32> = txVec0;
      let x_777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_775.xy, x_775.z);
      u_xlat8.x = x_777;
      let x_780 : vec4<f32> = u_xlat7;
      let x_781 : vec2<f32> = vec2<f32>(x_780.z, x_780.w);
      let x_783 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_781.x, x_781.y, x_783);
      let x_790 : vec3<f32> = txVec1;
      let x_792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_790.xy, x_790.z);
      u_xlat8.y = x_792;
      let x_794 : vec4<f32> = vs_TEXCOORD8;
      let x_797 : vec4<f32> = x_740.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_794.x, x_794.y, x_794.x, x_794.y) + x_797);
      let x_800 : vec4<f32> = u_xlat7;
      let x_801 : vec2<f32> = vec2<f32>(x_800.x, x_800.y);
      let x_803 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_801.x, x_801.y, x_803);
      let x_810 : vec3<f32> = txVec2;
      let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_810.xy, x_810.z);
      u_xlat8.z = x_812;
      let x_815 : vec4<f32> = u_xlat7;
      let x_816 : vec2<f32> = vec2<f32>(x_815.z, x_815.w);
      let x_818 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_816.x, x_816.y, x_818);
      let x_825 : vec3<f32> = txVec3;
      let x_827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_825.xy, x_825.z);
      u_xlat8.w = x_827;
      let x_829 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_829, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_839 : f32 = x_740.x_MainLightShadowParams.y;
      u_xlatb46.x = (x_839 == 2.0f);
      let x_843 : bool = u_xlatb46.x;
      if (x_843) {
        let x_848 : vec4<f32> = vs_TEXCOORD8;
        let x_851 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_848.x, x_848.y) * vec2<f32>(x_851.z, x_851.w)) + vec2<f32>(0.5f, 0.5f));
        let x_855 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_855);
        let x_857 : vec4<f32> = vs_TEXCOORD8;
        let x_860 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_863 : vec2<f32> = u_xlat46;
        let x_865 : vec2<f32> = ((vec2<f32>(x_857.x, x_857.y) * vec2<f32>(x_860.z, x_860.w)) + -(x_863));
        let x_866 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_865.x, x_865.y, x_866.z, x_866.w);
        let x_868 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_868.x, x_868.x, x_868.y, x_868.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_872 : vec4<f32> = u_xlat8;
        let x_874 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_872.x, x_872.x, x_872.z, x_872.z) * vec4<f32>(x_874.x, x_874.x, x_874.z, x_874.z));
        let x_878 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_878.y, x_878.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_883 : vec4<f32> = u_xlat9;
        let x_886 : vec4<f32> = u_xlat7;
        let x_889 : vec2<f32> = ((vec2<f32>(x_883.x, x_883.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_886.x, x_886.y)));
        let x_890 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_889.x, x_890.y, x_889.y, x_890.w);
        let x_892 : vec4<f32> = u_xlat7;
        let x_895 : vec2<f32> = (-(vec2<f32>(x_892.x, x_892.y)) + vec2<f32>(1.0f, 1.0f));
        let x_896 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
        let x_899 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_899.x, x_899.y), vec2<f32>(0.0f, 0.0f));
        let x_903 : vec2<f32> = u_xlat51;
        let x_905 : vec2<f32> = u_xlat51;
        let x_907 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_903) * x_905) + vec2<f32>(x_907.x, x_907.y));
        let x_910 : vec4<f32> = u_xlat7;
        let x_912 : vec2<f32> = max(vec2<f32>(x_910.x, x_910.y), vec2<f32>(0.0f, 0.0f));
        let x_913 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_912.x, x_912.y, x_913.z, x_913.w);
        let x_915 : vec4<f32> = u_xlat7;
        let x_918 : vec4<f32> = u_xlat7;
        let x_921 : vec4<f32> = u_xlat8;
        let x_923 : vec2<f32> = ((-(vec2<f32>(x_915.x, x_915.y)) * vec2<f32>(x_918.x, x_918.y)) + vec2<f32>(x_921.y, x_921.w));
        let x_924 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_923.x, x_923.y, x_924.z, x_924.w);
        let x_926 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_926 + vec2<f32>(1.0f, 1.0f));
        let x_928 : vec4<f32> = u_xlat7;
        let x_930 : vec2<f32> = (vec2<f32>(x_928.x, x_928.y) + vec2<f32>(1.0f, 1.0f));
        let x_931 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_933 : vec4<f32> = u_xlat8;
        let x_937 : vec2<f32> = (vec2<f32>(x_933.x, x_933.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_938 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
        let x_940 : vec4<f32> = u_xlat9;
        let x_942 : vec2<f32> = (vec2<f32>(x_940.x, x_940.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_943 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_942.x, x_942.y, x_943.z, x_943.w);
        let x_945 : vec2<f32> = u_xlat51;
        let x_946 : vec2<f32> = (x_945 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_947 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_946.x, x_946.y, x_947.z, x_947.w);
        let x_949 : vec4<f32> = u_xlat7;
        let x_951 : vec2<f32> = (vec2<f32>(x_949.x, x_949.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_952 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
        let x_954 : vec4<f32> = u_xlat8;
        let x_956 : vec2<f32> = (vec2<f32>(x_954.y, x_954.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_957 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_956.x, x_956.y, x_957.z, x_957.w);
        let x_960 : f32 = u_xlat9.x;
        u_xlat10.z = x_960;
        let x_963 : f32 = u_xlat7.x;
        u_xlat10.w = x_963;
        let x_966 : f32 = u_xlat12.x;
        u_xlat11.z = x_966;
        let x_969 : f32 = u_xlat49.x;
        u_xlat11.w = x_969;
        let x_971 : vec4<f32> = u_xlat10;
        let x_973 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_971.z, x_971.w, x_971.x, x_971.z) + vec4<f32>(x_973.z, x_973.w, x_973.x, x_973.z));
        let x_977 : f32 = u_xlat10.y;
        u_xlat9.z = x_977;
        let x_980 : f32 = u_xlat7.y;
        u_xlat9.w = x_980;
        let x_983 : f32 = u_xlat11.y;
        u_xlat12.z = x_983;
        let x_986 : f32 = u_xlat49.y;
        u_xlat12.w = x_986;
        let x_988 : vec4<f32> = u_xlat9;
        let x_990 : vec4<f32> = u_xlat12;
        let x_992 : vec3<f32> = (vec3<f32>(x_988.z, x_988.y, x_988.w) + vec3<f32>(x_990.z, x_990.y, x_990.w));
        let x_993 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
        let x_995 : vec4<f32> = u_xlat11;
        let x_997 : vec4<f32> = u_xlat8;
        let x_999 : vec3<f32> = (vec3<f32>(x_995.x, x_995.z, x_995.w) / vec3<f32>(x_997.z, x_997.w, x_997.y));
        let x_1000 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
        let x_1002 : vec4<f32> = u_xlat9;
        let x_1008 : vec3<f32> = (vec3<f32>(x_1002.x, x_1002.y, x_1002.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1009 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
        let x_1011 : vec4<f32> = u_xlat12;
        let x_1013 : vec4<f32> = u_xlat7;
        let x_1015 : vec3<f32> = (vec3<f32>(x_1011.z, x_1011.y, x_1011.w) / vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
        let x_1016 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
        let x_1018 : vec4<f32> = u_xlat10;
        let x_1020 : vec3<f32> = (vec3<f32>(x_1018.x, x_1018.y, x_1018.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1021 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
        let x_1023 : vec4<f32> = u_xlat9;
        let x_1026 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1028 : vec3<f32> = (vec3<f32>(x_1023.y, x_1023.x, x_1023.z) * vec3<f32>(x_1026.x, x_1026.x, x_1026.x));
        let x_1029 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
        let x_1031 : vec4<f32> = u_xlat10;
        let x_1034 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1036 : vec3<f32> = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) * vec3<f32>(x_1034.y, x_1034.y, x_1034.y));
        let x_1037 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
        let x_1040 : f32 = u_xlat10.x;
        u_xlat9.w = x_1040;
        let x_1042 : vec2<f32> = u_xlat46;
        let x_1045 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1048 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1042.x, x_1042.y, x_1042.x, x_1042.y) * vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y)) + vec4<f32>(x_1048.y, x_1048.w, x_1048.x, x_1048.w));
        let x_1051 : vec2<f32> = u_xlat46;
        let x_1053 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat9;
        let x_1058 : vec2<f32> = ((x_1051 * vec2<f32>(x_1053.x, x_1053.y)) + vec2<f32>(x_1056.z, x_1056.w));
        let x_1059 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1058.x, x_1058.y, x_1059.z, x_1059.w);
        let x_1062 : f32 = u_xlat9.y;
        u_xlat10.w = x_1062;
        let x_1064 : vec4<f32> = u_xlat10;
        let x_1065 : vec2<f32> = vec2<f32>(x_1064.y, x_1064.z);
        let x_1066 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1066.x, x_1065.x, x_1066.z, x_1065.y);
        let x_1068 : vec2<f32> = u_xlat46;
        let x_1071 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1074 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1068.x, x_1068.y, x_1068.x, x_1068.y) * vec4<f32>(x_1071.x, x_1071.y, x_1071.x, x_1071.y)) + vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1074.y));
        let x_1077 : vec2<f32> = u_xlat46;
        let x_1080 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y) * vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y)) + vec4<f32>(x_1083.w, x_1083.y, x_1083.w, x_1083.z));
        let x_1086 : vec2<f32> = u_xlat46;
        let x_1089 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1092 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.y) * vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y)) + vec4<f32>(x_1092.x, x_1092.w, x_1092.z, x_1092.w));
        let x_1096 : vec4<f32> = u_xlat7;
        let x_1098 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1096.x, x_1096.x, x_1096.x, x_1096.y) * vec4<f32>(x_1098.z, x_1098.w, x_1098.y, x_1098.z));
        let x_1102 : vec4<f32> = u_xlat7;
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1102.y, x_1102.y, x_1102.z, x_1102.z) * x_1104);
        let x_1107 : f32 = u_xlat7.z;
        let x_1109 : f32 = u_xlat8.y;
        u_xlat46.x = (x_1107 * x_1109);
        let x_1113 : vec4<f32> = u_xlat11;
        let x_1114 : vec2<f32> = vec2<f32>(x_1113.x, x_1113.y);
        let x_1116 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1114.x, x_1114.y, x_1116);
        let x_1124 : vec3<f32> = txVec4;
        let x_1126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1124.xy, x_1124.z);
        u_xlat67 = x_1126;
        let x_1128 : vec4<f32> = u_xlat11;
        let x_1129 : vec2<f32> = vec2<f32>(x_1128.z, x_1128.w);
        let x_1131 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1129.x, x_1129.y, x_1131);
        let x_1139 : vec3<f32> = txVec5;
        let x_1141 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1139.xy, x_1139.z);
        u_xlat68 = x_1141;
        let x_1142 : f32 = u_xlat68;
        let x_1144 : f32 = u_xlat14.y;
        u_xlat68 = (x_1142 * x_1144);
        let x_1147 : f32 = u_xlat14.x;
        let x_1148 : f32 = u_xlat67;
        let x_1150 : f32 = u_xlat68;
        u_xlat67 = ((x_1147 * x_1148) + x_1150);
        let x_1153 : vec4<f32> = u_xlat12;
        let x_1154 : vec2<f32> = vec2<f32>(x_1153.x, x_1153.y);
        let x_1156 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1163 : vec3<f32> = txVec6;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1163.xy, x_1163.z);
        u_xlat68 = x_1165;
        let x_1167 : f32 = u_xlat14.z;
        let x_1168 : f32 = u_xlat68;
        let x_1170 : f32 = u_xlat67;
        u_xlat67 = ((x_1167 * x_1168) + x_1170);
        let x_1173 : vec4<f32> = u_xlat10;
        let x_1174 : vec2<f32> = vec2<f32>(x_1173.x, x_1173.y);
        let x_1176 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1174.x, x_1174.y, x_1176);
        let x_1183 : vec3<f32> = txVec7;
        let x_1185 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1183.xy, x_1183.z);
        u_xlat68 = x_1185;
        let x_1187 : f32 = u_xlat14.w;
        let x_1188 : f32 = u_xlat68;
        let x_1190 : f32 = u_xlat67;
        u_xlat67 = ((x_1187 * x_1188) + x_1190);
        let x_1193 : vec4<f32> = u_xlat13;
        let x_1194 : vec2<f32> = vec2<f32>(x_1193.x, x_1193.y);
        let x_1196 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1194.x, x_1194.y, x_1196);
        let x_1203 : vec3<f32> = txVec8;
        let x_1205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1203.xy, x_1203.z);
        u_xlat68 = x_1205;
        let x_1207 : f32 = u_xlat15.x;
        let x_1208 : f32 = u_xlat68;
        let x_1210 : f32 = u_xlat67;
        u_xlat67 = ((x_1207 * x_1208) + x_1210);
        let x_1213 : vec4<f32> = u_xlat13;
        let x_1214 : vec2<f32> = vec2<f32>(x_1213.z, x_1213.w);
        let x_1216 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1214.x, x_1214.y, x_1216);
        let x_1223 : vec3<f32> = txVec9;
        let x_1225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1223.xy, x_1223.z);
        u_xlat68 = x_1225;
        let x_1227 : f32 = u_xlat15.y;
        let x_1228 : f32 = u_xlat68;
        let x_1230 : f32 = u_xlat67;
        u_xlat67 = ((x_1227 * x_1228) + x_1230);
        let x_1233 : vec4<f32> = u_xlat10;
        let x_1234 : vec2<f32> = vec2<f32>(x_1233.z, x_1233.w);
        let x_1236 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1234.x, x_1234.y, x_1236);
        let x_1243 : vec3<f32> = txVec10;
        let x_1245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1243.xy, x_1243.z);
        u_xlat68 = x_1245;
        let x_1247 : f32 = u_xlat15.z;
        let x_1248 : f32 = u_xlat68;
        let x_1250 : f32 = u_xlat67;
        u_xlat67 = ((x_1247 * x_1248) + x_1250);
        let x_1253 : vec4<f32> = u_xlat9;
        let x_1254 : vec2<f32> = vec2<f32>(x_1253.x, x_1253.y);
        let x_1256 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1254.x, x_1254.y, x_1256);
        let x_1263 : vec3<f32> = txVec11;
        let x_1265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1263.xy, x_1263.z);
        u_xlat68 = x_1265;
        let x_1267 : f32 = u_xlat15.w;
        let x_1268 : f32 = u_xlat68;
        let x_1270 : f32 = u_xlat67;
        u_xlat67 = ((x_1267 * x_1268) + x_1270);
        let x_1273 : vec4<f32> = u_xlat9;
        let x_1274 : vec2<f32> = vec2<f32>(x_1273.z, x_1273.w);
        let x_1276 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1274.x, x_1274.y, x_1276);
        let x_1283 : vec3<f32> = txVec12;
        let x_1285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1283.xy, x_1283.z);
        u_xlat68 = x_1285;
        let x_1287 : f32 = u_xlat46.x;
        let x_1288 : f32 = u_xlat68;
        let x_1290 : f32 = u_xlat67;
        u_xlat4.x = ((x_1287 * x_1288) + x_1290);
      } else {
        let x_1294 : vec4<f32> = vs_TEXCOORD8;
        let x_1297 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1294.x, x_1294.y) * vec2<f32>(x_1297.z, x_1297.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1301 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1301);
        let x_1303 : vec4<f32> = vs_TEXCOORD8;
        let x_1306 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1309 : vec2<f32> = u_xlat46;
        let x_1311 : vec2<f32> = ((vec2<f32>(x_1303.x, x_1303.y) * vec2<f32>(x_1306.z, x_1306.w)) + -(x_1309));
        let x_1312 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        let x_1314 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1314.x, x_1314.x, x_1314.y, x_1314.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1317 : vec4<f32> = u_xlat8;
        let x_1319 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1317.x, x_1317.x, x_1317.z, x_1317.z) * vec4<f32>(x_1319.x, x_1319.x, x_1319.z, x_1319.z));
        let x_1322 : vec4<f32> = u_xlat9;
        let x_1326 : vec2<f32> = (vec2<f32>(x_1322.y, x_1322.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1327 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1327.x, x_1326.x, x_1327.z, x_1326.y);
        let x_1329 : vec4<f32> = u_xlat9;
        let x_1332 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1329.x, x_1329.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1332.x, x_1332.y)));
        let x_1336 : vec4<f32> = u_xlat7;
        let x_1339 : vec2<f32> = (-(vec2<f32>(x_1336.x, x_1336.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1340 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1339.x, x_1340.y, x_1339.y, x_1340.w);
        let x_1342 : vec4<f32> = u_xlat7;
        let x_1344 : vec2<f32> = min(vec2<f32>(x_1342.x, x_1342.y), vec2<f32>(0.0f, 0.0f));
        let x_1345 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1344.x, x_1344.y, x_1345.z, x_1345.w);
        let x_1347 : vec4<f32> = u_xlat9;
        let x_1350 : vec4<f32> = u_xlat9;
        let x_1353 : vec4<f32> = u_xlat8;
        let x_1355 : vec2<f32> = ((-(vec2<f32>(x_1347.x, x_1347.y)) * vec2<f32>(x_1350.x, x_1350.y)) + vec2<f32>(x_1353.x, x_1353.z));
        let x_1356 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1355.x, x_1356.y, x_1355.y, x_1356.w);
        let x_1358 : vec4<f32> = u_xlat7;
        let x_1360 : vec2<f32> = max(vec2<f32>(x_1358.x, x_1358.y), vec2<f32>(0.0f, 0.0f));
        let x_1361 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1360.x, x_1360.y, x_1361.z, x_1361.w);
        let x_1363 : vec4<f32> = u_xlat9;
        let x_1366 : vec4<f32> = u_xlat9;
        let x_1369 : vec4<f32> = u_xlat8;
        let x_1371 : vec2<f32> = ((-(vec2<f32>(x_1363.x, x_1363.y)) * vec2<f32>(x_1366.x, x_1366.y)) + vec2<f32>(x_1369.y, x_1369.w));
        let x_1372 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1372.x, x_1371.x, x_1372.z, x_1371.y);
        let x_1374 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1374 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1378 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1378 * 0.081632003f);
        let x_1382 : vec2<f32> = u_xlat49;
        let x_1385 : vec2<f32> = (vec2<f32>(x_1382.y, x_1382.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1386 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1385.x, x_1385.y, x_1386.z, x_1386.w);
        let x_1388 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1388.x, x_1388.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1392 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1392 * 0.081632003f);
        let x_1396 : f32 = u_xlat11.y;
        u_xlat9.x = x_1396;
        let x_1398 : vec4<f32> = u_xlat7;
        let x_1405 : vec2<f32> = ((vec2<f32>(x_1398.x, x_1398.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1406 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1406.x, x_1405.x, x_1406.z, x_1405.y);
        let x_1408 : vec4<f32> = u_xlat7;
        let x_1412 : vec2<f32> = ((vec2<f32>(x_1408.x, x_1408.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1413 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1412.x, x_1413.y, x_1412.y, x_1413.w);
        let x_1416 : f32 = u_xlat49.x;
        u_xlat8.y = x_1416;
        let x_1419 : f32 = u_xlat10.y;
        u_xlat8.w = x_1419;
        let x_1421 : vec4<f32> = u_xlat8;
        let x_1422 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1421 + x_1422);
        let x_1424 : vec4<f32> = u_xlat7;
        let x_1427 : vec2<f32> = ((vec2<f32>(x_1424.y, x_1424.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1428 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1428.x, x_1427.x, x_1428.z, x_1427.y);
        let x_1430 : vec4<f32> = u_xlat7;
        let x_1433 : vec2<f32> = ((vec2<f32>(x_1430.y, x_1430.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1434 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1433.x, x_1434.y, x_1433.y, x_1434.w);
        let x_1437 : f32 = u_xlat49.y;
        u_xlat10.y = x_1437;
        let x_1439 : vec4<f32> = u_xlat10;
        let x_1440 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1439 + x_1440);
        let x_1442 : vec4<f32> = u_xlat8;
        let x_1443 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1442 / x_1443);
        let x_1445 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1445 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1451 : vec4<f32> = u_xlat10;
        let x_1452 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1451 / x_1452);
        let x_1454 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1454 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1456 : vec4<f32> = u_xlat8;
        let x_1459 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1456.w, x_1456.x, x_1456.y, x_1456.z) * vec4<f32>(x_1459.x, x_1459.x, x_1459.x, x_1459.x));
        let x_1462 : vec4<f32> = u_xlat10;
        let x_1465 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1462.x, x_1462.w, x_1462.y, x_1462.z) * vec4<f32>(x_1465.y, x_1465.y, x_1465.y, x_1465.y));
        let x_1468 : vec4<f32> = u_xlat8;
        let x_1469 : vec3<f32> = vec3<f32>(x_1468.y, x_1468.z, x_1468.w);
        let x_1470 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1469.x, x_1470.y, x_1469.y, x_1469.z);
        let x_1473 : f32 = u_xlat10.x;
        u_xlat11.y = x_1473;
        let x_1475 : vec2<f32> = u_xlat46;
        let x_1478 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1481 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1475.x, x_1475.y, x_1475.x, x_1475.y) * vec4<f32>(x_1478.x, x_1478.y, x_1478.x, x_1478.y)) + vec4<f32>(x_1481.x, x_1481.y, x_1481.z, x_1481.y));
        let x_1484 : vec2<f32> = u_xlat46;
        let x_1486 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1489 : vec4<f32> = u_xlat11;
        let x_1491 : vec2<f32> = ((x_1484 * vec2<f32>(x_1486.x, x_1486.y)) + vec2<f32>(x_1489.w, x_1489.y));
        let x_1492 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1491.x, x_1491.y, x_1492.z, x_1492.w);
        let x_1495 : f32 = u_xlat11.y;
        u_xlat8.y = x_1495;
        let x_1498 : f32 = u_xlat10.z;
        u_xlat11.y = x_1498;
        let x_1500 : vec2<f32> = u_xlat46;
        let x_1503 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1506 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1500.x, x_1500.y, x_1500.x, x_1500.y) * vec4<f32>(x_1503.x, x_1503.y, x_1503.x, x_1503.y)) + vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1506.y));
        let x_1510 : vec2<f32> = u_xlat46;
        let x_1512 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1515 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1510 * vec2<f32>(x_1512.x, x_1512.y)) + vec2<f32>(x_1515.w, x_1515.y));
        let x_1519 : f32 = u_xlat11.y;
        u_xlat8.z = x_1519;
        let x_1521 : vec2<f32> = u_xlat46;
        let x_1524 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1527 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1521.x, x_1521.y, x_1521.x, x_1521.y) * vec4<f32>(x_1524.x, x_1524.y, x_1524.x, x_1524.y)) + vec4<f32>(x_1527.x, x_1527.y, x_1527.x, x_1527.z));
        let x_1531 : f32 = u_xlat10.w;
        u_xlat11.y = x_1531;
        let x_1534 : vec2<f32> = u_xlat46;
        let x_1537 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1540 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1534.x, x_1534.y, x_1534.x, x_1534.y) * vec4<f32>(x_1537.x, x_1537.y, x_1537.x, x_1537.y)) + vec4<f32>(x_1540.x, x_1540.y, x_1540.z, x_1540.y));
        let x_1544 : vec2<f32> = u_xlat46;
        let x_1546 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1549 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_1544 * vec2<f32>(x_1546.x, x_1546.y)) + vec2<f32>(x_1549.w, x_1549.y));
        let x_1553 : f32 = u_xlat11.y;
        u_xlat8.w = x_1553;
        let x_1556 : vec2<f32> = u_xlat46;
        let x_1558 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1561 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_1556 * vec2<f32>(x_1558.x, x_1558.y)) + vec2<f32>(x_1561.x, x_1561.w));
        let x_1564 : vec4<f32> = u_xlat11;
        let x_1565 : vec3<f32> = vec3<f32>(x_1564.x, x_1564.z, x_1564.w);
        let x_1566 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1565.x, x_1566.y, x_1565.y, x_1565.z);
        let x_1568 : vec2<f32> = u_xlat46;
        let x_1571 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1574 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1568.x, x_1568.y, x_1568.x, x_1568.y) * vec4<f32>(x_1571.x, x_1571.y, x_1571.x, x_1571.y)) + vec4<f32>(x_1574.x, x_1574.y, x_1574.z, x_1574.y));
        let x_1578 : vec2<f32> = u_xlat46;
        let x_1580 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1583 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_1578 * vec2<f32>(x_1580.x, x_1580.y)) + vec2<f32>(x_1583.w, x_1583.y));
        let x_1587 : f32 = u_xlat8.x;
        u_xlat10.x = x_1587;
        let x_1589 : vec2<f32> = u_xlat46;
        let x_1591 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1594 : vec4<f32> = u_xlat10;
        u_xlat46 = ((x_1589 * vec2<f32>(x_1591.x, x_1591.y)) + vec2<f32>(x_1594.x, x_1594.y));
        let x_1598 : vec4<f32> = u_xlat7;
        let x_1600 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1598.x, x_1598.x, x_1598.x, x_1598.x) * x_1600);
        let x_1603 : vec4<f32> = u_xlat7;
        let x_1605 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1603.y, x_1603.y, x_1603.y, x_1603.y) * x_1605);
        let x_1608 : vec4<f32> = u_xlat7;
        let x_1610 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1608.z, x_1608.z, x_1608.z, x_1608.z) * x_1610);
        let x_1612 : vec4<f32> = u_xlat7;
        let x_1614 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1612.w, x_1612.w, x_1612.w, x_1612.w) * x_1614);
        let x_1617 : vec4<f32> = u_xlat12;
        let x_1618 : vec2<f32> = vec2<f32>(x_1617.x, x_1617.y);
        let x_1620 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1618.x, x_1618.y, x_1620);
        let x_1627 : vec3<f32> = txVec13;
        let x_1629 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1627.xy, x_1627.z);
        u_xlat68 = x_1629;
        let x_1631 : vec4<f32> = u_xlat12;
        let x_1632 : vec2<f32> = vec2<f32>(x_1631.z, x_1631.w);
        let x_1634 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1632.x, x_1632.y, x_1634);
        let x_1642 : vec3<f32> = txVec14;
        let x_1644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1642.xy, x_1642.z);
        u_xlat69 = x_1644;
        let x_1645 : f32 = u_xlat69;
        let x_1647 : f32 = u_xlat18.y;
        u_xlat69 = (x_1645 * x_1647);
        let x_1650 : f32 = u_xlat18.x;
        let x_1651 : f32 = u_xlat68;
        let x_1653 : f32 = u_xlat69;
        u_xlat68 = ((x_1650 * x_1651) + x_1653);
        let x_1656 : vec4<f32> = u_xlat13;
        let x_1657 : vec2<f32> = vec2<f32>(x_1656.x, x_1656.y);
        let x_1659 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec15;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1666.xy, x_1666.z);
        u_xlat69 = x_1668;
        let x_1670 : f32 = u_xlat18.z;
        let x_1671 : f32 = u_xlat69;
        let x_1673 : f32 = u_xlat68;
        u_xlat68 = ((x_1670 * x_1671) + x_1673);
        let x_1676 : vec4<f32> = u_xlat15;
        let x_1677 : vec2<f32> = vec2<f32>(x_1676.x, x_1676.y);
        let x_1679 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec16;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1686.xy, x_1686.z);
        u_xlat69 = x_1688;
        let x_1690 : f32 = u_xlat18.w;
        let x_1691 : f32 = u_xlat69;
        let x_1693 : f32 = u_xlat68;
        u_xlat68 = ((x_1690 * x_1691) + x_1693);
        let x_1696 : vec4<f32> = u_xlat14;
        let x_1697 : vec2<f32> = vec2<f32>(x_1696.x, x_1696.y);
        let x_1699 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1697.x, x_1697.y, x_1699);
        let x_1706 : vec3<f32> = txVec17;
        let x_1708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1706.xy, x_1706.z);
        u_xlat69 = x_1708;
        let x_1710 : f32 = u_xlat19.x;
        let x_1711 : f32 = u_xlat69;
        let x_1713 : f32 = u_xlat68;
        u_xlat68 = ((x_1710 * x_1711) + x_1713);
        let x_1716 : vec4<f32> = u_xlat14;
        let x_1717 : vec2<f32> = vec2<f32>(x_1716.z, x_1716.w);
        let x_1719 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1717.x, x_1717.y, x_1719);
        let x_1726 : vec3<f32> = txVec18;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1726.xy, x_1726.z);
        u_xlat69 = x_1728;
        let x_1730 : f32 = u_xlat19.y;
        let x_1731 : f32 = u_xlat69;
        let x_1733 : f32 = u_xlat68;
        u_xlat68 = ((x_1730 * x_1731) + x_1733);
        let x_1736 : vec2<f32> = u_xlat55;
        let x_1738 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1736.x, x_1736.y, x_1738);
        let x_1745 : vec3<f32> = txVec19;
        let x_1747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1745.xy, x_1745.z);
        u_xlat69 = x_1747;
        let x_1749 : f32 = u_xlat19.z;
        let x_1750 : f32 = u_xlat69;
        let x_1752 : f32 = u_xlat68;
        u_xlat68 = ((x_1749 * x_1750) + x_1752);
        let x_1755 : vec4<f32> = u_xlat15;
        let x_1756 : vec2<f32> = vec2<f32>(x_1755.z, x_1755.w);
        let x_1758 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1756.x, x_1756.y, x_1758);
        let x_1765 : vec3<f32> = txVec20;
        let x_1767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1765.xy, x_1765.z);
        u_xlat69 = x_1767;
        let x_1769 : f32 = u_xlat19.w;
        let x_1770 : f32 = u_xlat69;
        let x_1772 : f32 = u_xlat68;
        u_xlat68 = ((x_1769 * x_1770) + x_1772);
        let x_1775 : vec4<f32> = u_xlat16;
        let x_1776 : vec2<f32> = vec2<f32>(x_1775.x, x_1775.y);
        let x_1778 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1776.x, x_1776.y, x_1778);
        let x_1785 : vec3<f32> = txVec21;
        let x_1787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1785.xy, x_1785.z);
        u_xlat69 = x_1787;
        let x_1789 : f32 = u_xlat20.x;
        let x_1790 : f32 = u_xlat69;
        let x_1792 : f32 = u_xlat68;
        u_xlat68 = ((x_1789 * x_1790) + x_1792);
        let x_1795 : vec4<f32> = u_xlat16;
        let x_1796 : vec2<f32> = vec2<f32>(x_1795.z, x_1795.w);
        let x_1798 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1796.x, x_1796.y, x_1798);
        let x_1805 : vec3<f32> = txVec22;
        let x_1807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1805.xy, x_1805.z);
        u_xlat69 = x_1807;
        let x_1809 : f32 = u_xlat20.y;
        let x_1810 : f32 = u_xlat69;
        let x_1812 : f32 = u_xlat68;
        u_xlat68 = ((x_1809 * x_1810) + x_1812);
        let x_1815 : vec2<f32> = u_xlat29;
        let x_1817 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1815.x, x_1815.y, x_1817);
        let x_1824 : vec3<f32> = txVec23;
        let x_1826 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1824.xy, x_1824.z);
        u_xlat69 = x_1826;
        let x_1828 : f32 = u_xlat20.z;
        let x_1829 : f32 = u_xlat69;
        let x_1831 : f32 = u_xlat68;
        u_xlat68 = ((x_1828 * x_1829) + x_1831);
        let x_1834 : vec2<f32> = u_xlat17;
        let x_1836 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1834.x, x_1834.y, x_1836);
        let x_1843 : vec3<f32> = txVec24;
        let x_1845 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1843.xy, x_1843.z);
        u_xlat69 = x_1845;
        let x_1847 : f32 = u_xlat20.w;
        let x_1848 : f32 = u_xlat69;
        let x_1850 : f32 = u_xlat68;
        u_xlat68 = ((x_1847 * x_1848) + x_1850);
        let x_1853 : vec4<f32> = u_xlat11;
        let x_1854 : vec2<f32> = vec2<f32>(x_1853.x, x_1853.y);
        let x_1856 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1854.x, x_1854.y, x_1856);
        let x_1863 : vec3<f32> = txVec25;
        let x_1865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1863.xy, x_1863.z);
        u_xlat69 = x_1865;
        let x_1867 : f32 = u_xlat7.x;
        let x_1868 : f32 = u_xlat69;
        let x_1870 : f32 = u_xlat68;
        u_xlat68 = ((x_1867 * x_1868) + x_1870);
        let x_1873 : vec4<f32> = u_xlat11;
        let x_1874 : vec2<f32> = vec2<f32>(x_1873.z, x_1873.w);
        let x_1876 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1874.x, x_1874.y, x_1876);
        let x_1883 : vec3<f32> = txVec26;
        let x_1885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1883.xy, x_1883.z);
        u_xlat69 = x_1885;
        let x_1887 : f32 = u_xlat7.y;
        let x_1888 : f32 = u_xlat69;
        let x_1890 : f32 = u_xlat68;
        u_xlat68 = ((x_1887 * x_1888) + x_1890);
        let x_1893 : vec2<f32> = u_xlat52;
        let x_1895 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1893.x, x_1893.y, x_1895);
        let x_1902 : vec3<f32> = txVec27;
        let x_1904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1902.xy, x_1902.z);
        u_xlat69 = x_1904;
        let x_1906 : f32 = u_xlat7.z;
        let x_1907 : f32 = u_xlat69;
        let x_1909 : f32 = u_xlat68;
        u_xlat68 = ((x_1906 * x_1907) + x_1909);
        let x_1912 : vec2<f32> = u_xlat46;
        let x_1914 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1912.x, x_1912.y, x_1914);
        let x_1921 : vec3<f32> = txVec28;
        let x_1923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1921.xy, x_1921.z);
        u_xlat46.x = x_1923;
        let x_1926 : f32 = u_xlat7.w;
        let x_1928 : f32 = u_xlat46.x;
        let x_1930 : f32 = u_xlat68;
        u_xlat4.x = ((x_1926 * x_1928) + x_1930);
      }
    }
  } else {
    let x_1935 : vec4<f32> = vs_TEXCOORD8;
    let x_1936 : vec2<f32> = vec2<f32>(x_1935.x, x_1935.y);
    let x_1938 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1936.x, x_1936.y, x_1938);
    let x_1945 : vec3<f32> = txVec29;
    let x_1947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1945.xy, x_1945.z);
    u_xlat4.x = x_1947;
  }
  let x_1950 : f32 = x_740.x_MainLightShadowParams.x;
  u_xlat46.x = (-(x_1950) + 1.0f);
  let x_1955 : f32 = u_xlat4.x;
  let x_1957 : f32 = x_740.x_MainLightShadowParams.x;
  let x_1960 : f32 = u_xlat46.x;
  u_xlat4.x = ((x_1955 * x_1957) + x_1960);
  let x_1964 : f32 = vs_TEXCOORD8.z;
  u_xlatb46.x = (0.0f >= x_1964);
  let x_1969 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (x_1969 >= 1.0f);
  let x_1971 : bool = u_xlatb67;
  let x_1973 : bool = u_xlatb46.x;
  u_xlatb46.x = (x_1971 | x_1973);
  let x_1977 : bool = u_xlatb46.x;
  if (x_1977) {
    x_1978 = 1.0f;
  } else {
    let x_1983 : f32 = u_xlat4.x;
    x_1978 = x_1983;
  }
  let x_1984 : f32 = x_1978;
  u_xlat4.x = x_1984;
  let x_1986 : vec3<f32> = vs_TEXCOORD7;
  let x_1988 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1990 : vec3<f32> = (x_1986 + -(x_1988));
  let x_1991 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1990.x, x_1990.y, x_1990.z, x_1991.w);
  let x_1993 : vec4<f32> = u_xlat7;
  let x_1995 : vec4<f32> = u_xlat7;
  u_xlat46.x = dot(vec3<f32>(x_1993.x, x_1993.y, x_1993.z), vec3<f32>(x_1995.x, x_1995.y, x_1995.z));
  let x_2000 : f32 = u_xlat46.x;
  let x_2002 : f32 = x_740.x_MainLightShadowParams.z;
  let x_2005 : f32 = x_740.x_MainLightShadowParams.w;
  u_xlat46.x = ((x_2000 * x_2002) + x_2005);
  let x_2009 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2009, 0.0f, 1.0f);
  let x_2013 : f32 = u_xlat4.x;
  u_xlat67 = (-(x_2013) + 1.0f);
  let x_2017 : f32 = u_xlat46.x;
  let x_2018 : f32 = u_xlat67;
  let x_2021 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2017 * x_2018) + x_2021);
  let x_2030 : f32 = x_2028.x_MainLightCookieTextureFormat;
  u_xlatb46.x = !((x_2030 == -1.0f));
  let x_2034 : bool = u_xlatb46.x;
  if (x_2034) {
    let x_2037 : vec3<f32> = vs_TEXCOORD7;
    let x_2040 : vec4<f32> = x_2028.x_MainLightWorldToLight[1i];
    u_xlat46 = (vec2<f32>(x_2037.y, x_2037.y) * vec2<f32>(x_2040.x, x_2040.y));
    let x_2044 : vec4<f32> = x_2028.x_MainLightWorldToLight[0i];
    let x_2046 : vec3<f32> = vs_TEXCOORD7;
    let x_2049 : vec2<f32> = u_xlat46;
    u_xlat46 = ((vec2<f32>(x_2044.x, x_2044.y) * vec2<f32>(x_2046.x, x_2046.x)) + x_2049);
    let x_2052 : vec4<f32> = x_2028.x_MainLightWorldToLight[2i];
    let x_2054 : vec3<f32> = vs_TEXCOORD7;
    let x_2057 : vec2<f32> = u_xlat46;
    u_xlat46 = ((vec2<f32>(x_2052.x, x_2052.y) * vec2<f32>(x_2054.z, x_2054.z)) + x_2057);
    let x_2059 : vec2<f32> = u_xlat46;
    let x_2062 : vec4<f32> = x_2028.x_MainLightWorldToLight[3i];
    u_xlat46 = (x_2059 + vec2<f32>(x_2062.x, x_2062.y));
    let x_2065 : vec2<f32> = u_xlat46;
    u_xlat46 = ((x_2065 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2073 : vec2<f32> = u_xlat46;
    let x_2075 : f32 = x_126.x_GlobalMipBias.x;
    let x_2076 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2073, x_2075);
    u_xlat7 = x_2076;
    let x_2078 : f32 = x_2028.x_MainLightCookieTextureFormat;
    let x_2080 : f32 = x_2028.x_MainLightCookieTextureFormat;
    let x_2082 : f32 = x_2028.x_MainLightCookieTextureFormat;
    let x_2084 : f32 = x_2028.x_MainLightCookieTextureFormat;
    let x_2085 : vec4<f32> = vec4<f32>(x_2078, x_2080, x_2082, x_2084);
    let x_2092 : vec4<bool> = (vec4<f32>(x_2085.x, x_2085.y, x_2085.z, x_2085.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb46 = vec2<bool>(x_2092.x, x_2092.y);
    let x_2095 : bool = u_xlatb46.y;
    if (x_2095) {
      let x_2100 : f32 = u_xlat7.w;
      x_2096 = x_2100;
    } else {
      let x_2103 : f32 = u_xlat7.x;
      x_2096 = x_2103;
    }
    let x_2104 : f32 = x_2096;
    u_xlat67 = x_2104;
    let x_2106 : bool = u_xlatb46.x;
    if (x_2106) {
      let x_2110 : vec4<f32> = u_xlat7;
      x_2107 = vec3<f32>(x_2110.x, x_2110.y, x_2110.z);
    } else {
      let x_2113 : f32 = u_xlat67;
      x_2107 = vec3<f32>(x_2113, x_2113, x_2113);
    }
    let x_2115 : vec3<f32> = x_2107;
    let x_2116 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2115.x, x_2115.y, x_2115.z, x_2116.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2122 : vec4<f32> = u_xlat7;
  let x_2125 : vec4<f32> = x_126.x_MainLightColor;
  let x_2127 : vec3<f32> = (vec3<f32>(x_2122.x, x_2122.y, x_2122.z) * vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
  let x_2128 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2127.x, x_2127.y, x_2127.z, x_2128.w);
  let x_2130 : f32 = u_xlat25;
  let x_2132 : vec4<f32> = u_xlat7;
  let x_2134 : vec3<f32> = (vec3<f32>(x_2130, x_2130, x_2130) * vec3<f32>(x_2132.x, x_2132.y, x_2132.z));
  let x_2135 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2134.x, x_2134.y, x_2134.z, x_2135.w);
  let x_2137 : vec3<f32> = u_xlat2;
  let x_2139 : vec4<f32> = u_xlat1;
  u_xlat46.x = dot(-(x_2137), vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
  let x_2144 : f32 = u_xlat46.x;
  let x_2146 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2144 + x_2146);
  let x_2149 : vec4<f32> = u_xlat1;
  let x_2151 : vec2<f32> = u_xlat46;
  let x_2155 : vec3<f32> = u_xlat2;
  let x_2157 : vec3<f32> = ((vec3<f32>(x_2149.x, x_2149.y, x_2149.z) * -(vec3<f32>(x_2151.x, x_2151.x, x_2151.x))) + -(x_2155));
  let x_2158 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2157.x, x_2157.y, x_2157.z, x_2158.w);
  let x_2160 : vec4<f32> = u_xlat1;
  let x_2162 : vec3<f32> = u_xlat2;
  u_xlat46.x = dot(vec3<f32>(x_2160.x, x_2160.y, x_2160.z), x_2162);
  let x_2166 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2166, 0.0f, 1.0f);
  let x_2170 : f32 = u_xlat46.x;
  u_xlat46.x = (-(x_2170) + 1.0f);
  let x_2175 : f32 = u_xlat46.x;
  let x_2177 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2175 * x_2177);
  let x_2181 : f32 = u_xlat46.x;
  let x_2183 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2181 * x_2183);
  let x_2187 : f32 = u_xlat0.x;
  u_xlat67 = ((-(x_2187) * 0.699999988f) + 1.700000048f);
  let x_2194 : f32 = u_xlat0.x;
  let x_2195 : f32 = u_xlat67;
  u_xlat0.x = (x_2194 * x_2195);
  let x_2199 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2199 * 6.0f);
  let x_2211 : vec4<f32> = u_xlat8;
  let x_2214 : f32 = u_xlat0.x;
  let x_2215 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2211.x, x_2211.y, x_2211.z), x_2214);
  u_xlat8 = x_2215;
  let x_2217 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2217 + -1.0f);
  let x_2225 : f32 = x_2223.unity_SpecCube0_HDR.w;
  let x_2227 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2225 * x_2227) + 1.0f);
  let x_2232 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2232, 0.0f);
  let x_2236 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2236);
  let x_2240 : f32 = u_xlat0.x;
  let x_2242 : f32 = x_2223.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2240 * x_2242);
  let x_2246 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2246);
  let x_2250 : f32 = u_xlat0.x;
  let x_2252 : f32 = x_2223.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2250 * x_2252);
  let x_2255 : vec4<f32> = u_xlat8;
  let x_2257 : vec3<f32> = u_xlat0;
  let x_2259 : vec3<f32> = (vec3<f32>(x_2255.x, x_2255.y, x_2255.z) * vec3<f32>(x_2257.x, x_2257.x, x_2257.x));
  let x_2260 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2259.x, x_2259.y, x_2259.z, x_2260.w);
  let x_2262 : f32 = u_xlat42;
  let x_2264 : f32 = u_xlat42;
  let x_2268 : vec2<f32> = ((vec2<f32>(x_2262, x_2262) * vec2<f32>(x_2264, x_2264)) + vec2<f32>(-1.0f, 1.0f));
  let x_2269 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2268.x, x_2269.y, x_2268.y);
  let x_2272 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2272);
  let x_2274 : vec4<f32> = u_xlat5;
  let x_2277 : f32 = u_xlat65;
  let x_2279 : vec3<f32> = (-(vec3<f32>(x_2274.x, x_2274.y, x_2274.z)) + vec3<f32>(x_2277, x_2277, x_2277));
  let x_2280 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
  let x_2282 : vec2<f32> = u_xlat46;
  let x_2284 : vec4<f32> = u_xlat9;
  let x_2287 : vec4<f32> = u_xlat5;
  let x_2289 : vec3<f32> = ((vec3<f32>(x_2282.x, x_2282.x, x_2282.x) * vec3<f32>(x_2284.x, x_2284.y, x_2284.z)) + vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
  let x_2290 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2289.x, x_2289.y, x_2289.z, x_2290.w);
  let x_2292 : f32 = u_xlat42;
  let x_2294 : vec4<f32> = u_xlat9;
  let x_2296 : vec3<f32> = (vec3<f32>(x_2292, x_2292, x_2292) * vec3<f32>(x_2294.x, x_2294.y, x_2294.z));
  let x_2297 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2296.x, x_2296.y, x_2296.z, x_2297.w);
  let x_2299 : vec4<f32> = u_xlat8;
  let x_2301 : vec4<f32> = u_xlat9;
  let x_2303 : vec3<f32> = (vec3<f32>(x_2299.x, x_2299.y, x_2299.z) * vec3<f32>(x_2301.x, x_2301.y, x_2301.z));
  let x_2304 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
  let x_2306 : vec4<f32> = u_xlat3;
  let x_2308 : vec4<f32> = u_xlat6;
  let x_2311 : vec4<f32> = u_xlat8;
  let x_2313 : vec3<f32> = ((vec3<f32>(x_2306.x, x_2306.y, x_2306.z) * vec3<f32>(x_2308.x, x_2308.y, x_2308.z)) + vec3<f32>(x_2311.x, x_2311.y, x_2311.z));
  let x_2314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2314.w);
  let x_2317 : f32 = u_xlat4.x;
  let x_2319 : f32 = x_2223.unity_LightData.z;
  u_xlat42 = (x_2317 * x_2319);
  let x_2321 : vec4<f32> = u_xlat1;
  let x_2324 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2321.x, x_2321.y, x_2321.z), vec3<f32>(x_2324.x, x_2324.y, x_2324.z));
  let x_2327 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2327, 0.0f, 1.0f);
  let x_2329 : f32 = u_xlat42;
  let x_2330 : f32 = u_xlat65;
  u_xlat42 = (x_2329 * x_2330);
  let x_2332 : f32 = u_xlat42;
  let x_2334 : vec4<f32> = u_xlat7;
  let x_2336 : vec3<f32> = (vec3<f32>(x_2332, x_2332, x_2332) * vec3<f32>(x_2334.x, x_2334.y, x_2334.z));
  let x_2337 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2336.x, x_2337.y, x_2336.y, x_2336.z);
  let x_2339 : vec3<f32> = u_xlat2;
  let x_2341 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2343 : vec3<f32> = (x_2339 + vec3<f32>(x_2341.x, x_2341.y, x_2341.z));
  let x_2344 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2343.x, x_2343.y, x_2343.z, x_2344.w);
  let x_2346 : vec4<f32> = u_xlat7;
  let x_2348 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2346.x, x_2346.y, x_2346.z), vec3<f32>(x_2348.x, x_2348.y, x_2348.z));
  let x_2351 : f32 = u_xlat42;
  u_xlat42 = max(x_2351, 1.17549435e-37f);
  let x_2354 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2354);
  let x_2356 : f32 = u_xlat42;
  let x_2358 : vec4<f32> = u_xlat7;
  let x_2360 : vec3<f32> = (vec3<f32>(x_2356, x_2356, x_2356) * vec3<f32>(x_2358.x, x_2358.y, x_2358.z));
  let x_2361 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2360.x, x_2360.y, x_2360.z, x_2361.w);
  let x_2363 : vec4<f32> = u_xlat1;
  let x_2365 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2363.x, x_2363.y, x_2363.z), vec3<f32>(x_2365.x, x_2365.y, x_2365.z));
  let x_2368 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2368, 0.0f, 1.0f);
  let x_2371 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2373 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2371.x, x_2371.y, x_2371.z), vec3<f32>(x_2373.x, x_2373.y, x_2373.z));
  let x_2376 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2376, 0.0f, 1.0f);
  let x_2378 : f32 = u_xlat42;
  let x_2379 : f32 = u_xlat42;
  u_xlat42 = (x_2378 * x_2379);
  let x_2381 : f32 = u_xlat42;
  let x_2383 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2381 * x_2383) + 1.000010014f);
  let x_2387 : f32 = u_xlat65;
  let x_2388 : f32 = u_xlat65;
  u_xlat65 = (x_2387 * x_2388);
  let x_2390 : f32 = u_xlat42;
  let x_2391 : f32 = u_xlat42;
  u_xlat42 = (x_2390 * x_2391);
  let x_2393 : f32 = u_xlat65;
  u_xlat65 = max(x_2393, 0.100000001f);
  let x_2396 : f32 = u_xlat42;
  let x_2397 : f32 = u_xlat65;
  u_xlat42 = (x_2396 * x_2397);
  let x_2399 : f32 = u_xlat66;
  let x_2400 : f32 = u_xlat42;
  u_xlat42 = (x_2399 * x_2400);
  let x_2402 : f32 = u_xlat64;
  let x_2403 : f32 = u_xlat42;
  u_xlat42 = (x_2402 / x_2403);
  let x_2405 : vec4<f32> = u_xlat5;
  let x_2407 : f32 = u_xlat42;
  let x_2410 : vec4<f32> = u_xlat6;
  let x_2412 : vec3<f32> = ((vec3<f32>(x_2405.x, x_2405.y, x_2405.z) * vec3<f32>(x_2407, x_2407, x_2407)) + vec3<f32>(x_2410.x, x_2410.y, x_2410.z));
  let x_2413 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2412.x, x_2412.y, x_2412.z, x_2413.w);
  let x_2415 : vec4<f32> = u_xlat4;
  let x_2417 : vec4<f32> = u_xlat7;
  let x_2419 : vec3<f32> = (vec3<f32>(x_2415.x, x_2415.z, x_2415.w) * vec3<f32>(x_2417.x, x_2417.y, x_2417.z));
  let x_2420 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2419.x, x_2420.y, x_2419.y, x_2419.z);
  let x_2423 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2425 : f32 = x_2223.unity_LightData.y;
  u_xlat42 = min(x_2423, x_2425);
  let x_2429 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2429));
  let x_2434 : f32 = x_2028.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2436 : f32 = x_2028.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2438 : f32 = x_2028.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2440 : f32 = x_2028.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2441 : vec4<f32> = vec4<f32>(x_2434, x_2436, x_2438, x_2440);
  let x_2448 : vec4<bool> = (vec4<f32>(x_2441.x, x_2441.y, x_2441.z, x_2441.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2448.x, x_2448.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2459 : u32 = u_xlatu_loop_1;
    let x_2460 : u32 = u_xlatu42;
    if ((x_2459 < x_2460)) {
    } else {
      break;
    }
    let x_2463 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2463 >> 2u);
    let x_2467 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2467 & 3u));
    let x_2470 : u32 = u_xlatu68;
    let x_2473 : vec4<f32> = x_2223.unity_LightIndices[bitcast<i32>(x_2470)];
    let x_2483 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2488 : vec4<u32> = indexable[x_2483];
    u_xlat68 = dot(x_2473, bitcast<vec4<f32>>(x_2488));
    let x_2491 : f32 = u_xlat68;
    u_xlatu68 = bitcast<u32>(i32(x_2491));
    let x_2494 : vec3<f32> = vs_TEXCOORD7;
    let x_2506 : u32 = u_xlatu68;
    let x_2509 : vec4<f32> = x_2505.x_AdditionalLightsPosition[bitcast<i32>(x_2506)];
    let x_2512 : u32 = u_xlatu68;
    let x_2515 : vec4<f32> = x_2505.x_AdditionalLightsPosition[bitcast<i32>(x_2512)];
    let x_2517 : vec3<f32> = ((-(x_2494) * vec3<f32>(x_2509.w, x_2509.w, x_2509.w)) + vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
    let x_2518 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2517.x, x_2517.y, x_2517.z, x_2518.w);
    let x_2520 : vec4<f32> = u_xlat9;
    let x_2522 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2520.x, x_2520.y, x_2520.z), vec3<f32>(x_2522.x, x_2522.y, x_2522.z));
    let x_2525 : f32 = u_xlat69;
    u_xlat69 = max(x_2525, 6.10351562e-05f);
    let x_2527 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2527);
    let x_2530 : vec2<f32> = u_xlat49;
    let x_2532 : vec4<f32> = u_xlat9;
    let x_2534 : vec3<f32> = (vec3<f32>(x_2530.x, x_2530.x, x_2530.x) * vec3<f32>(x_2532.x, x_2532.y, x_2532.z));
    let x_2535 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2534.x, x_2534.y, x_2534.z, x_2535.w);
    let x_2538 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2538);
    let x_2540 : f32 = u_xlat69;
    let x_2541 : u32 = u_xlatu68;
    let x_2544 : f32 = x_2505.x_AdditionalLightsAttenuation[bitcast<i32>(x_2541)].x;
    u_xlat69 = (x_2540 * x_2544);
    let x_2546 : f32 = u_xlat69;
    let x_2548 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2546) * x_2548) + 1.0f);
    let x_2551 : f32 = u_xlat69;
    u_xlat69 = max(x_2551, 0.0f);
    let x_2553 : f32 = u_xlat69;
    let x_2554 : f32 = u_xlat69;
    u_xlat69 = (x_2553 * x_2554);
    let x_2556 : f32 = u_xlat69;
    let x_2557 : f32 = u_xlat70;
    u_xlat69 = (x_2556 * x_2557);
    let x_2559 : u32 = u_xlatu68;
    let x_2562 : vec4<f32> = x_2505.x_AdditionalLightsSpotDir[bitcast<i32>(x_2559)];
    let x_2564 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2562.x, x_2562.y, x_2562.z), vec3<f32>(x_2564.x, x_2564.y, x_2564.z));
    let x_2567 : f32 = u_xlat70;
    let x_2568 : u32 = u_xlatu68;
    let x_2571 : f32 = x_2505.x_AdditionalLightsAttenuation[bitcast<i32>(x_2568)].z;
    let x_2573 : u32 = u_xlatu68;
    let x_2576 : f32 = x_2505.x_AdditionalLightsAttenuation[bitcast<i32>(x_2573)].w;
    u_xlat70 = ((x_2567 * x_2571) + x_2576);
    let x_2578 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2578, 0.0f, 1.0f);
    let x_2580 : f32 = u_xlat70;
    let x_2581 : f32 = u_xlat70;
    u_xlat70 = (x_2580 * x_2581);
    let x_2583 : f32 = u_xlat69;
    let x_2584 : f32 = u_xlat70;
    u_xlat69 = (x_2583 * x_2584);
    let x_2587 : u32 = u_xlatu68;
    u_xlatu70 = (x_2587 >> 5u);
    let x_2590 : u32 = u_xlatu68;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2590) & 31i)));
    let x_2595 : i32 = u_xlati71;
    let x_2597 : u32 = u_xlatu70;
    let x_2600 : f32 = x_2028.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2597)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2595) & bitcast<u32>(x_2600)));
    let x_2604 : i32 = u_xlati70;
    if ((x_2604 != 0i)) {
      let x_2614 : u32 = u_xlatu68;
      let x_2617 : f32 = x_2613.x_AdditionalLightsLightTypes[bitcast<i32>(x_2614)].el;
      u_xlati70 = i32(x_2617);
      let x_2619 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2619 != 0i));
      let x_2623 : u32 = u_xlatu68;
      u_xlati72 = (bitcast<i32>(x_2623) << bitcast<u32>(2i));
      let x_2626 : i32 = u_xlati71;
      if ((x_2626 != 0i)) {
        let x_2630 : vec3<f32> = vs_TEXCOORD7;
        let x_2632 : i32 = u_xlati72;
        let x_2635 : i32 = u_xlati72;
        let x_2639 : vec4<f32> = x_2613.x_AdditionalLightsWorldToLights[((x_2632 + 1i) / 4i)][((x_2635 + 1i) % 4i)];
        let x_2641 : vec3<f32> = (vec3<f32>(x_2630.y, x_2630.y, x_2630.y) * vec3<f32>(x_2639.x, x_2639.y, x_2639.w));
        let x_2642 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2641.x, x_2641.y, x_2641.z, x_2642.w);
        let x_2644 : i32 = u_xlati72;
        let x_2646 : i32 = u_xlati72;
        let x_2649 : vec4<f32> = x_2613.x_AdditionalLightsWorldToLights[(x_2644 / 4i)][(x_2646 % 4i)];
        let x_2651 : vec3<f32> = vs_TEXCOORD7;
        let x_2654 : vec4<f32> = u_xlat11;
        let x_2656 : vec3<f32> = ((vec3<f32>(x_2649.x, x_2649.y, x_2649.w) * vec3<f32>(x_2651.x, x_2651.x, x_2651.x)) + vec3<f32>(x_2654.x, x_2654.y, x_2654.z));
        let x_2657 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2656.x, x_2656.y, x_2656.z, x_2657.w);
        let x_2659 : i32 = u_xlati72;
        let x_2662 : i32 = u_xlati72;
        let x_2666 : vec4<f32> = x_2613.x_AdditionalLightsWorldToLights[((x_2659 + 2i) / 4i)][((x_2662 + 2i) % 4i)];
        let x_2668 : vec3<f32> = vs_TEXCOORD7;
        let x_2671 : vec4<f32> = u_xlat11;
        let x_2673 : vec3<f32> = ((vec3<f32>(x_2666.x, x_2666.y, x_2666.w) * vec3<f32>(x_2668.z, x_2668.z, x_2668.z)) + vec3<f32>(x_2671.x, x_2671.y, x_2671.z));
        let x_2674 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2673.x, x_2673.y, x_2673.z, x_2674.w);
        let x_2676 : vec4<f32> = u_xlat11;
        let x_2678 : i32 = u_xlati72;
        let x_2681 : i32 = u_xlati72;
        let x_2685 : vec4<f32> = x_2613.x_AdditionalLightsWorldToLights[((x_2678 + 3i) / 4i)][((x_2681 + 3i) % 4i)];
        let x_2687 : vec3<f32> = (vec3<f32>(x_2676.x, x_2676.y, x_2676.z) + vec3<f32>(x_2685.x, x_2685.y, x_2685.w));
        let x_2688 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2687.x, x_2687.y, x_2687.z, x_2688.w);
        let x_2690 : vec4<f32> = u_xlat11;
        let x_2692 : vec4<f32> = u_xlat11;
        let x_2694 : vec2<f32> = (vec2<f32>(x_2690.x, x_2690.y) / vec2<f32>(x_2692.z, x_2692.z));
        let x_2695 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2694.x, x_2694.y, x_2695.z, x_2695.w);
        let x_2697 : vec4<f32> = u_xlat11;
        let x_2700 : vec2<f32> = ((vec2<f32>(x_2697.x, x_2697.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2701 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2700.x, x_2700.y, x_2701.z, x_2701.w);
        let x_2703 : vec4<f32> = u_xlat11;
        let x_2707 : vec2<f32> = clamp(vec2<f32>(x_2703.x, x_2703.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2708 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2707.x, x_2707.y, x_2708.z, x_2708.w);
        let x_2710 : u32 = u_xlatu68;
        let x_2713 : vec4<f32> = x_2613.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2710)];
        let x_2715 : vec4<f32> = u_xlat11;
        let x_2718 : u32 = u_xlatu68;
        let x_2721 : vec4<f32> = x_2613.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2718)];
        let x_2723 : vec2<f32> = ((vec2<f32>(x_2713.x, x_2713.y) * vec2<f32>(x_2715.x, x_2715.y)) + vec2<f32>(x_2721.z, x_2721.w));
        let x_2724 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2723.x, x_2723.y, x_2724.z, x_2724.w);
      } else {
        let x_2728 : i32 = u_xlati70;
        u_xlatb70 = (x_2728 == 1i);
        let x_2730 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2730);
        let x_2732 : i32 = u_xlati70;
        if ((x_2732 != 0i)) {
          let x_2737 : vec3<f32> = vs_TEXCOORD7;
          let x_2739 : i32 = u_xlati72;
          let x_2742 : i32 = u_xlati72;
          let x_2746 : vec4<f32> = x_2613.x_AdditionalLightsWorldToLights[((x_2739 + 1i) / 4i)][((x_2742 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2737.y, x_2737.y) * vec2<f32>(x_2746.x, x_2746.y));
          let x_2749 : i32 = u_xlati72;
          let x_2751 : i32 = u_xlati72;
          let x_2754 : vec4<f32> = x_2613.x_AdditionalLightsWorldToLights[(x_2749 / 4i)][(x_2751 % 4i)];
          let x_2756 : vec3<f32> = vs_TEXCOORD7;
          let x_2759 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2754.x, x_2754.y) * vec2<f32>(x_2756.x, x_2756.x)) + x_2759);
          let x_2761 : i32 = u_xlati72;
          let x_2764 : i32 = u_xlati72;
          let x_2768 : vec4<f32> = x_2613.x_AdditionalLightsWorldToLights[((x_2761 + 2i) / 4i)][((x_2764 + 2i) % 4i)];
          let x_2770 : vec3<f32> = vs_TEXCOORD7;
          let x_2773 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2768.x, x_2768.y) * vec2<f32>(x_2770.z, x_2770.z)) + x_2773);
          let x_2775 : vec2<f32> = u_xlat53;
          let x_2776 : i32 = u_xlati72;
          let x_2779 : i32 = u_xlati72;
          let x_2783 : vec4<f32> = x_2613.x_AdditionalLightsWorldToLights[((x_2776 + 3i) / 4i)][((x_2779 + 3i) % 4i)];
          u_xlat53 = (x_2775 + vec2<f32>(x_2783.x, x_2783.y));
          let x_2786 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2786 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2789 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2789);
          let x_2791 : u32 = u_xlatu68;
          let x_2794 : vec4<f32> = x_2613.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2791)];
          let x_2796 : vec2<f32> = u_xlat53;
          let x_2798 : u32 = u_xlatu68;
          let x_2801 : vec4<f32> = x_2613.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2798)];
          let x_2803 : vec2<f32> = ((vec2<f32>(x_2794.x, x_2794.y) * x_2796) + vec2<f32>(x_2801.z, x_2801.w));
          let x_2804 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2803.x, x_2803.y, x_2804.z, x_2804.w);
        } else {
          let x_2807 : vec3<f32> = vs_TEXCOORD7;
          let x_2809 : i32 = u_xlati72;
          let x_2812 : i32 = u_xlati72;
          let x_2816 : vec4<f32> = x_2613.x_AdditionalLightsWorldToLights[((x_2809 + 1i) / 4i)][((x_2812 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2807.y, x_2807.y, x_2807.y, x_2807.y) * x_2816);
          let x_2818 : i32 = u_xlati72;
          let x_2820 : i32 = u_xlati72;
          let x_2823 : vec4<f32> = x_2613.x_AdditionalLightsWorldToLights[(x_2818 / 4i)][(x_2820 % 4i)];
          let x_2824 : vec3<f32> = vs_TEXCOORD7;
          let x_2827 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2823 * vec4<f32>(x_2824.x, x_2824.x, x_2824.x, x_2824.x)) + x_2827);
          let x_2829 : i32 = u_xlati72;
          let x_2832 : i32 = u_xlati72;
          let x_2836 : vec4<f32> = x_2613.x_AdditionalLightsWorldToLights[((x_2829 + 2i) / 4i)][((x_2832 + 2i) % 4i)];
          let x_2837 : vec3<f32> = vs_TEXCOORD7;
          let x_2840 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2836 * vec4<f32>(x_2837.z, x_2837.z, x_2837.z, x_2837.z)) + x_2840);
          let x_2842 : vec4<f32> = u_xlat12;
          let x_2843 : i32 = u_xlati72;
          let x_2846 : i32 = u_xlati72;
          let x_2850 : vec4<f32> = x_2613.x_AdditionalLightsWorldToLights[((x_2843 + 3i) / 4i)][((x_2846 + 3i) % 4i)];
          u_xlat12 = (x_2842 + x_2850);
          let x_2852 : vec4<f32> = u_xlat12;
          let x_2854 : vec4<f32> = u_xlat12;
          let x_2856 : vec3<f32> = (vec3<f32>(x_2852.x, x_2852.y, x_2852.z) / vec3<f32>(x_2854.w, x_2854.w, x_2854.w));
          let x_2857 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2856.x, x_2856.y, x_2856.z, x_2857.w);
          let x_2859 : vec4<f32> = u_xlat12;
          let x_2861 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_2859.x, x_2859.y, x_2859.z), vec3<f32>(x_2861.x, x_2861.y, x_2861.z));
          let x_2864 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2864);
          let x_2866 : f32 = u_xlat70;
          let x_2868 : vec4<f32> = u_xlat12;
          let x_2870 : vec3<f32> = (vec3<f32>(x_2866, x_2866, x_2866) * vec3<f32>(x_2868.x, x_2868.y, x_2868.z));
          let x_2871 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2870.x, x_2870.y, x_2870.z, x_2871.w);
          let x_2873 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_2873.x, x_2873.y, x_2873.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2878 : f32 = u_xlat70;
          u_xlat70 = max(x_2878, 0.000001f);
          let x_2881 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2881);
          let x_2883 : f32 = u_xlat70;
          let x_2885 : vec4<f32> = u_xlat12;
          let x_2887 : vec3<f32> = (vec3<f32>(x_2883, x_2883, x_2883) * vec3<f32>(x_2885.z, x_2885.x, x_2885.y));
          let x_2888 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2887.x, x_2887.y, x_2887.z, x_2888.w);
          let x_2891 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2891);
          let x_2895 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2895, 0.0f, 1.0f);
          let x_2899 : vec4<f32> = u_xlat13;
          let x_2902 : vec4<bool> = (vec4<f32>(x_2899.y, x_2899.z, x_2899.y, x_2899.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2902.x, x_2902.y);
          let x_2905 : bool = u_xlatb53.x;
          if (x_2905) {
            let x_2910 : f32 = u_xlat13.x;
            x_2906 = x_2910;
          } else {
            let x_2913 : f32 = u_xlat13.x;
            x_2906 = -(x_2913);
          }
          let x_2915 : f32 = x_2906;
          u_xlat53.x = x_2915;
          let x_2918 : bool = u_xlatb53.y;
          if (x_2918) {
            let x_2923 : f32 = u_xlat13.x;
            x_2919 = x_2923;
          } else {
            let x_2926 : f32 = u_xlat13.x;
            x_2919 = -(x_2926);
          }
          let x_2928 : f32 = x_2919;
          u_xlat53.y = x_2928;
          let x_2930 : vec4<f32> = u_xlat12;
          let x_2932 : f32 = u_xlat70;
          let x_2935 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2930.x, x_2930.y) * vec2<f32>(x_2932, x_2932)) + x_2935);
          let x_2937 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2937 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2940 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2940, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2944 : u32 = u_xlatu68;
          let x_2947 : vec4<f32> = x_2613.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2944)];
          let x_2949 : vec2<f32> = u_xlat53;
          let x_2951 : u32 = u_xlatu68;
          let x_2954 : vec4<f32> = x_2613.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2951)];
          let x_2956 : vec2<f32> = ((vec2<f32>(x_2947.x, x_2947.y) * x_2949) + vec2<f32>(x_2954.z, x_2954.w));
          let x_2957 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2956.x, x_2956.y, x_2957.z, x_2957.w);
        }
      }
      let x_2964 : vec4<f32> = u_xlat11;
      let x_2967 : f32 = x_126.x_GlobalMipBias.x;
      let x_2968 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2964.x, x_2964.y), x_2967);
      u_xlat11 = x_2968;
      let x_2970 : bool = u_xlatb7.y;
      if (x_2970) {
        let x_2975 : f32 = u_xlat11.w;
        x_2971 = x_2975;
      } else {
        let x_2978 : f32 = u_xlat11.x;
        x_2971 = x_2978;
      }
      let x_2979 : f32 = x_2971;
      u_xlat70 = x_2979;
      let x_2981 : bool = u_xlatb7.x;
      if (x_2981) {
        let x_2985 : vec4<f32> = u_xlat11;
        x_2982 = vec3<f32>(x_2985.x, x_2985.y, x_2985.z);
      } else {
        let x_2988 : f32 = u_xlat70;
        x_2982 = vec3<f32>(x_2988, x_2988, x_2988);
      }
      let x_2990 : vec3<f32> = x_2982;
      let x_2991 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2990.x, x_2990.y, x_2990.z, x_2991.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2997 : vec4<f32> = u_xlat11;
    let x_2999 : u32 = u_xlatu68;
    let x_3002 : vec4<f32> = x_2505.x_AdditionalLightsColor[bitcast<i32>(x_2999)];
    let x_3004 : vec3<f32> = (vec3<f32>(x_2997.x, x_2997.y, x_2997.z) * vec3<f32>(x_3002.x, x_3002.y, x_3002.z));
    let x_3005 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3004.x, x_3004.y, x_3004.z, x_3005.w);
    let x_3007 : f32 = u_xlat25;
    let x_3009 : vec4<f32> = u_xlat11;
    let x_3011 : vec3<f32> = (vec3<f32>(x_3007, x_3007, x_3007) * vec3<f32>(x_3009.x, x_3009.y, x_3009.z));
    let x_3012 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3011.x, x_3011.y, x_3011.z, x_3012.w);
    let x_3014 : vec4<f32> = u_xlat1;
    let x_3016 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(vec3<f32>(x_3014.x, x_3014.y, x_3014.z), vec3<f32>(x_3016.x, x_3016.y, x_3016.z));
    let x_3019 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3019, 0.0f, 1.0f);
    let x_3021 : f32 = u_xlat68;
    let x_3022 : f32 = u_xlat69;
    u_xlat68 = (x_3021 * x_3022);
    let x_3024 : f32 = u_xlat68;
    let x_3026 : vec4<f32> = u_xlat11;
    let x_3028 : vec3<f32> = (vec3<f32>(x_3024, x_3024, x_3024) * vec3<f32>(x_3026.x, x_3026.y, x_3026.z));
    let x_3029 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3028.x, x_3028.y, x_3028.z, x_3029.w);
    let x_3031 : vec4<f32> = u_xlat9;
    let x_3033 : vec2<f32> = u_xlat49;
    let x_3036 : vec3<f32> = u_xlat2;
    let x_3037 : vec3<f32> = ((vec3<f32>(x_3031.x, x_3031.y, x_3031.z) * vec3<f32>(x_3033.x, x_3033.x, x_3033.x)) + x_3036);
    let x_3038 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3037.x, x_3037.y, x_3037.z, x_3038.w);
    let x_3040 : vec4<f32> = u_xlat9;
    let x_3042 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3040.x, x_3040.y, x_3040.z), vec3<f32>(x_3042.x, x_3042.y, x_3042.z));
    let x_3045 : f32 = u_xlat68;
    u_xlat68 = max(x_3045, 1.17549435e-37f);
    let x_3047 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_3047);
    let x_3049 : f32 = u_xlat68;
    let x_3051 : vec4<f32> = u_xlat9;
    let x_3053 : vec3<f32> = (vec3<f32>(x_3049, x_3049, x_3049) * vec3<f32>(x_3051.x, x_3051.y, x_3051.z));
    let x_3054 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3053.x, x_3053.y, x_3053.z, x_3054.w);
    let x_3056 : vec4<f32> = u_xlat1;
    let x_3058 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3056.x, x_3056.y, x_3056.z), vec3<f32>(x_3058.x, x_3058.y, x_3058.z));
    let x_3061 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3061, 0.0f, 1.0f);
    let x_3063 : vec4<f32> = u_xlat10;
    let x_3065 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_3063.x, x_3063.y, x_3063.z), vec3<f32>(x_3065.x, x_3065.y, x_3065.z));
    let x_3068 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3068, 0.0f, 1.0f);
    let x_3070 : f32 = u_xlat68;
    let x_3071 : f32 = u_xlat68;
    u_xlat68 = (x_3070 * x_3071);
    let x_3073 : f32 = u_xlat68;
    let x_3075 : f32 = u_xlat0.x;
    u_xlat68 = ((x_3073 * x_3075) + 1.000010014f);
    let x_3078 : f32 = u_xlat69;
    let x_3079 : f32 = u_xlat69;
    u_xlat69 = (x_3078 * x_3079);
    let x_3081 : f32 = u_xlat68;
    let x_3082 : f32 = u_xlat68;
    u_xlat68 = (x_3081 * x_3082);
    let x_3084 : f32 = u_xlat69;
    u_xlat69 = max(x_3084, 0.100000001f);
    let x_3086 : f32 = u_xlat68;
    let x_3087 : f32 = u_xlat69;
    u_xlat68 = (x_3086 * x_3087);
    let x_3089 : f32 = u_xlat66;
    let x_3090 : f32 = u_xlat68;
    u_xlat68 = (x_3089 * x_3090);
    let x_3092 : f32 = u_xlat64;
    let x_3093 : f32 = u_xlat68;
    u_xlat68 = (x_3092 / x_3093);
    let x_3095 : vec4<f32> = u_xlat5;
    let x_3097 : f32 = u_xlat68;
    let x_3100 : vec4<f32> = u_xlat6;
    let x_3102 : vec3<f32> = ((vec3<f32>(x_3095.x, x_3095.y, x_3095.z) * vec3<f32>(x_3097, x_3097, x_3097)) + vec3<f32>(x_3100.x, x_3100.y, x_3100.z));
    let x_3103 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3102.x, x_3102.y, x_3102.z, x_3103.w);
    let x_3105 : vec4<f32> = u_xlat9;
    let x_3107 : vec4<f32> = u_xlat11;
    let x_3110 : vec4<f32> = u_xlat8;
    let x_3112 : vec3<f32> = ((vec3<f32>(x_3105.x, x_3105.y, x_3105.z) * vec3<f32>(x_3107.x, x_3107.y, x_3107.z)) + vec3<f32>(x_3110.x, x_3110.y, x_3110.z));
    let x_3113 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3112.x, x_3112.y, x_3112.z, x_3113.w);

    continuing {
      let x_3115 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3115 + bitcast<u32>(1i));
    }
  }
  let x_3117 : vec4<f32> = u_xlat3;
  let x_3119 : f32 = u_xlat21;
  let x_3122 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_3117.x, x_3117.y, x_3117.z) * vec3<f32>(x_3119, x_3119, x_3119)) + vec3<f32>(x_3122.x, x_3122.z, x_3122.w));
  let x_3125 : vec4<f32> = u_xlat8;
  let x_3127 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3125.x, x_3125.y, x_3125.z) + x_3127);
  let x_3131 : f32 = u_xlat63;
  let x_3133 : vec3<f32> = u_xlat0;
  let x_3134 : vec3<f32> = (vec3<f32>(x_3131, x_3131, x_3131) * x_3133);
  let x_3135 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3134.x, x_3134.y, x_3134.z, x_3135.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

