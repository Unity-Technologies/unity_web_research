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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(6) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(6) var<uniform> x_190 : UnityPerMaterial;

@group(0) @binding(8) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_E9EC22CC : sampler;

@group(0) @binding(7) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_6EEDD32E : sampler;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_359 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_515 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_938 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1374 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1487 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb14 : bool;
  var u_xlat14 : f32;
  var u_xlat28 : f32;
  var x_146 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlatb42 : bool;
  var x_211 : f32;
  var x_220 : f32;
  var u_xlat42 : f32;
  var u_xlatb29 : vec2<bool>;
  var u_xlat29 : vec2<f32>;
  var u_xlat43 : f32;
  var u_xlat4 : vec3<f32>;
  var x_475 : f32;
  var x_488 : f32;
  var x_499 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu42 : u32;
  var u_xlati42 : i32;
  var u_xlat16 : f32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : vec2<bool>;
  var u_xlatb31 : bool;
  var x_891 : f32;
  var u_xlat31 : f32;
  var x_1022 : f32;
  var x_1033 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu2 : u32;
  var u_xlati45 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat34 : vec2<f32>;
  var u_xlatu34 : u32;
  var u_xlati48 : i32;
  var u_xlati34 : i32;
  var u_xlati49 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb34 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var u_xlat39 : vec2<f32>;
  var x_1788 : f32;
  var x_1801 : f32;
  var x_1853 : f32;
  var x_1865 : vec3<f32>;
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
  u_xlatb14 = (x_96 >= x_98);
  let x_101 : bool = u_xlatb14;
  u_xlat14 = select(0.0f, 1.0f, x_101);
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
  let x_118 : f32 = u_xlat14;
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
  u_xlatb14 = (x_138 == 0.0f);
  let x_142 : f32 = u_xlat1.x;
  u_xlat28 = (x_142 + 1.00000001e-10f);
  let x_145 : bool = u_xlatb14;
  if (x_145) {
    let x_150 : f32 = u_xlat1.x;
    x_146 = x_150;
  } else {
    let x_152 : f32 = u_xlat28;
    x_146 = x_152;
  }
  let x_153 : f32 = x_146;
  u_xlat14 = x_153;
  let x_155 : f32 = u_xlat1.y;
  let x_158 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_155) + x_158);
  let x_164 : f32 = u_xlat0.x;
  u_xlat15.x = ((x_164 * 6.0f) + 1.00000001e-10f);
  let x_170 : f32 = u_xlat1.x;
  let x_172 : f32 = u_xlat15.x;
  u_xlat1.x = (x_170 / x_172);
  let x_176 : f32 = u_xlat1.x;
  let x_178 : f32 = u_xlat1.z;
  u_xlat1.x = (x_176 + x_178);
  let x_182 : f32 = u_xlat0.x;
  let x_183 : f32 = u_xlat28;
  u_xlat0.x = (x_182 / x_183);
  let x_187 : f32 = u_xlat0.w;
  let x_193 : f32 = x_190.x_Hue;
  let x_196 : f32 = u_xlat1.x;
  u_xlat28 = ((x_187 * x_193) + abs(x_196));
  let x_200 : f32 = u_xlat28;
  u_xlatb42 = (x_200 < 0.0f);
  let x_202 : f32 = u_xlat28;
  u_xlatb1 = (1.0f < x_202);
  let x_204 : f32 = u_xlat28;
  let x_207 : vec2<f32> = (vec2<f32>(x_204, x_204) + vec2<f32>(1.0f, -1.0f));
  let x_208 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_207.x, x_207.y, x_208.z);
  let x_210 : bool = u_xlatb1;
  if (x_210) {
    let x_215 : f32 = u_xlat15.y;
    x_211 = x_215;
  } else {
    let x_217 : f32 = u_xlat28;
    x_211 = x_217;
  }
  let x_218 : f32 = x_211;
  u_xlat28 = x_218;
  let x_219 : bool = u_xlatb42;
  if (x_219) {
    let x_224 : f32 = u_xlat15.x;
    x_220 = x_224;
  } else {
    let x_226 : f32 = u_xlat28;
    x_220 = x_226;
  }
  let x_227 : f32 = x_220;
  u_xlat28 = x_227;
  let x_228 : f32 = u_xlat28;
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
  let x_279 : f32 = u_xlat14;
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
  u_xlat42 = dot(vec2<f32>(x_320.x, x_320.y), vec2<f32>(x_322.x, x_322.y));
  let x_325 : f32 = u_xlat42;
  u_xlat42 = min(x_325, 1.0f);
  let x_327 : f32 = u_xlat42;
  u_xlat42 = (-(x_327) + 1.0f);
  let x_330 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_330);
  let x_332 : f32 = u_xlat42;
  u_xlat42 = max(x_332, 1.00000002e-16f);
  let x_340 : vec4<f32> = vs_INTERP3;
  let x_343 : f32 = x_44.x_GlobalMipBias.x;
  let x_344 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_340.x, x_340.y), x_343);
  let x_345 : vec3<f32> = vec3<f32>(x_344.x, x_344.w, x_344.y);
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_353 : f32 = vs_INTERP2.w;
  u_xlatb29.x = (0.0f < x_353);
  let x_361 : f32 = x_359.unity_WorldTransformParams.w;
  u_xlatb29.y = (x_361 >= 0.0f);
  let x_367 : bool = u_xlatb29.x;
  u_xlat29.x = select(-1.0f, 1.0f, x_367);
  let x_371 : bool = u_xlatb29.y;
  u_xlat29.y = select(-1.0f, 1.0f, x_371);
  let x_375 : f32 = u_xlat29.y;
  let x_377 : f32 = u_xlat29.x;
  u_xlat29.x = (x_375 * x_377);
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
  let x_400 : vec2<f32> = u_xlat29;
  let x_402 : vec4<f32> = u_xlat3;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.x, x_400.x) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat1;
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat15 = (vec3<f32>(x_407.y, x_407.y, x_407.y) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat1;
  let x_414 : vec4<f32> = vs_INTERP2;
  let x_417 : vec3<f32> = u_xlat15;
  let x_418 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.x, x_412.x) * vec3<f32>(x_414.x, x_414.y, x_414.z)) + x_417);
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : f32 = u_xlat42;
  let x_423 : vec3<f32> = vs_INTERP1;
  let x_425 : vec4<f32> = u_xlat1;
  let x_427 : vec3<f32> = ((vec3<f32>(x_421, x_421, x_421) * x_423) + vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat1;
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_435);
  let x_437 : f32 = u_xlat42;
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : vec3<f32> = (vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_446 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb42 = (x_446 == 0.0f);
  let x_449 : vec3<f32> = vs_INTERP0;
  let x_454 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_455 : vec3<f32> = (-(x_449) + x_454);
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_459 : vec4<f32> = u_xlat3;
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat43;
  let x_468 : vec4<f32> = u_xlat3;
  let x_470 : vec3<f32> = (vec3<f32>(x_466, x_466, x_466) * vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_474 : bool = u_xlatb42;
  if (x_474) {
    let x_479 : f32 = u_xlat3.x;
    x_475 = x_479;
  } else {
    let x_484 : f32 = x_44.unity_MatrixV[0i].z;
    x_475 = x_484;
  }
  let x_485 : f32 = x_475;
  u_xlat4.x = x_485;
  let x_487 : bool = u_xlatb42;
  if (x_487) {
    let x_492 : f32 = u_xlat3.y;
    x_488 = x_492;
  } else {
    let x_495 : f32 = x_44.unity_MatrixV[1i].z;
    x_488 = x_495;
  }
  let x_496 : f32 = x_488;
  u_xlat4.y = x_496;
  let x_498 : bool = u_xlatb42;
  if (x_498) {
    let x_503 : f32 = u_xlat3.z;
    x_499 = x_503;
  } else {
    let x_507 : f32 = x_44.unity_MatrixV[2i].z;
    x_499 = x_507;
  }
  let x_508 : f32 = x_499;
  u_xlat4.z = x_508;
  let x_510 : vec3<f32> = vs_INTERP0;
  let x_518 : vec4<f32> = x_515.x_CascadeShadowSplitSpheres0;
  let x_521 : vec3<f32> = (x_510 + -(vec3<f32>(x_518.x, x_518.y, x_518.z)));
  let x_522 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_525 : vec3<f32> = vs_INTERP0;
  let x_527 : vec4<f32> = x_515.x_CascadeShadowSplitSpheres1;
  let x_530 : vec3<f32> = (x_525 + -(vec3<f32>(x_527.x, x_527.y, x_527.z)));
  let x_531 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_534 : vec3<f32> = vs_INTERP0;
  let x_536 : vec4<f32> = x_515.x_CascadeShadowSplitSpheres2;
  let x_539 : vec3<f32> = (x_534 + -(vec3<f32>(x_536.x, x_536.y, x_536.z)));
  let x_540 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_543 : vec3<f32> = vs_INTERP0;
  let x_546 : vec4<f32> = x_515.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_543 + -(vec3<f32>(x_546.x, x_546.y, x_546.z)));
  let x_550 : vec4<f32> = u_xlat3;
  let x_552 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_556 : vec4<f32> = u_xlat5;
  let x_558 : vec4<f32> = u_xlat5;
  u_xlat3.y = dot(vec3<f32>(x_556.x, x_556.y, x_556.z), vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_562 : vec4<f32> = u_xlat6;
  let x_564 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_562.x, x_562.y, x_562.z), vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_568 : vec3<f32> = u_xlat7;
  let x_569 : vec3<f32> = u_xlat7;
  u_xlat3.w = dot(x_568, x_569);
  let x_575 : vec4<f32> = u_xlat3;
  let x_578 : vec4<f32> = x_515.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_575 < x_578);
  let x_581 : bool = u_xlatb3.x;
  u_xlat5.x = select(0.0f, 1.0f, x_581);
  let x_585 : bool = u_xlatb3.y;
  u_xlat5.y = select(0.0f, 1.0f, x_585);
  let x_589 : bool = u_xlatb3.z;
  u_xlat5.z = select(0.0f, 1.0f, x_589);
  let x_593 : bool = u_xlatb3.w;
  u_xlat5.w = select(0.0f, 1.0f, x_593);
  let x_597 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_597);
  let x_602 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_602);
  let x_606 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_606);
  let x_609 : vec4<f32> = u_xlat3;
  let x_611 : vec4<f32> = u_xlat5;
  let x_613 : vec3<f32> = (vec3<f32>(x_609.x, x_609.y, x_609.z) + vec3<f32>(x_611.y, x_611.z, x_611.w));
  let x_614 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat3;
  let x_619 : vec3<f32> = max(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_620 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_620.x, x_619.x, x_619.y, x_619.z);
  let x_622 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(x_622, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_627 : f32 = u_xlat42;
  u_xlat42 = (-(x_627) + 4.0f);
  let x_632 : f32 = u_xlat42;
  u_xlatu42 = u32(x_632);
  let x_636 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_636) << bitcast<u32>(2i));
  let x_639 : vec3<f32> = vs_INTERP0;
  let x_641 : i32 = u_xlati42;
  let x_644 : i32 = u_xlati42;
  let x_648 : vec4<f32> = x_515.x_MainLightWorldToShadow[((x_641 + 1i) / 4i)][((x_644 + 1i) % 4i)];
  let x_650 : vec3<f32> = (vec3<f32>(x_639.y, x_639.y, x_639.y) * vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : i32 = u_xlati42;
  let x_655 : i32 = u_xlati42;
  let x_658 : vec4<f32> = x_515.x_MainLightWorldToShadow[(x_653 / 4i)][(x_655 % 4i)];
  let x_660 : vec3<f32> = vs_INTERP0;
  let x_663 : vec4<f32> = u_xlat3;
  let x_665 : vec3<f32> = ((vec3<f32>(x_658.x, x_658.y, x_658.z) * vec3<f32>(x_660.x, x_660.x, x_660.x)) + vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_666 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_668 : i32 = u_xlati42;
  let x_671 : i32 = u_xlati42;
  let x_675 : vec4<f32> = x_515.x_MainLightWorldToShadow[((x_668 + 2i) / 4i)][((x_671 + 2i) % 4i)];
  let x_677 : vec3<f32> = vs_INTERP0;
  let x_680 : vec4<f32> = u_xlat3;
  let x_682 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(x_677.z, x_677.z, x_677.z)) + vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat3;
  let x_687 : i32 = u_xlati42;
  let x_690 : i32 = u_xlati42;
  let x_694 : vec4<f32> = x_515.x_MainLightWorldToShadow[((x_687 + 3i) / 4i)][((x_690 + 3i) % 4i)];
  let x_696 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) + vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_706 : vec2<f32> = vs_INTERP4;
  let x_708 : f32 = x_44.x_GlobalMipBias.x;
  let x_709 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_706, x_708);
  let x_710 : vec3<f32> = vec3<f32>(x_709.x, x_709.y, x_709.z);
  let x_711 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_715 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_716 : vec2<f32> = vec2<f32>(x_715.x, x_715.y);
  let x_720 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_716.x, x_716.y));
  let x_721 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
  let x_723 : vec4<f32> = u_xlat6;
  let x_725 : vec4<f32> = hlslcc_FragCoord;
  let x_727 : vec2<f32> = (vec2<f32>(x_723.x, x_723.y) * vec2<f32>(x_725.x, x_725.y));
  let x_728 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_727.x, x_727.y, x_728.z, x_728.w);
  let x_731 : f32 = u_xlat6.y;
  let x_734 : f32 = x_44.x_ScaleBiasRt.x;
  let x_737 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat42 = ((x_731 * x_734) + x_737);
  let x_739 : f32 = u_xlat42;
  u_xlat6.z = (-(x_739) + 1.0f);
  let x_743 : vec4<f32> = u_xlat2;
  let x_744 : vec2<f32> = vec2<f32>(x_743.x, x_743.y);
  let x_745 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
  let x_747 : vec4<f32> = u_xlat2;
  let x_751 : vec2<f32> = clamp(vec2<f32>(x_747.x, x_747.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_752 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_751.x, x_751.y, x_752.z, x_752.w);
  let x_755 : f32 = u_xlat2.x;
  u_xlat42 = ((-(x_755) * 0.959999979f) + 0.959999979f);
  let x_760 : f32 = u_xlat42;
  let x_763 : f32 = u_xlat2.y;
  u_xlat43 = (-(x_760) + x_763);
  let x_765 : f32 = u_xlat42;
  let x_767 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_765, x_765, x_765) * vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat0;
  let x_774 : vec3<f32> = (vec3<f32>(x_770.x, x_770.y, x_770.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_775 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_777 : vec4<f32> = u_xlat2;
  let x_779 : vec4<f32> = u_xlat0;
  let x_784 : vec3<f32> = ((vec3<f32>(x_777.x, x_777.x, x_777.x) * vec3<f32>(x_779.x, x_779.y, x_779.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_785 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_788 : f32 = u_xlat2.y;
  u_xlat42 = (-(x_788) + 1.0f);
  let x_791 : f32 = u_xlat42;
  let x_792 : f32 = u_xlat42;
  u_xlat2.x = (x_791 * x_792);
  let x_796 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_796, 0.0078125f);
  let x_802 : f32 = u_xlat2.x;
  let x_804 : f32 = u_xlat2.x;
  u_xlat16 = (x_802 * x_804);
  let x_806 : f32 = u_xlat43;
  u_xlat43 = (x_806 + 1.0f);
  let x_808 : f32 = u_xlat43;
  u_xlat43 = min(x_808, 1.0f);
  let x_812 : f32 = u_xlat2.x;
  u_xlat44 = ((x_812 * 4.0f) + 2.0f);
  let x_821 : vec4<f32> = u_xlat6;
  let x_824 : f32 = x_44.x_GlobalMipBias.x;
  let x_825 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_821.x, x_821.z), x_824);
  u_xlat45 = x_825.x;
  let x_828 : f32 = u_xlat45;
  u_xlat46 = (x_828 + -1.0f);
  let x_831 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_832 : f32 = u_xlat46;
  u_xlat46 = ((x_831 * x_832) + 1.0f);
  let x_837 : f32 = u_xlat2.z;
  let x_838 : f32 = u_xlat45;
  u_xlat30 = min(x_837, x_838);
  let x_841 : vec4<f32> = u_xlat3;
  let x_842 : vec2<f32> = vec2<f32>(x_841.x, x_841.y);
  let x_844 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_842.x, x_842.y, x_844);
  let x_856 : vec3<f32> = txVec0;
  let x_858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_856.xy, x_856.z);
  u_xlat3.x = x_858;
  let x_862 : f32 = x_515.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_862) + 1.0f);
  let x_867 : f32 = u_xlat3.x;
  let x_869 : f32 = x_515.x_MainLightShadowParams.x;
  let x_872 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_867 * x_869) + x_872);
  let x_877 : f32 = u_xlat3.z;
  u_xlatb17.x = (0.0f >= x_877);
  let x_882 : f32 = u_xlat3.z;
  u_xlatb31 = (x_882 >= 1.0f);
  let x_884 : bool = u_xlatb31;
  let x_886 : bool = u_xlatb17.x;
  u_xlatb17.x = (x_884 | x_886);
  let x_890 : bool = u_xlatb17.x;
  if (x_890) {
    x_891 = 1.0f;
  } else {
    let x_896 : f32 = u_xlat3.x;
    x_891 = x_896;
  }
  let x_897 : f32 = x_891;
  u_xlat3.x = x_897;
  let x_899 : vec3<f32> = vs_INTERP0;
  let x_901 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat17 = (x_899 + -(x_901));
  let x_904 : vec3<f32> = u_xlat17;
  let x_905 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_904, x_905);
  let x_909 : f32 = u_xlat17.x;
  let x_911 : f32 = x_515.x_MainLightShadowParams.z;
  let x_914 : f32 = x_515.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_909 * x_911) + x_914);
  let x_918 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_918, 0.0f, 1.0f);
  let x_923 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_923) + 1.0f);
  let x_927 : f32 = u_xlat17.x;
  let x_928 : f32 = u_xlat31;
  let x_931 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_927 * x_928) + x_931);
  let x_940 : f32 = x_938.x_MainLightCookieTextureFormat;
  u_xlatb17.x = !((x_940 == -1.0f));
  let x_944 : bool = u_xlatb17.x;
  if (x_944) {
    let x_947 : vec3<f32> = vs_INTERP0;
    let x_950 : vec4<f32> = x_938.x_MainLightWorldToLight[1i];
    let x_952 : vec2<f32> = (vec2<f32>(x_947.y, x_947.y) * vec2<f32>(x_950.x, x_950.y));
    let x_953 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_952.x, x_952.y, x_953.z);
    let x_956 : vec4<f32> = x_938.x_MainLightWorldToLight[0i];
    let x_958 : vec3<f32> = vs_INTERP0;
    let x_961 : vec3<f32> = u_xlat17;
    let x_963 : vec2<f32> = ((vec2<f32>(x_956.x, x_956.y) * vec2<f32>(x_958.x, x_958.x)) + vec2<f32>(x_961.x, x_961.y));
    let x_964 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_963.x, x_963.y, x_964.z);
    let x_967 : vec4<f32> = x_938.x_MainLightWorldToLight[2i];
    let x_969 : vec3<f32> = vs_INTERP0;
    let x_972 : vec3<f32> = u_xlat17;
    let x_974 : vec2<f32> = ((vec2<f32>(x_967.x, x_967.y) * vec2<f32>(x_969.z, x_969.z)) + vec2<f32>(x_972.x, x_972.y));
    let x_975 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_974.x, x_974.y, x_975.z);
    let x_977 : vec3<f32> = u_xlat17;
    let x_980 : vec4<f32> = x_938.x_MainLightWorldToLight[3i];
    let x_982 : vec2<f32> = (vec2<f32>(x_977.x, x_977.y) + vec2<f32>(x_980.x, x_980.y));
    let x_983 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_982.x, x_982.y, x_983.z);
    let x_985 : vec3<f32> = u_xlat17;
    let x_990 : vec2<f32> = ((vec2<f32>(x_985.x, x_985.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_991 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_990.x, x_990.y, x_991.z);
    let x_998 : vec3<f32> = u_xlat17;
    let x_1001 : f32 = x_44.x_GlobalMipBias.x;
    let x_1002 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_998.x, x_998.y), x_1001);
    u_xlat6 = x_1002;
    let x_1004 : f32 = x_938.x_MainLightCookieTextureFormat;
    let x_1006 : f32 = x_938.x_MainLightCookieTextureFormat;
    let x_1008 : f32 = x_938.x_MainLightCookieTextureFormat;
    let x_1010 : f32 = x_938.x_MainLightCookieTextureFormat;
    let x_1011 : vec4<f32> = vec4<f32>(x_1004, x_1006, x_1008, x_1010);
    let x_1018 : vec4<bool> = (vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1011.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb17 = vec2<bool>(x_1018.x, x_1018.y);
    let x_1021 : bool = u_xlatb17.y;
    if (x_1021) {
      let x_1026 : f32 = u_xlat6.w;
      x_1022 = x_1026;
    } else {
      let x_1029 : f32 = u_xlat6.x;
      x_1022 = x_1029;
    }
    let x_1030 : f32 = x_1022;
    u_xlat31 = x_1030;
    let x_1032 : bool = u_xlatb17.x;
    if (x_1032) {
      let x_1036 : vec4<f32> = u_xlat6;
      x_1033 = vec3<f32>(x_1036.x, x_1036.y, x_1036.z);
    } else {
      let x_1039 : f32 = u_xlat31;
      x_1033 = vec3<f32>(x_1039, x_1039, x_1039);
    }
    let x_1041 : vec3<f32> = x_1033;
    u_xlat17 = x_1041;
  } else {
    u_xlat17.x = 1.0f;
    u_xlat17.y = 1.0f;
    u_xlat17.z = 1.0f;
  }
  let x_1046 : vec3<f32> = u_xlat17;
  let x_1048 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat17 = (x_1046 * vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
  let x_1051 : f32 = u_xlat46;
  let x_1053 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1051, x_1051, x_1051) * x_1053);
  let x_1056 : vec3<f32> = u_xlat4;
  let x_1058 : vec4<f32> = u_xlat1;
  u_xlat47 = dot(-(x_1056), vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1061 : f32 = u_xlat47;
  let x_1062 : f32 = u_xlat47;
  u_xlat47 = (x_1061 + x_1062);
  let x_1064 : vec4<f32> = u_xlat1;
  let x_1066 : f32 = u_xlat47;
  let x_1070 : vec3<f32> = u_xlat4;
  let x_1072 : vec3<f32> = ((vec3<f32>(x_1064.x, x_1064.y, x_1064.z) * -(vec3<f32>(x_1066, x_1066, x_1066))) + -(x_1070));
  let x_1073 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
  let x_1075 : vec4<f32> = u_xlat1;
  let x_1077 : vec3<f32> = u_xlat4;
  u_xlat47 = dot(vec3<f32>(x_1075.x, x_1075.y, x_1075.z), x_1077);
  let x_1079 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1079, 0.0f, 1.0f);
  let x_1081 : f32 = u_xlat47;
  u_xlat47 = (-(x_1081) + 1.0f);
  let x_1084 : f32 = u_xlat47;
  let x_1085 : f32 = u_xlat47;
  u_xlat47 = (x_1084 * x_1085);
  let x_1087 : f32 = u_xlat47;
  let x_1088 : f32 = u_xlat47;
  u_xlat47 = (x_1087 * x_1088);
  let x_1091 : f32 = u_xlat42;
  u_xlat48 = ((-(x_1091) * 0.699999988f) + 1.700000048f);
  let x_1097 : f32 = u_xlat42;
  let x_1098 : f32 = u_xlat48;
  u_xlat42 = (x_1097 * x_1098);
  let x_1100 : f32 = u_xlat42;
  u_xlat42 = (x_1100 * 6.0f);
  let x_1110 : vec4<f32> = u_xlat6;
  let x_1112 : f32 = u_xlat42;
  let x_1113 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1110.x, x_1110.y, x_1110.z), x_1112);
  u_xlat6 = x_1113;
  let x_1115 : f32 = u_xlat6.w;
  u_xlat42 = (x_1115 + -1.0f);
  let x_1118 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_1119 : f32 = u_xlat42;
  u_xlat42 = ((x_1118 * x_1119) + 1.0f);
  let x_1122 : f32 = u_xlat42;
  u_xlat42 = max(x_1122, 0.0f);
  let x_1124 : f32 = u_xlat42;
  u_xlat42 = log2(x_1124);
  let x_1126 : f32 = u_xlat42;
  let x_1128 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_1126 * x_1128);
  let x_1130 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1130);
  let x_1132 : f32 = u_xlat42;
  let x_1134 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_1132 * x_1134);
  let x_1136 : vec4<f32> = u_xlat6;
  let x_1138 : f32 = u_xlat42;
  let x_1140 : vec3<f32> = (vec3<f32>(x_1136.x, x_1136.y, x_1136.z) * vec3<f32>(x_1138, x_1138, x_1138));
  let x_1141 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1144 : vec4<f32> = u_xlat2;
  let x_1146 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_1144.x, x_1144.x) * vec2<f32>(x_1146.x, x_1146.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1152 : f32 = u_xlat8.y;
  u_xlat42 = (1.0f / x_1152);
  let x_1155 : vec4<f32> = u_xlat0;
  let x_1158 : f32 = u_xlat43;
  u_xlat22 = (-(vec3<f32>(x_1155.x, x_1155.y, x_1155.z)) + vec3<f32>(x_1158, x_1158, x_1158));
  let x_1161 : f32 = u_xlat47;
  let x_1163 : vec3<f32> = u_xlat22;
  let x_1165 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_1161, x_1161, x_1161) * x_1163) + vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
  let x_1168 : f32 = u_xlat42;
  let x_1170 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1168, x_1168, x_1168) * x_1170);
  let x_1172 : vec4<f32> = u_xlat6;
  let x_1174 : vec3<f32> = u_xlat22;
  let x_1175 : vec3<f32> = (vec3<f32>(x_1172.x, x_1172.y, x_1172.z) * x_1174);
  let x_1176 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1176.w);
  let x_1178 : vec4<f32> = u_xlat5;
  let x_1180 : vec3<f32> = u_xlat7;
  let x_1182 : vec4<f32> = u_xlat6;
  let x_1184 : vec3<f32> = ((vec3<f32>(x_1178.x, x_1178.y, x_1178.z) * x_1180) + vec3<f32>(x_1182.x, x_1182.y, x_1182.z));
  let x_1185 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
  let x_1188 : f32 = u_xlat3.x;
  let x_1190 : f32 = x_359.unity_LightData.z;
  u_xlat42 = (x_1188 * x_1190);
  let x_1192 : vec4<f32> = u_xlat1;
  let x_1195 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1192.x, x_1192.y, x_1192.z), vec3<f32>(x_1195.x, x_1195.y, x_1195.z));
  let x_1198 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1198, 0.0f, 1.0f);
  let x_1200 : f32 = u_xlat42;
  let x_1201 : f32 = u_xlat43;
  u_xlat42 = (x_1200 * x_1201);
  let x_1203 : f32 = u_xlat42;
  let x_1205 : vec3<f32> = u_xlat17;
  let x_1206 : vec3<f32> = (vec3<f32>(x_1203, x_1203, x_1203) * x_1205);
  let x_1207 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1207.w);
  let x_1209 : vec3<f32> = u_xlat4;
  let x_1211 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1213 : vec3<f32> = (x_1209 + vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
  let x_1214 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
  let x_1216 : vec4<f32> = u_xlat6;
  let x_1218 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_1216.x, x_1216.y, x_1216.z), vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
  let x_1221 : f32 = u_xlat42;
  u_xlat42 = max(x_1221, 1.17549435e-37f);
  let x_1224 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1224);
  let x_1226 : f32 = u_xlat42;
  let x_1228 : vec4<f32> = u_xlat6;
  let x_1230 : vec3<f32> = (vec3<f32>(x_1226, x_1226, x_1226) * vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
  let x_1231 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
  let x_1233 : vec4<f32> = u_xlat1;
  let x_1235 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_1233.x, x_1233.y, x_1233.z), vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
  let x_1238 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1238, 0.0f, 1.0f);
  let x_1241 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1243 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_1241.x, x_1241.y, x_1241.z), vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1246 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1246, 0.0f, 1.0f);
  let x_1248 : f32 = u_xlat42;
  let x_1249 : f32 = u_xlat42;
  u_xlat42 = (x_1248 * x_1249);
  let x_1251 : f32 = u_xlat42;
  let x_1253 : f32 = u_xlat8.x;
  u_xlat42 = ((x_1251 * x_1253) + 1.000010014f);
  let x_1257 : f32 = u_xlat43;
  let x_1258 : f32 = u_xlat43;
  u_xlat43 = (x_1257 * x_1258);
  let x_1260 : f32 = u_xlat42;
  let x_1261 : f32 = u_xlat42;
  u_xlat42 = (x_1260 * x_1261);
  let x_1263 : f32 = u_xlat43;
  u_xlat43 = max(x_1263, 0.100000001f);
  let x_1266 : f32 = u_xlat42;
  let x_1267 : f32 = u_xlat43;
  u_xlat42 = (x_1266 * x_1267);
  let x_1269 : f32 = u_xlat44;
  let x_1270 : f32 = u_xlat42;
  u_xlat42 = (x_1269 * x_1270);
  let x_1272 : f32 = u_xlat16;
  let x_1273 : f32 = u_xlat42;
  u_xlat42 = (x_1272 / x_1273);
  let x_1275 : vec4<f32> = u_xlat0;
  let x_1277 : f32 = u_xlat42;
  let x_1280 : vec3<f32> = u_xlat7;
  let x_1281 : vec3<f32> = ((vec3<f32>(x_1275.x, x_1275.y, x_1275.z) * vec3<f32>(x_1277, x_1277, x_1277)) + x_1280);
  let x_1282 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
  let x_1284 : vec4<f32> = u_xlat3;
  let x_1286 : vec4<f32> = u_xlat6;
  let x_1288 : vec3<f32> = (vec3<f32>(x_1284.x, x_1284.y, x_1284.z) * vec3<f32>(x_1286.x, x_1286.y, x_1286.z));
  let x_1289 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
  let x_1292 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1294 : f32 = x_359.unity_LightData.y;
  u_xlat42 = min(x_1292, x_1294);
  let x_1296 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1296));
  let x_1301 : f32 = x_938.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1303 : f32 = x_938.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1305 : f32 = x_938.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1307 : f32 = x_938.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1308 : vec4<f32> = vec4<f32>(x_1301, x_1303, x_1305, x_1307);
  let x_1314 : vec4<bool> = (vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1308.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1314.x, x_1314.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1325 : u32 = u_xlatu_loop_1;
    let x_1326 : u32 = u_xlatu42;
    if ((x_1325 < x_1326)) {
    } else {
      break;
    }
    let x_1329 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_1329 >> 2u);
    let x_1332 : u32 = u_xlatu_loop_1;
    u_xlati45 = bitcast<i32>((x_1332 & 3u));
    let x_1336 : u32 = u_xlatu2;
    let x_1339 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_1336)];
    let x_1349 : i32 = u_xlati45;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1354 : vec4<u32> = indexable[x_1349];
    u_xlat2.x = dot(x_1339, bitcast<vec4<f32>>(x_1354));
    let x_1359 : f32 = u_xlat2.x;
    u_xlatu2 = bitcast<u32>(i32(x_1359));
    let x_1363 : vec3<f32> = vs_INTERP0;
    let x_1375 : u32 = u_xlatu2;
    let x_1378 : vec4<f32> = x_1374.x_AdditionalLightsPosition[bitcast<i32>(x_1375)];
    let x_1381 : u32 = u_xlatu2;
    let x_1384 : vec4<f32> = x_1374.x_AdditionalLightsPosition[bitcast<i32>(x_1381)];
    u_xlat9 = ((-(x_1363) * vec3<f32>(x_1378.w, x_1378.w, x_1378.w)) + vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
    let x_1387 : vec3<f32> = u_xlat9;
    let x_1388 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1387, x_1388);
    let x_1390 : f32 = u_xlat45;
    u_xlat45 = max(x_1390, 6.10351562e-05f);
    let x_1393 : f32 = u_xlat45;
    u_xlat47 = inverseSqrt(x_1393);
    let x_1396 : f32 = u_xlat47;
    let x_1398 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1396, x_1396, x_1396) * x_1398);
    let x_1401 : f32 = u_xlat45;
    u_xlat34.x = (1.0f / x_1401);
    let x_1404 : f32 = u_xlat45;
    let x_1405 : u32 = u_xlatu2;
    let x_1408 : f32 = x_1374.x_AdditionalLightsAttenuation[bitcast<i32>(x_1405)].x;
    u_xlat45 = (x_1404 * x_1408);
    let x_1410 : f32 = u_xlat45;
    let x_1412 : f32 = u_xlat45;
    u_xlat45 = ((-(x_1410) * x_1412) + 1.0f);
    let x_1415 : f32 = u_xlat45;
    u_xlat45 = max(x_1415, 0.0f);
    let x_1417 : f32 = u_xlat45;
    let x_1418 : f32 = u_xlat45;
    u_xlat45 = (x_1417 * x_1418);
    let x_1420 : f32 = u_xlat45;
    let x_1422 : f32 = u_xlat34.x;
    u_xlat45 = (x_1420 * x_1422);
    let x_1424 : u32 = u_xlatu2;
    let x_1427 : vec4<f32> = x_1374.x_AdditionalLightsSpotDir[bitcast<i32>(x_1424)];
    let x_1429 : vec3<f32> = u_xlat10;
    u_xlat34.x = dot(vec3<f32>(x_1427.x, x_1427.y, x_1427.z), x_1429);
    let x_1433 : f32 = u_xlat34.x;
    let x_1434 : u32 = u_xlatu2;
    let x_1437 : f32 = x_1374.x_AdditionalLightsAttenuation[bitcast<i32>(x_1434)].z;
    let x_1439 : u32 = u_xlatu2;
    let x_1442 : f32 = x_1374.x_AdditionalLightsAttenuation[bitcast<i32>(x_1439)].w;
    u_xlat34.x = ((x_1433 * x_1437) + x_1442);
    let x_1446 : f32 = u_xlat34.x;
    u_xlat34.x = clamp(x_1446, 0.0f, 1.0f);
    let x_1450 : f32 = u_xlat34.x;
    let x_1452 : f32 = u_xlat34.x;
    u_xlat34.x = (x_1450 * x_1452);
    let x_1455 : f32 = u_xlat45;
    let x_1457 : f32 = u_xlat34.x;
    u_xlat45 = (x_1455 * x_1457);
    let x_1460 : u32 = u_xlatu2;
    u_xlatu34 = (x_1460 >> 5u);
    let x_1463 : u32 = u_xlatu2;
    u_xlati48 = (1i << bitcast<u32>((bitcast<i32>(x_1463) & 31i)));
    let x_1469 : i32 = u_xlati48;
    let x_1471 : u32 = u_xlatu34;
    let x_1474 : f32 = x_938.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1471)].el;
    u_xlati34 = bitcast<i32>((bitcast<u32>(x_1469) & bitcast<u32>(x_1474)));
    let x_1478 : i32 = u_xlati34;
    if ((x_1478 != 0i)) {
      let x_1488 : u32 = u_xlatu2;
      let x_1491 : f32 = x_1487.x_AdditionalLightsLightTypes[bitcast<i32>(x_1488)].el;
      u_xlati34 = i32(x_1491);
      let x_1493 : i32 = u_xlati34;
      u_xlati48 = select(1i, 0i, (x_1493 != 0i));
      let x_1497 : u32 = u_xlatu2;
      u_xlati49 = (bitcast<i32>(x_1497) << bitcast<u32>(2i));
      let x_1500 : i32 = u_xlati48;
      if ((x_1500 != 0i)) {
        let x_1505 : vec3<f32> = vs_INTERP0;
        let x_1507 : i32 = u_xlati49;
        let x_1510 : i32 = u_xlati49;
        let x_1514 : vec4<f32> = x_1487.x_AdditionalLightsWorldToLights[((x_1507 + 1i) / 4i)][((x_1510 + 1i) % 4i)];
        let x_1516 : vec3<f32> = (vec3<f32>(x_1505.y, x_1505.y, x_1505.y) * vec3<f32>(x_1514.x, x_1514.y, x_1514.w));
        let x_1517 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1517.w);
        let x_1519 : i32 = u_xlati49;
        let x_1521 : i32 = u_xlati49;
        let x_1524 : vec4<f32> = x_1487.x_AdditionalLightsWorldToLights[(x_1519 / 4i)][(x_1521 % 4i)];
        let x_1526 : vec3<f32> = vs_INTERP0;
        let x_1529 : vec4<f32> = u_xlat11;
        let x_1531 : vec3<f32> = ((vec3<f32>(x_1524.x, x_1524.y, x_1524.w) * vec3<f32>(x_1526.x, x_1526.x, x_1526.x)) + vec3<f32>(x_1529.x, x_1529.y, x_1529.z));
        let x_1532 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1531.x, x_1531.y, x_1531.z, x_1532.w);
        let x_1534 : i32 = u_xlati49;
        let x_1537 : i32 = u_xlati49;
        let x_1541 : vec4<f32> = x_1487.x_AdditionalLightsWorldToLights[((x_1534 + 2i) / 4i)][((x_1537 + 2i) % 4i)];
        let x_1543 : vec3<f32> = vs_INTERP0;
        let x_1546 : vec4<f32> = u_xlat11;
        let x_1548 : vec3<f32> = ((vec3<f32>(x_1541.x, x_1541.y, x_1541.w) * vec3<f32>(x_1543.z, x_1543.z, x_1543.z)) + vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
        let x_1549 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1548.x, x_1548.y, x_1548.z, x_1549.w);
        let x_1551 : vec4<f32> = u_xlat11;
        let x_1553 : i32 = u_xlati49;
        let x_1556 : i32 = u_xlati49;
        let x_1560 : vec4<f32> = x_1487.x_AdditionalLightsWorldToLights[((x_1553 + 3i) / 4i)][((x_1556 + 3i) % 4i)];
        let x_1562 : vec3<f32> = (vec3<f32>(x_1551.x, x_1551.y, x_1551.z) + vec3<f32>(x_1560.x, x_1560.y, x_1560.w));
        let x_1563 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1563.w);
        let x_1565 : vec4<f32> = u_xlat11;
        let x_1567 : vec4<f32> = u_xlat11;
        let x_1569 : vec2<f32> = (vec2<f32>(x_1565.x, x_1565.y) / vec2<f32>(x_1567.z, x_1567.z));
        let x_1570 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1569.x, x_1569.y, x_1570.z, x_1570.w);
        let x_1572 : vec4<f32> = u_xlat11;
        let x_1575 : vec2<f32> = ((vec2<f32>(x_1572.x, x_1572.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1576 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1575.x, x_1575.y, x_1576.z, x_1576.w);
        let x_1578 : vec4<f32> = u_xlat11;
        let x_1582 : vec2<f32> = clamp(vec2<f32>(x_1578.x, x_1578.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1583 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1582.x, x_1582.y, x_1583.z, x_1583.w);
        let x_1585 : u32 = u_xlatu2;
        let x_1588 : vec4<f32> = x_1487.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1585)];
        let x_1590 : vec4<f32> = u_xlat11;
        let x_1593 : u32 = u_xlatu2;
        let x_1596 : vec4<f32> = x_1487.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1593)];
        let x_1598 : vec2<f32> = ((vec2<f32>(x_1588.x, x_1588.y) * vec2<f32>(x_1590.x, x_1590.y)) + vec2<f32>(x_1596.z, x_1596.w));
        let x_1599 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1598.x, x_1598.y, x_1599.z, x_1599.w);
      } else {
        let x_1603 : i32 = u_xlati34;
        u_xlatb34 = (x_1603 == 1i);
        let x_1605 : bool = u_xlatb34;
        u_xlati34 = select(0i, 1i, x_1605);
        let x_1607 : i32 = u_xlati34;
        if ((x_1607 != 0i)) {
          let x_1611 : vec3<f32> = vs_INTERP0;
          let x_1613 : i32 = u_xlati49;
          let x_1616 : i32 = u_xlati49;
          let x_1620 : vec4<f32> = x_1487.x_AdditionalLightsWorldToLights[((x_1613 + 1i) / 4i)][((x_1616 + 1i) % 4i)];
          u_xlat34 = (vec2<f32>(x_1611.y, x_1611.y) * vec2<f32>(x_1620.x, x_1620.y));
          let x_1623 : i32 = u_xlati49;
          let x_1625 : i32 = u_xlati49;
          let x_1628 : vec4<f32> = x_1487.x_AdditionalLightsWorldToLights[(x_1623 / 4i)][(x_1625 % 4i)];
          let x_1630 : vec3<f32> = vs_INTERP0;
          let x_1633 : vec2<f32> = u_xlat34;
          u_xlat34 = ((vec2<f32>(x_1628.x, x_1628.y) * vec2<f32>(x_1630.x, x_1630.x)) + x_1633);
          let x_1635 : i32 = u_xlati49;
          let x_1638 : i32 = u_xlati49;
          let x_1642 : vec4<f32> = x_1487.x_AdditionalLightsWorldToLights[((x_1635 + 2i) / 4i)][((x_1638 + 2i) % 4i)];
          let x_1644 : vec3<f32> = vs_INTERP0;
          let x_1647 : vec2<f32> = u_xlat34;
          u_xlat34 = ((vec2<f32>(x_1642.x, x_1642.y) * vec2<f32>(x_1644.z, x_1644.z)) + x_1647);
          let x_1649 : vec2<f32> = u_xlat34;
          let x_1650 : i32 = u_xlati49;
          let x_1653 : i32 = u_xlati49;
          let x_1657 : vec4<f32> = x_1487.x_AdditionalLightsWorldToLights[((x_1650 + 3i) / 4i)][((x_1653 + 3i) % 4i)];
          u_xlat34 = (x_1649 + vec2<f32>(x_1657.x, x_1657.y));
          let x_1660 : vec2<f32> = u_xlat34;
          u_xlat34 = ((x_1660 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1663 : vec2<f32> = u_xlat34;
          u_xlat34 = fract(x_1663);
          let x_1665 : u32 = u_xlatu2;
          let x_1668 : vec4<f32> = x_1487.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1665)];
          let x_1670 : vec2<f32> = u_xlat34;
          let x_1672 : u32 = u_xlatu2;
          let x_1675 : vec4<f32> = x_1487.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1672)];
          let x_1677 : vec2<f32> = ((vec2<f32>(x_1668.x, x_1668.y) * x_1670) + vec2<f32>(x_1675.z, x_1675.w));
          let x_1678 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1677.x, x_1677.y, x_1678.z, x_1678.w);
        } else {
          let x_1682 : vec3<f32> = vs_INTERP0;
          let x_1684 : i32 = u_xlati49;
          let x_1687 : i32 = u_xlati49;
          let x_1691 : vec4<f32> = x_1487.x_AdditionalLightsWorldToLights[((x_1684 + 1i) / 4i)][((x_1687 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1682.y, x_1682.y, x_1682.y, x_1682.y) * x_1691);
          let x_1693 : i32 = u_xlati49;
          let x_1695 : i32 = u_xlati49;
          let x_1698 : vec4<f32> = x_1487.x_AdditionalLightsWorldToLights[(x_1693 / 4i)][(x_1695 % 4i)];
          let x_1699 : vec3<f32> = vs_INTERP0;
          let x_1702 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1698 * vec4<f32>(x_1699.x, x_1699.x, x_1699.x, x_1699.x)) + x_1702);
          let x_1704 : i32 = u_xlati49;
          let x_1707 : i32 = u_xlati49;
          let x_1711 : vec4<f32> = x_1487.x_AdditionalLightsWorldToLights[((x_1704 + 2i) / 4i)][((x_1707 + 2i) % 4i)];
          let x_1712 : vec3<f32> = vs_INTERP0;
          let x_1715 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1711 * vec4<f32>(x_1712.z, x_1712.z, x_1712.z, x_1712.z)) + x_1715);
          let x_1717 : vec4<f32> = u_xlat12;
          let x_1718 : i32 = u_xlati49;
          let x_1721 : i32 = u_xlati49;
          let x_1725 : vec4<f32> = x_1487.x_AdditionalLightsWorldToLights[((x_1718 + 3i) / 4i)][((x_1721 + 3i) % 4i)];
          u_xlat12 = (x_1717 + x_1725);
          let x_1727 : vec4<f32> = u_xlat12;
          let x_1729 : vec4<f32> = u_xlat12;
          let x_1731 : vec3<f32> = (vec3<f32>(x_1727.x, x_1727.y, x_1727.z) / vec3<f32>(x_1729.w, x_1729.w, x_1729.w));
          let x_1732 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1732.w);
          let x_1734 : vec4<f32> = u_xlat12;
          let x_1736 : vec4<f32> = u_xlat12;
          u_xlat34.x = dot(vec3<f32>(x_1734.x, x_1734.y, x_1734.z), vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
          let x_1741 : f32 = u_xlat34.x;
          u_xlat34.x = inverseSqrt(x_1741);
          let x_1744 : vec2<f32> = u_xlat34;
          let x_1746 : vec4<f32> = u_xlat12;
          let x_1748 : vec3<f32> = (vec3<f32>(x_1744.x, x_1744.x, x_1744.x) * vec3<f32>(x_1746.x, x_1746.y, x_1746.z));
          let x_1749 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1749.w);
          let x_1751 : vec4<f32> = u_xlat12;
          u_xlat34.x = dot(abs(vec3<f32>(x_1751.x, x_1751.y, x_1751.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1757 : f32 = u_xlat34.x;
          u_xlat34.x = max(x_1757, 0.000001f);
          let x_1762 : f32 = u_xlat34.x;
          u_xlat34.x = (1.0f / x_1762);
          let x_1766 : vec2<f32> = u_xlat34;
          let x_1768 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1766.x, x_1766.x, x_1766.x) * vec3<f32>(x_1768.z, x_1768.x, x_1768.y));
          let x_1772 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1772);
          let x_1776 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1776, 0.0f, 1.0f);
          let x_1780 : vec3<f32> = u_xlat13;
          let x_1783 : vec4<bool> = (vec4<f32>(x_1780.y, x_1780.z, x_1780.y, x_1780.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1783.x, x_1783.y);
          let x_1787 : bool = u_xlatb39.x;
          if (x_1787) {
            let x_1792 : f32 = u_xlat13.x;
            x_1788 = x_1792;
          } else {
            let x_1795 : f32 = u_xlat13.x;
            x_1788 = -(x_1795);
          }
          let x_1797 : f32 = x_1788;
          u_xlat39.x = x_1797;
          let x_1800 : bool = u_xlatb39.y;
          if (x_1800) {
            let x_1805 : f32 = u_xlat13.x;
            x_1801 = x_1805;
          } else {
            let x_1808 : f32 = u_xlat13.x;
            x_1801 = -(x_1808);
          }
          let x_1810 : f32 = x_1801;
          u_xlat39.y = x_1810;
          let x_1812 : vec4<f32> = u_xlat12;
          let x_1814 : vec2<f32> = u_xlat34;
          let x_1817 : vec2<f32> = u_xlat39;
          u_xlat34 = ((vec2<f32>(x_1812.x, x_1812.y) * vec2<f32>(x_1814.x, x_1814.x)) + x_1817);
          let x_1819 : vec2<f32> = u_xlat34;
          u_xlat34 = ((x_1819 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1822 : vec2<f32> = u_xlat34;
          u_xlat34 = clamp(x_1822, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1826 : u32 = u_xlatu2;
          let x_1829 : vec4<f32> = x_1487.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1826)];
          let x_1831 : vec2<f32> = u_xlat34;
          let x_1833 : u32 = u_xlatu2;
          let x_1836 : vec4<f32> = x_1487.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1833)];
          let x_1838 : vec2<f32> = ((vec2<f32>(x_1829.x, x_1829.y) * x_1831) + vec2<f32>(x_1836.z, x_1836.w));
          let x_1839 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1838.x, x_1838.y, x_1839.z, x_1839.w);
        }
      }
      let x_1846 : vec4<f32> = u_xlat11;
      let x_1849 : f32 = x_44.x_GlobalMipBias.x;
      let x_1850 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1846.x, x_1846.y), x_1849);
      u_xlat11 = x_1850;
      let x_1852 : bool = u_xlatb6.y;
      if (x_1852) {
        let x_1857 : f32 = u_xlat11.w;
        x_1853 = x_1857;
      } else {
        let x_1860 : f32 = u_xlat11.x;
        x_1853 = x_1860;
      }
      let x_1861 : f32 = x_1853;
      u_xlat34.x = x_1861;
      let x_1864 : bool = u_xlatb6.x;
      if (x_1864) {
        let x_1868 : vec4<f32> = u_xlat11;
        x_1865 = vec3<f32>(x_1868.x, x_1868.y, x_1868.z);
      } else {
        let x_1871 : vec2<f32> = u_xlat34;
        x_1865 = vec3<f32>(x_1871.x, x_1871.x, x_1871.x);
      }
      let x_1873 : vec3<f32> = x_1865;
      let x_1874 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1873.x, x_1873.y, x_1873.z, x_1874.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1880 : vec4<f32> = u_xlat11;
    let x_1882 : u32 = u_xlatu2;
    let x_1885 : vec4<f32> = x_1374.x_AdditionalLightsColor[bitcast<i32>(x_1882)];
    let x_1887 : vec3<f32> = (vec3<f32>(x_1880.x, x_1880.y, x_1880.z) * vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
    let x_1888 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
    let x_1890 : f32 = u_xlat46;
    let x_1892 : vec4<f32> = u_xlat11;
    let x_1894 : vec3<f32> = (vec3<f32>(x_1890, x_1890, x_1890) * vec3<f32>(x_1892.x, x_1892.y, x_1892.z));
    let x_1895 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1894.x, x_1894.y, x_1894.z, x_1895.w);
    let x_1897 : vec4<f32> = u_xlat1;
    let x_1899 : vec3<f32> = u_xlat10;
    u_xlat2.x = dot(vec3<f32>(x_1897.x, x_1897.y, x_1897.z), x_1899);
    let x_1903 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1903, 0.0f, 1.0f);
    let x_1907 : f32 = u_xlat2.x;
    let x_1908 : f32 = u_xlat45;
    u_xlat2.x = (x_1907 * x_1908);
    let x_1911 : vec4<f32> = u_xlat2;
    let x_1913 : vec4<f32> = u_xlat11;
    let x_1915 : vec3<f32> = (vec3<f32>(x_1911.x, x_1911.x, x_1911.x) * vec3<f32>(x_1913.x, x_1913.y, x_1913.z));
    let x_1916 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1916.w);
    let x_1918 : vec3<f32> = u_xlat9;
    let x_1919 : f32 = u_xlat47;
    let x_1922 : vec3<f32> = u_xlat4;
    u_xlat9 = ((x_1918 * vec3<f32>(x_1919, x_1919, x_1919)) + x_1922);
    let x_1924 : vec3<f32> = u_xlat9;
    let x_1925 : vec3<f32> = u_xlat9;
    u_xlat2.x = dot(x_1924, x_1925);
    let x_1929 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_1929, 1.17549435e-37f);
    let x_1933 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_1933);
    let x_1936 : vec4<f32> = u_xlat2;
    let x_1938 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1936.x, x_1936.x, x_1936.x) * x_1938);
    let x_1940 : vec4<f32> = u_xlat1;
    let x_1942 : vec3<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_1940.x, x_1940.y, x_1940.z), x_1942);
    let x_1946 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1946, 0.0f, 1.0f);
    let x_1949 : vec3<f32> = u_xlat10;
    let x_1950 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1949, x_1950);
    let x_1952 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1952, 0.0f, 1.0f);
    let x_1955 : f32 = u_xlat2.x;
    let x_1957 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1955 * x_1957);
    let x_1961 : f32 = u_xlat2.x;
    let x_1963 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_1961 * x_1963) + 1.000010014f);
    let x_1967 : f32 = u_xlat45;
    let x_1968 : f32 = u_xlat45;
    u_xlat45 = (x_1967 * x_1968);
    let x_1971 : f32 = u_xlat2.x;
    let x_1973 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1971 * x_1973);
    let x_1976 : f32 = u_xlat45;
    u_xlat45 = max(x_1976, 0.100000001f);
    let x_1979 : f32 = u_xlat2.x;
    let x_1980 : f32 = u_xlat45;
    u_xlat2.x = (x_1979 * x_1980);
    let x_1983 : f32 = u_xlat44;
    let x_1985 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1983 * x_1985);
    let x_1988 : f32 = u_xlat16;
    let x_1990 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1988 / x_1990);
    let x_1993 : vec4<f32> = u_xlat0;
    let x_1995 : vec4<f32> = u_xlat2;
    let x_1998 : vec3<f32> = u_xlat7;
    u_xlat9 = ((vec3<f32>(x_1993.x, x_1993.y, x_1993.z) * vec3<f32>(x_1995.x, x_1995.x, x_1995.x)) + x_1998);
    let x_2000 : vec3<f32> = u_xlat9;
    let x_2001 : vec4<f32> = u_xlat11;
    let x_2004 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_2000 * vec3<f32>(x_2001.x, x_2001.y, x_2001.z)) + x_2004);

    continuing {
      let x_2006 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2006 + bitcast<u32>(1i));
    }
  }
  let x_2008 : vec4<f32> = u_xlat5;
  let x_2010 : f32 = u_xlat30;
  let x_2013 : vec4<f32> = u_xlat3;
  let x_2015 : vec3<f32> = ((vec3<f32>(x_2008.x, x_2008.y, x_2008.z) * vec3<f32>(x_2010, x_2010, x_2010)) + vec3<f32>(x_2013.x, x_2013.y, x_2013.z));
  let x_2016 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2015.x, x_2015.y, x_2015.z, x_2016.w);
  let x_2020 : vec3<f32> = u_xlat22;
  let x_2021 : vec4<f32> = u_xlat0;
  let x_2023 : vec3<f32> = (x_2020 + vec3<f32>(x_2021.x, x_2021.y, x_2021.z));
  let x_2024 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2023.x, x_2023.y, x_2023.z, x_2024.w);
  let x_2029 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_2031 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_2029 & bitcast<u32>(x_2031));
  let x_2034 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2034);
  let x_2039 : f32 = u_xlat0.x;
  let x_2042 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2039 * x_2042);
  let x_2047 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2047, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2051 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2051.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

