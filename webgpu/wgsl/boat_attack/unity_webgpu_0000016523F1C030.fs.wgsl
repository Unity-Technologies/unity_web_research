struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(5) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_414 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1742 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1930 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2201 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2314 : AdditionalLightsCookies;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat41 : vec2<f32>;
  var u_xlat60 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlatb23 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat5 : vec3<f32>;
  var x_188 : f32;
  var x_201 : f32;
  var x_212 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat61 : f32;
  var u_xlat64 : f32;
  var u_xlat65 : f32;
  var u_xlatb64 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat26 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec3<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat66 : f32;
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
  var u_xlatb26 : bool;
  var u_xlatb7 : vec2<bool>;
  var x_1827 : f32;
  var x_1838 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlatu60 : u32;
  var u_xlatb1 : vec3<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu66 : u32;
  var u_xlati67 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat29 : vec3<f32>;
  var u_xlatu10 : u32;
  var u_xlati30 : i32;
  var u_xlati10 : i32;
  var u_xlati50 : i32;
  var u_xlat30 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlatb51 : vec2<bool>;
  var u_xlat51 : vec2<f32>;
  var x_2634 : f32;
  var x_2647 : f32;
  var u_xlat70 : f32;
  var x_2709 : f32;
  var x_2720 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2861 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_59 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_44.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_59, x_61);
  u_xlat1 = vec2<f32>(x_62.x, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = x_69.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_65.w, x_65.x, x_65.y, x_65.z) * vec4<f32>(x_73.w, x_73.x, x_73.y, x_73.z));
  let x_83 : vec2<f32> = vs_TEXCOORD0;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_83, x_85);
  u_xlat3 = vec3<f32>(x_86.x, x_86.y, x_86.w);
  let x_90 : f32 = u_xlat3.x;
  let x_93 : f32 = u_xlat3.z;
  u_xlat3.x = (x_90 * x_93);
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat41 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat41;
  let x_107 : vec2<f32> = u_xlat41;
  u_xlat60 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat60;
  u_xlat60 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat60;
  u_xlat60 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat60;
  u_xlat60 = sqrt(x_114);
  let x_116 : f32 = u_xlat60;
  u_xlat60 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat41;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat41 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat23.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat23.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_163 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb23 = (x_163 == 0.0f);
  let x_169 : vec3<f32> = vs_TEXCOORD1;
  let x_174 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_169) + x_174);
  let x_177 : vec3<f32> = u_xlat4;
  let x_178 : vec3<f32> = u_xlat4;
  u_xlat43 = dot(x_177, x_178);
  let x_180 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_180);
  let x_182 : f32 = u_xlat43;
  let x_184 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_182, x_182, x_182) * x_184);
  let x_187 : bool = u_xlatb23;
  if (x_187) {
    let x_192 : f32 = u_xlat4.x;
    x_188 = x_192;
  } else {
    let x_197 : f32 = x_44.unity_MatrixV[0i].z;
    x_188 = x_197;
  }
  let x_198 : f32 = x_188;
  u_xlat5.x = x_198;
  let x_200 : bool = u_xlatb23;
  if (x_200) {
    let x_205 : f32 = u_xlat4.y;
    x_201 = x_205;
  } else {
    let x_208 : f32 = x_44.unity_MatrixV[1i].z;
    x_201 = x_208;
  }
  let x_209 : f32 = x_201;
  u_xlat5.y = x_209;
  let x_211 : bool = u_xlatb23;
  if (x_211) {
    let x_216 : f32 = u_xlat4.z;
    x_212 = x_216;
  } else {
    let x_219 : f32 = x_44.unity_MatrixV[2i].z;
    x_212 = x_219;
  }
  let x_220 : f32 = x_212;
  u_xlat5.z = x_220;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  let x_226 : vec4<f32> = vs_TEXCOORD3;
  u_xlat23 = (vec3<f32>(x_223.z, x_223.x, x_223.y) * vec3<f32>(x_226.y, x_226.z, x_226.x));
  let x_229 : vec3<f32> = vs_TEXCOORD2;
  let x_231 : vec4<f32> = vs_TEXCOORD3;
  let x_234 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_229.y, x_229.z, x_229.x) * vec3<f32>(x_231.z, x_231.x, x_231.y)) + -(x_234));
  let x_237 : vec3<f32> = u_xlat23;
  let x_238 : vec4<f32> = vs_TEXCOORD3;
  u_xlat23 = (x_237 * vec3<f32>(x_238.w, x_238.w, x_238.w));
  let x_241 : vec2<f32> = u_xlat41;
  let x_243 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_241.y, x_241.y, x_241.y) * x_243);
  let x_245 : vec2<f32> = u_xlat41;
  let x_247 : vec4<f32> = vs_TEXCOORD3;
  let x_250 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_245.x, x_245.x, x_245.x) * vec3<f32>(x_247.x, x_247.y, x_247.z)) + x_250);
  let x_252 : f32 = u_xlat60;
  let x_254 : vec3<f32> = vs_TEXCOORD2;
  let x_256 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_252, x_252, x_252) * x_254) + x_256);
  let x_258 : vec3<f32> = u_xlat23;
  let x_259 : vec3<f32> = u_xlat23;
  u_xlat60 = dot(x_258, x_259);
  let x_261 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_261);
  let x_263 : f32 = u_xlat60;
  let x_265 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_263, x_263, x_263) * x_265);
  let x_273 : vec2<f32> = vs_TEXCOORD8;
  let x_275 : f32 = x_44.x_GlobalMipBias.x;
  let x_276 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_273, x_275);
  u_xlat4 = vec3<f32>(x_276.x, x_276.y, x_276.z);
  let x_280 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_281 : vec2<f32> = vec2<f32>(x_280.x, x_280.y);
  u_xlat41 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_281.x, x_281.y));
  let x_287 : vec2<f32> = u_xlat41;
  let x_288 : vec4<f32> = hlslcc_FragCoord;
  let x_290 : vec2<f32> = (x_287 * vec2<f32>(x_288.x, x_288.y));
  let x_291 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_290.x, x_290.y, x_291.z, x_291.w);
  let x_294 : f32 = u_xlat6.y;
  let x_296 : f32 = x_44.x_ScaleBiasRt.x;
  let x_299 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_294 * x_296) + x_299);
  let x_301 : f32 = u_xlat60;
  u_xlat6.z = (-(x_301) + 1.0f);
  let x_306 : f32 = u_xlat1.x;
  u_xlat60 = ((-(x_306) * 0.959999979f) + 0.959999979f);
  let x_312 : f32 = u_xlat1.y;
  let x_314 : f32 = x_69.x_Smoothness;
  let x_316 : f32 = u_xlat60;
  u_xlat41.x = ((x_312 * x_314) + -(x_316));
  let x_321 : f32 = u_xlat60;
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat22 = (vec3<f32>(x_321, x_321, x_321) * vec3<f32>(x_323.y, x_323.z, x_323.w));
  let x_326 : vec4<f32> = u_xlat0;
  let x_329 : vec4<f32> = x_69.x_BaseColor;
  let x_334 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_329.x, x_329.y, x_329.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_335 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec2<f32> = u_xlat1;
  let x_339 : vec4<f32> = u_xlat0;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.x, x_337.x) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_345 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_348 : f32 = u_xlat1.y;
  let x_351 : f32 = x_69.x_Smoothness;
  u_xlat60 = ((-(x_348) * x_351) + 1.0f);
  let x_354 : f32 = u_xlat60;
  let x_355 : f32 = u_xlat60;
  u_xlat1.x = (x_354 * x_355);
  let x_359 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_359, 0.0078125f);
  let x_365 : f32 = u_xlat1.x;
  let x_367 : f32 = u_xlat1.x;
  u_xlat21 = (x_365 * x_367);
  let x_370 : f32 = u_xlat41.x;
  u_xlat41.x = (x_370 + 1.0f);
  let x_374 : f32 = u_xlat41.x;
  u_xlat41.x = clamp(x_374, 0.0f, 1.0f);
  let x_379 : f32 = u_xlat1.x;
  u_xlat61 = ((x_379 * 4.0f) + 2.0f);
  let x_389 : vec4<f32> = u_xlat6;
  let x_392 : f32 = x_44.x_GlobalMipBias.x;
  let x_393 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_389.x, x_389.z), x_392);
  u_xlat64 = x_393.x;
  let x_396 : f32 = u_xlat64;
  u_xlat65 = (x_396 + -1.0f);
  let x_400 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_401 : f32 = u_xlat65;
  u_xlat65 = ((x_400 * x_401) + 1.0f);
  let x_405 : f32 = u_xlat3.x;
  let x_406 : f32 = u_xlat64;
  u_xlat3.x = min(x_405, x_406);
  let x_416 : f32 = x_414.x_MainLightShadowParams.y;
  u_xlatb64 = (0.0f < x_416);
  let x_418 : bool = u_xlatb64;
  if (x_418) {
    let x_422 : f32 = x_414.x_MainLightShadowParams.y;
    u_xlatb64 = (x_422 == 1.0f);
    let x_424 : bool = u_xlatb64;
    if (x_424) {
      let x_428 : vec4<f32> = vs_TEXCOORD6;
      let x_431 : vec4<f32> = x_414.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_428.x, x_428.y, x_428.x, x_428.y) + x_431);
      let x_434 : vec4<f32> = u_xlat6;
      let x_435 : vec2<f32> = vec2<f32>(x_434.x, x_434.y);
      let x_437 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_435.x, x_435.y, x_437);
      let x_450 : vec3<f32> = txVec0;
      let x_452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_450.xy, x_450.z);
      u_xlat7.x = x_452;
      let x_455 : vec4<f32> = u_xlat6;
      let x_456 : vec2<f32> = vec2<f32>(x_455.z, x_455.w);
      let x_458 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_456.x, x_456.y, x_458);
      let x_465 : vec3<f32> = txVec1;
      let x_467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_465.xy, x_465.z);
      u_xlat7.y = x_467;
      let x_469 : vec4<f32> = vs_TEXCOORD6;
      let x_472 : vec4<f32> = x_414.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_469.x, x_469.y, x_469.x, x_469.y) + x_472);
      let x_475 : vec4<f32> = u_xlat6;
      let x_476 : vec2<f32> = vec2<f32>(x_475.x, x_475.y);
      let x_478 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_476.x, x_476.y, x_478);
      let x_485 : vec3<f32> = txVec2;
      let x_487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_485.xy, x_485.z);
      u_xlat7.z = x_487;
      let x_490 : vec4<f32> = u_xlat6;
      let x_491 : vec2<f32> = vec2<f32>(x_490.z, x_490.w);
      let x_493 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_491.x, x_491.y, x_493);
      let x_500 : vec3<f32> = txVec3;
      let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_500.xy, x_500.z);
      u_xlat7.w = x_502;
      let x_504 : vec4<f32> = u_xlat7;
      u_xlat64 = dot(x_504, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_511 : f32 = x_414.x_MainLightShadowParams.y;
      u_xlatb6 = (x_511 == 2.0f);
      let x_513 : bool = u_xlatb6;
      if (x_513) {
        let x_516 : vec4<f32> = vs_TEXCOORD6;
        let x_519 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_524 : vec2<f32> = ((vec2<f32>(x_516.x, x_516.y) * vec2<f32>(x_519.z, x_519.w)) + vec2<f32>(0.5f, 0.5f));
        let x_525 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
        let x_527 : vec4<f32> = u_xlat6;
        let x_529 : vec2<f32> = floor(vec2<f32>(x_527.x, x_527.y));
        let x_530 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_533 : vec4<f32> = vs_TEXCOORD6;
        let x_536 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_539 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_533.x, x_533.y) * vec2<f32>(x_536.z, x_536.w)) + -(vec2<f32>(x_539.x, x_539.y)));
        let x_543 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_543.x, x_543.x, x_543.y, x_543.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_548 : vec4<f32> = u_xlat7;
        let x_550 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_548.x, x_548.x, x_548.z, x_548.z) * vec4<f32>(x_550.x, x_550.x, x_550.z, x_550.z));
        let x_553 : vec4<f32> = u_xlat8;
        let x_557 : vec2<f32> = (vec2<f32>(x_553.y, x_553.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_558 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_557.x, x_558.y, x_557.y, x_558.w);
        let x_560 : vec4<f32> = u_xlat8;
        let x_563 : vec2<f32> = u_xlat46;
        let x_565 : vec2<f32> = ((vec2<f32>(x_560.x, x_560.z) * vec2<f32>(0.5f, 0.5f)) + -(x_563));
        let x_566 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
        let x_569 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_569) + vec2<f32>(1.0f, 1.0f));
        let x_573 : vec2<f32> = u_xlat46;
        let x_575 : vec2<f32> = min(x_573, vec2<f32>(0.0f, 0.0f));
        let x_576 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_575.x, x_575.y, x_576.z, x_576.w);
        let x_578 : vec4<f32> = u_xlat9;
        let x_581 : vec4<f32> = u_xlat9;
        let x_584 : vec2<f32> = u_xlat48;
        let x_585 : vec2<f32> = ((-(vec2<f32>(x_578.x, x_578.y)) * vec2<f32>(x_581.x, x_581.y)) + x_584);
        let x_586 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
        let x_588 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_588, vec2<f32>(0.0f, 0.0f));
        let x_590 : vec2<f32> = u_xlat46;
        let x_592 : vec2<f32> = u_xlat46;
        let x_594 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_590) * x_592) + vec2<f32>(x_594.y, x_594.w));
        let x_597 : vec4<f32> = u_xlat9;
        let x_599 : vec2<f32> = (vec2<f32>(x_597.x, x_597.y) + vec2<f32>(1.0f, 1.0f));
        let x_600 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
        let x_602 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_602 + vec2<f32>(1.0f, 1.0f));
        let x_605 : vec4<f32> = u_xlat8;
        let x_609 : vec2<f32> = (vec2<f32>(x_605.x, x_605.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_610 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_609.x, x_609.y, x_610.z, x_610.w);
        let x_612 : vec2<f32> = u_xlat48;
        let x_613 : vec2<f32> = (x_612 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_614 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
        let x_616 : vec4<f32> = u_xlat9;
        let x_618 : vec2<f32> = (vec2<f32>(x_616.x, x_616.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_619 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
        let x_622 : vec2<f32> = u_xlat46;
        let x_623 : vec2<f32> = (x_622 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_624 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_626 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_626.y, x_626.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_630 : f32 = u_xlat9.x;
        u_xlat10.z = x_630;
        let x_633 : f32 = u_xlat46.x;
        u_xlat10.w = x_633;
        let x_636 : f32 = u_xlat11.x;
        u_xlat8.z = x_636;
        let x_639 : f32 = u_xlat7.x;
        u_xlat8.w = x_639;
        let x_642 : vec4<f32> = u_xlat8;
        let x_644 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_642.z, x_642.w, x_642.x, x_642.z) + vec4<f32>(x_644.z, x_644.w, x_644.x, x_644.z));
        let x_648 : f32 = u_xlat10.y;
        u_xlat9.z = x_648;
        let x_651 : f32 = u_xlat46.y;
        u_xlat9.w = x_651;
        let x_654 : f32 = u_xlat8.y;
        u_xlat11.z = x_654;
        let x_657 : f32 = u_xlat7.z;
        u_xlat11.w = x_657;
        let x_659 : vec4<f32> = u_xlat9;
        let x_661 : vec4<f32> = u_xlat11;
        let x_663 : vec3<f32> = (vec3<f32>(x_659.z, x_659.y, x_659.w) + vec3<f32>(x_661.z, x_661.y, x_661.w));
        let x_664 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
        let x_666 : vec4<f32> = u_xlat8;
        let x_668 : vec4<f32> = u_xlat12;
        let x_670 : vec3<f32> = (vec3<f32>(x_666.x, x_666.z, x_666.w) / vec3<f32>(x_668.z, x_668.w, x_668.y));
        let x_671 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
        let x_673 : vec4<f32> = u_xlat8;
        let x_679 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_680 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
        let x_682 : vec4<f32> = u_xlat11;
        let x_684 : vec4<f32> = u_xlat7;
        let x_686 : vec3<f32> = (vec3<f32>(x_682.z, x_682.y, x_682.w) / vec3<f32>(x_684.x, x_684.y, x_684.z));
        let x_687 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
        let x_689 : vec4<f32> = u_xlat9;
        let x_691 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_692 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
        let x_694 : vec4<f32> = u_xlat8;
        let x_697 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_699 : vec3<f32> = (vec3<f32>(x_694.y, x_694.x, x_694.z) * vec3<f32>(x_697.x, x_697.x, x_697.x));
        let x_700 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
        let x_702 : vec4<f32> = u_xlat9;
        let x_705 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_707 : vec3<f32> = (vec3<f32>(x_702.x, x_702.y, x_702.z) * vec3<f32>(x_705.y, x_705.y, x_705.y));
        let x_708 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
        let x_711 : f32 = u_xlat9.x;
        u_xlat8.w = x_711;
        let x_713 : vec4<f32> = u_xlat6;
        let x_716 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_719 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_713.x, x_713.y, x_713.x, x_713.y) * vec4<f32>(x_716.x, x_716.y, x_716.x, x_716.y)) + vec4<f32>(x_719.y, x_719.w, x_719.x, x_719.w));
        let x_722 : vec4<f32> = u_xlat6;
        let x_725 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_728 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_722.x, x_722.y) * vec2<f32>(x_725.x, x_725.y)) + vec2<f32>(x_728.z, x_728.w));
        let x_732 : f32 = u_xlat8.y;
        u_xlat9.w = x_732;
        let x_734 : vec4<f32> = u_xlat9;
        let x_735 : vec2<f32> = vec2<f32>(x_734.y, x_734.z);
        let x_736 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_736.x, x_735.x, x_736.z, x_735.y);
        let x_738 : vec4<f32> = u_xlat6;
        let x_741 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_744 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_738.x, x_738.y, x_738.x, x_738.y) * vec4<f32>(x_741.x, x_741.y, x_741.x, x_741.y)) + vec4<f32>(x_744.x, x_744.y, x_744.z, x_744.y));
        let x_747 : vec4<f32> = u_xlat6;
        let x_750 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_753 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_747.x, x_747.y, x_747.x, x_747.y) * vec4<f32>(x_750.x, x_750.y, x_750.x, x_750.y)) + vec4<f32>(x_753.w, x_753.y, x_753.w, x_753.z));
        let x_756 : vec4<f32> = u_xlat6;
        let x_759 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_762 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_756.x, x_756.y, x_756.x, x_756.y) * vec4<f32>(x_759.x, x_759.y, x_759.x, x_759.y)) + vec4<f32>(x_762.x, x_762.w, x_762.z, x_762.w));
        let x_766 : vec4<f32> = u_xlat7;
        let x_768 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_766.x, x_766.x, x_766.x, x_766.y) * vec4<f32>(x_768.z, x_768.w, x_768.y, x_768.z));
        let x_772 : vec4<f32> = u_xlat7;
        let x_774 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_772.y, x_772.y, x_772.z, x_772.z) * x_774);
        let x_777 : f32 = u_xlat7.z;
        let x_779 : f32 = u_xlat12.y;
        u_xlat6.x = (x_777 * x_779);
        let x_783 : vec4<f32> = u_xlat10;
        let x_784 : vec2<f32> = vec2<f32>(x_783.x, x_783.y);
        let x_786 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_784.x, x_784.y, x_786);
        let x_794 : vec3<f32> = txVec4;
        let x_796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_794.xy, x_794.z);
        u_xlat26 = x_796;
        let x_798 : vec4<f32> = u_xlat10;
        let x_799 : vec2<f32> = vec2<f32>(x_798.z, x_798.w);
        let x_801 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_799.x, x_799.y, x_801);
        let x_808 : vec3<f32> = txVec5;
        let x_810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_808.xy, x_808.z);
        u_xlat7.x = x_810;
        let x_813 : f32 = u_xlat7.x;
        let x_815 : f32 = u_xlat13.y;
        u_xlat7.x = (x_813 * x_815);
        let x_819 : f32 = u_xlat13.x;
        let x_820 : f32 = u_xlat26;
        let x_823 : f32 = u_xlat7.x;
        u_xlat26 = ((x_819 * x_820) + x_823);
        let x_826 : vec2<f32> = u_xlat46;
        let x_828 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_826.x, x_826.y, x_828);
        let x_835 : vec3<f32> = txVec6;
        let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_835.xy, x_835.z);
        u_xlat46.x = x_837;
        let x_840 : f32 = u_xlat13.z;
        let x_842 : f32 = u_xlat46.x;
        let x_844 : f32 = u_xlat26;
        u_xlat26 = ((x_840 * x_842) + x_844);
        let x_847 : vec4<f32> = u_xlat9;
        let x_848 : vec2<f32> = vec2<f32>(x_847.x, x_847.y);
        let x_850 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_848.x, x_848.y, x_850);
        let x_857 : vec3<f32> = txVec7;
        let x_859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_857.xy, x_857.z);
        u_xlat46.x = x_859;
        let x_862 : f32 = u_xlat13.w;
        let x_864 : f32 = u_xlat46.x;
        let x_866 : f32 = u_xlat26;
        u_xlat26 = ((x_862 * x_864) + x_866);
        let x_869 : vec4<f32> = u_xlat11;
        let x_870 : vec2<f32> = vec2<f32>(x_869.x, x_869.y);
        let x_872 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_870.x, x_870.y, x_872);
        let x_879 : vec3<f32> = txVec8;
        let x_881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_879.xy, x_879.z);
        u_xlat46.x = x_881;
        let x_884 : f32 = u_xlat14.x;
        let x_886 : f32 = u_xlat46.x;
        let x_888 : f32 = u_xlat26;
        u_xlat26 = ((x_884 * x_886) + x_888);
        let x_891 : vec4<f32> = u_xlat11;
        let x_892 : vec2<f32> = vec2<f32>(x_891.z, x_891.w);
        let x_894 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_892.x, x_892.y, x_894);
        let x_901 : vec3<f32> = txVec9;
        let x_903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_901.xy, x_901.z);
        u_xlat46.x = x_903;
        let x_906 : f32 = u_xlat14.y;
        let x_908 : f32 = u_xlat46.x;
        let x_910 : f32 = u_xlat26;
        u_xlat26 = ((x_906 * x_908) + x_910);
        let x_913 : vec4<f32> = u_xlat9;
        let x_914 : vec2<f32> = vec2<f32>(x_913.z, x_913.w);
        let x_916 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_914.x, x_914.y, x_916);
        let x_923 : vec3<f32> = txVec10;
        let x_925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_923.xy, x_923.z);
        u_xlat46.x = x_925;
        let x_928 : f32 = u_xlat14.z;
        let x_930 : f32 = u_xlat46.x;
        let x_932 : f32 = u_xlat26;
        u_xlat26 = ((x_928 * x_930) + x_932);
        let x_935 : vec4<f32> = u_xlat8;
        let x_936 : vec2<f32> = vec2<f32>(x_935.x, x_935.y);
        let x_938 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_936.x, x_936.y, x_938);
        let x_945 : vec3<f32> = txVec11;
        let x_947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_945.xy, x_945.z);
        u_xlat46.x = x_947;
        let x_950 : f32 = u_xlat14.w;
        let x_952 : f32 = u_xlat46.x;
        let x_954 : f32 = u_xlat26;
        u_xlat26 = ((x_950 * x_952) + x_954);
        let x_957 : vec4<f32> = u_xlat8;
        let x_958 : vec2<f32> = vec2<f32>(x_957.z, x_957.w);
        let x_960 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_958.x, x_958.y, x_960);
        let x_967 : vec3<f32> = txVec12;
        let x_969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_967.xy, x_967.z);
        u_xlat46.x = x_969;
        let x_972 : f32 = u_xlat6.x;
        let x_974 : f32 = u_xlat46.x;
        let x_976 : f32 = u_xlat26;
        u_xlat64 = ((x_972 * x_974) + x_976);
      } else {
        let x_979 : vec4<f32> = vs_TEXCOORD6;
        let x_982 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_985 : vec2<f32> = ((vec2<f32>(x_979.x, x_979.y) * vec2<f32>(x_982.z, x_982.w)) + vec2<f32>(0.5f, 0.5f));
        let x_986 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_985.x, x_985.y, x_986.z, x_986.w);
        let x_988 : vec4<f32> = u_xlat6;
        let x_990 : vec2<f32> = floor(vec2<f32>(x_988.x, x_988.y));
        let x_991 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_990.x, x_990.y, x_991.z, x_991.w);
        let x_993 : vec4<f32> = vs_TEXCOORD6;
        let x_996 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_999 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_993.x, x_993.y) * vec2<f32>(x_996.z, x_996.w)) + -(vec2<f32>(x_999.x, x_999.y)));
        let x_1003 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1003.x, x_1003.x, x_1003.y, x_1003.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1006 : vec4<f32> = u_xlat7;
        let x_1008 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1006.x, x_1006.x, x_1006.z, x_1006.z) * vec4<f32>(x_1008.x, x_1008.x, x_1008.z, x_1008.z));
        let x_1011 : vec4<f32> = u_xlat8;
        let x_1015 : vec2<f32> = (vec2<f32>(x_1011.y, x_1011.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1016 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1016.x, x_1015.x, x_1016.z, x_1015.y);
        let x_1018 : vec4<f32> = u_xlat8;
        let x_1021 : vec2<f32> = u_xlat46;
        let x_1023 : vec2<f32> = ((vec2<f32>(x_1018.x, x_1018.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1021));
        let x_1024 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1023.x, x_1024.y, x_1023.y, x_1024.w);
        let x_1026 : vec2<f32> = u_xlat46;
        let x_1028 : vec2<f32> = (-(x_1026) + vec2<f32>(1.0f, 1.0f));
        let x_1029 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
        let x_1031 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1031, vec2<f32>(0.0f, 0.0f));
        let x_1033 : vec2<f32> = u_xlat48;
        let x_1035 : vec2<f32> = u_xlat48;
        let x_1037 : vec4<f32> = u_xlat8;
        let x_1039 : vec2<f32> = ((-(x_1033) * x_1035) + vec2<f32>(x_1037.x, x_1037.y));
        let x_1040 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1039.x, x_1039.y, x_1040.z, x_1040.w);
        let x_1042 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1042, vec2<f32>(0.0f, 0.0f));
        let x_1045 : vec2<f32> = u_xlat48;
        let x_1047 : vec2<f32> = u_xlat48;
        let x_1049 : vec4<f32> = u_xlat7;
        let x_1051 : vec2<f32> = ((-(x_1045) * x_1047) + vec2<f32>(x_1049.y, x_1049.w));
        let x_1052 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1051.x, x_1052.y, x_1051.y);
        let x_1054 : vec4<f32> = u_xlat8;
        let x_1056 : vec2<f32> = (vec2<f32>(x_1054.x, x_1054.y) + vec2<f32>(2.0f, 2.0f));
        let x_1057 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1059 : vec3<f32> = u_xlat27;
        let x_1061 : vec2<f32> = (vec2<f32>(x_1059.x, x_1059.z) + vec2<f32>(2.0f, 2.0f));
        let x_1062 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1062.x, x_1061.x, x_1062.z, x_1061.y);
        let x_1065 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1065 * 0.081632003f);
        let x_1069 : vec4<f32> = u_xlat7;
        let x_1072 : vec3<f32> = (vec3<f32>(x_1069.z, x_1069.x, x_1069.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1073 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
        let x_1075 : vec4<f32> = u_xlat8;
        let x_1078 : vec2<f32> = (vec2<f32>(x_1075.x, x_1075.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1079 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1078.x, x_1078.y, x_1079.z, x_1079.w);
        let x_1082 : f32 = u_xlat11.y;
        u_xlat10.x = x_1082;
        let x_1084 : vec2<f32> = u_xlat46;
        let x_1091 : vec2<f32> = ((vec2<f32>(x_1084.x, x_1084.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1092 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1092.x, x_1091.x, x_1092.z, x_1091.y);
        let x_1094 : vec2<f32> = u_xlat46;
        let x_1098 : vec2<f32> = ((vec2<f32>(x_1094.x, x_1094.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1099 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1098.x, x_1099.y, x_1098.y, x_1099.w);
        let x_1102 : f32 = u_xlat7.x;
        u_xlat8.y = x_1102;
        let x_1105 : f32 = u_xlat9.y;
        u_xlat8.w = x_1105;
        let x_1107 : vec4<f32> = u_xlat8;
        let x_1108 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1107 + x_1108);
        let x_1110 : vec2<f32> = u_xlat46;
        let x_1113 : vec2<f32> = ((vec2<f32>(x_1110.y, x_1110.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1114 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1114.x, x_1113.x, x_1114.z, x_1113.y);
        let x_1116 : vec2<f32> = u_xlat46;
        let x_1119 : vec2<f32> = ((vec2<f32>(x_1116.y, x_1116.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1120 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1119.x, x_1120.y, x_1119.y, x_1120.w);
        let x_1123 : f32 = u_xlat7.y;
        u_xlat9.y = x_1123;
        let x_1125 : vec4<f32> = u_xlat9;
        let x_1126 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1125 + x_1126);
        let x_1128 : vec4<f32> = u_xlat8;
        let x_1129 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1128 / x_1129);
        let x_1131 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1131 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1137 : vec4<f32> = u_xlat9;
        let x_1138 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1137 / x_1138);
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1140 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1142 : vec4<f32> = u_xlat8;
        let x_1145 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1142.w, x_1142.x, x_1142.y, x_1142.z) * vec4<f32>(x_1145.x, x_1145.x, x_1145.x, x_1145.x));
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1151 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1148.x, x_1148.w, x_1148.y, x_1148.z) * vec4<f32>(x_1151.y, x_1151.y, x_1151.y, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat8;
        let x_1155 : vec3<f32> = vec3<f32>(x_1154.y, x_1154.z, x_1154.w);
        let x_1156 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1155.x, x_1156.y, x_1155.y, x_1155.z);
        let x_1159 : f32 = u_xlat9.x;
        u_xlat11.y = x_1159;
        let x_1161 : vec4<f32> = u_xlat6;
        let x_1164 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1167 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1161.x, x_1161.y, x_1161.x, x_1161.y) * vec4<f32>(x_1164.x, x_1164.y, x_1164.x, x_1164.y)) + vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1167.y));
        let x_1170 : vec4<f32> = u_xlat6;
        let x_1173 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1176 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1170.x, x_1170.y) * vec2<f32>(x_1173.x, x_1173.y)) + vec2<f32>(x_1176.w, x_1176.y));
        let x_1180 : f32 = u_xlat11.y;
        u_xlat8.y = x_1180;
        let x_1183 : f32 = u_xlat9.z;
        u_xlat11.y = x_1183;
        let x_1185 : vec4<f32> = u_xlat6;
        let x_1188 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1191 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1185.x, x_1185.y, x_1185.x, x_1185.y) * vec4<f32>(x_1188.x, x_1188.y, x_1188.x, x_1188.y)) + vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1191.y));
        let x_1194 : vec4<f32> = u_xlat6;
        let x_1197 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1200 : vec4<f32> = u_xlat11;
        let x_1202 : vec2<f32> = ((vec2<f32>(x_1194.x, x_1194.y) * vec2<f32>(x_1197.x, x_1197.y)) + vec2<f32>(x_1200.w, x_1200.y));
        let x_1203 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1202.x, x_1202.y, x_1203.z, x_1203.w);
        let x_1206 : f32 = u_xlat11.y;
        u_xlat8.z = x_1206;
        let x_1209 : vec4<f32> = u_xlat6;
        let x_1212 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1215 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1209.x, x_1209.y, x_1209.x, x_1209.y) * vec4<f32>(x_1212.x, x_1212.y, x_1212.x, x_1212.y)) + vec4<f32>(x_1215.x, x_1215.y, x_1215.x, x_1215.z));
        let x_1219 : f32 = u_xlat9.w;
        u_xlat11.y = x_1219;
        let x_1222 : vec4<f32> = u_xlat6;
        let x_1225 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1228 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1222.x, x_1222.y, x_1222.x, x_1222.y) * vec4<f32>(x_1225.x, x_1225.y, x_1225.x, x_1225.y)) + vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1228.y));
        let x_1232 : vec4<f32> = u_xlat6;
        let x_1235 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1238 : vec4<f32> = u_xlat11;
        let x_1240 : vec2<f32> = ((vec2<f32>(x_1232.x, x_1232.y) * vec2<f32>(x_1235.x, x_1235.y)) + vec2<f32>(x_1238.w, x_1238.y));
        let x_1241 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1240.x, x_1240.y, x_1241.z);
        let x_1244 : f32 = u_xlat11.y;
        u_xlat8.w = x_1244;
        let x_1247 : vec4<f32> = u_xlat6;
        let x_1250 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1253 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1247.x, x_1247.y) * vec2<f32>(x_1250.x, x_1250.y)) + vec2<f32>(x_1253.x, x_1253.w));
        let x_1256 : vec4<f32> = u_xlat11;
        let x_1257 : vec3<f32> = vec3<f32>(x_1256.x, x_1256.z, x_1256.w);
        let x_1258 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1257.x, x_1258.y, x_1257.y, x_1257.z);
        let x_1260 : vec4<f32> = u_xlat6;
        let x_1263 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1266 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1260.x, x_1260.y, x_1260.x, x_1260.y) * vec4<f32>(x_1263.x, x_1263.y, x_1263.x, x_1263.y)) + vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1266.y));
        let x_1270 : vec4<f32> = u_xlat6;
        let x_1273 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1276 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1270.x, x_1270.y) * vec2<f32>(x_1273.x, x_1273.y)) + vec2<f32>(x_1276.w, x_1276.y));
        let x_1280 : f32 = u_xlat8.x;
        u_xlat9.x = x_1280;
        let x_1282 : vec4<f32> = u_xlat6;
        let x_1285 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1288 : vec4<f32> = u_xlat9;
        let x_1290 : vec2<f32> = ((vec2<f32>(x_1282.x, x_1282.y) * vec2<f32>(x_1285.x, x_1285.y)) + vec2<f32>(x_1288.x, x_1288.y));
        let x_1291 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1290.x, x_1290.y, x_1291.z, x_1291.w);
        let x_1294 : vec4<f32> = u_xlat7;
        let x_1296 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1294.x, x_1294.x, x_1294.x, x_1294.x) * x_1296);
        let x_1299 : vec4<f32> = u_xlat7;
        let x_1301 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1299.y, x_1299.y, x_1299.y, x_1299.y) * x_1301);
        let x_1304 : vec4<f32> = u_xlat7;
        let x_1306 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1304.z, x_1304.z, x_1304.z, x_1304.z) * x_1306);
        let x_1308 : vec4<f32> = u_xlat7;
        let x_1310 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1308.w, x_1308.w, x_1308.w, x_1308.w) * x_1310);
        let x_1313 : vec4<f32> = u_xlat12;
        let x_1314 : vec2<f32> = vec2<f32>(x_1313.x, x_1313.y);
        let x_1316 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1314.x, x_1314.y, x_1316);
        let x_1323 : vec3<f32> = txVec13;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1323.xy, x_1323.z);
        u_xlat8.x = x_1325;
        let x_1328 : vec4<f32> = u_xlat12;
        let x_1329 : vec2<f32> = vec2<f32>(x_1328.z, x_1328.w);
        let x_1331 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1339 : vec3<f32> = txVec14;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1339.xy, x_1339.z);
        u_xlat68 = x_1341;
        let x_1342 : f32 = u_xlat68;
        let x_1344 : f32 = u_xlat17.y;
        u_xlat68 = (x_1342 * x_1344);
        let x_1347 : f32 = u_xlat17.x;
        let x_1349 : f32 = u_xlat8.x;
        let x_1351 : f32 = u_xlat68;
        u_xlat8.x = ((x_1347 * x_1349) + x_1351);
        let x_1355 : vec2<f32> = u_xlat46;
        let x_1357 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec15;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1364.xy, x_1364.z);
        u_xlat46.x = x_1366;
        let x_1369 : f32 = u_xlat17.z;
        let x_1371 : f32 = u_xlat46.x;
        let x_1374 : f32 = u_xlat8.x;
        u_xlat46.x = ((x_1369 * x_1371) + x_1374);
        let x_1378 : vec4<f32> = u_xlat15;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.x, x_1378.y);
        let x_1381 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1389 : vec3<f32> = txVec16;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1389.xy, x_1389.z);
        u_xlat66 = x_1391;
        let x_1393 : f32 = u_xlat17.w;
        let x_1394 : f32 = u_xlat66;
        let x_1397 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1393 * x_1394) + x_1397);
        let x_1401 : vec4<f32> = u_xlat13;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.x, x_1401.y);
        let x_1404 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec17;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1411.xy, x_1411.z);
        u_xlat66 = x_1413;
        let x_1415 : f32 = u_xlat18.x;
        let x_1416 : f32 = u_xlat66;
        let x_1419 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1415 * x_1416) + x_1419);
        let x_1423 : vec4<f32> = u_xlat13;
        let x_1424 : vec2<f32> = vec2<f32>(x_1423.z, x_1423.w);
        let x_1426 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec18;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1433.xy, x_1433.z);
        u_xlat66 = x_1435;
        let x_1437 : f32 = u_xlat18.y;
        let x_1438 : f32 = u_xlat66;
        let x_1441 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1437 * x_1438) + x_1441);
        let x_1445 : vec4<f32> = u_xlat14;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.x, x_1445.y);
        let x_1448 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec19;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1455.xy, x_1455.z);
        u_xlat66 = x_1457;
        let x_1459 : f32 = u_xlat18.z;
        let x_1460 : f32 = u_xlat66;
        let x_1463 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1459 * x_1460) + x_1463);
        let x_1467 : vec4<f32> = u_xlat15;
        let x_1468 : vec2<f32> = vec2<f32>(x_1467.z, x_1467.w);
        let x_1470 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec20;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1477.xy, x_1477.z);
        u_xlat66 = x_1479;
        let x_1481 : f32 = u_xlat18.w;
        let x_1482 : f32 = u_xlat66;
        let x_1485 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1481 * x_1482) + x_1485);
        let x_1489 : vec4<f32> = u_xlat16;
        let x_1490 : vec2<f32> = vec2<f32>(x_1489.x, x_1489.y);
        let x_1492 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec21;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1499.xy, x_1499.z);
        u_xlat66 = x_1501;
        let x_1503 : f32 = u_xlat19.x;
        let x_1504 : f32 = u_xlat66;
        let x_1507 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1503 * x_1504) + x_1507);
        let x_1511 : vec4<f32> = u_xlat16;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.z, x_1511.w);
        let x_1514 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec22;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1521.xy, x_1521.z);
        u_xlat66 = x_1523;
        let x_1525 : f32 = u_xlat19.y;
        let x_1526 : f32 = u_xlat66;
        let x_1529 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1525 * x_1526) + x_1529);
        let x_1533 : vec3<f32> = u_xlat28;
        let x_1534 : vec2<f32> = vec2<f32>(x_1533.x, x_1533.y);
        let x_1536 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1534.x, x_1534.y, x_1536);
        let x_1543 : vec3<f32> = txVec23;
        let x_1545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1543.xy, x_1543.z);
        u_xlat66 = x_1545;
        let x_1547 : f32 = u_xlat19.z;
        let x_1548 : f32 = u_xlat66;
        let x_1551 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1547 * x_1548) + x_1551);
        let x_1555 : vec2<f32> = u_xlat54;
        let x_1557 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec24;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1564.xy, x_1564.z);
        u_xlat66 = x_1566;
        let x_1568 : f32 = u_xlat19.w;
        let x_1569 : f32 = u_xlat66;
        let x_1572 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1568 * x_1569) + x_1572);
        let x_1576 : vec4<f32> = u_xlat11;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.x, x_1576.y);
        let x_1579 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec25;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1586.xy, x_1586.z);
        u_xlat66 = x_1588;
        let x_1590 : f32 = u_xlat7.x;
        let x_1591 : f32 = u_xlat66;
        let x_1594 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1590 * x_1591) + x_1594);
        let x_1598 : vec4<f32> = u_xlat11;
        let x_1599 : vec2<f32> = vec2<f32>(x_1598.z, x_1598.w);
        let x_1601 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1599.x, x_1599.y, x_1601);
        let x_1608 : vec3<f32> = txVec26;
        let x_1610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1608.xy, x_1608.z);
        u_xlat66 = x_1610;
        let x_1612 : f32 = u_xlat7.y;
        let x_1613 : f32 = u_xlat66;
        let x_1616 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1612 * x_1613) + x_1616);
        let x_1620 : vec2<f32> = u_xlat49;
        let x_1622 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec27;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1629.xy, x_1629.z);
        u_xlat66 = x_1631;
        let x_1633 : f32 = u_xlat7.z;
        let x_1634 : f32 = u_xlat66;
        let x_1637 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1633 * x_1634) + x_1637);
        let x_1641 : vec4<f32> = u_xlat6;
        let x_1642 : vec2<f32> = vec2<f32>(x_1641.x, x_1641.y);
        let x_1644 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
        let x_1651 : vec3<f32> = txVec28;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1651.xy, x_1651.z);
        u_xlat6.x = x_1653;
        let x_1656 : f32 = u_xlat7.w;
        let x_1658 : f32 = u_xlat6.x;
        let x_1661 : f32 = u_xlat46.x;
        u_xlat64 = ((x_1656 * x_1658) + x_1661);
      }
    }
  } else {
    let x_1665 : vec4<f32> = vs_TEXCOORD6;
    let x_1666 : vec2<f32> = vec2<f32>(x_1665.x, x_1665.y);
    let x_1668 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
    let x_1675 : vec3<f32> = txVec29;
    let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1675.xy, x_1675.z);
    u_xlat64 = x_1677;
  }
  let x_1679 : f32 = x_414.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1679) + 1.0f);
  let x_1683 : f32 = u_xlat64;
  let x_1685 : f32 = x_414.x_MainLightShadowParams.x;
  let x_1688 : f32 = u_xlat6.x;
  u_xlat64 = ((x_1683 * x_1685) + x_1688);
  let x_1691 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_1691);
  let x_1695 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_1695 >= 1.0f);
  let x_1697 : bool = u_xlatb26;
  let x_1698 : bool = u_xlatb6;
  u_xlatb6 = (x_1697 | x_1698);
  let x_1700 : bool = u_xlatb6;
  let x_1701 : f32 = u_xlat64;
  u_xlat64 = select(x_1701, 1.0f, x_1700);
  let x_1703 : vec3<f32> = vs_TEXCOORD1;
  let x_1705 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1707 : vec3<f32> = (x_1703 + -(x_1705));
  let x_1708 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1707.x, x_1707.y, x_1707.z, x_1708.w);
  let x_1710 : vec4<f32> = u_xlat6;
  let x_1712 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1710.x, x_1710.y, x_1710.z), vec3<f32>(x_1712.x, x_1712.y, x_1712.z));
  let x_1717 : f32 = u_xlat6.x;
  let x_1719 : f32 = x_414.x_MainLightShadowParams.z;
  let x_1722 : f32 = x_414.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1717 * x_1719) + x_1722);
  let x_1726 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1726, 0.0f, 1.0f);
  let x_1729 : f32 = u_xlat64;
  u_xlat26 = (-(x_1729) + 1.0f);
  let x_1733 : f32 = u_xlat6.x;
  let x_1734 : f32 = u_xlat26;
  let x_1736 : f32 = u_xlat64;
  u_xlat64 = ((x_1733 * x_1734) + x_1736);
  let x_1744 : f32 = x_1742.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1744 == -1.0f));
  let x_1746 : bool = u_xlatb6;
  if (x_1746) {
    let x_1749 : vec3<f32> = vs_TEXCOORD1;
    let x_1752 : vec4<f32> = x_1742.x_MainLightWorldToLight[1i];
    let x_1754 : vec2<f32> = (vec2<f32>(x_1749.y, x_1749.y) * vec2<f32>(x_1752.x, x_1752.y));
    let x_1755 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1754.x, x_1754.y, x_1755.z, x_1755.w);
    let x_1758 : vec4<f32> = x_1742.x_MainLightWorldToLight[0i];
    let x_1760 : vec3<f32> = vs_TEXCOORD1;
    let x_1763 : vec4<f32> = u_xlat6;
    let x_1765 : vec2<f32> = ((vec2<f32>(x_1758.x, x_1758.y) * vec2<f32>(x_1760.x, x_1760.x)) + vec2<f32>(x_1763.x, x_1763.y));
    let x_1766 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1765.x, x_1765.y, x_1766.z, x_1766.w);
    let x_1769 : vec4<f32> = x_1742.x_MainLightWorldToLight[2i];
    let x_1771 : vec3<f32> = vs_TEXCOORD1;
    let x_1774 : vec4<f32> = u_xlat6;
    let x_1776 : vec2<f32> = ((vec2<f32>(x_1769.x, x_1769.y) * vec2<f32>(x_1771.z, x_1771.z)) + vec2<f32>(x_1774.x, x_1774.y));
    let x_1777 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1776.x, x_1776.y, x_1777.z, x_1777.w);
    let x_1779 : vec4<f32> = u_xlat6;
    let x_1783 : vec4<f32> = x_1742.x_MainLightWorldToLight[3i];
    let x_1785 : vec2<f32> = (vec2<f32>(x_1779.x, x_1779.y) + vec2<f32>(x_1783.x, x_1783.y));
    let x_1786 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1785.x, x_1785.y, x_1786.z, x_1786.w);
    let x_1788 : vec4<f32> = u_xlat6;
    let x_1791 : vec2<f32> = ((vec2<f32>(x_1788.x, x_1788.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1792 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1791.x, x_1791.y, x_1792.z, x_1792.w);
    let x_1799 : vec4<f32> = u_xlat6;
    let x_1802 : f32 = x_44.x_GlobalMipBias.x;
    let x_1803 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1799.x, x_1799.y), x_1802);
    u_xlat6 = x_1803;
    let x_1808 : f32 = x_1742.x_MainLightCookieTextureFormat;
    let x_1810 : f32 = x_1742.x_MainLightCookieTextureFormat;
    let x_1812 : f32 = x_1742.x_MainLightCookieTextureFormat;
    let x_1814 : f32 = x_1742.x_MainLightCookieTextureFormat;
    let x_1815 : vec4<f32> = vec4<f32>(x_1808, x_1810, x_1812, x_1814);
    let x_1823 : vec4<bool> = (vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1815.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1823.x, x_1823.y);
    let x_1826 : bool = u_xlatb7.y;
    if (x_1826) {
      let x_1831 : f32 = u_xlat6.w;
      x_1827 = x_1831;
    } else {
      let x_1834 : f32 = u_xlat6.x;
      x_1827 = x_1834;
    }
    let x_1835 : f32 = x_1827;
    u_xlat66 = x_1835;
    let x_1837 : bool = u_xlatb7.x;
    if (x_1837) {
      let x_1841 : vec4<f32> = u_xlat6;
      x_1838 = vec3<f32>(x_1841.x, x_1841.y, x_1841.z);
    } else {
      let x_1844 : f32 = u_xlat66;
      x_1838 = vec3<f32>(x_1844, x_1844, x_1844);
    }
    let x_1846 : vec3<f32> = x_1838;
    let x_1847 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1846.x, x_1846.y, x_1846.z, x_1847.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1853 : vec4<f32> = u_xlat6;
  let x_1856 : vec4<f32> = x_44.x_MainLightColor;
  let x_1858 : vec3<f32> = (vec3<f32>(x_1853.x, x_1853.y, x_1853.z) * vec3<f32>(x_1856.x, x_1856.y, x_1856.z));
  let x_1859 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1859.w);
  let x_1861 : f32 = u_xlat65;
  let x_1863 : vec4<f32> = u_xlat6;
  let x_1865 : vec3<f32> = (vec3<f32>(x_1861, x_1861, x_1861) * vec3<f32>(x_1863.x, x_1863.y, x_1863.z));
  let x_1866 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1865.x, x_1865.y, x_1865.z, x_1866.w);
  let x_1868 : vec3<f32> = u_xlat5;
  let x_1870 : vec3<f32> = u_xlat23;
  u_xlat66 = dot(-(x_1868), x_1870);
  let x_1872 : f32 = u_xlat66;
  let x_1873 : f32 = u_xlat66;
  u_xlat66 = (x_1872 + x_1873);
  let x_1875 : vec3<f32> = u_xlat23;
  let x_1876 : f32 = u_xlat66;
  let x_1880 : vec3<f32> = u_xlat5;
  let x_1882 : vec3<f32> = ((x_1875 * -(vec3<f32>(x_1876, x_1876, x_1876))) + -(x_1880));
  let x_1883 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1882.x, x_1882.y, x_1882.z, x_1883.w);
  let x_1885 : vec3<f32> = u_xlat23;
  let x_1886 : vec3<f32> = u_xlat5;
  u_xlat66 = dot(x_1885, x_1886);
  let x_1888 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1888, 0.0f, 1.0f);
  let x_1890 : f32 = u_xlat66;
  u_xlat66 = (-(x_1890) + 1.0f);
  let x_1893 : f32 = u_xlat66;
  let x_1894 : f32 = u_xlat66;
  u_xlat66 = (x_1893 * x_1894);
  let x_1896 : f32 = u_xlat66;
  let x_1897 : f32 = u_xlat66;
  u_xlat66 = (x_1896 * x_1897);
  let x_1900 : f32 = u_xlat60;
  u_xlat67 = ((-(x_1900) * 0.699999988f) + 1.700000048f);
  let x_1906 : f32 = u_xlat60;
  let x_1907 : f32 = u_xlat67;
  u_xlat60 = (x_1906 * x_1907);
  let x_1909 : f32 = u_xlat60;
  u_xlat60 = (x_1909 * 6.0f);
  let x_1920 : vec4<f32> = u_xlat7;
  let x_1922 : f32 = u_xlat60;
  let x_1923 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1920.x, x_1920.y, x_1920.z), x_1922);
  u_xlat7 = x_1923;
  let x_1925 : f32 = u_xlat7.w;
  u_xlat60 = (x_1925 + -1.0f);
  let x_1932 : f32 = x_1930.unity_SpecCube0_HDR.w;
  let x_1933 : f32 = u_xlat60;
  u_xlat60 = ((x_1932 * x_1933) + 1.0f);
  let x_1936 : f32 = u_xlat60;
  u_xlat60 = max(x_1936, 0.0f);
  let x_1938 : f32 = u_xlat60;
  u_xlat60 = log2(x_1938);
  let x_1940 : f32 = u_xlat60;
  let x_1942 : f32 = x_1930.unity_SpecCube0_HDR.y;
  u_xlat60 = (x_1940 * x_1942);
  let x_1944 : f32 = u_xlat60;
  u_xlat60 = exp2(x_1944);
  let x_1946 : f32 = u_xlat60;
  let x_1948 : f32 = x_1930.unity_SpecCube0_HDR.x;
  u_xlat60 = (x_1946 * x_1948);
  let x_1950 : vec4<f32> = u_xlat7;
  let x_1952 : f32 = u_xlat60;
  let x_1954 : vec3<f32> = (vec3<f32>(x_1950.x, x_1950.y, x_1950.z) * vec3<f32>(x_1952, x_1952, x_1952));
  let x_1955 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);
  let x_1957 : vec2<f32> = u_xlat1;
  let x_1959 : vec2<f32> = u_xlat1;
  let x_1963 : vec2<f32> = ((vec2<f32>(x_1957.x, x_1957.x) * vec2<f32>(x_1959.x, x_1959.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1964 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1963.x, x_1963.y, x_1964.z, x_1964.w);
  let x_1967 : f32 = u_xlat8.y;
  u_xlat60 = (1.0f / x_1967);
  let x_1969 : vec4<f32> = u_xlat0;
  let x_1972 : vec2<f32> = u_xlat41;
  u_xlat28 = (-(vec3<f32>(x_1969.x, x_1969.y, x_1969.z)) + vec3<f32>(x_1972.x, x_1972.x, x_1972.x));
  let x_1975 : f32 = u_xlat66;
  let x_1977 : vec3<f32> = u_xlat28;
  let x_1979 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_1975, x_1975, x_1975) * x_1977) + vec3<f32>(x_1979.x, x_1979.y, x_1979.z));
  let x_1982 : f32 = u_xlat60;
  let x_1984 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1982, x_1982, x_1982) * x_1984);
  let x_1986 : vec4<f32> = u_xlat7;
  let x_1988 : vec3<f32> = u_xlat28;
  let x_1989 : vec3<f32> = (vec3<f32>(x_1986.x, x_1986.y, x_1986.z) * x_1988);
  let x_1990 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1989.x, x_1989.y, x_1989.z, x_1990.w);
  let x_1992 : vec3<f32> = u_xlat4;
  let x_1993 : vec3<f32> = u_xlat22;
  let x_1995 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_1992 * x_1993) + vec3<f32>(x_1995.x, x_1995.y, x_1995.z));
  let x_1998 : f32 = u_xlat64;
  let x_2001 : f32 = x_1930.unity_LightData.z;
  u_xlat60 = (x_1998 * x_2001);
  let x_2003 : vec3<f32> = u_xlat23;
  let x_2005 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_2003, vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
  let x_2010 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2010, 0.0f, 1.0f);
  let x_2013 : f32 = u_xlat60;
  let x_2015 : f32 = u_xlat1.x;
  u_xlat60 = (x_2013 * x_2015);
  let x_2017 : f32 = u_xlat60;
  let x_2019 : vec4<f32> = u_xlat6;
  let x_2021 : vec3<f32> = (vec3<f32>(x_2017, x_2017, x_2017) * vec3<f32>(x_2019.x, x_2019.y, x_2019.z));
  let x_2022 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2021.x, x_2021.y, x_2021.z, x_2022.w);
  let x_2024 : vec3<f32> = u_xlat5;
  let x_2026 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2028 : vec3<f32> = (x_2024 + vec3<f32>(x_2026.x, x_2026.y, x_2026.z));
  let x_2029 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2028.x, x_2028.y, x_2028.z, x_2029.w);
  let x_2031 : vec4<f32> = u_xlat7;
  let x_2033 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2031.x, x_2031.y, x_2031.z), vec3<f32>(x_2033.x, x_2033.y, x_2033.z));
  let x_2036 : f32 = u_xlat60;
  u_xlat60 = max(x_2036, 1.17549435e-37f);
  let x_2039 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_2039);
  let x_2041 : f32 = u_xlat60;
  let x_2043 : vec4<f32> = u_xlat7;
  let x_2045 : vec3<f32> = (vec3<f32>(x_2041, x_2041, x_2041) * vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
  let x_2046 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2045.x, x_2045.y, x_2045.z, x_2046.w);
  let x_2048 : vec3<f32> = u_xlat23;
  let x_2049 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_2048, vec3<f32>(x_2049.x, x_2049.y, x_2049.z));
  let x_2052 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2052, 0.0f, 1.0f);
  let x_2055 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2057 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_2055.x, x_2055.y, x_2055.z), vec3<f32>(x_2057.x, x_2057.y, x_2057.z));
  let x_2062 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2062, 0.0f, 1.0f);
  let x_2065 : f32 = u_xlat60;
  let x_2066 : f32 = u_xlat60;
  u_xlat60 = (x_2065 * x_2066);
  let x_2068 : f32 = u_xlat60;
  let x_2070 : f32 = u_xlat8.x;
  u_xlat60 = ((x_2068 * x_2070) + 1.000010014f);
  let x_2075 : f32 = u_xlat1.x;
  let x_2077 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2075 * x_2077);
  let x_2080 : f32 = u_xlat60;
  let x_2081 : f32 = u_xlat60;
  u_xlat60 = (x_2080 * x_2081);
  let x_2084 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2084, 0.100000001f);
  let x_2088 : f32 = u_xlat60;
  let x_2090 : f32 = u_xlat1.x;
  u_xlat60 = (x_2088 * x_2090);
  let x_2092 : f32 = u_xlat61;
  let x_2093 : f32 = u_xlat60;
  u_xlat60 = (x_2092 * x_2093);
  let x_2095 : f32 = u_xlat21;
  let x_2096 : f32 = u_xlat60;
  u_xlat60 = (x_2095 / x_2096);
  let x_2098 : vec4<f32> = u_xlat0;
  let x_2100 : f32 = u_xlat60;
  let x_2103 : vec3<f32> = u_xlat22;
  let x_2104 : vec3<f32> = ((vec3<f32>(x_2098.x, x_2098.y, x_2098.z) * vec3<f32>(x_2100, x_2100, x_2100)) + x_2103);
  let x_2105 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2105.w);
  let x_2107 : vec4<f32> = u_xlat6;
  let x_2109 : vec4<f32> = u_xlat7;
  let x_2111 : vec3<f32> = (vec3<f32>(x_2107.x, x_2107.y, x_2107.z) * vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
  let x_2112 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
  let x_2115 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2117 : f32 = x_1930.unity_LightData.y;
  u_xlat60 = min(x_2115, x_2117);
  let x_2121 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2121));
  let x_2128 : f32 = x_1742.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2130 : f32 = x_1742.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2132 : f32 = x_1742.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2134 : f32 = x_1742.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2135 : vec4<f32> = vec4<f32>(x_2128, x_2130, x_2132, x_2134);
  let x_2142 : vec4<bool> = (vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2135.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_2143 : vec2<bool> = vec2<bool>(x_2142.x, x_2142.z);
  let x_2144 : vec3<bool> = u_xlatb1;
  u_xlatb1 = vec3<bool>(x_2143.x, x_2144.y, x_2143.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2155 : u32 = u_xlatu_loop_1;
    let x_2156 : u32 = u_xlatu60;
    if ((x_2155 < x_2156)) {
    } else {
      break;
    }
    let x_2159 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2159 >> 2u);
    let x_2163 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2163 & 3u));
    let x_2166 : u32 = u_xlatu66;
    let x_2169 : vec4<f32> = x_1930.unity_LightIndices[bitcast<i32>(x_2166)];
    let x_2179 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2184 : vec4<u32> = indexable[x_2179];
    u_xlat66 = dot(x_2169, bitcast<vec4<f32>>(x_2184));
    let x_2187 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2187));
    let x_2190 : vec3<f32> = vs_TEXCOORD1;
    let x_2202 : u32 = u_xlatu66;
    let x_2205 : vec4<f32> = x_2201.x_AdditionalLightsPosition[bitcast<i32>(x_2202)];
    let x_2208 : u32 = u_xlatu66;
    let x_2211 : vec4<f32> = x_2201.x_AdditionalLightsPosition[bitcast<i32>(x_2208)];
    u_xlat28 = ((-(x_2190) * vec3<f32>(x_2205.w, x_2205.w, x_2205.w)) + vec3<f32>(x_2211.x, x_2211.y, x_2211.z));
    let x_2214 : vec3<f32> = u_xlat28;
    let x_2215 : vec3<f32> = u_xlat28;
    u_xlat67 = dot(x_2214, x_2215);
    let x_2217 : f32 = u_xlat67;
    u_xlat67 = max(x_2217, 6.10351562e-05f);
    let x_2220 : f32 = u_xlat67;
    u_xlat9.x = inverseSqrt(x_2220);
    let x_2224 : vec3<f32> = u_xlat28;
    let x_2225 : vec4<f32> = u_xlat9;
    u_xlat29 = (x_2224 * vec3<f32>(x_2225.x, x_2225.x, x_2225.x));
    let x_2228 : f32 = u_xlat67;
    u_xlat10.x = (1.0f / x_2228);
    let x_2231 : f32 = u_xlat67;
    let x_2232 : u32 = u_xlatu66;
    let x_2235 : f32 = x_2201.x_AdditionalLightsAttenuation[bitcast<i32>(x_2232)].x;
    u_xlat67 = (x_2231 * x_2235);
    let x_2237 : f32 = u_xlat67;
    let x_2239 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2237) * x_2239) + 1.0f);
    let x_2242 : f32 = u_xlat67;
    u_xlat67 = max(x_2242, 0.0f);
    let x_2244 : f32 = u_xlat67;
    let x_2245 : f32 = u_xlat67;
    u_xlat67 = (x_2244 * x_2245);
    let x_2247 : f32 = u_xlat67;
    let x_2249 : f32 = u_xlat10.x;
    u_xlat67 = (x_2247 * x_2249);
    let x_2251 : u32 = u_xlatu66;
    let x_2254 : vec4<f32> = x_2201.x_AdditionalLightsSpotDir[bitcast<i32>(x_2251)];
    let x_2256 : vec3<f32> = u_xlat29;
    u_xlat10.x = dot(vec3<f32>(x_2254.x, x_2254.y, x_2254.z), x_2256);
    let x_2260 : f32 = u_xlat10.x;
    let x_2261 : u32 = u_xlatu66;
    let x_2264 : f32 = x_2201.x_AdditionalLightsAttenuation[bitcast<i32>(x_2261)].z;
    let x_2266 : u32 = u_xlatu66;
    let x_2269 : f32 = x_2201.x_AdditionalLightsAttenuation[bitcast<i32>(x_2266)].w;
    u_xlat10.x = ((x_2260 * x_2264) + x_2269);
    let x_2273 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2273, 0.0f, 1.0f);
    let x_2277 : f32 = u_xlat10.x;
    let x_2279 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2277 * x_2279);
    let x_2282 : f32 = u_xlat67;
    let x_2284 : f32 = u_xlat10.x;
    u_xlat67 = (x_2282 * x_2284);
    let x_2287 : u32 = u_xlatu66;
    u_xlatu10 = (x_2287 >> 5u);
    let x_2290 : u32 = u_xlatu66;
    u_xlati30 = (1i << bitcast<u32>((bitcast<i32>(x_2290) & 31i)));
    let x_2296 : i32 = u_xlati30;
    let x_2298 : u32 = u_xlatu10;
    let x_2301 : f32 = x_1742.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2298)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_2296) & bitcast<u32>(x_2301)));
    let x_2305 : i32 = u_xlati10;
    if ((x_2305 != 0i)) {
      let x_2315 : u32 = u_xlatu66;
      let x_2318 : f32 = x_2314.x_AdditionalLightsLightTypes[bitcast<i32>(x_2315)].el;
      u_xlati10 = i32(x_2318);
      let x_2320 : i32 = u_xlati10;
      u_xlati30 = select(1i, 0i, (x_2320 != 0i));
      let x_2324 : u32 = u_xlatu66;
      u_xlati50 = (bitcast<i32>(x_2324) << bitcast<u32>(2i));
      let x_2327 : i32 = u_xlati30;
      if ((x_2327 != 0i)) {
        let x_2331 : vec3<f32> = vs_TEXCOORD1;
        let x_2333 : i32 = u_xlati50;
        let x_2336 : i32 = u_xlati50;
        let x_2340 : vec4<f32> = x_2314.x_AdditionalLightsWorldToLights[((x_2333 + 1i) / 4i)][((x_2336 + 1i) % 4i)];
        let x_2342 : vec3<f32> = (vec3<f32>(x_2331.y, x_2331.y, x_2331.y) * vec3<f32>(x_2340.x, x_2340.y, x_2340.w));
        let x_2343 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
        let x_2345 : i32 = u_xlati50;
        let x_2347 : i32 = u_xlati50;
        let x_2350 : vec4<f32> = x_2314.x_AdditionalLightsWorldToLights[(x_2345 / 4i)][(x_2347 % 4i)];
        let x_2352 : vec3<f32> = vs_TEXCOORD1;
        let x_2355 : vec4<f32> = u_xlat11;
        let x_2357 : vec3<f32> = ((vec3<f32>(x_2350.x, x_2350.y, x_2350.w) * vec3<f32>(x_2352.x, x_2352.x, x_2352.x)) + vec3<f32>(x_2355.x, x_2355.y, x_2355.z));
        let x_2358 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2357.x, x_2357.y, x_2357.z, x_2358.w);
        let x_2360 : i32 = u_xlati50;
        let x_2363 : i32 = u_xlati50;
        let x_2367 : vec4<f32> = x_2314.x_AdditionalLightsWorldToLights[((x_2360 + 2i) / 4i)][((x_2363 + 2i) % 4i)];
        let x_2369 : vec3<f32> = vs_TEXCOORD1;
        let x_2372 : vec4<f32> = u_xlat11;
        let x_2374 : vec3<f32> = ((vec3<f32>(x_2367.x, x_2367.y, x_2367.w) * vec3<f32>(x_2369.z, x_2369.z, x_2369.z)) + vec3<f32>(x_2372.x, x_2372.y, x_2372.z));
        let x_2375 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2374.x, x_2374.y, x_2374.z, x_2375.w);
        let x_2377 : vec4<f32> = u_xlat11;
        let x_2379 : i32 = u_xlati50;
        let x_2382 : i32 = u_xlati50;
        let x_2386 : vec4<f32> = x_2314.x_AdditionalLightsWorldToLights[((x_2379 + 3i) / 4i)][((x_2382 + 3i) % 4i)];
        let x_2388 : vec3<f32> = (vec3<f32>(x_2377.x, x_2377.y, x_2377.z) + vec3<f32>(x_2386.x, x_2386.y, x_2386.w));
        let x_2389 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2388.x, x_2388.y, x_2388.z, x_2389.w);
        let x_2392 : vec4<f32> = u_xlat11;
        let x_2394 : vec4<f32> = u_xlat11;
        let x_2396 : vec2<f32> = (vec2<f32>(x_2392.x, x_2392.y) / vec2<f32>(x_2394.z, x_2394.z));
        let x_2397 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_2396.x, x_2397.y, x_2396.y);
        let x_2399 : vec3<f32> = u_xlat30;
        let x_2402 : vec2<f32> = ((vec2<f32>(x_2399.x, x_2399.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2403 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_2402.x, x_2403.y, x_2402.y);
        let x_2405 : vec3<f32> = u_xlat30;
        let x_2409 : vec2<f32> = clamp(vec2<f32>(x_2405.x, x_2405.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2410 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_2409.x, x_2410.y, x_2409.y);
        let x_2412 : u32 = u_xlatu66;
        let x_2415 : vec4<f32> = x_2314.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2412)];
        let x_2417 : vec3<f32> = u_xlat30;
        let x_2420 : u32 = u_xlatu66;
        let x_2423 : vec4<f32> = x_2314.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2420)];
        let x_2425 : vec2<f32> = ((vec2<f32>(x_2415.x, x_2415.y) * vec2<f32>(x_2417.x, x_2417.z)) + vec2<f32>(x_2423.z, x_2423.w));
        let x_2426 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_2425.x, x_2426.y, x_2425.y);
      } else {
        let x_2430 : i32 = u_xlati10;
        u_xlatb10 = (x_2430 == 1i);
        let x_2432 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_2432);
        let x_2434 : i32 = u_xlati10;
        if ((x_2434 != 0i)) {
          let x_2438 : vec3<f32> = vs_TEXCOORD1;
          let x_2440 : i32 = u_xlati50;
          let x_2443 : i32 = u_xlati50;
          let x_2447 : vec4<f32> = x_2314.x_AdditionalLightsWorldToLights[((x_2440 + 1i) / 4i)][((x_2443 + 1i) % 4i)];
          let x_2449 : vec2<f32> = (vec2<f32>(x_2438.y, x_2438.y) * vec2<f32>(x_2447.x, x_2447.y));
          let x_2450 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2449.x, x_2449.y, x_2450.z, x_2450.w);
          let x_2452 : i32 = u_xlati50;
          let x_2454 : i32 = u_xlati50;
          let x_2457 : vec4<f32> = x_2314.x_AdditionalLightsWorldToLights[(x_2452 / 4i)][(x_2454 % 4i)];
          let x_2459 : vec3<f32> = vs_TEXCOORD1;
          let x_2462 : vec4<f32> = u_xlat11;
          let x_2464 : vec2<f32> = ((vec2<f32>(x_2457.x, x_2457.y) * vec2<f32>(x_2459.x, x_2459.x)) + vec2<f32>(x_2462.x, x_2462.y));
          let x_2465 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2464.x, x_2464.y, x_2465.z, x_2465.w);
          let x_2467 : i32 = u_xlati50;
          let x_2470 : i32 = u_xlati50;
          let x_2474 : vec4<f32> = x_2314.x_AdditionalLightsWorldToLights[((x_2467 + 2i) / 4i)][((x_2470 + 2i) % 4i)];
          let x_2476 : vec3<f32> = vs_TEXCOORD1;
          let x_2479 : vec4<f32> = u_xlat11;
          let x_2481 : vec2<f32> = ((vec2<f32>(x_2474.x, x_2474.y) * vec2<f32>(x_2476.z, x_2476.z)) + vec2<f32>(x_2479.x, x_2479.y));
          let x_2482 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2481.x, x_2481.y, x_2482.z, x_2482.w);
          let x_2484 : vec4<f32> = u_xlat11;
          let x_2486 : i32 = u_xlati50;
          let x_2489 : i32 = u_xlati50;
          let x_2493 : vec4<f32> = x_2314.x_AdditionalLightsWorldToLights[((x_2486 + 3i) / 4i)][((x_2489 + 3i) % 4i)];
          let x_2495 : vec2<f32> = (vec2<f32>(x_2484.x, x_2484.y) + vec2<f32>(x_2493.x, x_2493.y));
          let x_2496 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2495.x, x_2495.y, x_2496.z, x_2496.w);
          let x_2498 : vec4<f32> = u_xlat11;
          let x_2501 : vec2<f32> = ((vec2<f32>(x_2498.x, x_2498.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2502 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2501.x, x_2501.y, x_2502.z, x_2502.w);
          let x_2504 : vec4<f32> = u_xlat11;
          let x_2506 : vec2<f32> = fract(vec2<f32>(x_2504.x, x_2504.y));
          let x_2507 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2506.x, x_2506.y, x_2507.z, x_2507.w);
          let x_2509 : u32 = u_xlatu66;
          let x_2512 : vec4<f32> = x_2314.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2509)];
          let x_2514 : vec4<f32> = u_xlat11;
          let x_2517 : u32 = u_xlatu66;
          let x_2520 : vec4<f32> = x_2314.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2517)];
          let x_2522 : vec2<f32> = ((vec2<f32>(x_2512.x, x_2512.y) * vec2<f32>(x_2514.x, x_2514.y)) + vec2<f32>(x_2520.z, x_2520.w));
          let x_2523 : vec3<f32> = u_xlat30;
          u_xlat30 = vec3<f32>(x_2522.x, x_2523.y, x_2522.y);
        } else {
          let x_2526 : vec3<f32> = vs_TEXCOORD1;
          let x_2528 : i32 = u_xlati50;
          let x_2531 : i32 = u_xlati50;
          let x_2535 : vec4<f32> = x_2314.x_AdditionalLightsWorldToLights[((x_2528 + 1i) / 4i)][((x_2531 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_2526.y, x_2526.y, x_2526.y, x_2526.y) * x_2535);
          let x_2537 : i32 = u_xlati50;
          let x_2539 : i32 = u_xlati50;
          let x_2542 : vec4<f32> = x_2314.x_AdditionalLightsWorldToLights[(x_2537 / 4i)][(x_2539 % 4i)];
          let x_2543 : vec3<f32> = vs_TEXCOORD1;
          let x_2546 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2542 * vec4<f32>(x_2543.x, x_2543.x, x_2543.x, x_2543.x)) + x_2546);
          let x_2548 : i32 = u_xlati50;
          let x_2551 : i32 = u_xlati50;
          let x_2555 : vec4<f32> = x_2314.x_AdditionalLightsWorldToLights[((x_2548 + 2i) / 4i)][((x_2551 + 2i) % 4i)];
          let x_2556 : vec3<f32> = vs_TEXCOORD1;
          let x_2559 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2555 * vec4<f32>(x_2556.z, x_2556.z, x_2556.z, x_2556.z)) + x_2559);
          let x_2561 : vec4<f32> = u_xlat11;
          let x_2562 : i32 = u_xlati50;
          let x_2565 : i32 = u_xlati50;
          let x_2569 : vec4<f32> = x_2314.x_AdditionalLightsWorldToLights[((x_2562 + 3i) / 4i)][((x_2565 + 3i) % 4i)];
          u_xlat11 = (x_2561 + x_2569);
          let x_2571 : vec4<f32> = u_xlat11;
          let x_2573 : vec4<f32> = u_xlat11;
          let x_2575 : vec3<f32> = (vec3<f32>(x_2571.x, x_2571.y, x_2571.z) / vec3<f32>(x_2573.w, x_2573.w, x_2573.w));
          let x_2576 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
          let x_2578 : vec4<f32> = u_xlat11;
          let x_2580 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_2578.x, x_2578.y, x_2578.z), vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
          let x_2585 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_2585);
          let x_2588 : vec4<f32> = u_xlat10;
          let x_2590 : vec4<f32> = u_xlat11;
          let x_2592 : vec3<f32> = (vec3<f32>(x_2588.x, x_2588.x, x_2588.x) * vec3<f32>(x_2590.x, x_2590.y, x_2590.z));
          let x_2593 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2592.x, x_2592.y, x_2592.z, x_2593.w);
          let x_2595 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_2595.x, x_2595.y, x_2595.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2602 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_2602, 0.000001f);
          let x_2607 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_2607);
          let x_2610 : vec4<f32> = u_xlat10;
          let x_2612 : vec4<f32> = u_xlat11;
          let x_2614 : vec3<f32> = (vec3<f32>(x_2610.x, x_2610.x, x_2610.x) * vec3<f32>(x_2612.z, x_2612.x, x_2612.y));
          let x_2615 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2615.w);
          let x_2618 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_2618);
          let x_2622 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_2622, 0.0f, 1.0f);
          let x_2626 : vec4<f32> = u_xlat12;
          let x_2629 : vec4<bool> = (vec4<f32>(x_2626.y, x_2626.z, x_2626.y, x_2626.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2629.x, x_2629.y);
          let x_2633 : bool = u_xlatb51.x;
          if (x_2633) {
            let x_2638 : f32 = u_xlat12.x;
            x_2634 = x_2638;
          } else {
            let x_2641 : f32 = u_xlat12.x;
            x_2634 = -(x_2641);
          }
          let x_2643 : f32 = x_2634;
          u_xlat51.x = x_2643;
          let x_2646 : bool = u_xlatb51.y;
          if (x_2646) {
            let x_2651 : f32 = u_xlat12.x;
            x_2647 = x_2651;
          } else {
            let x_2654 : f32 = u_xlat12.x;
            x_2647 = -(x_2654);
          }
          let x_2656 : f32 = x_2647;
          u_xlat51.y = x_2656;
          let x_2658 : vec4<f32> = u_xlat11;
          let x_2660 : vec4<f32> = u_xlat10;
          let x_2663 : vec2<f32> = u_xlat51;
          let x_2664 : vec2<f32> = ((vec2<f32>(x_2658.x, x_2658.y) * vec2<f32>(x_2660.x, x_2660.x)) + x_2663);
          let x_2665 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2664.x, x_2665.y, x_2664.y, x_2665.w);
          let x_2667 : vec4<f32> = u_xlat10;
          let x_2670 : vec2<f32> = ((vec2<f32>(x_2667.x, x_2667.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2671 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2670.x, x_2671.y, x_2670.y, x_2671.w);
          let x_2673 : vec4<f32> = u_xlat10;
          let x_2677 : vec2<f32> = clamp(vec2<f32>(x_2673.x, x_2673.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2678 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2677.x, x_2678.y, x_2677.y, x_2678.w);
          let x_2680 : u32 = u_xlatu66;
          let x_2683 : vec4<f32> = x_2314.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2680)];
          let x_2685 : vec4<f32> = u_xlat10;
          let x_2688 : u32 = u_xlatu66;
          let x_2691 : vec4<f32> = x_2314.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2688)];
          let x_2693 : vec2<f32> = ((vec2<f32>(x_2683.x, x_2683.y) * vec2<f32>(x_2685.x, x_2685.z)) + vec2<f32>(x_2691.z, x_2691.w));
          let x_2694 : vec3<f32> = u_xlat30;
          u_xlat30 = vec3<f32>(x_2693.x, x_2694.y, x_2693.y);
        }
      }
      let x_2701 : vec3<f32> = u_xlat30;
      let x_2704 : f32 = x_44.x_GlobalMipBias.x;
      let x_2705 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2701.x, x_2701.z), x_2704);
      u_xlat10 = x_2705;
      let x_2708 : bool = u_xlatb1.z;
      if (x_2708) {
        let x_2713 : f32 = u_xlat10.w;
        x_2709 = x_2713;
      } else {
        let x_2716 : f32 = u_xlat10.x;
        x_2709 = x_2716;
      }
      let x_2717 : f32 = x_2709;
      u_xlat70 = x_2717;
      let x_2719 : bool = u_xlatb1.x;
      if (x_2719) {
        let x_2723 : vec4<f32> = u_xlat10;
        x_2720 = vec3<f32>(x_2723.x, x_2723.y, x_2723.z);
      } else {
        let x_2726 : f32 = u_xlat70;
        x_2720 = vec3<f32>(x_2726, x_2726, x_2726);
      }
      let x_2728 : vec3<f32> = x_2720;
      let x_2729 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2728.x, x_2728.y, x_2728.z, x_2729.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_2735 : vec4<f32> = u_xlat10;
    let x_2737 : u32 = u_xlatu66;
    let x_2740 : vec4<f32> = x_2201.x_AdditionalLightsColor[bitcast<i32>(x_2737)];
    let x_2742 : vec3<f32> = (vec3<f32>(x_2735.x, x_2735.y, x_2735.z) * vec3<f32>(x_2740.x, x_2740.y, x_2740.z));
    let x_2743 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2742.x, x_2742.y, x_2742.z, x_2743.w);
    let x_2745 : f32 = u_xlat65;
    let x_2747 : vec4<f32> = u_xlat10;
    let x_2749 : vec3<f32> = (vec3<f32>(x_2745, x_2745, x_2745) * vec3<f32>(x_2747.x, x_2747.y, x_2747.z));
    let x_2750 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2749.x, x_2749.y, x_2749.z, x_2750.w);
    let x_2752 : vec3<f32> = u_xlat23;
    let x_2753 : vec3<f32> = u_xlat29;
    u_xlat66 = dot(x_2752, x_2753);
    let x_2755 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2755, 0.0f, 1.0f);
    let x_2757 : f32 = u_xlat66;
    let x_2758 : f32 = u_xlat67;
    u_xlat66 = (x_2757 * x_2758);
    let x_2760 : f32 = u_xlat66;
    let x_2762 : vec4<f32> = u_xlat10;
    let x_2764 : vec3<f32> = (vec3<f32>(x_2760, x_2760, x_2760) * vec3<f32>(x_2762.x, x_2762.y, x_2762.z));
    let x_2765 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2765.w);
    let x_2767 : vec3<f32> = u_xlat28;
    let x_2768 : vec4<f32> = u_xlat9;
    let x_2771 : vec3<f32> = u_xlat5;
    u_xlat28 = ((x_2767 * vec3<f32>(x_2768.x, x_2768.x, x_2768.x)) + x_2771);
    let x_2773 : vec3<f32> = u_xlat28;
    let x_2774 : vec3<f32> = u_xlat28;
    u_xlat66 = dot(x_2773, x_2774);
    let x_2776 : f32 = u_xlat66;
    u_xlat66 = max(x_2776, 1.17549435e-37f);
    let x_2778 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_2778);
    let x_2780 : f32 = u_xlat66;
    let x_2782 : vec3<f32> = u_xlat28;
    u_xlat28 = (vec3<f32>(x_2780, x_2780, x_2780) * x_2782);
    let x_2784 : vec3<f32> = u_xlat23;
    let x_2785 : vec3<f32> = u_xlat28;
    u_xlat66 = dot(x_2784, x_2785);
    let x_2787 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2787, 0.0f, 1.0f);
    let x_2789 : vec3<f32> = u_xlat29;
    let x_2790 : vec3<f32> = u_xlat28;
    u_xlat67 = dot(x_2789, x_2790);
    let x_2792 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2792, 0.0f, 1.0f);
    let x_2794 : f32 = u_xlat66;
    let x_2795 : f32 = u_xlat66;
    u_xlat66 = (x_2794 * x_2795);
    let x_2797 : f32 = u_xlat66;
    let x_2799 : f32 = u_xlat8.x;
    u_xlat66 = ((x_2797 * x_2799) + 1.000010014f);
    let x_2802 : f32 = u_xlat67;
    let x_2803 : f32 = u_xlat67;
    u_xlat67 = (x_2802 * x_2803);
    let x_2805 : f32 = u_xlat66;
    let x_2806 : f32 = u_xlat66;
    u_xlat66 = (x_2805 * x_2806);
    let x_2808 : f32 = u_xlat67;
    u_xlat67 = max(x_2808, 0.100000001f);
    let x_2810 : f32 = u_xlat66;
    let x_2811 : f32 = u_xlat67;
    u_xlat66 = (x_2810 * x_2811);
    let x_2813 : f32 = u_xlat61;
    let x_2814 : f32 = u_xlat66;
    u_xlat66 = (x_2813 * x_2814);
    let x_2816 : f32 = u_xlat21;
    let x_2817 : f32 = u_xlat66;
    u_xlat66 = (x_2816 / x_2817);
    let x_2819 : vec4<f32> = u_xlat0;
    let x_2821 : f32 = u_xlat66;
    let x_2824 : vec3<f32> = u_xlat22;
    u_xlat28 = ((vec3<f32>(x_2819.x, x_2819.y, x_2819.z) * vec3<f32>(x_2821, x_2821, x_2821)) + x_2824);
    let x_2826 : vec3<f32> = u_xlat28;
    let x_2827 : vec4<f32> = u_xlat10;
    let x_2830 : vec4<f32> = u_xlat7;
    let x_2832 : vec3<f32> = ((x_2826 * vec3<f32>(x_2827.x, x_2827.y, x_2827.z)) + vec3<f32>(x_2830.x, x_2830.y, x_2830.z));
    let x_2833 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2832.x, x_2832.y, x_2832.z, x_2833.w);

    continuing {
      let x_2835 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2835 + bitcast<u32>(1i));
    }
  }
  let x_2837 : vec3<f32> = u_xlat4;
  let x_2838 : vec3<f32> = u_xlat3;
  let x_2841 : vec4<f32> = u_xlat6;
  let x_2843 : vec3<f32> = ((x_2837 * vec3<f32>(x_2838.x, x_2838.x, x_2838.x)) + vec3<f32>(x_2841.x, x_2841.y, x_2841.z));
  let x_2844 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2843.x, x_2843.y, x_2843.z, x_2844.w);
  let x_2848 : vec4<f32> = u_xlat7;
  let x_2850 : vec4<f32> = u_xlat0;
  let x_2852 : vec3<f32> = (vec3<f32>(x_2848.x, x_2848.y, x_2848.z) + vec3<f32>(x_2850.x, x_2850.y, x_2850.z));
  let x_2853 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2852.x, x_2852.y, x_2852.z, x_2853.w);
  let x_2858 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_2858 == 1.0f);
  let x_2860 : bool = u_xlatb0;
  if (x_2860) {
    let x_2865 : f32 = u_xlat2.x;
    x_2861 = x_2865;
  } else {
    x_2861 = 1.0f;
  }
  let x_2867 : f32 = x_2861;
  SV_Target0.w = x_2867;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

