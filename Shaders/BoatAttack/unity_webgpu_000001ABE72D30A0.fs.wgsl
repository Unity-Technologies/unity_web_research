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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(4) var<uniform> x_441 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1769 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1960 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2257 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2385 : AdditionalLightsCookies;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat63 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlatb24 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat5 : vec3<f32>;
  var x_198 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat64 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlatb68 : bool;
  var u_xlat7 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat48 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat69 : f32;
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
  var u_xlatb48 : bool;
  var x_1852 : f32;
  var x_1863 : vec3<f32>;
  var u_xlat70 : f32;
  var u_xlatu22 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu68 : u32;
  var u_xlati49 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat71 : f32;
  var u_xlatu71 : u32;
  var u_xlati72 : i32;
  var u_xlati71 : i32;
  var u_xlati73 : i32;
  var u_xlatb71 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_2678 : f32;
  var x_2691 : f32;
  var x_2743 : f32;
  var x_2754 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2947 : f32;
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
  u_xlat43 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat43;
  let x_107 : vec2<f32> = u_xlat43;
  u_xlat63 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat63;
  u_xlat63 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat63;
  u_xlat63 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat63;
  u_xlat63 = sqrt(x_114);
  let x_116 : f32 = u_xlat63;
  u_xlat63 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat43;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat43 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat24.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat24.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_162 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb24 = (x_162 == 0.0f);
  let x_168 : vec3<f32> = vs_TEXCOORD1;
  let x_173 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_168) + x_173);
  let x_176 : vec3<f32> = u_xlat4;
  let x_177 : vec3<f32> = u_xlat4;
  u_xlat45 = dot(x_176, x_177);
  let x_179 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_179);
  let x_181 : f32 = u_xlat45;
  let x_183 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_181, x_181, x_181) * x_183);
  let x_189 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat5.x = x_189;
  let x_192 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat5.y = x_192;
  let x_195 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat5.z = x_195;
  let x_197 : bool = u_xlatb24;
  if (x_197) {
    let x_201 : vec3<f32> = u_xlat4;
    x_198 = x_201;
  } else {
    let x_203 : vec3<f32> = u_xlat5;
    x_198 = x_203;
  }
  let x_204 : vec3<f32> = x_198;
  u_xlat24 = x_204;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  let x_209 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (vec3<f32>(x_206.z, x_206.x, x_206.y) * vec3<f32>(x_209.y, x_209.z, x_209.x));
  let x_212 : vec3<f32> = vs_TEXCOORD2;
  let x_214 : vec4<f32> = vs_TEXCOORD3;
  let x_217 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_212.y, x_212.z, x_212.x) * vec3<f32>(x_214.z, x_214.x, x_214.y)) + -(x_217));
  let x_220 : vec3<f32> = u_xlat4;
  let x_221 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (x_220 * vec3<f32>(x_221.w, x_221.w, x_221.w));
  let x_224 : vec2<f32> = u_xlat43;
  let x_226 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_224.y, x_224.y, x_224.y) * x_226);
  let x_228 : vec2<f32> = u_xlat43;
  let x_230 : vec4<f32> = vs_TEXCOORD3;
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_228.x, x_228.x, x_228.x) * vec3<f32>(x_230.x, x_230.y, x_230.z)) + x_233);
  let x_235 : f32 = u_xlat63;
  let x_237 : vec3<f32> = vs_TEXCOORD2;
  let x_239 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_235, x_235, x_235) * x_237) + x_239);
  let x_241 : vec3<f32> = u_xlat4;
  let x_242 : vec3<f32> = u_xlat4;
  u_xlat63 = dot(x_241, x_242);
  let x_244 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_244);
  let x_246 : f32 = u_xlat63;
  let x_248 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_246, x_246, x_246) * x_248);
  let x_251 : f32 = vs_TEXCOORD1.y;
  let x_253 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_251 * x_253);
  let x_256 : f32 = x_44.unity_MatrixV[0i].z;
  let x_258 : f32 = vs_TEXCOORD1.x;
  let x_260 : f32 = u_xlat63;
  u_xlat63 = ((x_256 * x_258) + x_260);
  let x_263 : f32 = x_44.unity_MatrixV[2i].z;
  let x_265 : f32 = vs_TEXCOORD1.z;
  let x_267 : f32 = u_xlat63;
  u_xlat63 = ((x_263 * x_265) + x_267);
  let x_269 : f32 = u_xlat63;
  let x_272 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_269 + x_272);
  let x_274 : f32 = u_xlat63;
  let x_278 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_274) + -(x_278));
  let x_281 : f32 = u_xlat63;
  u_xlat63 = max(x_281, 0.0f);
  let x_283 : f32 = u_xlat63;
  let x_285 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_283 * x_285);
  let x_293 : vec2<f32> = vs_TEXCOORD8;
  let x_295 : f32 = x_44.x_GlobalMipBias.x;
  let x_296 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_293, x_295);
  u_xlat5 = vec3<f32>(x_296.x, x_296.y, x_296.z);
  let x_300 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_301 : vec2<f32> = vec2<f32>(x_300.x, x_300.y);
  u_xlat43 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_301.x, x_301.y));
  let x_307 : vec2<f32> = u_xlat43;
  let x_308 : vec4<f32> = hlslcc_FragCoord;
  let x_310 : vec2<f32> = (x_307 * vec2<f32>(x_308.x, x_308.y));
  let x_311 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_310.x, x_310.y, x_311.z);
  let x_314 : f32 = u_xlat6.y;
  let x_317 : f32 = x_44.x_ScaleBiasRt.x;
  let x_320 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat43.x = ((x_314 * x_317) + x_320);
  let x_324 : f32 = u_xlat43.x;
  u_xlat6.z = (-(x_324) + 1.0f);
  let x_329 : f32 = u_xlat1.x;
  u_xlat43.x = ((-(x_329) * 0.959999979f) + 0.959999979f);
  let x_337 : f32 = u_xlat1.y;
  let x_339 : f32 = x_69.x_Smoothness;
  let x_342 : f32 = u_xlat43.x;
  u_xlat64 = ((x_337 * x_339) + -(x_342));
  let x_346 : vec2<f32> = u_xlat43;
  let x_348 : vec4<f32> = u_xlat2;
  u_xlat23 = (vec3<f32>(x_346.x, x_346.x, x_346.x) * vec3<f32>(x_348.y, x_348.z, x_348.w));
  let x_351 : vec4<f32> = u_xlat0;
  let x_354 : vec4<f32> = x_69.x_BaseColor;
  let x_359 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_354.x, x_354.y, x_354.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_360 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec2<f32> = u_xlat1;
  let x_364 : vec4<f32> = u_xlat0;
  let x_369 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.x, x_362.x) * vec3<f32>(x_364.x, x_364.y, x_364.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_370 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : f32 = u_xlat1.y;
  let x_376 : f32 = x_69.x_Smoothness;
  u_xlat1.x = ((-(x_373) * x_376) + 1.0f);
  let x_382 : f32 = u_xlat1.x;
  let x_384 : f32 = u_xlat1.x;
  u_xlat22.x = (x_382 * x_384);
  let x_388 : f32 = u_xlat22.x;
  u_xlat22.x = max(x_388, 0.0078125f);
  let x_393 : f32 = u_xlat22.x;
  let x_395 : f32 = u_xlat22.x;
  u_xlat43.x = (x_393 * x_395);
  let x_398 : f32 = u_xlat64;
  u_xlat64 = (x_398 + 1.0f);
  let x_400 : f32 = u_xlat64;
  u_xlat64 = clamp(x_400, 0.0f, 1.0f);
  let x_404 : f32 = u_xlat22.x;
  u_xlat67 = ((x_404 * 4.0f) + 2.0f);
  let x_414 : vec3<f32> = u_xlat6;
  let x_417 : f32 = x_44.x_GlobalMipBias.x;
  let x_418 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_414.x, x_414.z), x_417);
  u_xlat68 = x_418.x;
  let x_420 : f32 = u_xlat68;
  u_xlat6.x = (x_420 + -1.0f);
  let x_425 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_427 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_425 * x_427) + 1.0f);
  let x_432 : f32 = u_xlat3.x;
  let x_433 : f32 = u_xlat68;
  u_xlat3.x = min(x_432, x_433);
  let x_443 : f32 = x_441.x_MainLightShadowParams.y;
  u_xlatb68 = (0.0f < x_443);
  let x_445 : bool = u_xlatb68;
  if (x_445) {
    let x_449 : f32 = x_441.x_MainLightShadowParams.y;
    u_xlatb68 = (x_449 == 1.0f);
    let x_451 : bool = u_xlatb68;
    if (x_451) {
      let x_456 : vec4<f32> = vs_TEXCOORD6;
      let x_459 : vec4<f32> = x_441.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_456.x, x_456.y, x_456.x, x_456.y) + x_459);
      let x_462 : vec4<f32> = u_xlat7;
      let x_463 : vec2<f32> = vec2<f32>(x_462.x, x_462.y);
      let x_465 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_463.x, x_463.y, x_465);
      let x_478 : vec3<f32> = txVec0;
      let x_480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_478.xy, x_478.z);
      u_xlat8.x = x_480;
      let x_483 : vec4<f32> = u_xlat7;
      let x_484 : vec2<f32> = vec2<f32>(x_483.z, x_483.w);
      let x_486 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_484.x, x_484.y, x_486);
      let x_493 : vec3<f32> = txVec1;
      let x_495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_493.xy, x_493.z);
      u_xlat8.y = x_495;
      let x_497 : vec4<f32> = vs_TEXCOORD6;
      let x_500 : vec4<f32> = x_441.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_497.x, x_497.y, x_497.x, x_497.y) + x_500);
      let x_503 : vec4<f32> = u_xlat7;
      let x_504 : vec2<f32> = vec2<f32>(x_503.x, x_503.y);
      let x_506 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_504.x, x_504.y, x_506);
      let x_513 : vec3<f32> = txVec2;
      let x_515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_513.xy, x_513.z);
      u_xlat8.z = x_515;
      let x_518 : vec4<f32> = u_xlat7;
      let x_519 : vec2<f32> = vec2<f32>(x_518.z, x_518.w);
      let x_521 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_519.x, x_519.y, x_521);
      let x_528 : vec3<f32> = txVec3;
      let x_530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_528.xy, x_528.z);
      u_xlat8.w = x_530;
      let x_532 : vec4<f32> = u_xlat8;
      u_xlat68 = dot(x_532, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_541 : f32 = x_441.x_MainLightShadowParams.y;
      u_xlatb27.x = (x_541 == 2.0f);
      let x_545 : bool = u_xlatb27.x;
      if (x_545) {
        let x_549 : vec4<f32> = vs_TEXCOORD6;
        let x_552 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_557 : vec2<f32> = ((vec2<f32>(x_549.x, x_549.y) * vec2<f32>(x_552.z, x_552.w)) + vec2<f32>(0.5f, 0.5f));
        let x_558 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_557.x, x_557.y, x_558.z);
        let x_560 : vec3<f32> = u_xlat27;
        let x_562 : vec2<f32> = floor(vec2<f32>(x_560.x, x_560.y));
        let x_563 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_562.x, x_562.y, x_563.z);
        let x_565 : vec4<f32> = vs_TEXCOORD6;
        let x_568 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_571 : vec3<f32> = u_xlat27;
        let x_574 : vec2<f32> = ((vec2<f32>(x_565.x, x_565.y) * vec2<f32>(x_568.z, x_568.w)) + -(vec2<f32>(x_571.x, x_571.y)));
        let x_575 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_575.w);
        let x_577 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_577.x, x_577.x, x_577.y, x_577.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_582 : vec4<f32> = u_xlat8;
        let x_584 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_582.x, x_582.x, x_582.z, x_582.z) * vec4<f32>(x_584.x, x_584.x, x_584.z, x_584.z));
        let x_588 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_588.y, x_588.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_593 : vec4<f32> = u_xlat9;
        let x_596 : vec4<f32> = u_xlat7;
        let x_599 : vec2<f32> = ((vec2<f32>(x_593.x, x_593.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_596.x, x_596.y)));
        let x_600 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_599.x, x_600.y, x_599.y, x_600.w);
        let x_602 : vec4<f32> = u_xlat7;
        let x_605 : vec2<f32> = (-(vec2<f32>(x_602.x, x_602.y)) + vec2<f32>(1.0f, 1.0f));
        let x_606 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
        let x_609 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_609.x, x_609.y), vec2<f32>(0.0f, 0.0f));
        let x_613 : vec2<f32> = u_xlat51;
        let x_615 : vec2<f32> = u_xlat51;
        let x_617 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_613) * x_615) + vec2<f32>(x_617.x, x_617.y));
        let x_620 : vec4<f32> = u_xlat7;
        let x_622 : vec2<f32> = max(vec2<f32>(x_620.x, x_620.y), vec2<f32>(0.0f, 0.0f));
        let x_623 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_622.x, x_622.y, x_623.z, x_623.w);
        let x_625 : vec4<f32> = u_xlat7;
        let x_628 : vec4<f32> = u_xlat7;
        let x_631 : vec4<f32> = u_xlat8;
        let x_633 : vec2<f32> = ((-(vec2<f32>(x_625.x, x_625.y)) * vec2<f32>(x_628.x, x_628.y)) + vec2<f32>(x_631.y, x_631.w));
        let x_634 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
        let x_636 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_636 + vec2<f32>(1.0f, 1.0f));
        let x_638 : vec4<f32> = u_xlat7;
        let x_640 : vec2<f32> = (vec2<f32>(x_638.x, x_638.y) + vec2<f32>(1.0f, 1.0f));
        let x_641 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_644 : vec4<f32> = u_xlat8;
        let x_648 : vec2<f32> = (vec2<f32>(x_644.x, x_644.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_649 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
        let x_652 : vec4<f32> = u_xlat9;
        let x_654 : vec2<f32> = (vec2<f32>(x_652.x, x_652.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_655 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
        let x_657 : vec2<f32> = u_xlat51;
        let x_658 : vec2<f32> = (x_657 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_659 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
        let x_662 : vec4<f32> = u_xlat7;
        let x_664 : vec2<f32> = (vec2<f32>(x_662.x, x_662.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_665 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
        let x_667 : vec4<f32> = u_xlat8;
        let x_669 : vec2<f32> = (vec2<f32>(x_667.y, x_667.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_670 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
        let x_673 : f32 = u_xlat9.x;
        u_xlat10.z = x_673;
        let x_676 : f32 = u_xlat7.x;
        u_xlat10.w = x_676;
        let x_679 : f32 = u_xlat12.x;
        u_xlat11.z = x_679;
        let x_682 : f32 = u_xlat49.x;
        u_xlat11.w = x_682;
        let x_684 : vec4<f32> = u_xlat10;
        let x_686 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_684.z, x_684.w, x_684.x, x_684.z) + vec4<f32>(x_686.z, x_686.w, x_686.x, x_686.z));
        let x_690 : f32 = u_xlat10.y;
        u_xlat9.z = x_690;
        let x_693 : f32 = u_xlat7.y;
        u_xlat9.w = x_693;
        let x_696 : f32 = u_xlat11.y;
        u_xlat12.z = x_696;
        let x_699 : f32 = u_xlat49.y;
        u_xlat12.w = x_699;
        let x_701 : vec4<f32> = u_xlat9;
        let x_703 : vec4<f32> = u_xlat12;
        let x_705 : vec3<f32> = (vec3<f32>(x_701.z, x_701.y, x_701.w) + vec3<f32>(x_703.z, x_703.y, x_703.w));
        let x_706 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
        let x_708 : vec4<f32> = u_xlat11;
        let x_710 : vec4<f32> = u_xlat8;
        let x_712 : vec3<f32> = (vec3<f32>(x_708.x, x_708.z, x_708.w) / vec3<f32>(x_710.z, x_710.w, x_710.y));
        let x_713 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
        let x_715 : vec4<f32> = u_xlat9;
        let x_721 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_722 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
        let x_724 : vec4<f32> = u_xlat12;
        let x_726 : vec4<f32> = u_xlat7;
        let x_728 : vec3<f32> = (vec3<f32>(x_724.z, x_724.y, x_724.w) / vec3<f32>(x_726.x, x_726.y, x_726.z));
        let x_729 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
        let x_731 : vec4<f32> = u_xlat10;
        let x_733 : vec3<f32> = (vec3<f32>(x_731.x, x_731.y, x_731.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_734 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
        let x_736 : vec4<f32> = u_xlat9;
        let x_739 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_741 : vec3<f32> = (vec3<f32>(x_736.y, x_736.x, x_736.z) * vec3<f32>(x_739.x, x_739.x, x_739.x));
        let x_742 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
        let x_744 : vec4<f32> = u_xlat10;
        let x_747 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_749 : vec3<f32> = (vec3<f32>(x_744.x, x_744.y, x_744.z) * vec3<f32>(x_747.y, x_747.y, x_747.y));
        let x_750 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
        let x_753 : f32 = u_xlat10.x;
        u_xlat9.w = x_753;
        let x_755 : vec3<f32> = u_xlat27;
        let x_758 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_761 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_755.x, x_755.y, x_755.x, x_755.y) * vec4<f32>(x_758.x, x_758.y, x_758.x, x_758.y)) + vec4<f32>(x_761.y, x_761.w, x_761.x, x_761.w));
        let x_764 : vec3<f32> = u_xlat27;
        let x_767 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_770 : vec4<f32> = u_xlat9;
        let x_772 : vec2<f32> = ((vec2<f32>(x_764.x, x_764.y) * vec2<f32>(x_767.x, x_767.y)) + vec2<f32>(x_770.z, x_770.w));
        let x_773 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_772.x, x_772.y, x_773.z, x_773.w);
        let x_776 : f32 = u_xlat9.y;
        u_xlat10.w = x_776;
        let x_778 : vec4<f32> = u_xlat10;
        let x_779 : vec2<f32> = vec2<f32>(x_778.y, x_778.z);
        let x_780 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_780.x, x_779.x, x_780.z, x_779.y);
        let x_783 : vec3<f32> = u_xlat27;
        let x_786 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_789 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_783.x, x_783.y, x_783.x, x_783.y) * vec4<f32>(x_786.x, x_786.y, x_786.x, x_786.y)) + vec4<f32>(x_789.x, x_789.y, x_789.z, x_789.y));
        let x_792 : vec3<f32> = u_xlat27;
        let x_795 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_798 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_792.x, x_792.y, x_792.x, x_792.y) * vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y)) + vec4<f32>(x_798.w, x_798.y, x_798.w, x_798.z));
        let x_801 : vec3<f32> = u_xlat27;
        let x_804 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_807 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_801.x, x_801.y, x_801.x, x_801.y) * vec4<f32>(x_804.x, x_804.y, x_804.x, x_804.y)) + vec4<f32>(x_807.x, x_807.w, x_807.z, x_807.w));
        let x_811 : vec4<f32> = u_xlat7;
        let x_813 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_811.x, x_811.x, x_811.x, x_811.y) * vec4<f32>(x_813.z, x_813.w, x_813.y, x_813.z));
        let x_817 : vec4<f32> = u_xlat7;
        let x_819 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_817.y, x_817.y, x_817.z, x_817.z) * x_819);
        let x_822 : f32 = u_xlat7.z;
        let x_824 : f32 = u_xlat8.y;
        u_xlat27.x = (x_822 * x_824);
        let x_828 : vec4<f32> = u_xlat11;
        let x_829 : vec2<f32> = vec2<f32>(x_828.x, x_828.y);
        let x_831 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_829.x, x_829.y, x_831);
        let x_839 : vec3<f32> = txVec4;
        let x_841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_839.xy, x_839.z);
        u_xlat48 = x_841;
        let x_843 : vec4<f32> = u_xlat11;
        let x_844 : vec2<f32> = vec2<f32>(x_843.z, x_843.w);
        let x_846 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_844.x, x_844.y, x_846);
        let x_854 : vec3<f32> = txVec5;
        let x_856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_854.xy, x_854.z);
        u_xlat69 = x_856;
        let x_857 : f32 = u_xlat69;
        let x_859 : f32 = u_xlat14.y;
        u_xlat69 = (x_857 * x_859);
        let x_862 : f32 = u_xlat14.x;
        let x_863 : f32 = u_xlat48;
        let x_865 : f32 = u_xlat69;
        u_xlat48 = ((x_862 * x_863) + x_865);
        let x_868 : vec4<f32> = u_xlat12;
        let x_869 : vec2<f32> = vec2<f32>(x_868.x, x_868.y);
        let x_871 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_869.x, x_869.y, x_871);
        let x_878 : vec3<f32> = txVec6;
        let x_880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_878.xy, x_878.z);
        u_xlat69 = x_880;
        let x_882 : f32 = u_xlat14.z;
        let x_883 : f32 = u_xlat69;
        let x_885 : f32 = u_xlat48;
        u_xlat48 = ((x_882 * x_883) + x_885);
        let x_888 : vec4<f32> = u_xlat10;
        let x_889 : vec2<f32> = vec2<f32>(x_888.x, x_888.y);
        let x_891 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_889.x, x_889.y, x_891);
        let x_898 : vec3<f32> = txVec7;
        let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_898.xy, x_898.z);
        u_xlat69 = x_900;
        let x_902 : f32 = u_xlat14.w;
        let x_903 : f32 = u_xlat69;
        let x_905 : f32 = u_xlat48;
        u_xlat48 = ((x_902 * x_903) + x_905);
        let x_908 : vec4<f32> = u_xlat13;
        let x_909 : vec2<f32> = vec2<f32>(x_908.x, x_908.y);
        let x_911 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_909.x, x_909.y, x_911);
        let x_918 : vec3<f32> = txVec8;
        let x_920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_918.xy, x_918.z);
        u_xlat69 = x_920;
        let x_922 : f32 = u_xlat15.x;
        let x_923 : f32 = u_xlat69;
        let x_925 : f32 = u_xlat48;
        u_xlat48 = ((x_922 * x_923) + x_925);
        let x_928 : vec4<f32> = u_xlat13;
        let x_929 : vec2<f32> = vec2<f32>(x_928.z, x_928.w);
        let x_931 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_929.x, x_929.y, x_931);
        let x_938 : vec3<f32> = txVec9;
        let x_940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_938.xy, x_938.z);
        u_xlat69 = x_940;
        let x_942 : f32 = u_xlat15.y;
        let x_943 : f32 = u_xlat69;
        let x_945 : f32 = u_xlat48;
        u_xlat48 = ((x_942 * x_943) + x_945);
        let x_948 : vec4<f32> = u_xlat10;
        let x_949 : vec2<f32> = vec2<f32>(x_948.z, x_948.w);
        let x_951 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_949.x, x_949.y, x_951);
        let x_958 : vec3<f32> = txVec10;
        let x_960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_958.xy, x_958.z);
        u_xlat69 = x_960;
        let x_962 : f32 = u_xlat15.z;
        let x_963 : f32 = u_xlat69;
        let x_965 : f32 = u_xlat48;
        u_xlat48 = ((x_962 * x_963) + x_965);
        let x_968 : vec4<f32> = u_xlat9;
        let x_969 : vec2<f32> = vec2<f32>(x_968.x, x_968.y);
        let x_971 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_969.x, x_969.y, x_971);
        let x_978 : vec3<f32> = txVec11;
        let x_980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_978.xy, x_978.z);
        u_xlat69 = x_980;
        let x_982 : f32 = u_xlat15.w;
        let x_983 : f32 = u_xlat69;
        let x_985 : f32 = u_xlat48;
        u_xlat48 = ((x_982 * x_983) + x_985);
        let x_988 : vec4<f32> = u_xlat9;
        let x_989 : vec2<f32> = vec2<f32>(x_988.z, x_988.w);
        let x_991 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_989.x, x_989.y, x_991);
        let x_998 : vec3<f32> = txVec12;
        let x_1000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_998.xy, x_998.z);
        u_xlat69 = x_1000;
        let x_1002 : f32 = u_xlat27.x;
        let x_1003 : f32 = u_xlat69;
        let x_1005 : f32 = u_xlat48;
        u_xlat68 = ((x_1002 * x_1003) + x_1005);
      } else {
        let x_1008 : vec4<f32> = vs_TEXCOORD6;
        let x_1011 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1011.z, x_1011.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1015 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1014.x, x_1014.y, x_1015.z);
        let x_1017 : vec3<f32> = u_xlat27;
        let x_1019 : vec2<f32> = floor(vec2<f32>(x_1017.x, x_1017.y));
        let x_1020 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1019.x, x_1019.y, x_1020.z);
        let x_1022 : vec4<f32> = vs_TEXCOORD6;
        let x_1025 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1028 : vec3<f32> = u_xlat27;
        let x_1031 : vec2<f32> = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1025.z, x_1025.w)) + -(vec2<f32>(x_1028.x, x_1028.y)));
        let x_1032 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1031.x, x_1031.y, x_1032.z, x_1032.w);
        let x_1034 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1034.x, x_1034.x, x_1034.y, x_1034.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1037 : vec4<f32> = u_xlat8;
        let x_1039 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1037.x, x_1037.x, x_1037.z, x_1037.z) * vec4<f32>(x_1039.x, x_1039.x, x_1039.z, x_1039.z));
        let x_1042 : vec4<f32> = u_xlat9;
        let x_1046 : vec2<f32> = (vec2<f32>(x_1042.y, x_1042.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1047 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1047.x, x_1046.x, x_1047.z, x_1046.y);
        let x_1049 : vec4<f32> = u_xlat9;
        let x_1052 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1049.x, x_1049.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1052.x, x_1052.y)));
        let x_1056 : vec4<f32> = u_xlat7;
        let x_1059 : vec2<f32> = (-(vec2<f32>(x_1056.x, x_1056.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1060 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1059.x, x_1060.y, x_1059.y, x_1060.w);
        let x_1062 : vec4<f32> = u_xlat7;
        let x_1064 : vec2<f32> = min(vec2<f32>(x_1062.x, x_1062.y), vec2<f32>(0.0f, 0.0f));
        let x_1065 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat9;
        let x_1070 : vec4<f32> = u_xlat9;
        let x_1073 : vec4<f32> = u_xlat8;
        let x_1075 : vec2<f32> = ((-(vec2<f32>(x_1067.x, x_1067.y)) * vec2<f32>(x_1070.x, x_1070.y)) + vec2<f32>(x_1073.x, x_1073.z));
        let x_1076 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1075.x, x_1076.y, x_1075.y, x_1076.w);
        let x_1078 : vec4<f32> = u_xlat7;
        let x_1080 : vec2<f32> = max(vec2<f32>(x_1078.x, x_1078.y), vec2<f32>(0.0f, 0.0f));
        let x_1081 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1080.x, x_1080.y, x_1081.z, x_1081.w);
        let x_1083 : vec4<f32> = u_xlat9;
        let x_1086 : vec4<f32> = u_xlat9;
        let x_1089 : vec4<f32> = u_xlat8;
        let x_1091 : vec2<f32> = ((-(vec2<f32>(x_1083.x, x_1083.y)) * vec2<f32>(x_1086.x, x_1086.y)) + vec2<f32>(x_1089.y, x_1089.w));
        let x_1092 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1092.x, x_1091.x, x_1092.z, x_1091.y);
        let x_1094 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1094 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1098 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1098 * 0.081632003f);
        let x_1102 : vec2<f32> = u_xlat49;
        let x_1105 : vec2<f32> = (vec2<f32>(x_1102.y, x_1102.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1106 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
        let x_1108 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1108.x, x_1108.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1112 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1112 * 0.081632003f);
        let x_1116 : f32 = u_xlat11.y;
        u_xlat9.x = x_1116;
        let x_1118 : vec4<f32> = u_xlat7;
        let x_1125 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1126 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1126.x, x_1125.x, x_1126.z, x_1125.y);
        let x_1128 : vec4<f32> = u_xlat7;
        let x_1132 : vec2<f32> = ((vec2<f32>(x_1128.x, x_1128.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1133 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1132.x, x_1133.y, x_1132.y, x_1133.w);
        let x_1136 : f32 = u_xlat49.x;
        u_xlat8.y = x_1136;
        let x_1139 : f32 = u_xlat10.y;
        u_xlat8.w = x_1139;
        let x_1141 : vec4<f32> = u_xlat8;
        let x_1142 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1141 + x_1142);
        let x_1144 : vec4<f32> = u_xlat7;
        let x_1147 : vec2<f32> = ((vec2<f32>(x_1144.y, x_1144.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1148 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1148.x, x_1147.x, x_1148.z, x_1147.y);
        let x_1150 : vec4<f32> = u_xlat7;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1150.y, x_1150.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1154 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1153.x, x_1154.y, x_1153.y, x_1154.w);
        let x_1157 : f32 = u_xlat49.y;
        u_xlat10.y = x_1157;
        let x_1159 : vec4<f32> = u_xlat10;
        let x_1160 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1159 + x_1160);
        let x_1162 : vec4<f32> = u_xlat8;
        let x_1163 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1162 / x_1163);
        let x_1165 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1165 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1171 : vec4<f32> = u_xlat10;
        let x_1172 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1171 / x_1172);
        let x_1174 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1174 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1176 : vec4<f32> = u_xlat8;
        let x_1179 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1176.w, x_1176.x, x_1176.y, x_1176.z) * vec4<f32>(x_1179.x, x_1179.x, x_1179.x, x_1179.x));
        let x_1182 : vec4<f32> = u_xlat10;
        let x_1185 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1182.x, x_1182.w, x_1182.y, x_1182.z) * vec4<f32>(x_1185.y, x_1185.y, x_1185.y, x_1185.y));
        let x_1188 : vec4<f32> = u_xlat8;
        let x_1189 : vec3<f32> = vec3<f32>(x_1188.y, x_1188.z, x_1188.w);
        let x_1190 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1189.x, x_1190.y, x_1189.y, x_1189.z);
        let x_1193 : f32 = u_xlat10.x;
        u_xlat11.y = x_1193;
        let x_1195 : vec3<f32> = u_xlat27;
        let x_1198 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y) * vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y)) + vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1201.y));
        let x_1204 : vec3<f32> = u_xlat27;
        let x_1207 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat11;
        let x_1212 : vec2<f32> = ((vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(x_1207.x, x_1207.y)) + vec2<f32>(x_1210.w, x_1210.y));
        let x_1213 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
        let x_1216 : f32 = u_xlat11.y;
        u_xlat8.y = x_1216;
        let x_1219 : f32 = u_xlat10.z;
        u_xlat11.y = x_1219;
        let x_1221 : vec3<f32> = u_xlat27;
        let x_1224 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1227 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1221.x, x_1221.y, x_1221.x, x_1221.y) * vec4<f32>(x_1224.x, x_1224.y, x_1224.x, x_1224.y)) + vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1227.y));
        let x_1231 : vec3<f32> = u_xlat27;
        let x_1234 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1231.x, x_1231.y) * vec2<f32>(x_1234.x, x_1234.y)) + vec2<f32>(x_1237.w, x_1237.y));
        let x_1241 : f32 = u_xlat11.y;
        u_xlat8.z = x_1241;
        let x_1243 : vec3<f32> = u_xlat27;
        let x_1246 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y) * vec4<f32>(x_1246.x, x_1246.y, x_1246.x, x_1246.y)) + vec4<f32>(x_1249.x, x_1249.y, x_1249.x, x_1249.z));
        let x_1253 : f32 = u_xlat10.w;
        u_xlat11.y = x_1253;
        let x_1256 : vec3<f32> = u_xlat27;
        let x_1259 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1262 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1256.x, x_1256.y, x_1256.x, x_1256.y) * vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.y)) + vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1262.y));
        let x_1266 : vec3<f32> = u_xlat27;
        let x_1269 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat11;
        u_xlat29 = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.x, x_1269.y)) + vec2<f32>(x_1272.w, x_1272.y));
        let x_1276 : f32 = u_xlat11.y;
        u_xlat8.w = x_1276;
        let x_1279 : vec3<f32> = u_xlat27;
        let x_1282 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1279.x, x_1279.y) * vec2<f32>(x_1282.x, x_1282.y)) + vec2<f32>(x_1285.x, x_1285.w));
        let x_1288 : vec4<f32> = u_xlat11;
        let x_1289 : vec3<f32> = vec3<f32>(x_1288.x, x_1288.z, x_1288.w);
        let x_1290 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1289.x, x_1290.y, x_1289.y, x_1289.z);
        let x_1292 : vec3<f32> = u_xlat27;
        let x_1295 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1298 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y) * vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y)) + vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1298.y));
        let x_1302 : vec3<f32> = u_xlat27;
        let x_1305 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1302.x, x_1302.y) * vec2<f32>(x_1305.x, x_1305.y)) + vec2<f32>(x_1308.w, x_1308.y));
        let x_1312 : f32 = u_xlat8.x;
        u_xlat10.x = x_1312;
        let x_1314 : vec3<f32> = u_xlat27;
        let x_1317 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat10;
        let x_1322 : vec2<f32> = ((vec2<f32>(x_1314.x, x_1314.y) * vec2<f32>(x_1317.x, x_1317.y)) + vec2<f32>(x_1320.x, x_1320.y));
        let x_1323 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1322.x, x_1322.y, x_1323.z);
        let x_1326 : vec4<f32> = u_xlat7;
        let x_1328 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1326.x, x_1326.x, x_1326.x, x_1326.x) * x_1328);
        let x_1331 : vec4<f32> = u_xlat7;
        let x_1333 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1331.y, x_1331.y, x_1331.y, x_1331.y) * x_1333);
        let x_1336 : vec4<f32> = u_xlat7;
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1336.z, x_1336.z, x_1336.z, x_1336.z) * x_1338);
        let x_1340 : vec4<f32> = u_xlat7;
        let x_1342 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1340.w, x_1340.w, x_1340.w, x_1340.w) * x_1342);
        let x_1345 : vec4<f32> = u_xlat12;
        let x_1346 : vec2<f32> = vec2<f32>(x_1345.x, x_1345.y);
        let x_1348 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec13;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1355.xy, x_1355.z);
        u_xlat69 = x_1357;
        let x_1359 : vec4<f32> = u_xlat12;
        let x_1360 : vec2<f32> = vec2<f32>(x_1359.z, x_1359.w);
        let x_1362 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1360.x, x_1360.y, x_1362);
        let x_1369 : vec3<f32> = txVec14;
        let x_1371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1369.xy, x_1369.z);
        u_xlat8.x = x_1371;
        let x_1374 : f32 = u_xlat8.x;
        let x_1376 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1374 * x_1376);
        let x_1380 : f32 = u_xlat18.x;
        let x_1381 : f32 = u_xlat69;
        let x_1384 : f32 = u_xlat8.x;
        u_xlat69 = ((x_1380 * x_1381) + x_1384);
        let x_1387 : vec4<f32> = u_xlat13;
        let x_1388 : vec2<f32> = vec2<f32>(x_1387.x, x_1387.y);
        let x_1390 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1397 : vec3<f32> = txVec15;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1397.xy, x_1397.z);
        u_xlat8.x = x_1399;
        let x_1402 : f32 = u_xlat18.z;
        let x_1404 : f32 = u_xlat8.x;
        let x_1406 : f32 = u_xlat69;
        u_xlat69 = ((x_1402 * x_1404) + x_1406);
        let x_1409 : vec4<f32> = u_xlat15;
        let x_1410 : vec2<f32> = vec2<f32>(x_1409.x, x_1409.y);
        let x_1412 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec16;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1419.xy, x_1419.z);
        u_xlat8.x = x_1421;
        let x_1424 : f32 = u_xlat18.w;
        let x_1426 : f32 = u_xlat8.x;
        let x_1428 : f32 = u_xlat69;
        u_xlat69 = ((x_1424 * x_1426) + x_1428);
        let x_1431 : vec4<f32> = u_xlat14;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec17;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1441.xy, x_1441.z);
        u_xlat8.x = x_1443;
        let x_1446 : f32 = u_xlat19.x;
        let x_1448 : f32 = u_xlat8.x;
        let x_1450 : f32 = u_xlat69;
        u_xlat69 = ((x_1446 * x_1448) + x_1450);
        let x_1453 : vec4<f32> = u_xlat14;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.z, x_1453.w);
        let x_1456 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec18;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1463.xy, x_1463.z);
        u_xlat8.x = x_1465;
        let x_1468 : f32 = u_xlat19.y;
        let x_1470 : f32 = u_xlat8.x;
        let x_1472 : f32 = u_xlat69;
        u_xlat69 = ((x_1468 * x_1470) + x_1472);
        let x_1475 : vec2<f32> = u_xlat55;
        let x_1477 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1475.x, x_1475.y, x_1477);
        let x_1484 : vec3<f32> = txVec19;
        let x_1486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1484.xy, x_1484.z);
        u_xlat8.x = x_1486;
        let x_1489 : f32 = u_xlat19.z;
        let x_1491 : f32 = u_xlat8.x;
        let x_1493 : f32 = u_xlat69;
        u_xlat69 = ((x_1489 * x_1491) + x_1493);
        let x_1496 : vec4<f32> = u_xlat15;
        let x_1497 : vec2<f32> = vec2<f32>(x_1496.z, x_1496.w);
        let x_1499 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1497.x, x_1497.y, x_1499);
        let x_1506 : vec3<f32> = txVec20;
        let x_1508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1506.xy, x_1506.z);
        u_xlat8.x = x_1508;
        let x_1511 : f32 = u_xlat19.w;
        let x_1513 : f32 = u_xlat8.x;
        let x_1515 : f32 = u_xlat69;
        u_xlat69 = ((x_1511 * x_1513) + x_1515);
        let x_1518 : vec4<f32> = u_xlat16;
        let x_1519 : vec2<f32> = vec2<f32>(x_1518.x, x_1518.y);
        let x_1521 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1519.x, x_1519.y, x_1521);
        let x_1528 : vec3<f32> = txVec21;
        let x_1530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1528.xy, x_1528.z);
        u_xlat8.x = x_1530;
        let x_1533 : f32 = u_xlat20.x;
        let x_1535 : f32 = u_xlat8.x;
        let x_1537 : f32 = u_xlat69;
        u_xlat69 = ((x_1533 * x_1535) + x_1537);
        let x_1540 : vec4<f32> = u_xlat16;
        let x_1541 : vec2<f32> = vec2<f32>(x_1540.z, x_1540.w);
        let x_1543 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1541.x, x_1541.y, x_1543);
        let x_1550 : vec3<f32> = txVec22;
        let x_1552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1550.xy, x_1550.z);
        u_xlat8.x = x_1552;
        let x_1555 : f32 = u_xlat20.y;
        let x_1557 : f32 = u_xlat8.x;
        let x_1559 : f32 = u_xlat69;
        u_xlat69 = ((x_1555 * x_1557) + x_1559);
        let x_1562 : vec2<f32> = u_xlat29;
        let x_1564 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1571 : vec3<f32> = txVec23;
        let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1571.xy, x_1571.z);
        u_xlat8.x = x_1573;
        let x_1576 : f32 = u_xlat20.z;
        let x_1578 : f32 = u_xlat8.x;
        let x_1580 : f32 = u_xlat69;
        u_xlat69 = ((x_1576 * x_1578) + x_1580);
        let x_1583 : vec2<f32> = u_xlat17;
        let x_1585 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1583.x, x_1583.y, x_1585);
        let x_1592 : vec3<f32> = txVec24;
        let x_1594 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1592.xy, x_1592.z);
        u_xlat8.x = x_1594;
        let x_1597 : f32 = u_xlat20.w;
        let x_1599 : f32 = u_xlat8.x;
        let x_1601 : f32 = u_xlat69;
        u_xlat69 = ((x_1597 * x_1599) + x_1601);
        let x_1604 : vec4<f32> = u_xlat11;
        let x_1605 : vec2<f32> = vec2<f32>(x_1604.x, x_1604.y);
        let x_1607 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1605.x, x_1605.y, x_1607);
        let x_1614 : vec3<f32> = txVec25;
        let x_1616 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1614.xy, x_1614.z);
        u_xlat8.x = x_1616;
        let x_1619 : f32 = u_xlat7.x;
        let x_1621 : f32 = u_xlat8.x;
        let x_1623 : f32 = u_xlat69;
        u_xlat69 = ((x_1619 * x_1621) + x_1623);
        let x_1626 : vec4<f32> = u_xlat11;
        let x_1627 : vec2<f32> = vec2<f32>(x_1626.z, x_1626.w);
        let x_1629 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1627.x, x_1627.y, x_1629);
        let x_1636 : vec3<f32> = txVec26;
        let x_1638 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1636.xy, x_1636.z);
        u_xlat7.x = x_1638;
        let x_1641 : f32 = u_xlat7.y;
        let x_1643 : f32 = u_xlat7.x;
        let x_1645 : f32 = u_xlat69;
        u_xlat69 = ((x_1641 * x_1643) + x_1645);
        let x_1648 : vec2<f32> = u_xlat52;
        let x_1650 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1648.x, x_1648.y, x_1650);
        let x_1657 : vec3<f32> = txVec27;
        let x_1659 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1657.xy, x_1657.z);
        u_xlat7.x = x_1659;
        let x_1662 : f32 = u_xlat7.z;
        let x_1664 : f32 = u_xlat7.x;
        let x_1666 : f32 = u_xlat69;
        u_xlat69 = ((x_1662 * x_1664) + x_1666);
        let x_1669 : vec3<f32> = u_xlat27;
        let x_1670 : vec2<f32> = vec2<f32>(x_1669.x, x_1669.y);
        let x_1672 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1670.x, x_1670.y, x_1672);
        let x_1679 : vec3<f32> = txVec28;
        let x_1681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1679.xy, x_1679.z);
        u_xlat27.x = x_1681;
        let x_1684 : f32 = u_xlat7.w;
        let x_1686 : f32 = u_xlat27.x;
        let x_1688 : f32 = u_xlat69;
        u_xlat68 = ((x_1684 * x_1686) + x_1688);
      }
    }
  } else {
    let x_1692 : vec4<f32> = vs_TEXCOORD6;
    let x_1693 : vec2<f32> = vec2<f32>(x_1692.x, x_1692.y);
    let x_1695 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1693.x, x_1693.y, x_1695);
    let x_1702 : vec3<f32> = txVec29;
    let x_1704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1702.xy, x_1702.z);
    u_xlat68 = x_1704;
  }
  let x_1706 : f32 = x_441.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_1706) + 1.0f);
  let x_1710 : f32 = u_xlat68;
  let x_1712 : f32 = x_441.x_MainLightShadowParams.x;
  let x_1715 : f32 = u_xlat27.x;
  u_xlat68 = ((x_1710 * x_1712) + x_1715);
  let x_1718 : f32 = vs_TEXCOORD6.z;
  u_xlatb27.x = (0.0f >= x_1718);
  let x_1723 : f32 = vs_TEXCOORD6.z;
  u_xlatb48 = (x_1723 >= 1.0f);
  let x_1725 : bool = u_xlatb48;
  let x_1727 : bool = u_xlatb27.x;
  u_xlatb27.x = (x_1725 | x_1727);
  let x_1731 : bool = u_xlatb27.x;
  let x_1732 : f32 = u_xlat68;
  u_xlat68 = select(x_1732, 1.0f, x_1731);
  let x_1734 : vec3<f32> = vs_TEXCOORD1;
  let x_1736 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat27 = (x_1734 + -(x_1736));
  let x_1739 : vec3<f32> = u_xlat27;
  let x_1740 : vec3<f32> = u_xlat27;
  u_xlat27.x = dot(x_1739, x_1740);
  let x_1744 : f32 = u_xlat27.x;
  let x_1746 : f32 = x_441.x_MainLightShadowParams.z;
  let x_1749 : f32 = x_441.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1744 * x_1746) + x_1749);
  let x_1753 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1753, 0.0f, 1.0f);
  let x_1756 : f32 = u_xlat68;
  u_xlat48 = (-(x_1756) + 1.0f);
  let x_1760 : f32 = u_xlat27.x;
  let x_1761 : f32 = u_xlat48;
  let x_1763 : f32 = u_xlat68;
  u_xlat68 = ((x_1760 * x_1761) + x_1763);
  let x_1771 : f32 = x_1769.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_1771 == -1.0f));
  let x_1775 : bool = u_xlatb27.x;
  if (x_1775) {
    let x_1778 : vec3<f32> = vs_TEXCOORD1;
    let x_1781 : vec4<f32> = x_1769.x_MainLightWorldToLight[1i];
    let x_1783 : vec2<f32> = (vec2<f32>(x_1778.y, x_1778.y) * vec2<f32>(x_1781.x, x_1781.y));
    let x_1784 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1783.x, x_1783.y, x_1784.z);
    let x_1787 : vec4<f32> = x_1769.x_MainLightWorldToLight[0i];
    let x_1789 : vec3<f32> = vs_TEXCOORD1;
    let x_1792 : vec3<f32> = u_xlat27;
    let x_1794 : vec2<f32> = ((vec2<f32>(x_1787.x, x_1787.y) * vec2<f32>(x_1789.x, x_1789.x)) + vec2<f32>(x_1792.x, x_1792.y));
    let x_1795 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1794.x, x_1794.y, x_1795.z);
    let x_1798 : vec4<f32> = x_1769.x_MainLightWorldToLight[2i];
    let x_1800 : vec3<f32> = vs_TEXCOORD1;
    let x_1803 : vec3<f32> = u_xlat27;
    let x_1805 : vec2<f32> = ((vec2<f32>(x_1798.x, x_1798.y) * vec2<f32>(x_1800.z, x_1800.z)) + vec2<f32>(x_1803.x, x_1803.y));
    let x_1806 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1805.x, x_1805.y, x_1806.z);
    let x_1808 : vec3<f32> = u_xlat27;
    let x_1811 : vec4<f32> = x_1769.x_MainLightWorldToLight[3i];
    let x_1813 : vec2<f32> = (vec2<f32>(x_1808.x, x_1808.y) + vec2<f32>(x_1811.x, x_1811.y));
    let x_1814 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1813.x, x_1813.y, x_1814.z);
    let x_1816 : vec3<f32> = u_xlat27;
    let x_1819 : vec2<f32> = ((vec2<f32>(x_1816.x, x_1816.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1820 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1819.x, x_1819.y, x_1820.z);
    let x_1827 : vec3<f32> = u_xlat27;
    let x_1830 : f32 = x_44.x_GlobalMipBias.x;
    let x_1831 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1827.x, x_1827.y), x_1830);
    u_xlat7 = x_1831;
    let x_1833 : f32 = x_1769.x_MainLightCookieTextureFormat;
    let x_1835 : f32 = x_1769.x_MainLightCookieTextureFormat;
    let x_1837 : f32 = x_1769.x_MainLightCookieTextureFormat;
    let x_1839 : f32 = x_1769.x_MainLightCookieTextureFormat;
    let x_1840 : vec4<f32> = vec4<f32>(x_1833, x_1835, x_1837, x_1839);
    let x_1848 : vec4<bool> = (vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1840.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb27 = vec2<bool>(x_1848.x, x_1848.y);
    let x_1851 : bool = u_xlatb27.y;
    if (x_1851) {
      let x_1856 : f32 = u_xlat7.w;
      x_1852 = x_1856;
    } else {
      let x_1859 : f32 = u_xlat7.x;
      x_1852 = x_1859;
    }
    let x_1860 : f32 = x_1852;
    u_xlat48 = x_1860;
    let x_1862 : bool = u_xlatb27.x;
    if (x_1862) {
      let x_1866 : vec4<f32> = u_xlat7;
      x_1863 = vec3<f32>(x_1866.x, x_1866.y, x_1866.z);
    } else {
      let x_1869 : f32 = u_xlat48;
      x_1863 = vec3<f32>(x_1869, x_1869, x_1869);
    }
    let x_1871 : vec3<f32> = x_1863;
    u_xlat27 = x_1871;
  } else {
    u_xlat27.x = 1.0f;
    u_xlat27.y = 1.0f;
    u_xlat27.z = 1.0f;
  }
  let x_1876 : vec3<f32> = u_xlat27;
  let x_1878 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat27 = (x_1876 * vec3<f32>(x_1878.x, x_1878.y, x_1878.z));
  let x_1881 : vec3<f32> = u_xlat6;
  let x_1883 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_1881.x, x_1881.x, x_1881.x) * x_1883);
  let x_1885 : vec3<f32> = u_xlat24;
  let x_1887 : vec3<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_1885), x_1887);
  let x_1891 : f32 = u_xlat7.x;
  let x_1893 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1891 + x_1893);
  let x_1896 : vec3<f32> = u_xlat4;
  let x_1897 : vec4<f32> = u_xlat7;
  let x_1901 : vec3<f32> = u_xlat24;
  let x_1903 : vec3<f32> = ((x_1896 * -(vec3<f32>(x_1897.x, x_1897.x, x_1897.x))) + -(x_1901));
  let x_1904 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
  let x_1907 : vec3<f32> = u_xlat4;
  let x_1908 : vec3<f32> = u_xlat24;
  u_xlat70 = dot(x_1907, x_1908);
  let x_1910 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1910, 0.0f, 1.0f);
  let x_1912 : f32 = u_xlat70;
  u_xlat70 = (-(x_1912) + 1.0f);
  let x_1915 : f32 = u_xlat70;
  let x_1916 : f32 = u_xlat70;
  u_xlat70 = (x_1915 * x_1916);
  let x_1918 : f32 = u_xlat70;
  let x_1919 : f32 = u_xlat70;
  u_xlat70 = (x_1918 * x_1919);
  let x_1922 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_1922) * 0.699999988f) + 1.700000048f);
  let x_1930 : f32 = u_xlat1.x;
  let x_1932 : f32 = u_xlat8.x;
  u_xlat1.x = (x_1930 * x_1932);
  let x_1936 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1936 * 6.0f);
  let x_1948 : vec4<f32> = u_xlat7;
  let x_1951 : f32 = u_xlat1.x;
  let x_1952 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1948.x, x_1948.y, x_1948.z), x_1951);
  u_xlat8 = x_1952;
  let x_1954 : f32 = u_xlat8.w;
  u_xlat1.x = (x_1954 + -1.0f);
  let x_1962 : f32 = x_1960.unity_SpecCube0_HDR.w;
  let x_1964 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1962 * x_1964) + 1.0f);
  let x_1969 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1969, 0.0f);
  let x_1973 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1973);
  let x_1977 : f32 = u_xlat1.x;
  let x_1979 : f32 = x_1960.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1977 * x_1979);
  let x_1983 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1983);
  let x_1987 : f32 = u_xlat1.x;
  let x_1989 : f32 = x_1960.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1987 * x_1989);
  let x_1992 : vec4<f32> = u_xlat8;
  let x_1994 : vec2<f32> = u_xlat1;
  let x_1996 : vec3<f32> = (vec3<f32>(x_1992.x, x_1992.y, x_1992.z) * vec3<f32>(x_1994.x, x_1994.x, x_1994.x));
  let x_1997 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1996.x, x_1996.y, x_1996.z, x_1997.w);
  let x_1999 : vec3<f32> = u_xlat22;
  let x_2001 : vec3<f32> = u_xlat22;
  u_xlat1 = ((vec2<f32>(x_1999.x, x_1999.x) * vec2<f32>(x_2001.x, x_2001.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2007 : f32 = u_xlat1.y;
  u_xlat22.x = (1.0f / x_2007);
  let x_2010 : vec4<f32> = u_xlat0;
  let x_2013 : f32 = u_xlat64;
  let x_2015 : vec3<f32> = (-(vec3<f32>(x_2010.x, x_2010.y, x_2010.z)) + vec3<f32>(x_2013, x_2013, x_2013));
  let x_2016 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2015.x, x_2015.y, x_2015.z, x_2016.w);
  let x_2018 : f32 = u_xlat70;
  let x_2020 : vec4<f32> = u_xlat8;
  let x_2023 : vec4<f32> = u_xlat0;
  let x_2025 : vec3<f32> = ((vec3<f32>(x_2018, x_2018, x_2018) * vec3<f32>(x_2020.x, x_2020.y, x_2020.z)) + vec3<f32>(x_2023.x, x_2023.y, x_2023.z));
  let x_2026 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
  let x_2028 : vec3<f32> = u_xlat22;
  let x_2030 : vec4<f32> = u_xlat8;
  let x_2032 : vec3<f32> = (vec3<f32>(x_2028.x, x_2028.x, x_2028.x) * vec3<f32>(x_2030.x, x_2030.y, x_2030.z));
  let x_2033 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2032.x, x_2032.y, x_2032.z, x_2033.w);
  let x_2035 : vec4<f32> = u_xlat7;
  let x_2037 : vec4<f32> = u_xlat8;
  let x_2039 : vec3<f32> = (vec3<f32>(x_2035.x, x_2035.y, x_2035.z) * vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
  let x_2040 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
  let x_2042 : vec3<f32> = u_xlat5;
  let x_2043 : vec3<f32> = u_xlat23;
  let x_2045 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_2042 * x_2043) + vec3<f32>(x_2045.x, x_2045.y, x_2045.z));
  let x_2048 : f32 = u_xlat68;
  let x_2051 : f32 = x_1960.unity_LightData.z;
  u_xlat22.x = (x_2048 * x_2051);
  let x_2054 : vec3<f32> = u_xlat4;
  let x_2056 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat64 = dot(x_2054, vec3<f32>(x_2056.x, x_2056.y, x_2056.z));
  let x_2059 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2059, 0.0f, 1.0f);
  let x_2061 : f32 = u_xlat64;
  let x_2063 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2061 * x_2063);
  let x_2066 : vec3<f32> = u_xlat22;
  let x_2068 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_2066.x, x_2066.x, x_2066.x) * x_2068);
  let x_2070 : vec3<f32> = u_xlat24;
  let x_2072 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2074 : vec3<f32> = (x_2070 + vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
  let x_2075 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
  let x_2077 : vec4<f32> = u_xlat7;
  let x_2079 : vec4<f32> = u_xlat7;
  u_xlat22.x = dot(vec3<f32>(x_2077.x, x_2077.y, x_2077.z), vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
  let x_2084 : f32 = u_xlat22.x;
  u_xlat22.x = max(x_2084, 1.17549435e-37f);
  let x_2089 : f32 = u_xlat22.x;
  u_xlat22.x = inverseSqrt(x_2089);
  let x_2092 : vec3<f32> = u_xlat22;
  let x_2094 : vec4<f32> = u_xlat7;
  let x_2096 : vec3<f32> = (vec3<f32>(x_2092.x, x_2092.x, x_2092.x) * vec3<f32>(x_2094.x, x_2094.y, x_2094.z));
  let x_2097 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2096.x, x_2096.y, x_2096.z, x_2097.w);
  let x_2099 : vec3<f32> = u_xlat4;
  let x_2100 : vec4<f32> = u_xlat7;
  u_xlat22.x = dot(x_2099, vec3<f32>(x_2100.x, x_2100.y, x_2100.z));
  let x_2105 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_2105, 0.0f, 1.0f);
  let x_2109 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2111 : vec4<f32> = u_xlat7;
  u_xlat22.z = dot(vec3<f32>(x_2109.x, x_2109.y, x_2109.z), vec3<f32>(x_2111.x, x_2111.y, x_2111.z));
  let x_2116 : f32 = u_xlat22.z;
  u_xlat22.z = clamp(x_2116, 0.0f, 1.0f);
  let x_2119 : vec3<f32> = u_xlat22;
  let x_2121 : vec3<f32> = u_xlat22;
  let x_2123 : vec2<f32> = (vec2<f32>(x_2119.x, x_2119.z) * vec2<f32>(x_2121.x, x_2121.z));
  let x_2124 : vec3<f32> = u_xlat22;
  u_xlat22 = vec3<f32>(x_2123.x, x_2124.y, x_2123.y);
  let x_2127 : f32 = u_xlat22.x;
  let x_2129 : f32 = u_xlat1.x;
  u_xlat22.x = ((x_2127 * x_2129) + 1.000010014f);
  let x_2135 : f32 = u_xlat22.x;
  let x_2137 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2135 * x_2137);
  let x_2141 : f32 = u_xlat22.z;
  u_xlat64 = max(x_2141, 0.100000001f);
  let x_2144 : f32 = u_xlat64;
  let x_2146 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2144 * x_2146);
  let x_2149 : f32 = u_xlat67;
  let x_2151 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2149 * x_2151);
  let x_2155 : f32 = u_xlat43.x;
  let x_2157 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2155 / x_2157);
  let x_2160 : vec4<f32> = u_xlat0;
  let x_2162 : vec3<f32> = u_xlat22;
  let x_2165 : vec3<f32> = u_xlat23;
  let x_2166 : vec3<f32> = ((vec3<f32>(x_2160.x, x_2160.y, x_2160.z) * vec3<f32>(x_2162.x, x_2162.x, x_2162.x)) + x_2165);
  let x_2167 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2166.x, x_2166.y, x_2166.z, x_2167.w);
  let x_2169 : vec3<f32> = u_xlat27;
  let x_2170 : vec4<f32> = u_xlat7;
  u_xlat27 = (x_2169 * vec3<f32>(x_2170.x, x_2170.y, x_2170.z));
  let x_2174 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2176 : f32 = x_1960.unity_LightData.y;
  u_xlat22.x = min(x_2174, x_2176);
  let x_2182 : f32 = u_xlat22.x;
  u_xlatu22 = bitcast<u32>(i32(x_2182));
  let x_2187 : f32 = x_1769.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2189 : f32 = x_1769.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2191 : f32 = x_1769.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2193 : f32 = x_1769.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2194 : vec4<f32> = vec4<f32>(x_2187, x_2189, x_2191, x_2193);
  let x_2200 : vec4<bool> = (vec4<f32>(x_2194.x, x_2194.y, x_2194.z, x_2194.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2200.x, x_2200.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2211 : u32 = u_xlatu_loop_1;
    let x_2212 : u32 = u_xlatu22;
    if ((x_2211 < x_2212)) {
    } else {
      break;
    }
    let x_2215 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2215 >> 2u);
    let x_2219 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_2219 & 3u));
    let x_2222 : u32 = u_xlatu68;
    let x_2225 : vec4<f32> = x_1960.unity_LightIndices[bitcast<i32>(x_2222)];
    let x_2235 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2240 : vec4<u32> = indexable[x_2235];
    u_xlat68 = dot(x_2225, bitcast<vec4<f32>>(x_2240));
    let x_2243 : f32 = u_xlat68;
    u_xlatu68 = bitcast<u32>(i32(x_2243));
    let x_2246 : vec3<f32> = vs_TEXCOORD1;
    let x_2258 : u32 = u_xlatu68;
    let x_2261 : vec4<f32> = x_2257.x_AdditionalLightsPosition[bitcast<i32>(x_2258)];
    let x_2264 : u32 = u_xlatu68;
    let x_2267 : vec4<f32> = x_2257.x_AdditionalLightsPosition[bitcast<i32>(x_2264)];
    let x_2269 : vec3<f32> = ((-(x_2246) * vec3<f32>(x_2261.w, x_2261.w, x_2261.w)) + vec3<f32>(x_2267.x, x_2267.y, x_2267.z));
    let x_2270 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2269.x, x_2269.y, x_2269.z, x_2270.w);
    let x_2272 : vec4<f32> = u_xlat9;
    let x_2274 : vec4<f32> = u_xlat9;
    u_xlat49.x = dot(vec3<f32>(x_2272.x, x_2272.y, x_2272.z), vec3<f32>(x_2274.x, x_2274.y, x_2274.z));
    let x_2279 : f32 = u_xlat49.x;
    u_xlat49.x = max(x_2279, 6.10351562e-05f);
    let x_2284 : f32 = u_xlat49.x;
    u_xlat70 = inverseSqrt(x_2284);
    let x_2286 : f32 = u_xlat70;
    let x_2288 : vec4<f32> = u_xlat9;
    let x_2290 : vec3<f32> = (vec3<f32>(x_2286, x_2286, x_2286) * vec3<f32>(x_2288.x, x_2288.y, x_2288.z));
    let x_2291 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2290.x, x_2290.y, x_2290.z, x_2291.w);
    let x_2295 : f32 = u_xlat49.x;
    u_xlat71 = (1.0f / x_2295);
    let x_2298 : f32 = u_xlat49.x;
    let x_2299 : u32 = u_xlatu68;
    let x_2302 : f32 = x_2257.x_AdditionalLightsAttenuation[bitcast<i32>(x_2299)].x;
    u_xlat49.x = (x_2298 * x_2302);
    let x_2306 : f32 = u_xlat49.x;
    let x_2309 : f32 = u_xlat49.x;
    u_xlat49.x = ((-(x_2306) * x_2309) + 1.0f);
    let x_2314 : f32 = u_xlat49.x;
    u_xlat49.x = max(x_2314, 0.0f);
    let x_2318 : f32 = u_xlat49.x;
    let x_2320 : f32 = u_xlat49.x;
    u_xlat49.x = (x_2318 * x_2320);
    let x_2324 : f32 = u_xlat49.x;
    let x_2325 : f32 = u_xlat71;
    u_xlat49.x = (x_2324 * x_2325);
    let x_2328 : u32 = u_xlatu68;
    let x_2331 : vec4<f32> = x_2257.x_AdditionalLightsSpotDir[bitcast<i32>(x_2328)];
    let x_2333 : vec4<f32> = u_xlat10;
    u_xlat71 = dot(vec3<f32>(x_2331.x, x_2331.y, x_2331.z), vec3<f32>(x_2333.x, x_2333.y, x_2333.z));
    let x_2336 : f32 = u_xlat71;
    let x_2337 : u32 = u_xlatu68;
    let x_2340 : f32 = x_2257.x_AdditionalLightsAttenuation[bitcast<i32>(x_2337)].z;
    let x_2342 : u32 = u_xlatu68;
    let x_2345 : f32 = x_2257.x_AdditionalLightsAttenuation[bitcast<i32>(x_2342)].w;
    u_xlat71 = ((x_2336 * x_2340) + x_2345);
    let x_2347 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2347, 0.0f, 1.0f);
    let x_2349 : f32 = u_xlat71;
    let x_2350 : f32 = u_xlat71;
    u_xlat71 = (x_2349 * x_2350);
    let x_2353 : f32 = u_xlat49.x;
    let x_2354 : f32 = u_xlat71;
    u_xlat49.x = (x_2353 * x_2354);
    let x_2358 : u32 = u_xlatu68;
    u_xlatu71 = (x_2358 >> 5u);
    let x_2361 : u32 = u_xlatu68;
    u_xlati72 = (1i << bitcast<u32>((bitcast<i32>(x_2361) & 31i)));
    let x_2367 : i32 = u_xlati72;
    let x_2369 : u32 = u_xlatu71;
    let x_2372 : f32 = x_1769.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2369)].el;
    u_xlati71 = bitcast<i32>((bitcast<u32>(x_2367) & bitcast<u32>(x_2372)));
    let x_2376 : i32 = u_xlati71;
    if ((x_2376 != 0i)) {
      let x_2386 : u32 = u_xlatu68;
      let x_2389 : f32 = x_2385.x_AdditionalLightsLightTypes[bitcast<i32>(x_2386)].el;
      u_xlati71 = i32(x_2389);
      let x_2391 : i32 = u_xlati71;
      u_xlati72 = select(1i, 0i, (x_2391 != 0i));
      let x_2395 : u32 = u_xlatu68;
      u_xlati73 = (bitcast<i32>(x_2395) << bitcast<u32>(2i));
      let x_2398 : i32 = u_xlati72;
      if ((x_2398 != 0i)) {
        let x_2402 : vec3<f32> = vs_TEXCOORD1;
        let x_2404 : i32 = u_xlati73;
        let x_2407 : i32 = u_xlati73;
        let x_2411 : vec4<f32> = x_2385.x_AdditionalLightsWorldToLights[((x_2404 + 1i) / 4i)][((x_2407 + 1i) % 4i)];
        let x_2413 : vec3<f32> = (vec3<f32>(x_2402.y, x_2402.y, x_2402.y) * vec3<f32>(x_2411.x, x_2411.y, x_2411.w));
        let x_2414 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2413.x, x_2413.y, x_2413.z, x_2414.w);
        let x_2416 : i32 = u_xlati73;
        let x_2418 : i32 = u_xlati73;
        let x_2421 : vec4<f32> = x_2385.x_AdditionalLightsWorldToLights[(x_2416 / 4i)][(x_2418 % 4i)];
        let x_2423 : vec3<f32> = vs_TEXCOORD1;
        let x_2426 : vec4<f32> = u_xlat11;
        let x_2428 : vec3<f32> = ((vec3<f32>(x_2421.x, x_2421.y, x_2421.w) * vec3<f32>(x_2423.x, x_2423.x, x_2423.x)) + vec3<f32>(x_2426.x, x_2426.y, x_2426.z));
        let x_2429 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2428.x, x_2428.y, x_2428.z, x_2429.w);
        let x_2431 : i32 = u_xlati73;
        let x_2434 : i32 = u_xlati73;
        let x_2438 : vec4<f32> = x_2385.x_AdditionalLightsWorldToLights[((x_2431 + 2i) / 4i)][((x_2434 + 2i) % 4i)];
        let x_2440 : vec3<f32> = vs_TEXCOORD1;
        let x_2443 : vec4<f32> = u_xlat11;
        let x_2445 : vec3<f32> = ((vec3<f32>(x_2438.x, x_2438.y, x_2438.w) * vec3<f32>(x_2440.z, x_2440.z, x_2440.z)) + vec3<f32>(x_2443.x, x_2443.y, x_2443.z));
        let x_2446 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
        let x_2448 : vec4<f32> = u_xlat11;
        let x_2450 : i32 = u_xlati73;
        let x_2453 : i32 = u_xlati73;
        let x_2457 : vec4<f32> = x_2385.x_AdditionalLightsWorldToLights[((x_2450 + 3i) / 4i)][((x_2453 + 3i) % 4i)];
        let x_2459 : vec3<f32> = (vec3<f32>(x_2448.x, x_2448.y, x_2448.z) + vec3<f32>(x_2457.x, x_2457.y, x_2457.w));
        let x_2460 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2459.x, x_2459.y, x_2459.z, x_2460.w);
        let x_2462 : vec4<f32> = u_xlat11;
        let x_2464 : vec4<f32> = u_xlat11;
        let x_2466 : vec2<f32> = (vec2<f32>(x_2462.x, x_2462.y) / vec2<f32>(x_2464.z, x_2464.z));
        let x_2467 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2466.x, x_2466.y, x_2467.z, x_2467.w);
        let x_2469 : vec4<f32> = u_xlat11;
        let x_2472 : vec2<f32> = ((vec2<f32>(x_2469.x, x_2469.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2473 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2472.x, x_2472.y, x_2473.z, x_2473.w);
        let x_2475 : vec4<f32> = u_xlat11;
        let x_2479 : vec2<f32> = clamp(vec2<f32>(x_2475.x, x_2475.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2480 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2479.x, x_2479.y, x_2480.z, x_2480.w);
        let x_2482 : u32 = u_xlatu68;
        let x_2485 : vec4<f32> = x_2385.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2482)];
        let x_2487 : vec4<f32> = u_xlat11;
        let x_2490 : u32 = u_xlatu68;
        let x_2493 : vec4<f32> = x_2385.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2490)];
        let x_2495 : vec2<f32> = ((vec2<f32>(x_2485.x, x_2485.y) * vec2<f32>(x_2487.x, x_2487.y)) + vec2<f32>(x_2493.z, x_2493.w));
        let x_2496 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2495.x, x_2495.y, x_2496.z, x_2496.w);
      } else {
        let x_2500 : i32 = u_xlati71;
        u_xlatb71 = (x_2500 == 1i);
        let x_2502 : bool = u_xlatb71;
        u_xlati71 = select(0i, 1i, x_2502);
        let x_2504 : i32 = u_xlati71;
        if ((x_2504 != 0i)) {
          let x_2509 : vec3<f32> = vs_TEXCOORD1;
          let x_2511 : i32 = u_xlati73;
          let x_2514 : i32 = u_xlati73;
          let x_2518 : vec4<f32> = x_2385.x_AdditionalLightsWorldToLights[((x_2511 + 1i) / 4i)][((x_2514 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2509.y, x_2509.y) * vec2<f32>(x_2518.x, x_2518.y));
          let x_2521 : i32 = u_xlati73;
          let x_2523 : i32 = u_xlati73;
          let x_2526 : vec4<f32> = x_2385.x_AdditionalLightsWorldToLights[(x_2521 / 4i)][(x_2523 % 4i)];
          let x_2528 : vec3<f32> = vs_TEXCOORD1;
          let x_2531 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2526.x, x_2526.y) * vec2<f32>(x_2528.x, x_2528.x)) + x_2531);
          let x_2533 : i32 = u_xlati73;
          let x_2536 : i32 = u_xlati73;
          let x_2540 : vec4<f32> = x_2385.x_AdditionalLightsWorldToLights[((x_2533 + 2i) / 4i)][((x_2536 + 2i) % 4i)];
          let x_2542 : vec3<f32> = vs_TEXCOORD1;
          let x_2545 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2540.x, x_2540.y) * vec2<f32>(x_2542.z, x_2542.z)) + x_2545);
          let x_2547 : vec2<f32> = u_xlat53;
          let x_2548 : i32 = u_xlati73;
          let x_2551 : i32 = u_xlati73;
          let x_2555 : vec4<f32> = x_2385.x_AdditionalLightsWorldToLights[((x_2548 + 3i) / 4i)][((x_2551 + 3i) % 4i)];
          u_xlat53 = (x_2547 + vec2<f32>(x_2555.x, x_2555.y));
          let x_2558 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2558 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2561 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2561);
          let x_2563 : u32 = u_xlatu68;
          let x_2566 : vec4<f32> = x_2385.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2563)];
          let x_2568 : vec2<f32> = u_xlat53;
          let x_2570 : u32 = u_xlatu68;
          let x_2573 : vec4<f32> = x_2385.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2570)];
          let x_2575 : vec2<f32> = ((vec2<f32>(x_2566.x, x_2566.y) * x_2568) + vec2<f32>(x_2573.z, x_2573.w));
          let x_2576 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2575.x, x_2575.y, x_2576.z, x_2576.w);
        } else {
          let x_2579 : vec3<f32> = vs_TEXCOORD1;
          let x_2581 : i32 = u_xlati73;
          let x_2584 : i32 = u_xlati73;
          let x_2588 : vec4<f32> = x_2385.x_AdditionalLightsWorldToLights[((x_2581 + 1i) / 4i)][((x_2584 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2579.y, x_2579.y, x_2579.y, x_2579.y) * x_2588);
          let x_2590 : i32 = u_xlati73;
          let x_2592 : i32 = u_xlati73;
          let x_2595 : vec4<f32> = x_2385.x_AdditionalLightsWorldToLights[(x_2590 / 4i)][(x_2592 % 4i)];
          let x_2596 : vec3<f32> = vs_TEXCOORD1;
          let x_2599 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2595 * vec4<f32>(x_2596.x, x_2596.x, x_2596.x, x_2596.x)) + x_2599);
          let x_2601 : i32 = u_xlati73;
          let x_2604 : i32 = u_xlati73;
          let x_2608 : vec4<f32> = x_2385.x_AdditionalLightsWorldToLights[((x_2601 + 2i) / 4i)][((x_2604 + 2i) % 4i)];
          let x_2609 : vec3<f32> = vs_TEXCOORD1;
          let x_2612 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2608 * vec4<f32>(x_2609.z, x_2609.z, x_2609.z, x_2609.z)) + x_2612);
          let x_2614 : vec4<f32> = u_xlat12;
          let x_2615 : i32 = u_xlati73;
          let x_2618 : i32 = u_xlati73;
          let x_2622 : vec4<f32> = x_2385.x_AdditionalLightsWorldToLights[((x_2615 + 3i) / 4i)][((x_2618 + 3i) % 4i)];
          u_xlat12 = (x_2614 + x_2622);
          let x_2624 : vec4<f32> = u_xlat12;
          let x_2626 : vec4<f32> = u_xlat12;
          let x_2628 : vec3<f32> = (vec3<f32>(x_2624.x, x_2624.y, x_2624.z) / vec3<f32>(x_2626.w, x_2626.w, x_2626.w));
          let x_2629 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2628.x, x_2628.y, x_2628.z, x_2629.w);
          let x_2631 : vec4<f32> = u_xlat12;
          let x_2633 : vec4<f32> = u_xlat12;
          u_xlat71 = dot(vec3<f32>(x_2631.x, x_2631.y, x_2631.z), vec3<f32>(x_2633.x, x_2633.y, x_2633.z));
          let x_2636 : f32 = u_xlat71;
          u_xlat71 = inverseSqrt(x_2636);
          let x_2638 : f32 = u_xlat71;
          let x_2640 : vec4<f32> = u_xlat12;
          let x_2642 : vec3<f32> = (vec3<f32>(x_2638, x_2638, x_2638) * vec3<f32>(x_2640.x, x_2640.y, x_2640.z));
          let x_2643 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
          let x_2645 : vec4<f32> = u_xlat12;
          u_xlat71 = dot(abs(vec3<f32>(x_2645.x, x_2645.y, x_2645.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2650 : f32 = u_xlat71;
          u_xlat71 = max(x_2650, 0.000001f);
          let x_2653 : f32 = u_xlat71;
          u_xlat71 = (1.0f / x_2653);
          let x_2655 : f32 = u_xlat71;
          let x_2657 : vec4<f32> = u_xlat12;
          let x_2659 : vec3<f32> = (vec3<f32>(x_2655, x_2655, x_2655) * vec3<f32>(x_2657.z, x_2657.x, x_2657.y));
          let x_2660 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2659.x, x_2659.y, x_2659.z, x_2660.w);
          let x_2663 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2663);
          let x_2667 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2667, 0.0f, 1.0f);
          let x_2671 : vec4<f32> = u_xlat13;
          let x_2674 : vec4<bool> = (vec4<f32>(x_2671.y, x_2671.z, x_2671.y, x_2671.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2674.x, x_2674.y);
          let x_2677 : bool = u_xlatb53.x;
          if (x_2677) {
            let x_2682 : f32 = u_xlat13.x;
            x_2678 = x_2682;
          } else {
            let x_2685 : f32 = u_xlat13.x;
            x_2678 = -(x_2685);
          }
          let x_2687 : f32 = x_2678;
          u_xlat53.x = x_2687;
          let x_2690 : bool = u_xlatb53.y;
          if (x_2690) {
            let x_2695 : f32 = u_xlat13.x;
            x_2691 = x_2695;
          } else {
            let x_2698 : f32 = u_xlat13.x;
            x_2691 = -(x_2698);
          }
          let x_2700 : f32 = x_2691;
          u_xlat53.y = x_2700;
          let x_2702 : vec4<f32> = u_xlat12;
          let x_2704 : f32 = u_xlat71;
          let x_2707 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2702.x, x_2702.y) * vec2<f32>(x_2704, x_2704)) + x_2707);
          let x_2709 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2709 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2712 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2712, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2716 : u32 = u_xlatu68;
          let x_2719 : vec4<f32> = x_2385.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2716)];
          let x_2721 : vec2<f32> = u_xlat53;
          let x_2723 : u32 = u_xlatu68;
          let x_2726 : vec4<f32> = x_2385.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2723)];
          let x_2728 : vec2<f32> = ((vec2<f32>(x_2719.x, x_2719.y) * x_2721) + vec2<f32>(x_2726.z, x_2726.w));
          let x_2729 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2728.x, x_2728.y, x_2729.z, x_2729.w);
        }
      }
      let x_2736 : vec4<f32> = u_xlat11;
      let x_2739 : f32 = x_44.x_GlobalMipBias.x;
      let x_2740 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2736.x, x_2736.y), x_2739);
      u_xlat11 = x_2740;
      let x_2742 : bool = u_xlatb7.y;
      if (x_2742) {
        let x_2747 : f32 = u_xlat11.w;
        x_2743 = x_2747;
      } else {
        let x_2750 : f32 = u_xlat11.x;
        x_2743 = x_2750;
      }
      let x_2751 : f32 = x_2743;
      u_xlat71 = x_2751;
      let x_2753 : bool = u_xlatb7.x;
      if (x_2753) {
        let x_2757 : vec4<f32> = u_xlat11;
        x_2754 = vec3<f32>(x_2757.x, x_2757.y, x_2757.z);
      } else {
        let x_2760 : f32 = u_xlat71;
        x_2754 = vec3<f32>(x_2760, x_2760, x_2760);
      }
      let x_2762 : vec3<f32> = x_2754;
      let x_2763 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2762.x, x_2762.y, x_2762.z, x_2763.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2769 : vec4<f32> = u_xlat11;
    let x_2771 : u32 = u_xlatu68;
    let x_2774 : vec4<f32> = x_2257.x_AdditionalLightsColor[bitcast<i32>(x_2771)];
    let x_2776 : vec3<f32> = (vec3<f32>(x_2769.x, x_2769.y, x_2769.z) * vec3<f32>(x_2774.x, x_2774.y, x_2774.z));
    let x_2777 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2776.x, x_2776.y, x_2776.z, x_2777.w);
    let x_2779 : vec3<f32> = u_xlat6;
    let x_2781 : vec4<f32> = u_xlat11;
    let x_2783 : vec3<f32> = (vec3<f32>(x_2779.x, x_2779.x, x_2779.x) * vec3<f32>(x_2781.x, x_2781.y, x_2781.z));
    let x_2784 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2783.x, x_2783.y, x_2783.z, x_2784.w);
    let x_2786 : vec3<f32> = u_xlat4;
    let x_2787 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(x_2786, vec3<f32>(x_2787.x, x_2787.y, x_2787.z));
    let x_2790 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2790, 0.0f, 1.0f);
    let x_2792 : f32 = u_xlat68;
    let x_2794 : f32 = u_xlat49.x;
    u_xlat68 = (x_2792 * x_2794);
    let x_2796 : f32 = u_xlat68;
    let x_2798 : vec4<f32> = u_xlat11;
    let x_2800 : vec3<f32> = (vec3<f32>(x_2796, x_2796, x_2796) * vec3<f32>(x_2798.x, x_2798.y, x_2798.z));
    let x_2801 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2800.x, x_2800.y, x_2800.z, x_2801.w);
    let x_2803 : vec4<f32> = u_xlat9;
    let x_2805 : f32 = u_xlat70;
    let x_2808 : vec3<f32> = u_xlat24;
    let x_2809 : vec3<f32> = ((vec3<f32>(x_2803.x, x_2803.y, x_2803.z) * vec3<f32>(x_2805, x_2805, x_2805)) + x_2808);
    let x_2810 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2809.x, x_2809.y, x_2809.z, x_2810.w);
    let x_2812 : vec4<f32> = u_xlat9;
    let x_2814 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2812.x, x_2812.y, x_2812.z), vec3<f32>(x_2814.x, x_2814.y, x_2814.z));
    let x_2817 : f32 = u_xlat68;
    u_xlat68 = max(x_2817, 1.17549435e-37f);
    let x_2819 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_2819);
    let x_2821 : f32 = u_xlat68;
    let x_2823 : vec4<f32> = u_xlat9;
    let x_2825 : vec3<f32> = (vec3<f32>(x_2821, x_2821, x_2821) * vec3<f32>(x_2823.x, x_2823.y, x_2823.z));
    let x_2826 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2825.x, x_2825.y, x_2825.z, x_2826.w);
    let x_2828 : vec3<f32> = u_xlat4;
    let x_2829 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(x_2828, vec3<f32>(x_2829.x, x_2829.y, x_2829.z));
    let x_2832 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2832, 0.0f, 1.0f);
    let x_2834 : vec4<f32> = u_xlat10;
    let x_2836 : vec4<f32> = u_xlat9;
    u_xlat49.x = dot(vec3<f32>(x_2834.x, x_2834.y, x_2834.z), vec3<f32>(x_2836.x, x_2836.y, x_2836.z));
    let x_2841 : f32 = u_xlat49.x;
    u_xlat49.x = clamp(x_2841, 0.0f, 1.0f);
    let x_2844 : f32 = u_xlat68;
    let x_2845 : f32 = u_xlat68;
    u_xlat68 = (x_2844 * x_2845);
    let x_2847 : f32 = u_xlat68;
    let x_2849 : f32 = u_xlat1.x;
    u_xlat68 = ((x_2847 * x_2849) + 1.000010014f);
    let x_2853 : f32 = u_xlat49.x;
    let x_2855 : f32 = u_xlat49.x;
    u_xlat49.x = (x_2853 * x_2855);
    let x_2858 : f32 = u_xlat68;
    let x_2859 : f32 = u_xlat68;
    u_xlat68 = (x_2858 * x_2859);
    let x_2862 : f32 = u_xlat49.x;
    u_xlat49.x = max(x_2862, 0.100000001f);
    let x_2865 : f32 = u_xlat68;
    let x_2867 : f32 = u_xlat49.x;
    u_xlat68 = (x_2865 * x_2867);
    let x_2869 : f32 = u_xlat67;
    let x_2870 : f32 = u_xlat68;
    u_xlat68 = (x_2869 * x_2870);
    let x_2873 : f32 = u_xlat43.x;
    let x_2874 : f32 = u_xlat68;
    u_xlat68 = (x_2873 / x_2874);
    let x_2876 : vec4<f32> = u_xlat0;
    let x_2878 : f32 = u_xlat68;
    let x_2881 : vec3<f32> = u_xlat23;
    let x_2882 : vec3<f32> = ((vec3<f32>(x_2876.x, x_2876.y, x_2876.z) * vec3<f32>(x_2878, x_2878, x_2878)) + x_2881);
    let x_2883 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2882.x, x_2882.y, x_2882.z, x_2883.w);
    let x_2885 : vec4<f32> = u_xlat9;
    let x_2887 : vec4<f32> = u_xlat11;
    let x_2890 : vec4<f32> = u_xlat8;
    let x_2892 : vec3<f32> = ((vec3<f32>(x_2885.x, x_2885.y, x_2885.z) * vec3<f32>(x_2887.x, x_2887.y, x_2887.z)) + vec3<f32>(x_2890.x, x_2890.y, x_2890.z));
    let x_2893 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2892.x, x_2892.y, x_2892.z, x_2893.w);

    continuing {
      let x_2895 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2895 + bitcast<u32>(1i));
    }
  }
  let x_2897 : vec3<f32> = u_xlat5;
  let x_2898 : vec3<f32> = u_xlat3;
  let x_2901 : vec3<f32> = u_xlat27;
  let x_2902 : vec3<f32> = ((x_2897 * vec3<f32>(x_2898.x, x_2898.x, x_2898.x)) + x_2901);
  let x_2903 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2902.x, x_2902.y, x_2902.z, x_2903.w);
  let x_2905 : vec4<f32> = u_xlat8;
  let x_2907 : vec4<f32> = u_xlat0;
  let x_2909 : vec3<f32> = (vec3<f32>(x_2905.x, x_2905.y, x_2905.z) + vec3<f32>(x_2907.x, x_2907.y, x_2907.z));
  let x_2910 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2909.x, x_2909.y, x_2909.z, x_2910.w);
  let x_2912 : f32 = u_xlat63;
  let x_2913 : f32 = u_xlat63;
  u_xlat63 = (x_2912 * -(x_2913));
  let x_2916 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2916);
  let x_2918 : vec4<f32> = u_xlat0;
  let x_2922 : vec4<f32> = x_44.unity_FogColor;
  let x_2925 : vec3<f32> = (vec3<f32>(x_2918.x, x_2918.y, x_2918.z) + -(vec3<f32>(x_2922.x, x_2922.y, x_2922.z)));
  let x_2926 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2925.x, x_2925.y, x_2925.z, x_2926.w);
  let x_2930 : f32 = u_xlat63;
  let x_2932 : vec4<f32> = u_xlat0;
  let x_2936 : vec4<f32> = x_44.unity_FogColor;
  let x_2938 : vec3<f32> = ((vec3<f32>(x_2930, x_2930, x_2930) * vec3<f32>(x_2932.x, x_2932.y, x_2932.z)) + vec3<f32>(x_2936.x, x_2936.y, x_2936.z));
  let x_2939 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2938.x, x_2938.y, x_2938.z, x_2939.w);
  let x_2944 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_2944 == 1.0f);
  let x_2946 : bool = u_xlatb0;
  if (x_2946) {
    let x_2951 : f32 = u_xlat2.x;
    x_2947 = x_2951;
  } else {
    x_2947 = 1.0f;
  }
  let x_2953 : f32 = x_2947;
  SV_Target0.w = x_2953;
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

