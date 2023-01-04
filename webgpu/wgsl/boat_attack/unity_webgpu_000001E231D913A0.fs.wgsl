struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
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

struct UnityPerMaterial {
  Texture2D_25A083BC_TexelSize : vec4<f32>,
  Texture2D_6EEDD32E_TexelSize : vec4<f32>,
  Texture2D_E9EC22CC_TexelSize : vec4<f32>,
  x_Hue : f32,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
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

@group(0) @binding(5) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(6) var<uniform> x_190 : UnityPerMaterial;

@group(0) @binding(7) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_E9EC22CC : sampler;

@group(0) @binding(6) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_6EEDD32E : sampler;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_359 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_503 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1028 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1485 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1599 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb13 : bool;
  var u_xlat13 : f32;
  var u_xlat26 : f32;
  var x_146 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlatb39 : bool;
  var x_211 : f32;
  var x_220 : f32;
  var u_xlat39 : f32;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var u_xlat41 : f32;
  var u_xlat4 : vec4<f32>;
  var x_487 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu39 : u32;
  var u_xlati39 : i32;
  var u_xlat40 : f32;
  var u_xlat42 : f32;
  var u_xlat15 : f32;
  var u_xlat43 : f32;
  var u_xlat44 : f32;
  var u_xlat28 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : vec2<bool>;
  var u_xlatb30 : bool;
  var x_981 : f32;
  var u_xlat30 : f32;
  var x_1112 : f32;
  var x_1123 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu40 : u32;
  var u_xlatb2 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatu10 : u32;
  var u_xlati23 : i32;
  var u_xlati10 : i32;
  var u_xlati36 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlatb37 : vec2<bool>;
  var u_xlat37 : vec2<f32>;
  var x_1918 : f32;
  var x_1931 : f32;
  var u_xlat49 : f32;
  var x_1993 : f32;
  var x_2004 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_INTERP3;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(Texture2D_25A083BC, samplerTexture2D_25A083BC, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_58 : f32 = u_xlat0.y;
  let x_61 : f32 = u_xlat0.z;
  u_xlatb1 = (x_58 >= x_61);
  let x_64 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_64);
  let x_69 : vec4<f32> = u_xlat0;
  let x_70 : vec2<f32> = vec2<f32>(x_69.z, x_69.y);
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_70.x, x_70.y, x_71.z, x_71.w);
  u_xlat2.z = -1.0f;
  u_xlat2.w = 0.666666687f;
  let x_78 : vec4<f32> = u_xlat0;
  let x_80 : vec4<f32> = u_xlat2;
  let x_83 : vec2<f32> = (vec2<f32>(x_78.y, x_78.z) + -(vec2<f32>(x_80.x, x_80.y)));
  let x_84 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  u_xlat3.z = 1.0f;
  u_xlat3.w = -1.0f;
  let x_88 : vec4<f32> = u_xlat1;
  let x_90 : vec4<f32> = u_xlat3;
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_88.x, x_88.x, x_88.x, x_88.x) * x_90) + x_92);
  let x_96 : f32 = u_xlat0.x;
  let x_98 : f32 = u_xlat1.x;
  u_xlatb13 = (x_96 >= x_98);
  let x_101 : bool = u_xlatb13;
  u_xlat13 = select(0.0f, 1.0f, x_101);
  let x_103 : vec4<f32> = u_xlat1;
  let x_104 : vec3<f32> = vec3<f32>(x_103.x, x_103.y, x_103.w);
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_108 : f32 = u_xlat0.x;
  u_xlat2.w = x_108;
  let x_110 : vec4<f32> = u_xlat2;
  let x_111 : vec3<f32> = vec3<f32>(x_110.w, x_110.y, x_110.x);
  let x_112 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_111.x, x_111.y, x_112.z, x_111.z);
  let x_114 : vec4<f32> = u_xlat2;
  let x_116 : vec4<f32> = u_xlat1;
  u_xlat1 = (-(x_114) + x_116);
  let x_118 : f32 = u_xlat13;
  let x_120 : vec4<f32> = u_xlat1;
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_118, x_118, x_118, x_118) * x_120) + x_122);
  let x_125 : f32 = u_xlat1.y;
  let x_127 : f32 = u_xlat1.w;
  u_xlat0.x = min(x_125, x_127);
  let x_131 : f32 = u_xlat0.x;
  let x_134 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_131) + x_134);
  let x_138 : f32 = u_xlat0.x;
  u_xlatb13 = (x_138 == 0.0f);
  let x_142 : f32 = u_xlat1.x;
  u_xlat26 = (x_142 + 1.00000001e-10f);
  let x_145 : bool = u_xlatb13;
  if (x_145) {
    let x_150 : f32 = u_xlat1.x;
    x_146 = x_150;
  } else {
    let x_152 : f32 = u_xlat26;
    x_146 = x_152;
  }
  let x_153 : f32 = x_146;
  u_xlat13 = x_153;
  let x_155 : f32 = u_xlat1.y;
  let x_158 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_155) + x_158);
  let x_164 : f32 = u_xlat0.x;
  u_xlat14.x = ((x_164 * 6.0f) + 1.00000001e-10f);
  let x_170 : f32 = u_xlat1.x;
  let x_172 : f32 = u_xlat14.x;
  u_xlat1.x = (x_170 / x_172);
  let x_176 : f32 = u_xlat1.x;
  let x_178 : f32 = u_xlat1.z;
  u_xlat1.x = (x_176 + x_178);
  let x_182 : f32 = u_xlat0.x;
  let x_183 : f32 = u_xlat26;
  u_xlat0.x = (x_182 / x_183);
  let x_187 : f32 = u_xlat0.w;
  let x_193 : f32 = x_190.x_Hue;
  let x_196 : f32 = u_xlat1.x;
  u_xlat26 = ((x_187 * x_193) + abs(x_196));
  let x_200 : f32 = u_xlat26;
  u_xlatb39 = (x_200 < 0.0f);
  let x_202 : f32 = u_xlat26;
  u_xlatb1 = (1.0f < x_202);
  let x_204 : f32 = u_xlat26;
  let x_207 : vec2<f32> = (vec2<f32>(x_204, x_204) + vec2<f32>(1.0f, -1.0f));
  let x_208 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_207.x, x_207.y, x_208.z);
  let x_210 : bool = u_xlatb1;
  if (x_210) {
    let x_215 : f32 = u_xlat14.y;
    x_211 = x_215;
  } else {
    let x_217 : f32 = u_xlat26;
    x_211 = x_217;
  }
  let x_218 : f32 = x_211;
  u_xlat26 = x_218;
  let x_219 : bool = u_xlatb39;
  if (x_219) {
    let x_224 : f32 = u_xlat14.x;
    x_220 = x_224;
  } else {
    let x_226 : f32 = u_xlat26;
    x_220 = x_226;
  }
  let x_227 : f32 = x_220;
  u_xlat26 = x_227;
  let x_228 : f32 = u_xlat26;
  let x_232 : vec3<f32> = (vec3<f32>(x_228, x_228, x_228) + vec3<f32>(1.0f, 0.666666687f, 0.333333343f));
  let x_233 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_235 : vec4<f32> = u_xlat1;
  let x_237 : vec3<f32> = fract(vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat1;
  let x_246 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat1;
  let x_253 : vec3<f32> = (abs(vec3<f32>(x_249.x, x_249.y, x_249.z)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_254 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_256 : vec4<f32> = u_xlat1;
  let x_260 : vec3<f32> = clamp(vec3<f32>(x_256.x, x_256.y, x_256.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat1;
  let x_265 : vec3<f32> = (vec3<f32>(x_263.x, x_263.y, x_263.z) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_266 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_268 : vec4<f32> = u_xlat0;
  let x_270 : vec4<f32> = u_xlat1;
  let x_274 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.x, x_268.x) * vec3<f32>(x_270.x, x_270.y, x_270.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_275 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_274.x, x_275.y, x_274.y, x_274.z);
  let x_277 : vec4<f32> = u_xlat0;
  let x_279 : f32 = u_xlat13;
  let x_281 : vec3<f32> = (vec3<f32>(x_277.x, x_277.z, x_277.w) * vec3<f32>(x_279, x_279, x_279));
  let x_282 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec4<f32> = u_xlat0;
  let x_288 : vec3<f32> = clamp(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_289 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_296 : vec4<f32> = vs_INTERP3;
  let x_299 : f32 = x_44.x_GlobalMipBias.x;
  let x_300 : vec4<f32> = textureSampleBias(Texture2D_E9EC22CC, samplerTexture2D_E9EC22CC, vec2<f32>(x_296.x, x_296.y), x_299);
  let x_301 : vec3<f32> = vec3<f32>(x_300.x, x_300.y, x_300.w);
  let x_302 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : f32 = u_xlat1.x;
  let x_307 : f32 = u_xlat1.z;
  u_xlat1.x = (x_305 * x_307);
  let x_310 : vec4<f32> = u_xlat1;
  let x_316 : vec2<f32> = ((vec2<f32>(x_310.x, x_310.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_317 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_316.x, x_316.y, x_317.z, x_317.w);
  let x_320 : vec4<f32> = u_xlat1;
  let x_322 : vec4<f32> = u_xlat1;
  u_xlat39 = dot(vec2<f32>(x_320.x, x_320.y), vec2<f32>(x_322.x, x_322.y));
  let x_325 : f32 = u_xlat39;
  u_xlat39 = min(x_325, 1.0f);
  let x_327 : f32 = u_xlat39;
  u_xlat39 = (-(x_327) + 1.0f);
  let x_330 : f32 = u_xlat39;
  u_xlat39 = sqrt(x_330);
  let x_332 : f32 = u_xlat39;
  u_xlat39 = max(x_332, 1.00000002e-16f);
  let x_340 : vec4<f32> = vs_INTERP3;
  let x_343 : f32 = x_44.x_GlobalMipBias.x;
  let x_344 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_340.x, x_340.y), x_343);
  let x_345 : vec3<f32> = vec3<f32>(x_344.x, x_344.w, x_344.y);
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_353 : f32 = vs_INTERP2.w;
  u_xlatb27.x = (0.0f < x_353);
  let x_361 : f32 = x_359.unity_WorldTransformParams.w;
  u_xlatb27.y = (x_361 >= 0.0f);
  let x_367 : bool = u_xlatb27.x;
  u_xlat27.x = select(-1.0f, 1.0f, x_367);
  let x_371 : bool = u_xlatb27.y;
  u_xlat27.y = select(-1.0f, 1.0f, x_371);
  let x_375 : f32 = u_xlat27.y;
  let x_377 : f32 = u_xlat27.x;
  u_xlat27.x = (x_375 * x_377);
  let x_382 : vec3<f32> = vs_INTERP1;
  let x_384 : vec4<f32> = vs_INTERP2;
  let x_386 : vec3<f32> = (vec3<f32>(x_382.z, x_382.x, x_382.y) * vec3<f32>(x_384.y, x_384.z, x_384.x));
  let x_387 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_389 : vec3<f32> = vs_INTERP1;
  let x_391 : vec4<f32> = vs_INTERP2;
  let x_394 : vec4<f32> = u_xlat3;
  let x_397 : vec3<f32> = ((vec3<f32>(x_389.y, x_389.z, x_389.x) * vec3<f32>(x_391.z, x_391.x, x_391.y)) + -(vec3<f32>(x_394.x, x_394.y, x_394.z)));
  let x_398 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : vec2<f32> = u_xlat27;
  let x_402 : vec4<f32> = u_xlat3;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.x, x_400.x) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat1;
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec3<f32>(x_407.y, x_407.y, x_407.y) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat1;
  let x_414 : vec4<f32> = vs_INTERP2;
  let x_417 : vec3<f32> = u_xlat14;
  let x_418 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.x, x_412.x) * vec3<f32>(x_414.x, x_414.y, x_414.z)) + x_417);
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : f32 = u_xlat39;
  let x_423 : vec3<f32> = vs_INTERP1;
  let x_425 : vec4<f32> = u_xlat1;
  let x_427 : vec3<f32> = ((vec3<f32>(x_421, x_421, x_421) * x_423) + vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat1;
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat39 = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_435);
  let x_437 : f32 = u_xlat39;
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : vec3<f32> = (vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_446 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb39 = (x_446 == 0.0f);
  let x_449 : vec3<f32> = vs_INTERP0;
  let x_454 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_455 : vec3<f32> = (-(x_449) + x_454);
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_459 : vec4<f32> = u_xlat3;
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat41 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat41;
  u_xlat41 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat41;
  let x_468 : vec4<f32> = u_xlat3;
  let x_470 : vec3<f32> = (vec3<f32>(x_466, x_466, x_466) * vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_477 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_477;
  let x_480 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_480;
  let x_484 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_484;
  let x_486 : bool = u_xlatb39;
  if (x_486) {
    let x_490 : vec4<f32> = u_xlat3;
    x_487 = vec3<f32>(x_490.x, x_490.y, x_490.z);
  } else {
    let x_493 : vec4<f32> = u_xlat4;
    x_487 = vec3<f32>(x_493.x, x_493.y, x_493.z);
  }
  let x_495 : vec3<f32> = x_487;
  let x_496 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec3<f32> = vs_INTERP0;
  let x_506 : vec4<f32> = x_503.x_CascadeShadowSplitSpheres0;
  let x_509 : vec3<f32> = (x_498 + -(vec3<f32>(x_506.x, x_506.y, x_506.z)));
  let x_510 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_513 : vec3<f32> = vs_INTERP0;
  let x_515 : vec4<f32> = x_503.x_CascadeShadowSplitSpheres1;
  let x_518 : vec3<f32> = (x_513 + -(vec3<f32>(x_515.x, x_515.y, x_515.z)));
  let x_519 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_522 : vec3<f32> = vs_INTERP0;
  let x_524 : vec4<f32> = x_503.x_CascadeShadowSplitSpheres2;
  let x_527 : vec3<f32> = (x_522 + -(vec3<f32>(x_524.x, x_524.y, x_524.z)));
  let x_528 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_531 : vec3<f32> = vs_INTERP0;
  let x_534 : vec4<f32> = x_503.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_531 + -(vec3<f32>(x_534.x, x_534.y, x_534.z)));
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_538.x, x_538.y, x_538.z), vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_544 : vec4<f32> = u_xlat5;
  let x_546 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_544.x, x_544.y, x_544.z), vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_550 : vec4<f32> = u_xlat6;
  let x_552 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_556 : vec3<f32> = u_xlat7;
  let x_557 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_556, x_557);
  let x_563 : vec4<f32> = u_xlat4;
  let x_566 : vec4<f32> = x_503.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_563 < x_566);
  let x_569 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_569);
  let x_573 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_573);
  let x_577 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_577);
  let x_581 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_581);
  let x_585 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_585);
  let x_590 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_590);
  let x_594 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_594);
  let x_597 : vec4<f32> = u_xlat4;
  let x_599 : vec4<f32> = u_xlat5;
  let x_601 : vec3<f32> = (vec3<f32>(x_597.x, x_597.y, x_597.z) + vec3<f32>(x_599.y, x_599.z, x_599.w));
  let x_602 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat4;
  let x_607 : vec3<f32> = max(vec3<f32>(x_604.x, x_604.y, x_604.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_608 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_608.x, x_607.x, x_607.y, x_607.z);
  let x_610 : vec4<f32> = u_xlat5;
  u_xlat39 = dot(x_610, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_615 : f32 = u_xlat39;
  u_xlat39 = (-(x_615) + 4.0f);
  let x_620 : f32 = u_xlat39;
  u_xlatu39 = u32(x_620);
  let x_624 : u32 = u_xlatu39;
  u_xlati39 = (bitcast<i32>(x_624) << bitcast<u32>(2i));
  let x_627 : vec3<f32> = vs_INTERP0;
  let x_629 : i32 = u_xlati39;
  let x_632 : i32 = u_xlati39;
  let x_636 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_629 + 1i) / 4i)][((x_632 + 1i) % 4i)];
  let x_638 : vec3<f32> = (vec3<f32>(x_627.y, x_627.y, x_627.y) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : i32 = u_xlati39;
  let x_643 : i32 = u_xlati39;
  let x_646 : vec4<f32> = x_503.x_MainLightWorldToShadow[(x_641 / 4i)][(x_643 % 4i)];
  let x_648 : vec3<f32> = vs_INTERP0;
  let x_651 : vec4<f32> = u_xlat4;
  let x_653 : vec3<f32> = ((vec3<f32>(x_646.x, x_646.y, x_646.z) * vec3<f32>(x_648.x, x_648.x, x_648.x)) + vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_654 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_656 : i32 = u_xlati39;
  let x_659 : i32 = u_xlati39;
  let x_663 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_656 + 2i) / 4i)][((x_659 + 2i) % 4i)];
  let x_665 : vec3<f32> = vs_INTERP0;
  let x_668 : vec4<f32> = u_xlat4;
  let x_670 : vec3<f32> = ((vec3<f32>(x_663.x, x_663.y, x_663.z) * vec3<f32>(x_665.z, x_665.z, x_665.z)) + vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_673 : vec4<f32> = u_xlat4;
  let x_675 : i32 = u_xlati39;
  let x_678 : i32 = u_xlati39;
  let x_682 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_675 + 3i) / 4i)][((x_678 + 3i) % 4i)];
  let x_684 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) + vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_688 : f32 = vs_INTERP0.y;
  let x_690 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat39 = (x_688 * x_690);
  let x_693 : f32 = x_44.unity_MatrixV[0i].z;
  let x_695 : f32 = vs_INTERP0.x;
  let x_697 : f32 = u_xlat39;
  u_xlat39 = ((x_693 * x_695) + x_697);
  let x_700 : f32 = x_44.unity_MatrixV[2i].z;
  let x_702 : f32 = vs_INTERP0.z;
  let x_704 : f32 = u_xlat39;
  u_xlat39 = ((x_700 * x_702) + x_704);
  let x_706 : f32 = u_xlat39;
  let x_708 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat39 = (x_706 + x_708);
  let x_710 : f32 = u_xlat39;
  let x_714 : f32 = x_44.x_ProjectionParams.y;
  u_xlat39 = (-(x_710) + -(x_714));
  let x_717 : f32 = u_xlat39;
  u_xlat39 = max(x_717, 0.0f);
  let x_719 : f32 = u_xlat39;
  let x_722 : f32 = x_44.unity_FogParams.x;
  u_xlat39 = (x_719 * x_722);
  u_xlat1.w = 1.0f;
  let x_727 : vec4<f32> = x_359.unity_SHAr;
  let x_728 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(x_727, x_728);
  let x_733 : vec4<f32> = x_359.unity_SHAg;
  let x_734 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(x_733, x_734);
  let x_739 : vec4<f32> = x_359.unity_SHAb;
  let x_740 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_739, x_740);
  let x_743 : vec4<f32> = u_xlat1;
  let x_745 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_743.y, x_743.z, x_743.z, x_743.x) * vec4<f32>(x_745.x, x_745.y, x_745.z, x_745.z));
  let x_750 : vec4<f32> = x_359.unity_SHBr;
  let x_751 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_750, x_751);
  let x_756 : vec4<f32> = x_359.unity_SHBg;
  let x_757 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_756, x_757);
  let x_762 : vec4<f32> = x_359.unity_SHBb;
  let x_763 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_762, x_763);
  let x_768 : f32 = u_xlat1.y;
  let x_770 : f32 = u_xlat1.y;
  u_xlat40 = (x_768 * x_770);
  let x_773 : f32 = u_xlat1.x;
  let x_775 : f32 = u_xlat1.x;
  let x_777 : f32 = u_xlat40;
  u_xlat40 = ((x_773 * x_775) + -(x_777));
  let x_782 : vec4<f32> = x_359.unity_SHC;
  let x_784 : f32 = u_xlat40;
  let x_787 : vec3<f32> = u_xlat7;
  let x_788 : vec3<f32> = ((vec3<f32>(x_782.x, x_782.y, x_782.z) * vec3<f32>(x_784, x_784, x_784)) + x_787);
  let x_789 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_791 : vec4<f32> = u_xlat5;
  let x_793 : vec4<f32> = u_xlat6;
  let x_795 : vec3<f32> = (vec3<f32>(x_791.x, x_791.y, x_791.z) + vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat5;
  let x_800 : vec3<f32> = max(vec3<f32>(x_798.x, x_798.y, x_798.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_801 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_805 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_806 : vec2<f32> = vec2<f32>(x_805.x, x_805.y);
  let x_810 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_806.x, x_806.y));
  let x_811 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_810.x, x_810.y, x_811.z, x_811.w);
  let x_813 : vec4<f32> = u_xlat6;
  let x_815 : vec4<f32> = hlslcc_FragCoord;
  let x_817 : vec2<f32> = (vec2<f32>(x_813.x, x_813.y) * vec2<f32>(x_815.x, x_815.y));
  let x_818 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_817.x, x_817.y, x_818.z, x_818.w);
  let x_821 : f32 = u_xlat6.y;
  let x_824 : f32 = x_44.x_ScaleBiasRt.x;
  let x_827 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat40 = ((x_821 * x_824) + x_827);
  let x_829 : f32 = u_xlat40;
  u_xlat6.z = (-(x_829) + 1.0f);
  let x_833 : vec4<f32> = u_xlat2;
  let x_834 : vec2<f32> = vec2<f32>(x_833.x, x_833.y);
  let x_835 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_834.x, x_834.y, x_835.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat2;
  let x_841 : vec2<f32> = clamp(vec2<f32>(x_837.x, x_837.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_842 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_841.x, x_841.y, x_842.z, x_842.w);
  let x_845 : f32 = u_xlat2.x;
  u_xlat40 = ((-(x_845) * 0.959999979f) + 0.959999979f);
  let x_850 : f32 = u_xlat40;
  u_xlat41 = (-(x_850) + 1.0f);
  let x_853 : vec4<f32> = u_xlat0;
  let x_855 : f32 = u_xlat40;
  u_xlat7 = (vec3<f32>(x_853.x, x_853.y, x_853.z) * vec3<f32>(x_855, x_855, x_855));
  let x_858 : vec4<f32> = u_xlat0;
  let x_862 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_863 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat2;
  let x_867 : vec4<f32> = u_xlat0;
  let x_872 : vec3<f32> = ((vec3<f32>(x_865.x, x_865.x, x_865.x) * vec3<f32>(x_867.x, x_867.y, x_867.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_873 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_876 : f32 = u_xlat2.y;
  u_xlat40 = (-(x_876) + 1.0f);
  let x_879 : f32 = u_xlat40;
  let x_880 : f32 = u_xlat40;
  u_xlat2.x = (x_879 * x_880);
  let x_884 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_884, 0.0078125f);
  let x_890 : f32 = u_xlat2.x;
  let x_892 : f32 = u_xlat2.x;
  u_xlat42 = (x_890 * x_892);
  let x_895 : f32 = u_xlat41;
  let x_897 : f32 = u_xlat2.y;
  u_xlat15 = (x_895 + x_897);
  let x_899 : f32 = u_xlat15;
  u_xlat15 = min(x_899, 1.0f);
  let x_902 : f32 = u_xlat2.x;
  u_xlat41 = ((x_902 * 4.0f) + 2.0f);
  let x_911 : vec4<f32> = u_xlat6;
  let x_914 : f32 = x_44.x_GlobalMipBias.x;
  let x_915 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_911.x, x_911.z), x_914);
  u_xlat43 = x_915.x;
  let x_918 : f32 = u_xlat43;
  u_xlat44 = (x_918 + -1.0f);
  let x_921 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_922 : f32 = u_xlat44;
  u_xlat44 = ((x_921 * x_922) + 1.0f);
  let x_927 : f32 = u_xlat2.z;
  let x_928 : f32 = u_xlat43;
  u_xlat28 = min(x_927, x_928);
  let x_931 : vec4<f32> = u_xlat4;
  let x_932 : vec2<f32> = vec2<f32>(x_931.x, x_931.y);
  let x_934 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_932.x, x_932.y, x_934);
  let x_946 : vec3<f32> = txVec0;
  let x_948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_946.xy, x_946.z);
  u_xlat4.x = x_948;
  let x_952 : f32 = x_503.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_952) + 1.0f);
  let x_957 : f32 = u_xlat4.x;
  let x_959 : f32 = x_503.x_MainLightShadowParams.x;
  let x_962 : f32 = u_xlat17.x;
  u_xlat4.x = ((x_957 * x_959) + x_962);
  let x_967 : f32 = u_xlat4.z;
  u_xlatb17.x = (0.0f >= x_967);
  let x_972 : f32 = u_xlat4.z;
  u_xlatb30 = (x_972 >= 1.0f);
  let x_974 : bool = u_xlatb30;
  let x_976 : bool = u_xlatb17.x;
  u_xlatb17.x = (x_974 | x_976);
  let x_980 : bool = u_xlatb17.x;
  if (x_980) {
    x_981 = 1.0f;
  } else {
    let x_986 : f32 = u_xlat4.x;
    x_981 = x_986;
  }
  let x_987 : f32 = x_981;
  u_xlat4.x = x_987;
  let x_989 : vec3<f32> = vs_INTERP0;
  let x_991 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat17 = (x_989 + -(x_991));
  let x_994 : vec3<f32> = u_xlat17;
  let x_995 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_994, x_995);
  let x_999 : f32 = u_xlat17.x;
  let x_1001 : f32 = x_503.x_MainLightShadowParams.z;
  let x_1004 : f32 = x_503.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_999 * x_1001) + x_1004);
  let x_1008 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1008, 0.0f, 1.0f);
  let x_1013 : f32 = u_xlat4.x;
  u_xlat30 = (-(x_1013) + 1.0f);
  let x_1017 : f32 = u_xlat17.x;
  let x_1018 : f32 = u_xlat30;
  let x_1021 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1017 * x_1018) + x_1021);
  let x_1030 : f32 = x_1028.x_MainLightCookieTextureFormat;
  u_xlatb17.x = !((x_1030 == -1.0f));
  let x_1034 : bool = u_xlatb17.x;
  if (x_1034) {
    let x_1037 : vec3<f32> = vs_INTERP0;
    let x_1040 : vec4<f32> = x_1028.x_MainLightWorldToLight[1i];
    let x_1042 : vec2<f32> = (vec2<f32>(x_1037.y, x_1037.y) * vec2<f32>(x_1040.x, x_1040.y));
    let x_1043 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1042.x, x_1042.y, x_1043.z);
    let x_1046 : vec4<f32> = x_1028.x_MainLightWorldToLight[0i];
    let x_1048 : vec3<f32> = vs_INTERP0;
    let x_1051 : vec3<f32> = u_xlat17;
    let x_1053 : vec2<f32> = ((vec2<f32>(x_1046.x, x_1046.y) * vec2<f32>(x_1048.x, x_1048.x)) + vec2<f32>(x_1051.x, x_1051.y));
    let x_1054 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1053.x, x_1053.y, x_1054.z);
    let x_1057 : vec4<f32> = x_1028.x_MainLightWorldToLight[2i];
    let x_1059 : vec3<f32> = vs_INTERP0;
    let x_1062 : vec3<f32> = u_xlat17;
    let x_1064 : vec2<f32> = ((vec2<f32>(x_1057.x, x_1057.y) * vec2<f32>(x_1059.z, x_1059.z)) + vec2<f32>(x_1062.x, x_1062.y));
    let x_1065 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1064.x, x_1064.y, x_1065.z);
    let x_1067 : vec3<f32> = u_xlat17;
    let x_1070 : vec4<f32> = x_1028.x_MainLightWorldToLight[3i];
    let x_1072 : vec2<f32> = (vec2<f32>(x_1067.x, x_1067.y) + vec2<f32>(x_1070.x, x_1070.y));
    let x_1073 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1072.x, x_1072.y, x_1073.z);
    let x_1075 : vec3<f32> = u_xlat17;
    let x_1080 : vec2<f32> = ((vec2<f32>(x_1075.x, x_1075.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1081 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1080.x, x_1080.y, x_1081.z);
    let x_1088 : vec3<f32> = u_xlat17;
    let x_1091 : f32 = x_44.x_GlobalMipBias.x;
    let x_1092 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1088.x, x_1088.y), x_1091);
    u_xlat6 = x_1092;
    let x_1094 : f32 = x_1028.x_MainLightCookieTextureFormat;
    let x_1096 : f32 = x_1028.x_MainLightCookieTextureFormat;
    let x_1098 : f32 = x_1028.x_MainLightCookieTextureFormat;
    let x_1100 : f32 = x_1028.x_MainLightCookieTextureFormat;
    let x_1101 : vec4<f32> = vec4<f32>(x_1094, x_1096, x_1098, x_1100);
    let x_1108 : vec4<bool> = (vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1101.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb17 = vec2<bool>(x_1108.x, x_1108.y);
    let x_1111 : bool = u_xlatb17.y;
    if (x_1111) {
      let x_1116 : f32 = u_xlat6.w;
      x_1112 = x_1116;
    } else {
      let x_1119 : f32 = u_xlat6.x;
      x_1112 = x_1119;
    }
    let x_1120 : f32 = x_1112;
    u_xlat30 = x_1120;
    let x_1122 : bool = u_xlatb17.x;
    if (x_1122) {
      let x_1126 : vec4<f32> = u_xlat6;
      x_1123 = vec3<f32>(x_1126.x, x_1126.y, x_1126.z);
    } else {
      let x_1129 : f32 = u_xlat30;
      x_1123 = vec3<f32>(x_1129, x_1129, x_1129);
    }
    let x_1131 : vec3<f32> = x_1123;
    u_xlat17 = x_1131;
  } else {
    u_xlat17.x = 1.0f;
    u_xlat17.y = 1.0f;
    u_xlat17.z = 1.0f;
  }
  let x_1136 : vec3<f32> = u_xlat17;
  let x_1138 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat17 = (x_1136 * vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : f32 = u_xlat44;
  let x_1143 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1141, x_1141, x_1141) * x_1143);
  let x_1145 : vec4<f32> = u_xlat3;
  let x_1148 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(vec3<f32>(x_1145.x, x_1145.y, x_1145.z)), vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1153 : f32 = u_xlat6.x;
  let x_1155 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1153 + x_1155);
  let x_1158 : vec4<f32> = u_xlat1;
  let x_1160 : vec4<f32> = u_xlat6;
  let x_1164 : vec4<f32> = u_xlat3;
  let x_1167 : vec3<f32> = ((vec3<f32>(x_1158.x, x_1158.y, x_1158.z) * -(vec3<f32>(x_1160.x, x_1160.x, x_1160.x))) + -(vec3<f32>(x_1164.x, x_1164.y, x_1164.z)));
  let x_1168 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1171 : vec4<f32> = u_xlat1;
  let x_1173 : vec4<f32> = u_xlat3;
  u_xlat45 = dot(vec3<f32>(x_1171.x, x_1171.y, x_1171.z), vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
  let x_1176 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1176, 0.0f, 1.0f);
  let x_1178 : f32 = u_xlat45;
  u_xlat45 = (-(x_1178) + 1.0f);
  let x_1181 : f32 = u_xlat45;
  let x_1182 : f32 = u_xlat45;
  u_xlat45 = (x_1181 * x_1182);
  let x_1184 : f32 = u_xlat45;
  let x_1185 : f32 = u_xlat45;
  u_xlat45 = (x_1184 * x_1185);
  let x_1188 : f32 = u_xlat40;
  u_xlat46 = ((-(x_1188) * 0.699999988f) + 1.700000048f);
  let x_1194 : f32 = u_xlat40;
  let x_1195 : f32 = u_xlat46;
  u_xlat40 = (x_1194 * x_1195);
  let x_1197 : f32 = u_xlat40;
  u_xlat40 = (x_1197 * 6.0f);
  let x_1208 : vec4<f32> = u_xlat6;
  let x_1210 : f32 = u_xlat40;
  let x_1211 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1208.x, x_1208.y, x_1208.z), x_1210);
  u_xlat8 = x_1211;
  let x_1213 : f32 = u_xlat8.w;
  u_xlat40 = (x_1213 + -1.0f);
  let x_1216 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_1217 : f32 = u_xlat40;
  u_xlat40 = ((x_1216 * x_1217) + 1.0f);
  let x_1220 : f32 = u_xlat40;
  u_xlat40 = max(x_1220, 0.0f);
  let x_1222 : f32 = u_xlat40;
  u_xlat40 = log2(x_1222);
  let x_1224 : f32 = u_xlat40;
  let x_1226 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_1224 * x_1226);
  let x_1228 : f32 = u_xlat40;
  u_xlat40 = exp2(x_1228);
  let x_1230 : f32 = u_xlat40;
  let x_1232 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_1230 * x_1232);
  let x_1234 : vec4<f32> = u_xlat8;
  let x_1236 : f32 = u_xlat40;
  let x_1238 : vec3<f32> = (vec3<f32>(x_1234.x, x_1234.y, x_1234.z) * vec3<f32>(x_1236, x_1236, x_1236));
  let x_1239 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
  let x_1241 : vec4<f32> = u_xlat2;
  let x_1243 : vec4<f32> = u_xlat2;
  let x_1247 : vec2<f32> = ((vec2<f32>(x_1241.x, x_1241.x) * vec2<f32>(x_1243.x, x_1243.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1248 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1247.x, x_1247.y, x_1248.z, x_1248.w);
  let x_1251 : f32 = u_xlat8.y;
  u_xlat40 = (1.0f / x_1251);
  let x_1254 : vec4<f32> = u_xlat0;
  let x_1257 : f32 = u_xlat15;
  u_xlat21 = (-(vec3<f32>(x_1254.x, x_1254.y, x_1254.z)) + vec3<f32>(x_1257, x_1257, x_1257));
  let x_1260 : f32 = u_xlat45;
  let x_1262 : vec3<f32> = u_xlat21;
  let x_1264 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_1260, x_1260, x_1260) * x_1262) + vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
  let x_1267 : f32 = u_xlat40;
  let x_1269 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1267, x_1267, x_1267) * x_1269);
  let x_1271 : vec4<f32> = u_xlat6;
  let x_1273 : vec3<f32> = u_xlat21;
  let x_1274 : vec3<f32> = (vec3<f32>(x_1271.x, x_1271.y, x_1271.z) * x_1273);
  let x_1275 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
  let x_1277 : vec4<f32> = u_xlat5;
  let x_1279 : vec3<f32> = u_xlat7;
  let x_1281 : vec4<f32> = u_xlat6;
  let x_1283 : vec3<f32> = ((vec3<f32>(x_1277.x, x_1277.y, x_1277.z) * x_1279) + vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
  let x_1284 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1284.w);
  let x_1287 : f32 = u_xlat4.x;
  let x_1289 : f32 = x_359.unity_LightData.z;
  u_xlat40 = (x_1287 * x_1289);
  let x_1291 : vec4<f32> = u_xlat1;
  let x_1294 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1291.x, x_1291.y, x_1291.z), vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
  let x_1299 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1299, 0.0f, 1.0f);
  let x_1302 : f32 = u_xlat40;
  let x_1304 : f32 = u_xlat2.x;
  u_xlat40 = (x_1302 * x_1304);
  let x_1306 : f32 = u_xlat40;
  let x_1308 : vec3<f32> = u_xlat17;
  let x_1309 : vec3<f32> = (vec3<f32>(x_1306, x_1306, x_1306) * x_1308);
  let x_1310 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1310.w);
  let x_1312 : vec4<f32> = u_xlat3;
  let x_1315 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1317 : vec3<f32> = (vec3<f32>(x_1312.x, x_1312.y, x_1312.z) + vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
  let x_1318 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
  let x_1320 : vec4<f32> = u_xlat6;
  let x_1322 : vec4<f32> = u_xlat6;
  u_xlat40 = dot(vec3<f32>(x_1320.x, x_1320.y, x_1320.z), vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
  let x_1325 : f32 = u_xlat40;
  u_xlat40 = max(x_1325, 1.17549435e-37f);
  let x_1328 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_1328);
  let x_1330 : f32 = u_xlat40;
  let x_1332 : vec4<f32> = u_xlat6;
  let x_1334 : vec3<f32> = (vec3<f32>(x_1330, x_1330, x_1330) * vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
  let x_1335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
  let x_1337 : vec4<f32> = u_xlat1;
  let x_1339 : vec4<f32> = u_xlat6;
  u_xlat40 = dot(vec3<f32>(x_1337.x, x_1337.y, x_1337.z), vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
  let x_1342 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1342, 0.0f, 1.0f);
  let x_1345 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1347 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_1345.x, x_1345.y, x_1345.z), vec3<f32>(x_1347.x, x_1347.y, x_1347.z));
  let x_1352 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1352, 0.0f, 1.0f);
  let x_1355 : f32 = u_xlat40;
  let x_1356 : f32 = u_xlat40;
  u_xlat40 = (x_1355 * x_1356);
  let x_1358 : f32 = u_xlat40;
  let x_1360 : f32 = u_xlat8.x;
  u_xlat40 = ((x_1358 * x_1360) + 1.000010014f);
  let x_1365 : f32 = u_xlat2.x;
  let x_1367 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1365 * x_1367);
  let x_1370 : f32 = u_xlat40;
  let x_1371 : f32 = u_xlat40;
  u_xlat40 = (x_1370 * x_1371);
  let x_1374 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1374, 0.100000001f);
  let x_1378 : f32 = u_xlat40;
  let x_1380 : f32 = u_xlat2.x;
  u_xlat40 = (x_1378 * x_1380);
  let x_1382 : f32 = u_xlat41;
  let x_1383 : f32 = u_xlat40;
  u_xlat40 = (x_1382 * x_1383);
  let x_1385 : f32 = u_xlat42;
  let x_1386 : f32 = u_xlat40;
  u_xlat40 = (x_1385 / x_1386);
  let x_1388 : vec4<f32> = u_xlat0;
  let x_1390 : f32 = u_xlat40;
  let x_1393 : vec3<f32> = u_xlat7;
  let x_1394 : vec3<f32> = ((vec3<f32>(x_1388.x, x_1388.y, x_1388.z) * vec3<f32>(x_1390, x_1390, x_1390)) + x_1393);
  let x_1395 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
  let x_1397 : vec4<f32> = u_xlat4;
  let x_1399 : vec4<f32> = u_xlat6;
  let x_1401 : vec3<f32> = (vec3<f32>(x_1397.x, x_1397.y, x_1397.z) * vec3<f32>(x_1399.x, x_1399.y, x_1399.z));
  let x_1402 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1402.w);
  let x_1405 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1407 : f32 = x_359.unity_LightData.y;
  u_xlat40 = min(x_1405, x_1407);
  let x_1410 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_1410));
  let x_1415 : f32 = x_1028.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1417 : f32 = x_1028.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1419 : f32 = x_1028.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1421 : f32 = x_1028.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1422 : vec4<f32> = vec4<f32>(x_1415, x_1417, x_1419, x_1421);
  let x_1428 : vec4<bool> = (vec4<f32>(x_1422.x, x_1422.y, x_1422.z, x_1422.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb2 = vec2<bool>(x_1428.x, x_1428.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1439 : u32 = u_xlatu_loop_1;
    let x_1440 : u32 = u_xlatu40;
    if ((x_1439 < x_1440)) {
    } else {
      break;
    }
    let x_1443 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1443 >> 2u);
    let x_1446 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1446 & 3u));
    let x_1450 : u32 = u_xlatu45;
    let x_1453 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_1450)];
    let x_1463 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1468 : vec4<u32> = indexable[x_1463];
    u_xlat45 = dot(x_1453, bitcast<vec4<f32>>(x_1468));
    let x_1471 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1471));
    let x_1474 : vec3<f32> = vs_INTERP0;
    let x_1486 : u32 = u_xlatu45;
    let x_1489 : vec4<f32> = x_1485.x_AdditionalLightsPosition[bitcast<i32>(x_1486)];
    let x_1492 : u32 = u_xlatu45;
    let x_1495 : vec4<f32> = x_1485.x_AdditionalLightsPosition[bitcast<i32>(x_1492)];
    u_xlat21 = ((-(x_1474) * vec3<f32>(x_1489.w, x_1489.w, x_1489.w)) + vec3<f32>(x_1495.x, x_1495.y, x_1495.z));
    let x_1498 : vec3<f32> = u_xlat21;
    let x_1499 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_1498, x_1499);
    let x_1501 : f32 = u_xlat46;
    u_xlat46 = max(x_1501, 6.10351562e-05f);
    let x_1505 : f32 = u_xlat46;
    u_xlat9 = inverseSqrt(x_1505);
    let x_1508 : vec3<f32> = u_xlat21;
    let x_1509 : f32 = u_xlat9;
    u_xlat22 = (x_1508 * vec3<f32>(x_1509, x_1509, x_1509));
    let x_1513 : f32 = u_xlat46;
    u_xlat10.x = (1.0f / x_1513);
    let x_1516 : f32 = u_xlat46;
    let x_1517 : u32 = u_xlatu45;
    let x_1520 : f32 = x_1485.x_AdditionalLightsAttenuation[bitcast<i32>(x_1517)].x;
    u_xlat46 = (x_1516 * x_1520);
    let x_1522 : f32 = u_xlat46;
    let x_1524 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1522) * x_1524) + 1.0f);
    let x_1527 : f32 = u_xlat46;
    u_xlat46 = max(x_1527, 0.0f);
    let x_1529 : f32 = u_xlat46;
    let x_1530 : f32 = u_xlat46;
    u_xlat46 = (x_1529 * x_1530);
    let x_1532 : f32 = u_xlat46;
    let x_1534 : f32 = u_xlat10.x;
    u_xlat46 = (x_1532 * x_1534);
    let x_1536 : u32 = u_xlatu45;
    let x_1539 : vec4<f32> = x_1485.x_AdditionalLightsSpotDir[bitcast<i32>(x_1536)];
    let x_1541 : vec3<f32> = u_xlat22;
    u_xlat10.x = dot(vec3<f32>(x_1539.x, x_1539.y, x_1539.z), x_1541);
    let x_1545 : f32 = u_xlat10.x;
    let x_1546 : u32 = u_xlatu45;
    let x_1549 : f32 = x_1485.x_AdditionalLightsAttenuation[bitcast<i32>(x_1546)].z;
    let x_1551 : u32 = u_xlatu45;
    let x_1554 : f32 = x_1485.x_AdditionalLightsAttenuation[bitcast<i32>(x_1551)].w;
    u_xlat10.x = ((x_1545 * x_1549) + x_1554);
    let x_1558 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1558, 0.0f, 1.0f);
    let x_1562 : f32 = u_xlat10.x;
    let x_1564 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1562 * x_1564);
    let x_1567 : f32 = u_xlat46;
    let x_1569 : f32 = u_xlat10.x;
    u_xlat46 = (x_1567 * x_1569);
    let x_1572 : u32 = u_xlatu45;
    u_xlatu10 = (x_1572 >> 5u);
    let x_1575 : u32 = u_xlatu45;
    u_xlati23 = (1i << bitcast<u32>((bitcast<i32>(x_1575) & 31i)));
    let x_1581 : i32 = u_xlati23;
    let x_1583 : u32 = u_xlatu10;
    let x_1586 : f32 = x_1028.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1583)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_1581) & bitcast<u32>(x_1586)));
    let x_1590 : i32 = u_xlati10;
    if ((x_1590 != 0i)) {
      let x_1600 : u32 = u_xlatu45;
      let x_1603 : f32 = x_1599.x_AdditionalLightsLightTypes[bitcast<i32>(x_1600)].el;
      u_xlati10 = i32(x_1603);
      let x_1605 : i32 = u_xlati10;
      u_xlati23 = select(1i, 0i, (x_1605 != 0i));
      let x_1609 : u32 = u_xlatu45;
      u_xlati36 = (bitcast<i32>(x_1609) << bitcast<u32>(2i));
      let x_1612 : i32 = u_xlati23;
      if ((x_1612 != 0i)) {
        let x_1617 : vec3<f32> = vs_INTERP0;
        let x_1619 : i32 = u_xlati36;
        let x_1622 : i32 = u_xlati36;
        let x_1626 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_1619 + 1i) / 4i)][((x_1622 + 1i) % 4i)];
        let x_1628 : vec3<f32> = (vec3<f32>(x_1617.y, x_1617.y, x_1617.y) * vec3<f32>(x_1626.x, x_1626.y, x_1626.w));
        let x_1629 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1628.x, x_1628.y, x_1628.z, x_1629.w);
        let x_1631 : i32 = u_xlati36;
        let x_1633 : i32 = u_xlati36;
        let x_1636 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[(x_1631 / 4i)][(x_1633 % 4i)];
        let x_1638 : vec3<f32> = vs_INTERP0;
        let x_1641 : vec4<f32> = u_xlat11;
        let x_1643 : vec3<f32> = ((vec3<f32>(x_1636.x, x_1636.y, x_1636.w) * vec3<f32>(x_1638.x, x_1638.x, x_1638.x)) + vec3<f32>(x_1641.x, x_1641.y, x_1641.z));
        let x_1644 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1643.x, x_1643.y, x_1643.z, x_1644.w);
        let x_1646 : i32 = u_xlati36;
        let x_1649 : i32 = u_xlati36;
        let x_1653 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_1646 + 2i) / 4i)][((x_1649 + 2i) % 4i)];
        let x_1655 : vec3<f32> = vs_INTERP0;
        let x_1658 : vec4<f32> = u_xlat11;
        let x_1660 : vec3<f32> = ((vec3<f32>(x_1653.x, x_1653.y, x_1653.w) * vec3<f32>(x_1655.z, x_1655.z, x_1655.z)) + vec3<f32>(x_1658.x, x_1658.y, x_1658.z));
        let x_1661 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1660.x, x_1660.y, x_1660.z, x_1661.w);
        let x_1663 : vec4<f32> = u_xlat11;
        let x_1665 : i32 = u_xlati36;
        let x_1668 : i32 = u_xlati36;
        let x_1672 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_1665 + 3i) / 4i)][((x_1668 + 3i) % 4i)];
        let x_1674 : vec3<f32> = (vec3<f32>(x_1663.x, x_1663.y, x_1663.z) + vec3<f32>(x_1672.x, x_1672.y, x_1672.w));
        let x_1675 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1675.w);
        let x_1678 : vec4<f32> = u_xlat11;
        let x_1680 : vec4<f32> = u_xlat11;
        let x_1682 : vec2<f32> = (vec2<f32>(x_1678.x, x_1678.y) / vec2<f32>(x_1680.z, x_1680.z));
        let x_1683 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1682.x, x_1683.y, x_1682.y);
        let x_1685 : vec3<f32> = u_xlat23;
        let x_1688 : vec2<f32> = ((vec2<f32>(x_1685.x, x_1685.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1689 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1688.x, x_1689.y, x_1688.y);
        let x_1691 : vec3<f32> = u_xlat23;
        let x_1695 : vec2<f32> = clamp(vec2<f32>(x_1691.x, x_1691.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1696 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1695.x, x_1696.y, x_1695.y);
        let x_1698 : u32 = u_xlatu45;
        let x_1701 : vec4<f32> = x_1599.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1698)];
        let x_1703 : vec3<f32> = u_xlat23;
        let x_1706 : u32 = u_xlatu45;
        let x_1709 : vec4<f32> = x_1599.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1706)];
        let x_1711 : vec2<f32> = ((vec2<f32>(x_1701.x, x_1701.y) * vec2<f32>(x_1703.x, x_1703.z)) + vec2<f32>(x_1709.z, x_1709.w));
        let x_1712 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1711.x, x_1712.y, x_1711.y);
      } else {
        let x_1716 : i32 = u_xlati10;
        u_xlatb10 = (x_1716 == 1i);
        let x_1718 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_1718);
        let x_1720 : i32 = u_xlati10;
        if ((x_1720 != 0i)) {
          let x_1724 : vec3<f32> = vs_INTERP0;
          let x_1726 : i32 = u_xlati36;
          let x_1729 : i32 = u_xlati36;
          let x_1733 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_1726 + 1i) / 4i)][((x_1729 + 1i) % 4i)];
          let x_1735 : vec2<f32> = (vec2<f32>(x_1724.y, x_1724.y) * vec2<f32>(x_1733.x, x_1733.y));
          let x_1736 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1735.x, x_1735.y, x_1736.z, x_1736.w);
          let x_1738 : i32 = u_xlati36;
          let x_1740 : i32 = u_xlati36;
          let x_1743 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[(x_1738 / 4i)][(x_1740 % 4i)];
          let x_1745 : vec3<f32> = vs_INTERP0;
          let x_1748 : vec4<f32> = u_xlat11;
          let x_1750 : vec2<f32> = ((vec2<f32>(x_1743.x, x_1743.y) * vec2<f32>(x_1745.x, x_1745.x)) + vec2<f32>(x_1748.x, x_1748.y));
          let x_1751 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1750.x, x_1750.y, x_1751.z, x_1751.w);
          let x_1753 : i32 = u_xlati36;
          let x_1756 : i32 = u_xlati36;
          let x_1760 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_1753 + 2i) / 4i)][((x_1756 + 2i) % 4i)];
          let x_1762 : vec3<f32> = vs_INTERP0;
          let x_1765 : vec4<f32> = u_xlat11;
          let x_1767 : vec2<f32> = ((vec2<f32>(x_1760.x, x_1760.y) * vec2<f32>(x_1762.z, x_1762.z)) + vec2<f32>(x_1765.x, x_1765.y));
          let x_1768 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1767.x, x_1767.y, x_1768.z, x_1768.w);
          let x_1770 : vec4<f32> = u_xlat11;
          let x_1772 : i32 = u_xlati36;
          let x_1775 : i32 = u_xlati36;
          let x_1779 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_1772 + 3i) / 4i)][((x_1775 + 3i) % 4i)];
          let x_1781 : vec2<f32> = (vec2<f32>(x_1770.x, x_1770.y) + vec2<f32>(x_1779.x, x_1779.y));
          let x_1782 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1781.x, x_1781.y, x_1782.z, x_1782.w);
          let x_1784 : vec4<f32> = u_xlat11;
          let x_1787 : vec2<f32> = ((vec2<f32>(x_1784.x, x_1784.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1788 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1787.x, x_1787.y, x_1788.z, x_1788.w);
          let x_1790 : vec4<f32> = u_xlat11;
          let x_1792 : vec2<f32> = fract(vec2<f32>(x_1790.x, x_1790.y));
          let x_1793 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1792.x, x_1792.y, x_1793.z, x_1793.w);
          let x_1795 : u32 = u_xlatu45;
          let x_1798 : vec4<f32> = x_1599.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1795)];
          let x_1800 : vec4<f32> = u_xlat11;
          let x_1803 : u32 = u_xlatu45;
          let x_1806 : vec4<f32> = x_1599.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1803)];
          let x_1808 : vec2<f32> = ((vec2<f32>(x_1798.x, x_1798.y) * vec2<f32>(x_1800.x, x_1800.y)) + vec2<f32>(x_1806.z, x_1806.w));
          let x_1809 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1808.x, x_1809.y, x_1808.y);
        } else {
          let x_1812 : vec3<f32> = vs_INTERP0;
          let x_1814 : i32 = u_xlati36;
          let x_1817 : i32 = u_xlati36;
          let x_1821 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_1814 + 1i) / 4i)][((x_1817 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_1812.y, x_1812.y, x_1812.y, x_1812.y) * x_1821);
          let x_1823 : i32 = u_xlati36;
          let x_1825 : i32 = u_xlati36;
          let x_1828 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[(x_1823 / 4i)][(x_1825 % 4i)];
          let x_1829 : vec3<f32> = vs_INTERP0;
          let x_1832 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1828 * vec4<f32>(x_1829.x, x_1829.x, x_1829.x, x_1829.x)) + x_1832);
          let x_1834 : i32 = u_xlati36;
          let x_1837 : i32 = u_xlati36;
          let x_1841 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_1834 + 2i) / 4i)][((x_1837 + 2i) % 4i)];
          let x_1842 : vec3<f32> = vs_INTERP0;
          let x_1845 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1841 * vec4<f32>(x_1842.z, x_1842.z, x_1842.z, x_1842.z)) + x_1845);
          let x_1847 : vec4<f32> = u_xlat11;
          let x_1848 : i32 = u_xlati36;
          let x_1851 : i32 = u_xlati36;
          let x_1855 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_1848 + 3i) / 4i)][((x_1851 + 3i) % 4i)];
          u_xlat11 = (x_1847 + x_1855);
          let x_1857 : vec4<f32> = u_xlat11;
          let x_1859 : vec4<f32> = u_xlat11;
          let x_1861 : vec3<f32> = (vec3<f32>(x_1857.x, x_1857.y, x_1857.z) / vec3<f32>(x_1859.w, x_1859.w, x_1859.w));
          let x_1862 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1861.x, x_1861.y, x_1861.z, x_1862.w);
          let x_1864 : vec4<f32> = u_xlat11;
          let x_1866 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_1864.x, x_1864.y, x_1864.z), vec3<f32>(x_1866.x, x_1866.y, x_1866.z));
          let x_1871 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_1871);
          let x_1874 : vec4<f32> = u_xlat10;
          let x_1876 : vec4<f32> = u_xlat11;
          let x_1878 : vec3<f32> = (vec3<f32>(x_1874.x, x_1874.x, x_1874.x) * vec3<f32>(x_1876.x, x_1876.y, x_1876.z));
          let x_1879 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1879.w);
          let x_1881 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_1881.x, x_1881.y, x_1881.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1887 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_1887, 0.000001f);
          let x_1892 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_1892);
          let x_1896 : vec4<f32> = u_xlat10;
          let x_1898 : vec4<f32> = u_xlat11;
          u_xlat12 = (vec3<f32>(x_1896.x, x_1896.x, x_1896.x) * vec3<f32>(x_1898.z, x_1898.x, x_1898.y));
          let x_1902 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_1902);
          let x_1906 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_1906, 0.0f, 1.0f);
          let x_1910 : vec3<f32> = u_xlat12;
          let x_1913 : vec4<bool> = (vec4<f32>(x_1910.y, x_1910.z, x_1910.y, x_1910.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb37 = vec2<bool>(x_1913.x, x_1913.y);
          let x_1917 : bool = u_xlatb37.x;
          if (x_1917) {
            let x_1922 : f32 = u_xlat12.x;
            x_1918 = x_1922;
          } else {
            let x_1925 : f32 = u_xlat12.x;
            x_1918 = -(x_1925);
          }
          let x_1927 : f32 = x_1918;
          u_xlat37.x = x_1927;
          let x_1930 : bool = u_xlatb37.y;
          if (x_1930) {
            let x_1935 : f32 = u_xlat12.x;
            x_1931 = x_1935;
          } else {
            let x_1938 : f32 = u_xlat12.x;
            x_1931 = -(x_1938);
          }
          let x_1940 : f32 = x_1931;
          u_xlat37.y = x_1940;
          let x_1942 : vec4<f32> = u_xlat11;
          let x_1944 : vec4<f32> = u_xlat10;
          let x_1947 : vec2<f32> = u_xlat37;
          let x_1948 : vec2<f32> = ((vec2<f32>(x_1942.x, x_1942.y) * vec2<f32>(x_1944.x, x_1944.x)) + x_1947);
          let x_1949 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1948.x, x_1949.y, x_1948.y, x_1949.w);
          let x_1951 : vec4<f32> = u_xlat10;
          let x_1954 : vec2<f32> = ((vec2<f32>(x_1951.x, x_1951.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1955 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1954.x, x_1955.y, x_1954.y, x_1955.w);
          let x_1957 : vec4<f32> = u_xlat10;
          let x_1961 : vec2<f32> = clamp(vec2<f32>(x_1957.x, x_1957.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1962 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1961.x, x_1962.y, x_1961.y, x_1962.w);
          let x_1964 : u32 = u_xlatu45;
          let x_1967 : vec4<f32> = x_1599.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1964)];
          let x_1969 : vec4<f32> = u_xlat10;
          let x_1972 : u32 = u_xlatu45;
          let x_1975 : vec4<f32> = x_1599.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1972)];
          let x_1977 : vec2<f32> = ((vec2<f32>(x_1967.x, x_1967.y) * vec2<f32>(x_1969.x, x_1969.z)) + vec2<f32>(x_1975.z, x_1975.w));
          let x_1978 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1977.x, x_1978.y, x_1977.y);
        }
      }
      let x_1985 : vec3<f32> = u_xlat23;
      let x_1988 : f32 = x_44.x_GlobalMipBias.x;
      let x_1989 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1985.x, x_1985.z), x_1988);
      u_xlat10 = x_1989;
      let x_1992 : bool = u_xlatb2.y;
      if (x_1992) {
        let x_1997 : f32 = u_xlat10.w;
        x_1993 = x_1997;
      } else {
        let x_2000 : f32 = u_xlat10.x;
        x_1993 = x_2000;
      }
      let x_2001 : f32 = x_1993;
      u_xlat49 = x_2001;
      let x_2003 : bool = u_xlatb2.x;
      if (x_2003) {
        let x_2007 : vec4<f32> = u_xlat10;
        x_2004 = vec3<f32>(x_2007.x, x_2007.y, x_2007.z);
      } else {
        let x_2010 : f32 = u_xlat49;
        x_2004 = vec3<f32>(x_2010, x_2010, x_2010);
      }
      let x_2012 : vec3<f32> = x_2004;
      let x_2013 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2012.x, x_2012.y, x_2012.z, x_2013.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_2019 : vec4<f32> = u_xlat10;
    let x_2021 : u32 = u_xlatu45;
    let x_2024 : vec4<f32> = x_1485.x_AdditionalLightsColor[bitcast<i32>(x_2021)];
    let x_2026 : vec3<f32> = (vec3<f32>(x_2019.x, x_2019.y, x_2019.z) * vec3<f32>(x_2024.x, x_2024.y, x_2024.z));
    let x_2027 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2026.x, x_2026.y, x_2026.z, x_2027.w);
    let x_2029 : f32 = u_xlat44;
    let x_2031 : vec4<f32> = u_xlat10;
    let x_2033 : vec3<f32> = (vec3<f32>(x_2029, x_2029, x_2029) * vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
    let x_2034 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2033.x, x_2033.y, x_2033.z, x_2034.w);
    let x_2036 : vec4<f32> = u_xlat1;
    let x_2038 : vec3<f32> = u_xlat22;
    u_xlat45 = dot(vec3<f32>(x_2036.x, x_2036.y, x_2036.z), x_2038);
    let x_2040 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2040, 0.0f, 1.0f);
    let x_2042 : f32 = u_xlat45;
    let x_2043 : f32 = u_xlat46;
    u_xlat45 = (x_2042 * x_2043);
    let x_2045 : f32 = u_xlat45;
    let x_2047 : vec4<f32> = u_xlat10;
    let x_2049 : vec3<f32> = (vec3<f32>(x_2045, x_2045, x_2045) * vec3<f32>(x_2047.x, x_2047.y, x_2047.z));
    let x_2050 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2049.x, x_2049.y, x_2049.z, x_2050.w);
    let x_2052 : vec3<f32> = u_xlat21;
    let x_2053 : f32 = u_xlat9;
    let x_2056 : vec4<f32> = u_xlat3;
    u_xlat21 = ((x_2052 * vec3<f32>(x_2053, x_2053, x_2053)) + vec3<f32>(x_2056.x, x_2056.y, x_2056.z));
    let x_2059 : vec3<f32> = u_xlat21;
    let x_2060 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_2059, x_2060);
    let x_2062 : f32 = u_xlat45;
    u_xlat45 = max(x_2062, 1.17549435e-37f);
    let x_2064 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_2064);
    let x_2066 : f32 = u_xlat45;
    let x_2068 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_2066, x_2066, x_2066) * x_2068);
    let x_2070 : vec4<f32> = u_xlat1;
    let x_2072 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(vec3<f32>(x_2070.x, x_2070.y, x_2070.z), x_2072);
    let x_2074 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2074, 0.0f, 1.0f);
    let x_2076 : vec3<f32> = u_xlat22;
    let x_2077 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_2076, x_2077);
    let x_2079 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2079, 0.0f, 1.0f);
    let x_2081 : f32 = u_xlat45;
    let x_2082 : f32 = u_xlat45;
    u_xlat45 = (x_2081 * x_2082);
    let x_2084 : f32 = u_xlat45;
    let x_2086 : f32 = u_xlat8.x;
    u_xlat45 = ((x_2084 * x_2086) + 1.000010014f);
    let x_2089 : f32 = u_xlat46;
    let x_2090 : f32 = u_xlat46;
    u_xlat46 = (x_2089 * x_2090);
    let x_2092 : f32 = u_xlat45;
    let x_2093 : f32 = u_xlat45;
    u_xlat45 = (x_2092 * x_2093);
    let x_2095 : f32 = u_xlat46;
    u_xlat46 = max(x_2095, 0.100000001f);
    let x_2097 : f32 = u_xlat45;
    let x_2098 : f32 = u_xlat46;
    u_xlat45 = (x_2097 * x_2098);
    let x_2100 : f32 = u_xlat41;
    let x_2101 : f32 = u_xlat45;
    u_xlat45 = (x_2100 * x_2101);
    let x_2103 : f32 = u_xlat42;
    let x_2104 : f32 = u_xlat45;
    u_xlat45 = (x_2103 / x_2104);
    let x_2106 : vec4<f32> = u_xlat0;
    let x_2108 : f32 = u_xlat45;
    let x_2111 : vec3<f32> = u_xlat7;
    u_xlat21 = ((vec3<f32>(x_2106.x, x_2106.y, x_2106.z) * vec3<f32>(x_2108, x_2108, x_2108)) + x_2111);
    let x_2113 : vec3<f32> = u_xlat21;
    let x_2114 : vec4<f32> = u_xlat10;
    let x_2117 : vec4<f32> = u_xlat6;
    let x_2119 : vec3<f32> = ((x_2113 * vec3<f32>(x_2114.x, x_2114.y, x_2114.z)) + vec3<f32>(x_2117.x, x_2117.y, x_2117.z));
    let x_2120 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2119.x, x_2119.y, x_2119.z, x_2120.w);

    continuing {
      let x_2122 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2122 + bitcast<u32>(1i));
    }
  }
  let x_2124 : vec4<f32> = u_xlat5;
  let x_2126 : f32 = u_xlat28;
  let x_2129 : vec4<f32> = u_xlat4;
  let x_2131 : vec3<f32> = ((vec3<f32>(x_2124.x, x_2124.y, x_2124.z) * vec3<f32>(x_2126, x_2126, x_2126)) + vec3<f32>(x_2129.x, x_2129.y, x_2129.z));
  let x_2132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2131.x, x_2131.y, x_2131.z, x_2132.w);
  let x_2134 : vec4<f32> = u_xlat6;
  let x_2136 : vec4<f32> = u_xlat0;
  let x_2138 : vec3<f32> = (vec3<f32>(x_2134.x, x_2134.y, x_2134.z) + vec3<f32>(x_2136.x, x_2136.y, x_2136.z));
  let x_2139 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2138.x, x_2138.y, x_2138.z, x_2139.w);
  let x_2141 : f32 = u_xlat39;
  let x_2142 : f32 = u_xlat39;
  u_xlat39 = (x_2141 * -(x_2142));
  let x_2145 : f32 = u_xlat39;
  u_xlat39 = exp2(x_2145);
  let x_2147 : vec4<f32> = u_xlat0;
  let x_2151 : vec4<f32> = x_44.unity_FogColor;
  let x_2154 : vec3<f32> = (vec3<f32>(x_2147.x, x_2147.y, x_2147.z) + -(vec3<f32>(x_2151.x, x_2151.y, x_2151.z)));
  let x_2155 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2154.x, x_2154.y, x_2154.z, x_2155.w);
  let x_2159 : f32 = u_xlat39;
  let x_2161 : vec4<f32> = u_xlat0;
  let x_2165 : vec4<f32> = x_44.unity_FogColor;
  let x_2167 : vec3<f32> = ((vec3<f32>(x_2159, x_2159, x_2159) * vec3<f32>(x_2161.x, x_2161.y, x_2161.z)) + vec3<f32>(x_2165.x, x_2165.y, x_2165.z));
  let x_2168 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2167.x, x_2167.y, x_2167.z, x_2168.w);
  let x_2173 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_2175 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_2173 & bitcast<u32>(x_2175));
  let x_2178 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2178);
  let x_2183 : f32 = u_xlat0.x;
  let x_2186 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2183 * x_2186);
  let x_2191 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2191, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2195 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2195.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

