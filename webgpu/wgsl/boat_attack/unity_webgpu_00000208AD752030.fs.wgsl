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

@group(0) @binding(7) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(6) var<uniform> x_190 : UnityPerMaterial;

@group(0) @binding(9) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_E9EC22CC : sampler;

@group(0) @binding(8) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_6EEDD32E : sampler;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_359 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_515 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_979 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1413 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1526 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

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
  var x_932 : f32;
  var u_xlat31 : f32;
  var x_1062 : f32;
  var x_1073 : vec3<f32>;
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
  var x_1827 : f32;
  var x_1840 : f32;
  var x_1892 : f32;
  var x_1904 : vec3<f32>;
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
  let x_709 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_706, x_708);
  u_xlat5 = x_709;
  let x_714 : vec2<f32> = vs_INTERP4;
  let x_716 : f32 = x_44.x_GlobalMipBias.x;
  let x_717 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_714, x_716);
  let x_718 : vec3<f32> = vec3<f32>(x_717.x, x_717.y, x_717.z);
  let x_719 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec4<f32> = u_xlat5;
  let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_726 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat1;
  let x_730 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(vec3<f32>(x_728.x, x_728.y, x_728.z), vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : f32 = u_xlat42;
  u_xlat42 = (x_733 + 0.5f);
  let x_736 : f32 = u_xlat42;
  let x_738 : vec4<f32> = u_xlat6;
  let x_740 : vec3<f32> = (vec3<f32>(x_736, x_736, x_736) * vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_744 : f32 = u_xlat5.w;
  u_xlat42 = max(x_744, 0.0001f);
  let x_747 : vec4<f32> = u_xlat5;
  let x_749 : f32 = u_xlat42;
  let x_751 : vec3<f32> = (vec3<f32>(x_747.x, x_747.y, x_747.z) / vec3<f32>(x_749, x_749, x_749));
  let x_752 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_756 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_757 : vec2<f32> = vec2<f32>(x_756.x, x_756.y);
  let x_761 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_757.x, x_757.y));
  let x_762 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_761.x, x_761.y, x_762.z, x_762.w);
  let x_764 : vec4<f32> = u_xlat6;
  let x_766 : vec4<f32> = hlslcc_FragCoord;
  let x_768 : vec2<f32> = (vec2<f32>(x_764.x, x_764.y) * vec2<f32>(x_766.x, x_766.y));
  let x_769 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_768.x, x_768.y, x_769.z, x_769.w);
  let x_772 : f32 = u_xlat6.y;
  let x_775 : f32 = x_44.x_ScaleBiasRt.x;
  let x_778 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat42 = ((x_772 * x_775) + x_778);
  let x_780 : f32 = u_xlat42;
  u_xlat6.z = (-(x_780) + 1.0f);
  let x_784 : vec4<f32> = u_xlat2;
  let x_785 : vec2<f32> = vec2<f32>(x_784.x, x_784.y);
  let x_786 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_785.x, x_785.y, x_786.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat2;
  let x_792 : vec2<f32> = clamp(vec2<f32>(x_788.x, x_788.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_793 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_792.x, x_792.y, x_793.z, x_793.w);
  let x_796 : f32 = u_xlat2.x;
  u_xlat42 = ((-(x_796) * 0.959999979f) + 0.959999979f);
  let x_801 : f32 = u_xlat42;
  let x_804 : f32 = u_xlat2.y;
  u_xlat43 = (-(x_801) + x_804);
  let x_806 : f32 = u_xlat42;
  let x_808 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_806, x_806, x_806) * vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : vec4<f32> = u_xlat0;
  let x_815 : vec3<f32> = (vec3<f32>(x_811.x, x_811.y, x_811.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_816 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat2;
  let x_820 : vec4<f32> = u_xlat0;
  let x_825 : vec3<f32> = ((vec3<f32>(x_818.x, x_818.x, x_818.x) * vec3<f32>(x_820.x, x_820.y, x_820.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_826 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_829 : f32 = u_xlat2.y;
  u_xlat42 = (-(x_829) + 1.0f);
  let x_832 : f32 = u_xlat42;
  let x_833 : f32 = u_xlat42;
  u_xlat2.x = (x_832 * x_833);
  let x_837 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_837, 0.0078125f);
  let x_843 : f32 = u_xlat2.x;
  let x_845 : f32 = u_xlat2.x;
  u_xlat16 = (x_843 * x_845);
  let x_847 : f32 = u_xlat43;
  u_xlat43 = (x_847 + 1.0f);
  let x_849 : f32 = u_xlat43;
  u_xlat43 = min(x_849, 1.0f);
  let x_853 : f32 = u_xlat2.x;
  u_xlat44 = ((x_853 * 4.0f) + 2.0f);
  let x_862 : vec4<f32> = u_xlat6;
  let x_865 : f32 = x_44.x_GlobalMipBias.x;
  let x_866 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_862.x, x_862.z), x_865);
  u_xlat45 = x_866.x;
  let x_869 : f32 = u_xlat45;
  u_xlat46 = (x_869 + -1.0f);
  let x_872 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_873 : f32 = u_xlat46;
  u_xlat46 = ((x_872 * x_873) + 1.0f);
  let x_878 : f32 = u_xlat2.z;
  let x_879 : f32 = u_xlat45;
  u_xlat30 = min(x_878, x_879);
  let x_882 : vec4<f32> = u_xlat3;
  let x_883 : vec2<f32> = vec2<f32>(x_882.x, x_882.y);
  let x_885 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_883.x, x_883.y, x_885);
  let x_897 : vec3<f32> = txVec0;
  let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_897.xy, x_897.z);
  u_xlat3.x = x_899;
  let x_903 : f32 = x_515.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_903) + 1.0f);
  let x_908 : f32 = u_xlat3.x;
  let x_910 : f32 = x_515.x_MainLightShadowParams.x;
  let x_913 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_908 * x_910) + x_913);
  let x_918 : f32 = u_xlat3.z;
  u_xlatb17.x = (0.0f >= x_918);
  let x_923 : f32 = u_xlat3.z;
  u_xlatb31 = (x_923 >= 1.0f);
  let x_925 : bool = u_xlatb31;
  let x_927 : bool = u_xlatb17.x;
  u_xlatb17.x = (x_925 | x_927);
  let x_931 : bool = u_xlatb17.x;
  if (x_931) {
    x_932 = 1.0f;
  } else {
    let x_937 : f32 = u_xlat3.x;
    x_932 = x_937;
  }
  let x_938 : f32 = x_932;
  u_xlat3.x = x_938;
  let x_940 : vec3<f32> = vs_INTERP0;
  let x_942 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat17 = (x_940 + -(x_942));
  let x_945 : vec3<f32> = u_xlat17;
  let x_946 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_945, x_946);
  let x_950 : f32 = u_xlat17.x;
  let x_952 : f32 = x_515.x_MainLightShadowParams.z;
  let x_955 : f32 = x_515.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_950 * x_952) + x_955);
  let x_959 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_959, 0.0f, 1.0f);
  let x_964 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_964) + 1.0f);
  let x_968 : f32 = u_xlat17.x;
  let x_969 : f32 = u_xlat31;
  let x_972 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_968 * x_969) + x_972);
  let x_981 : f32 = x_979.x_MainLightCookieTextureFormat;
  u_xlatb17.x = !((x_981 == -1.0f));
  let x_985 : bool = u_xlatb17.x;
  if (x_985) {
    let x_988 : vec3<f32> = vs_INTERP0;
    let x_991 : vec4<f32> = x_979.x_MainLightWorldToLight[1i];
    let x_993 : vec2<f32> = (vec2<f32>(x_988.y, x_988.y) * vec2<f32>(x_991.x, x_991.y));
    let x_994 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_993.x, x_993.y, x_994.z);
    let x_997 : vec4<f32> = x_979.x_MainLightWorldToLight[0i];
    let x_999 : vec3<f32> = vs_INTERP0;
    let x_1002 : vec3<f32> = u_xlat17;
    let x_1004 : vec2<f32> = ((vec2<f32>(x_997.x, x_997.y) * vec2<f32>(x_999.x, x_999.x)) + vec2<f32>(x_1002.x, x_1002.y));
    let x_1005 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1004.x, x_1004.y, x_1005.z);
    let x_1008 : vec4<f32> = x_979.x_MainLightWorldToLight[2i];
    let x_1010 : vec3<f32> = vs_INTERP0;
    let x_1013 : vec3<f32> = u_xlat17;
    let x_1015 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1010.z, x_1010.z)) + vec2<f32>(x_1013.x, x_1013.y));
    let x_1016 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1015.x, x_1015.y, x_1016.z);
    let x_1018 : vec3<f32> = u_xlat17;
    let x_1021 : vec4<f32> = x_979.x_MainLightWorldToLight[3i];
    let x_1023 : vec2<f32> = (vec2<f32>(x_1018.x, x_1018.y) + vec2<f32>(x_1021.x, x_1021.y));
    let x_1024 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1023.x, x_1023.y, x_1024.z);
    let x_1026 : vec3<f32> = u_xlat17;
    let x_1030 : vec2<f32> = ((vec2<f32>(x_1026.x, x_1026.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1031 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1030.x, x_1030.y, x_1031.z);
    let x_1038 : vec3<f32> = u_xlat17;
    let x_1041 : f32 = x_44.x_GlobalMipBias.x;
    let x_1042 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1038.x, x_1038.y), x_1041);
    u_xlat6 = x_1042;
    let x_1044 : f32 = x_979.x_MainLightCookieTextureFormat;
    let x_1046 : f32 = x_979.x_MainLightCookieTextureFormat;
    let x_1048 : f32 = x_979.x_MainLightCookieTextureFormat;
    let x_1050 : f32 = x_979.x_MainLightCookieTextureFormat;
    let x_1051 : vec4<f32> = vec4<f32>(x_1044, x_1046, x_1048, x_1050);
    let x_1058 : vec4<bool> = (vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1051.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb17 = vec2<bool>(x_1058.x, x_1058.y);
    let x_1061 : bool = u_xlatb17.y;
    if (x_1061) {
      let x_1066 : f32 = u_xlat6.w;
      x_1062 = x_1066;
    } else {
      let x_1069 : f32 = u_xlat6.x;
      x_1062 = x_1069;
    }
    let x_1070 : f32 = x_1062;
    u_xlat31 = x_1070;
    let x_1072 : bool = u_xlatb17.x;
    if (x_1072) {
      let x_1076 : vec4<f32> = u_xlat6;
      x_1073 = vec3<f32>(x_1076.x, x_1076.y, x_1076.z);
    } else {
      let x_1079 : f32 = u_xlat31;
      x_1073 = vec3<f32>(x_1079, x_1079, x_1079);
    }
    let x_1081 : vec3<f32> = x_1073;
    u_xlat17 = x_1081;
  } else {
    u_xlat17.x = 1.0f;
    u_xlat17.y = 1.0f;
    u_xlat17.z = 1.0f;
  }
  let x_1086 : vec3<f32> = u_xlat17;
  let x_1088 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat17 = (x_1086 * vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : f32 = u_xlat46;
  let x_1093 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1091, x_1091, x_1091) * x_1093);
  let x_1096 : vec3<f32> = u_xlat4;
  let x_1098 : vec4<f32> = u_xlat1;
  u_xlat47 = dot(-(x_1096), vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : f32 = u_xlat47;
  let x_1102 : f32 = u_xlat47;
  u_xlat47 = (x_1101 + x_1102);
  let x_1104 : vec4<f32> = u_xlat1;
  let x_1106 : f32 = u_xlat47;
  let x_1110 : vec3<f32> = u_xlat4;
  let x_1112 : vec3<f32> = ((vec3<f32>(x_1104.x, x_1104.y, x_1104.z) * -(vec3<f32>(x_1106, x_1106, x_1106))) + -(x_1110));
  let x_1113 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1115 : vec4<f32> = u_xlat1;
  let x_1117 : vec3<f32> = u_xlat4;
  u_xlat47 = dot(vec3<f32>(x_1115.x, x_1115.y, x_1115.z), x_1117);
  let x_1119 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1119, 0.0f, 1.0f);
  let x_1121 : f32 = u_xlat47;
  u_xlat47 = (-(x_1121) + 1.0f);
  let x_1124 : f32 = u_xlat47;
  let x_1125 : f32 = u_xlat47;
  u_xlat47 = (x_1124 * x_1125);
  let x_1127 : f32 = u_xlat47;
  let x_1128 : f32 = u_xlat47;
  u_xlat47 = (x_1127 * x_1128);
  let x_1131 : f32 = u_xlat42;
  u_xlat48 = ((-(x_1131) * 0.699999988f) + 1.700000048f);
  let x_1137 : f32 = u_xlat42;
  let x_1138 : f32 = u_xlat48;
  u_xlat42 = (x_1137 * x_1138);
  let x_1140 : f32 = u_xlat42;
  u_xlat42 = (x_1140 * 6.0f);
  let x_1150 : vec4<f32> = u_xlat6;
  let x_1152 : f32 = u_xlat42;
  let x_1153 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1150.x, x_1150.y, x_1150.z), x_1152);
  u_xlat6 = x_1153;
  let x_1155 : f32 = u_xlat6.w;
  u_xlat42 = (x_1155 + -1.0f);
  let x_1158 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_1159 : f32 = u_xlat42;
  u_xlat42 = ((x_1158 * x_1159) + 1.0f);
  let x_1162 : f32 = u_xlat42;
  u_xlat42 = max(x_1162, 0.0f);
  let x_1164 : f32 = u_xlat42;
  u_xlat42 = log2(x_1164);
  let x_1166 : f32 = u_xlat42;
  let x_1168 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_1166 * x_1168);
  let x_1170 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1170);
  let x_1172 : f32 = u_xlat42;
  let x_1174 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_1172 * x_1174);
  let x_1176 : vec4<f32> = u_xlat6;
  let x_1178 : f32 = u_xlat42;
  let x_1180 : vec3<f32> = (vec3<f32>(x_1176.x, x_1176.y, x_1176.z) * vec3<f32>(x_1178, x_1178, x_1178));
  let x_1181 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
  let x_1184 : vec4<f32> = u_xlat2;
  let x_1186 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_1184.x, x_1184.x) * vec2<f32>(x_1186.x, x_1186.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1192 : f32 = u_xlat8.y;
  u_xlat42 = (1.0f / x_1192);
  let x_1195 : vec4<f32> = u_xlat0;
  let x_1198 : f32 = u_xlat43;
  u_xlat22 = (-(vec3<f32>(x_1195.x, x_1195.y, x_1195.z)) + vec3<f32>(x_1198, x_1198, x_1198));
  let x_1201 : f32 = u_xlat47;
  let x_1203 : vec3<f32> = u_xlat22;
  let x_1205 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_1201, x_1201, x_1201) * x_1203) + vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
  let x_1208 : f32 = u_xlat42;
  let x_1210 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1208, x_1208, x_1208) * x_1210);
  let x_1212 : vec4<f32> = u_xlat6;
  let x_1214 : vec3<f32> = u_xlat22;
  let x_1215 : vec3<f32> = (vec3<f32>(x_1212.x, x_1212.y, x_1212.z) * x_1214);
  let x_1216 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
  let x_1218 : vec4<f32> = u_xlat5;
  let x_1220 : vec3<f32> = u_xlat7;
  let x_1222 : vec4<f32> = u_xlat6;
  let x_1224 : vec3<f32> = ((vec3<f32>(x_1218.x, x_1218.y, x_1218.z) * x_1220) + vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
  let x_1225 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
  let x_1228 : f32 = u_xlat3.x;
  let x_1230 : f32 = x_359.unity_LightData.z;
  u_xlat42 = (x_1228 * x_1230);
  let x_1232 : vec4<f32> = u_xlat1;
  let x_1235 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1232.x, x_1232.y, x_1232.z), vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
  let x_1238 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1238, 0.0f, 1.0f);
  let x_1240 : f32 = u_xlat42;
  let x_1241 : f32 = u_xlat43;
  u_xlat42 = (x_1240 * x_1241);
  let x_1243 : f32 = u_xlat42;
  let x_1245 : vec3<f32> = u_xlat17;
  let x_1246 : vec3<f32> = (vec3<f32>(x_1243, x_1243, x_1243) * x_1245);
  let x_1247 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
  let x_1249 : vec3<f32> = u_xlat4;
  let x_1251 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1253 : vec3<f32> = (x_1249 + vec3<f32>(x_1251.x, x_1251.y, x_1251.z));
  let x_1254 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
  let x_1256 : vec4<f32> = u_xlat6;
  let x_1258 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_1256.x, x_1256.y, x_1256.z), vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
  let x_1261 : f32 = u_xlat42;
  u_xlat42 = max(x_1261, 1.17549435e-37f);
  let x_1264 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1264);
  let x_1266 : f32 = u_xlat42;
  let x_1268 : vec4<f32> = u_xlat6;
  let x_1270 : vec3<f32> = (vec3<f32>(x_1266, x_1266, x_1266) * vec3<f32>(x_1268.x, x_1268.y, x_1268.z));
  let x_1271 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
  let x_1273 : vec4<f32> = u_xlat1;
  let x_1275 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_1273.x, x_1273.y, x_1273.z), vec3<f32>(x_1275.x, x_1275.y, x_1275.z));
  let x_1278 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1278, 0.0f, 1.0f);
  let x_1281 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1283 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_1281.x, x_1281.y, x_1281.z), vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
  let x_1286 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1286, 0.0f, 1.0f);
  let x_1288 : f32 = u_xlat42;
  let x_1289 : f32 = u_xlat42;
  u_xlat42 = (x_1288 * x_1289);
  let x_1291 : f32 = u_xlat42;
  let x_1293 : f32 = u_xlat8.x;
  u_xlat42 = ((x_1291 * x_1293) + 1.000010014f);
  let x_1297 : f32 = u_xlat43;
  let x_1298 : f32 = u_xlat43;
  u_xlat43 = (x_1297 * x_1298);
  let x_1300 : f32 = u_xlat42;
  let x_1301 : f32 = u_xlat42;
  u_xlat42 = (x_1300 * x_1301);
  let x_1303 : f32 = u_xlat43;
  u_xlat43 = max(x_1303, 0.100000001f);
  let x_1306 : f32 = u_xlat42;
  let x_1307 : f32 = u_xlat43;
  u_xlat42 = (x_1306 * x_1307);
  let x_1309 : f32 = u_xlat44;
  let x_1310 : f32 = u_xlat42;
  u_xlat42 = (x_1309 * x_1310);
  let x_1312 : f32 = u_xlat16;
  let x_1313 : f32 = u_xlat42;
  u_xlat42 = (x_1312 / x_1313);
  let x_1315 : vec4<f32> = u_xlat0;
  let x_1317 : f32 = u_xlat42;
  let x_1320 : vec3<f32> = u_xlat7;
  let x_1321 : vec3<f32> = ((vec3<f32>(x_1315.x, x_1315.y, x_1315.z) * vec3<f32>(x_1317, x_1317, x_1317)) + x_1320);
  let x_1322 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
  let x_1324 : vec4<f32> = u_xlat3;
  let x_1326 : vec4<f32> = u_xlat6;
  let x_1328 : vec3<f32> = (vec3<f32>(x_1324.x, x_1324.y, x_1324.z) * vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
  let x_1329 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
  let x_1332 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1334 : f32 = x_359.unity_LightData.y;
  u_xlat42 = min(x_1332, x_1334);
  let x_1336 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1336));
  let x_1341 : f32 = x_979.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1343 : f32 = x_979.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1345 : f32 = x_979.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1347 : f32 = x_979.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1348 : vec4<f32> = vec4<f32>(x_1341, x_1343, x_1345, x_1347);
  let x_1354 : vec4<bool> = (vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1348.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1354.x, x_1354.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1365 : u32 = u_xlatu_loop_1;
    let x_1366 : u32 = u_xlatu42;
    if ((x_1365 < x_1366)) {
    } else {
      break;
    }
    let x_1369 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_1369 >> 2u);
    let x_1372 : u32 = u_xlatu_loop_1;
    u_xlati45 = bitcast<i32>((x_1372 & 3u));
    let x_1375 : u32 = u_xlatu2;
    let x_1378 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_1375)];
    let x_1388 : i32 = u_xlati45;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1393 : vec4<u32> = indexable[x_1388];
    u_xlat2.x = dot(x_1378, bitcast<vec4<f32>>(x_1393));
    let x_1398 : f32 = u_xlat2.x;
    u_xlatu2 = bitcast<u32>(i32(x_1398));
    let x_1402 : vec3<f32> = vs_INTERP0;
    let x_1414 : u32 = u_xlatu2;
    let x_1417 : vec4<f32> = x_1413.x_AdditionalLightsPosition[bitcast<i32>(x_1414)];
    let x_1420 : u32 = u_xlatu2;
    let x_1423 : vec4<f32> = x_1413.x_AdditionalLightsPosition[bitcast<i32>(x_1420)];
    u_xlat9 = ((-(x_1402) * vec3<f32>(x_1417.w, x_1417.w, x_1417.w)) + vec3<f32>(x_1423.x, x_1423.y, x_1423.z));
    let x_1426 : vec3<f32> = u_xlat9;
    let x_1427 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1426, x_1427);
    let x_1429 : f32 = u_xlat45;
    u_xlat45 = max(x_1429, 6.10351562e-05f);
    let x_1432 : f32 = u_xlat45;
    u_xlat47 = inverseSqrt(x_1432);
    let x_1435 : f32 = u_xlat47;
    let x_1437 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1435, x_1435, x_1435) * x_1437);
    let x_1440 : f32 = u_xlat45;
    u_xlat34.x = (1.0f / x_1440);
    let x_1443 : f32 = u_xlat45;
    let x_1444 : u32 = u_xlatu2;
    let x_1447 : f32 = x_1413.x_AdditionalLightsAttenuation[bitcast<i32>(x_1444)].x;
    u_xlat45 = (x_1443 * x_1447);
    let x_1449 : f32 = u_xlat45;
    let x_1451 : f32 = u_xlat45;
    u_xlat45 = ((-(x_1449) * x_1451) + 1.0f);
    let x_1454 : f32 = u_xlat45;
    u_xlat45 = max(x_1454, 0.0f);
    let x_1456 : f32 = u_xlat45;
    let x_1457 : f32 = u_xlat45;
    u_xlat45 = (x_1456 * x_1457);
    let x_1459 : f32 = u_xlat45;
    let x_1461 : f32 = u_xlat34.x;
    u_xlat45 = (x_1459 * x_1461);
    let x_1463 : u32 = u_xlatu2;
    let x_1466 : vec4<f32> = x_1413.x_AdditionalLightsSpotDir[bitcast<i32>(x_1463)];
    let x_1468 : vec3<f32> = u_xlat10;
    u_xlat34.x = dot(vec3<f32>(x_1466.x, x_1466.y, x_1466.z), x_1468);
    let x_1472 : f32 = u_xlat34.x;
    let x_1473 : u32 = u_xlatu2;
    let x_1476 : f32 = x_1413.x_AdditionalLightsAttenuation[bitcast<i32>(x_1473)].z;
    let x_1478 : u32 = u_xlatu2;
    let x_1481 : f32 = x_1413.x_AdditionalLightsAttenuation[bitcast<i32>(x_1478)].w;
    u_xlat34.x = ((x_1472 * x_1476) + x_1481);
    let x_1485 : f32 = u_xlat34.x;
    u_xlat34.x = clamp(x_1485, 0.0f, 1.0f);
    let x_1489 : f32 = u_xlat34.x;
    let x_1491 : f32 = u_xlat34.x;
    u_xlat34.x = (x_1489 * x_1491);
    let x_1494 : f32 = u_xlat45;
    let x_1496 : f32 = u_xlat34.x;
    u_xlat45 = (x_1494 * x_1496);
    let x_1499 : u32 = u_xlatu2;
    u_xlatu34 = (x_1499 >> 5u);
    let x_1502 : u32 = u_xlatu2;
    u_xlati48 = (1i << bitcast<u32>((bitcast<i32>(x_1502) & 31i)));
    let x_1508 : i32 = u_xlati48;
    let x_1510 : u32 = u_xlatu34;
    let x_1513 : f32 = x_979.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1510)].el;
    u_xlati34 = bitcast<i32>((bitcast<u32>(x_1508) & bitcast<u32>(x_1513)));
    let x_1517 : i32 = u_xlati34;
    if ((x_1517 != 0i)) {
      let x_1527 : u32 = u_xlatu2;
      let x_1530 : f32 = x_1526.x_AdditionalLightsLightTypes[bitcast<i32>(x_1527)].el;
      u_xlati34 = i32(x_1530);
      let x_1532 : i32 = u_xlati34;
      u_xlati48 = select(1i, 0i, (x_1532 != 0i));
      let x_1536 : u32 = u_xlatu2;
      u_xlati49 = (bitcast<i32>(x_1536) << bitcast<u32>(2i));
      let x_1539 : i32 = u_xlati48;
      if ((x_1539 != 0i)) {
        let x_1544 : vec3<f32> = vs_INTERP0;
        let x_1546 : i32 = u_xlati49;
        let x_1549 : i32 = u_xlati49;
        let x_1553 : vec4<f32> = x_1526.x_AdditionalLightsWorldToLights[((x_1546 + 1i) / 4i)][((x_1549 + 1i) % 4i)];
        let x_1555 : vec3<f32> = (vec3<f32>(x_1544.y, x_1544.y, x_1544.y) * vec3<f32>(x_1553.x, x_1553.y, x_1553.w));
        let x_1556 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1555.x, x_1555.y, x_1555.z, x_1556.w);
        let x_1558 : i32 = u_xlati49;
        let x_1560 : i32 = u_xlati49;
        let x_1563 : vec4<f32> = x_1526.x_AdditionalLightsWorldToLights[(x_1558 / 4i)][(x_1560 % 4i)];
        let x_1565 : vec3<f32> = vs_INTERP0;
        let x_1568 : vec4<f32> = u_xlat11;
        let x_1570 : vec3<f32> = ((vec3<f32>(x_1563.x, x_1563.y, x_1563.w) * vec3<f32>(x_1565.x, x_1565.x, x_1565.x)) + vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
        let x_1571 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1570.x, x_1570.y, x_1570.z, x_1571.w);
        let x_1573 : i32 = u_xlati49;
        let x_1576 : i32 = u_xlati49;
        let x_1580 : vec4<f32> = x_1526.x_AdditionalLightsWorldToLights[((x_1573 + 2i) / 4i)][((x_1576 + 2i) % 4i)];
        let x_1582 : vec3<f32> = vs_INTERP0;
        let x_1585 : vec4<f32> = u_xlat11;
        let x_1587 : vec3<f32> = ((vec3<f32>(x_1580.x, x_1580.y, x_1580.w) * vec3<f32>(x_1582.z, x_1582.z, x_1582.z)) + vec3<f32>(x_1585.x, x_1585.y, x_1585.z));
        let x_1588 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1588.w);
        let x_1590 : vec4<f32> = u_xlat11;
        let x_1592 : i32 = u_xlati49;
        let x_1595 : i32 = u_xlati49;
        let x_1599 : vec4<f32> = x_1526.x_AdditionalLightsWorldToLights[((x_1592 + 3i) / 4i)][((x_1595 + 3i) % 4i)];
        let x_1601 : vec3<f32> = (vec3<f32>(x_1590.x, x_1590.y, x_1590.z) + vec3<f32>(x_1599.x, x_1599.y, x_1599.w));
        let x_1602 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1601.x, x_1601.y, x_1601.z, x_1602.w);
        let x_1604 : vec4<f32> = u_xlat11;
        let x_1606 : vec4<f32> = u_xlat11;
        let x_1608 : vec2<f32> = (vec2<f32>(x_1604.x, x_1604.y) / vec2<f32>(x_1606.z, x_1606.z));
        let x_1609 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1608.x, x_1608.y, x_1609.z, x_1609.w);
        let x_1611 : vec4<f32> = u_xlat11;
        let x_1614 : vec2<f32> = ((vec2<f32>(x_1611.x, x_1611.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1615 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1614.x, x_1614.y, x_1615.z, x_1615.w);
        let x_1617 : vec4<f32> = u_xlat11;
        let x_1621 : vec2<f32> = clamp(vec2<f32>(x_1617.x, x_1617.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1622 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1621.x, x_1621.y, x_1622.z, x_1622.w);
        let x_1624 : u32 = u_xlatu2;
        let x_1627 : vec4<f32> = x_1526.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1624)];
        let x_1629 : vec4<f32> = u_xlat11;
        let x_1632 : u32 = u_xlatu2;
        let x_1635 : vec4<f32> = x_1526.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1632)];
        let x_1637 : vec2<f32> = ((vec2<f32>(x_1627.x, x_1627.y) * vec2<f32>(x_1629.x, x_1629.y)) + vec2<f32>(x_1635.z, x_1635.w));
        let x_1638 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1637.x, x_1637.y, x_1638.z, x_1638.w);
      } else {
        let x_1642 : i32 = u_xlati34;
        u_xlatb34 = (x_1642 == 1i);
        let x_1644 : bool = u_xlatb34;
        u_xlati34 = select(0i, 1i, x_1644);
        let x_1646 : i32 = u_xlati34;
        if ((x_1646 != 0i)) {
          let x_1650 : vec3<f32> = vs_INTERP0;
          let x_1652 : i32 = u_xlati49;
          let x_1655 : i32 = u_xlati49;
          let x_1659 : vec4<f32> = x_1526.x_AdditionalLightsWorldToLights[((x_1652 + 1i) / 4i)][((x_1655 + 1i) % 4i)];
          u_xlat34 = (vec2<f32>(x_1650.y, x_1650.y) * vec2<f32>(x_1659.x, x_1659.y));
          let x_1662 : i32 = u_xlati49;
          let x_1664 : i32 = u_xlati49;
          let x_1667 : vec4<f32> = x_1526.x_AdditionalLightsWorldToLights[(x_1662 / 4i)][(x_1664 % 4i)];
          let x_1669 : vec3<f32> = vs_INTERP0;
          let x_1672 : vec2<f32> = u_xlat34;
          u_xlat34 = ((vec2<f32>(x_1667.x, x_1667.y) * vec2<f32>(x_1669.x, x_1669.x)) + x_1672);
          let x_1674 : i32 = u_xlati49;
          let x_1677 : i32 = u_xlati49;
          let x_1681 : vec4<f32> = x_1526.x_AdditionalLightsWorldToLights[((x_1674 + 2i) / 4i)][((x_1677 + 2i) % 4i)];
          let x_1683 : vec3<f32> = vs_INTERP0;
          let x_1686 : vec2<f32> = u_xlat34;
          u_xlat34 = ((vec2<f32>(x_1681.x, x_1681.y) * vec2<f32>(x_1683.z, x_1683.z)) + x_1686);
          let x_1688 : vec2<f32> = u_xlat34;
          let x_1689 : i32 = u_xlati49;
          let x_1692 : i32 = u_xlati49;
          let x_1696 : vec4<f32> = x_1526.x_AdditionalLightsWorldToLights[((x_1689 + 3i) / 4i)][((x_1692 + 3i) % 4i)];
          u_xlat34 = (x_1688 + vec2<f32>(x_1696.x, x_1696.y));
          let x_1699 : vec2<f32> = u_xlat34;
          u_xlat34 = ((x_1699 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1702 : vec2<f32> = u_xlat34;
          u_xlat34 = fract(x_1702);
          let x_1704 : u32 = u_xlatu2;
          let x_1707 : vec4<f32> = x_1526.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1704)];
          let x_1709 : vec2<f32> = u_xlat34;
          let x_1711 : u32 = u_xlatu2;
          let x_1714 : vec4<f32> = x_1526.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1711)];
          let x_1716 : vec2<f32> = ((vec2<f32>(x_1707.x, x_1707.y) * x_1709) + vec2<f32>(x_1714.z, x_1714.w));
          let x_1717 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1716.x, x_1716.y, x_1717.z, x_1717.w);
        } else {
          let x_1721 : vec3<f32> = vs_INTERP0;
          let x_1723 : i32 = u_xlati49;
          let x_1726 : i32 = u_xlati49;
          let x_1730 : vec4<f32> = x_1526.x_AdditionalLightsWorldToLights[((x_1723 + 1i) / 4i)][((x_1726 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1721.y, x_1721.y, x_1721.y, x_1721.y) * x_1730);
          let x_1732 : i32 = u_xlati49;
          let x_1734 : i32 = u_xlati49;
          let x_1737 : vec4<f32> = x_1526.x_AdditionalLightsWorldToLights[(x_1732 / 4i)][(x_1734 % 4i)];
          let x_1738 : vec3<f32> = vs_INTERP0;
          let x_1741 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1737 * vec4<f32>(x_1738.x, x_1738.x, x_1738.x, x_1738.x)) + x_1741);
          let x_1743 : i32 = u_xlati49;
          let x_1746 : i32 = u_xlati49;
          let x_1750 : vec4<f32> = x_1526.x_AdditionalLightsWorldToLights[((x_1743 + 2i) / 4i)][((x_1746 + 2i) % 4i)];
          let x_1751 : vec3<f32> = vs_INTERP0;
          let x_1754 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1750 * vec4<f32>(x_1751.z, x_1751.z, x_1751.z, x_1751.z)) + x_1754);
          let x_1756 : vec4<f32> = u_xlat12;
          let x_1757 : i32 = u_xlati49;
          let x_1760 : i32 = u_xlati49;
          let x_1764 : vec4<f32> = x_1526.x_AdditionalLightsWorldToLights[((x_1757 + 3i) / 4i)][((x_1760 + 3i) % 4i)];
          u_xlat12 = (x_1756 + x_1764);
          let x_1766 : vec4<f32> = u_xlat12;
          let x_1768 : vec4<f32> = u_xlat12;
          let x_1770 : vec3<f32> = (vec3<f32>(x_1766.x, x_1766.y, x_1766.z) / vec3<f32>(x_1768.w, x_1768.w, x_1768.w));
          let x_1771 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1770.x, x_1770.y, x_1770.z, x_1771.w);
          let x_1773 : vec4<f32> = u_xlat12;
          let x_1775 : vec4<f32> = u_xlat12;
          u_xlat34.x = dot(vec3<f32>(x_1773.x, x_1773.y, x_1773.z), vec3<f32>(x_1775.x, x_1775.y, x_1775.z));
          let x_1780 : f32 = u_xlat34.x;
          u_xlat34.x = inverseSqrt(x_1780);
          let x_1783 : vec2<f32> = u_xlat34;
          let x_1785 : vec4<f32> = u_xlat12;
          let x_1787 : vec3<f32> = (vec3<f32>(x_1783.x, x_1783.x, x_1783.x) * vec3<f32>(x_1785.x, x_1785.y, x_1785.z));
          let x_1788 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1788.w);
          let x_1790 : vec4<f32> = u_xlat12;
          u_xlat34.x = dot(abs(vec3<f32>(x_1790.x, x_1790.y, x_1790.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1796 : f32 = u_xlat34.x;
          u_xlat34.x = max(x_1796, 0.000001f);
          let x_1801 : f32 = u_xlat34.x;
          u_xlat34.x = (1.0f / x_1801);
          let x_1805 : vec2<f32> = u_xlat34;
          let x_1807 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1805.x, x_1805.x, x_1805.x) * vec3<f32>(x_1807.z, x_1807.x, x_1807.y));
          let x_1811 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1811);
          let x_1815 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1815, 0.0f, 1.0f);
          let x_1819 : vec3<f32> = u_xlat13;
          let x_1822 : vec4<bool> = (vec4<f32>(x_1819.y, x_1819.z, x_1819.y, x_1819.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1822.x, x_1822.y);
          let x_1826 : bool = u_xlatb39.x;
          if (x_1826) {
            let x_1831 : f32 = u_xlat13.x;
            x_1827 = x_1831;
          } else {
            let x_1834 : f32 = u_xlat13.x;
            x_1827 = -(x_1834);
          }
          let x_1836 : f32 = x_1827;
          u_xlat39.x = x_1836;
          let x_1839 : bool = u_xlatb39.y;
          if (x_1839) {
            let x_1844 : f32 = u_xlat13.x;
            x_1840 = x_1844;
          } else {
            let x_1847 : f32 = u_xlat13.x;
            x_1840 = -(x_1847);
          }
          let x_1849 : f32 = x_1840;
          u_xlat39.y = x_1849;
          let x_1851 : vec4<f32> = u_xlat12;
          let x_1853 : vec2<f32> = u_xlat34;
          let x_1856 : vec2<f32> = u_xlat39;
          u_xlat34 = ((vec2<f32>(x_1851.x, x_1851.y) * vec2<f32>(x_1853.x, x_1853.x)) + x_1856);
          let x_1858 : vec2<f32> = u_xlat34;
          u_xlat34 = ((x_1858 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1861 : vec2<f32> = u_xlat34;
          u_xlat34 = clamp(x_1861, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1865 : u32 = u_xlatu2;
          let x_1868 : vec4<f32> = x_1526.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1865)];
          let x_1870 : vec2<f32> = u_xlat34;
          let x_1872 : u32 = u_xlatu2;
          let x_1875 : vec4<f32> = x_1526.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1872)];
          let x_1877 : vec2<f32> = ((vec2<f32>(x_1868.x, x_1868.y) * x_1870) + vec2<f32>(x_1875.z, x_1875.w));
          let x_1878 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1877.x, x_1877.y, x_1878.z, x_1878.w);
        }
      }
      let x_1885 : vec4<f32> = u_xlat11;
      let x_1888 : f32 = x_44.x_GlobalMipBias.x;
      let x_1889 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1885.x, x_1885.y), x_1888);
      u_xlat11 = x_1889;
      let x_1891 : bool = u_xlatb6.y;
      if (x_1891) {
        let x_1896 : f32 = u_xlat11.w;
        x_1892 = x_1896;
      } else {
        let x_1899 : f32 = u_xlat11.x;
        x_1892 = x_1899;
      }
      let x_1900 : f32 = x_1892;
      u_xlat34.x = x_1900;
      let x_1903 : bool = u_xlatb6.x;
      if (x_1903) {
        let x_1907 : vec4<f32> = u_xlat11;
        x_1904 = vec3<f32>(x_1907.x, x_1907.y, x_1907.z);
      } else {
        let x_1910 : vec2<f32> = u_xlat34;
        x_1904 = vec3<f32>(x_1910.x, x_1910.x, x_1910.x);
      }
      let x_1912 : vec3<f32> = x_1904;
      let x_1913 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1912.x, x_1912.y, x_1912.z, x_1913.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1919 : vec4<f32> = u_xlat11;
    let x_1921 : u32 = u_xlatu2;
    let x_1924 : vec4<f32> = x_1413.x_AdditionalLightsColor[bitcast<i32>(x_1921)];
    let x_1926 : vec3<f32> = (vec3<f32>(x_1919.x, x_1919.y, x_1919.z) * vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
    let x_1927 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1927.w);
    let x_1929 : f32 = u_xlat46;
    let x_1931 : vec4<f32> = u_xlat11;
    let x_1933 : vec3<f32> = (vec3<f32>(x_1929, x_1929, x_1929) * vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
    let x_1934 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
    let x_1936 : vec4<f32> = u_xlat1;
    let x_1938 : vec3<f32> = u_xlat10;
    u_xlat2.x = dot(vec3<f32>(x_1936.x, x_1936.y, x_1936.z), x_1938);
    let x_1942 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1942, 0.0f, 1.0f);
    let x_1946 : f32 = u_xlat2.x;
    let x_1947 : f32 = u_xlat45;
    u_xlat2.x = (x_1946 * x_1947);
    let x_1950 : vec4<f32> = u_xlat2;
    let x_1952 : vec4<f32> = u_xlat11;
    let x_1954 : vec3<f32> = (vec3<f32>(x_1950.x, x_1950.x, x_1950.x) * vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
    let x_1955 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);
    let x_1957 : vec3<f32> = u_xlat9;
    let x_1958 : f32 = u_xlat47;
    let x_1961 : vec3<f32> = u_xlat4;
    u_xlat9 = ((x_1957 * vec3<f32>(x_1958, x_1958, x_1958)) + x_1961);
    let x_1963 : vec3<f32> = u_xlat9;
    let x_1964 : vec3<f32> = u_xlat9;
    u_xlat2.x = dot(x_1963, x_1964);
    let x_1968 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_1968, 1.17549435e-37f);
    let x_1972 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_1972);
    let x_1975 : vec4<f32> = u_xlat2;
    let x_1977 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1975.x, x_1975.x, x_1975.x) * x_1977);
    let x_1979 : vec4<f32> = u_xlat1;
    let x_1981 : vec3<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_1979.x, x_1979.y, x_1979.z), x_1981);
    let x_1985 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1985, 0.0f, 1.0f);
    let x_1988 : vec3<f32> = u_xlat10;
    let x_1989 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1988, x_1989);
    let x_1991 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1991, 0.0f, 1.0f);
    let x_1994 : f32 = u_xlat2.x;
    let x_1996 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1994 * x_1996);
    let x_2000 : f32 = u_xlat2.x;
    let x_2002 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_2000 * x_2002) + 1.000010014f);
    let x_2006 : f32 = u_xlat45;
    let x_2007 : f32 = u_xlat45;
    u_xlat45 = (x_2006 * x_2007);
    let x_2010 : f32 = u_xlat2.x;
    let x_2012 : f32 = u_xlat2.x;
    u_xlat2.x = (x_2010 * x_2012);
    let x_2015 : f32 = u_xlat45;
    u_xlat45 = max(x_2015, 0.100000001f);
    let x_2018 : f32 = u_xlat2.x;
    let x_2019 : f32 = u_xlat45;
    u_xlat2.x = (x_2018 * x_2019);
    let x_2022 : f32 = u_xlat44;
    let x_2024 : f32 = u_xlat2.x;
    u_xlat2.x = (x_2022 * x_2024);
    let x_2027 : f32 = u_xlat16;
    let x_2029 : f32 = u_xlat2.x;
    u_xlat2.x = (x_2027 / x_2029);
    let x_2032 : vec4<f32> = u_xlat0;
    let x_2034 : vec4<f32> = u_xlat2;
    let x_2037 : vec3<f32> = u_xlat7;
    u_xlat9 = ((vec3<f32>(x_2032.x, x_2032.y, x_2032.z) * vec3<f32>(x_2034.x, x_2034.x, x_2034.x)) + x_2037);
    let x_2039 : vec3<f32> = u_xlat9;
    let x_2040 : vec4<f32> = u_xlat11;
    let x_2043 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_2039 * vec3<f32>(x_2040.x, x_2040.y, x_2040.z)) + x_2043);

    continuing {
      let x_2045 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2045 + bitcast<u32>(1i));
    }
  }
  let x_2047 : vec4<f32> = u_xlat5;
  let x_2049 : f32 = u_xlat30;
  let x_2052 : vec4<f32> = u_xlat3;
  let x_2054 : vec3<f32> = ((vec3<f32>(x_2047.x, x_2047.y, x_2047.z) * vec3<f32>(x_2049, x_2049, x_2049)) + vec3<f32>(x_2052.x, x_2052.y, x_2052.z));
  let x_2055 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2055.w);
  let x_2059 : vec3<f32> = u_xlat22;
  let x_2060 : vec4<f32> = u_xlat0;
  let x_2062 : vec3<f32> = (x_2059 + vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
  let x_2063 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

