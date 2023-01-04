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

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(3) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(4) var<uniform> x_190 : UnityPerMaterial;

@group(0) @binding(5) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_E9EC22CC : sampler;

@group(0) @binding(4) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_6EEDD32E : sampler;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_359 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_503 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1348 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb11 : bool;
  var u_xlat11 : f32;
  var u_xlat22 : f32;
  var x_146 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlatb33 : bool;
  var x_211 : f32;
  var x_220 : f32;
  var u_xlat33 : f32;
  var u_xlatb23 : vec2<bool>;
  var u_xlat23 : vec2<f32>;
  var u_xlat35 : f32;
  var u_xlat4 : vec4<f32>;
  var x_487 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var u_xlat34 : f32;
  var u_xlat36 : f32;
  var u_xlat13 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat24 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb15 : bool;
  var u_xlatb26 : bool;
  var x_977 : f32;
  var u_xlat26 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu34 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu13 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati13 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
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
  u_xlatb11 = (x_96 >= x_98);
  let x_101 : bool = u_xlatb11;
  u_xlat11 = select(0.0f, 1.0f, x_101);
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
  let x_118 : f32 = u_xlat11;
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
  u_xlatb11 = (x_138 == 0.0f);
  let x_142 : f32 = u_xlat1.x;
  u_xlat22 = (x_142 + 1.00000001e-10f);
  let x_145 : bool = u_xlatb11;
  if (x_145) {
    let x_150 : f32 = u_xlat1.x;
    x_146 = x_150;
  } else {
    let x_152 : f32 = u_xlat22;
    x_146 = x_152;
  }
  let x_153 : f32 = x_146;
  u_xlat11 = x_153;
  let x_155 : f32 = u_xlat1.y;
  let x_158 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_155) + x_158);
  let x_164 : f32 = u_xlat0.x;
  u_xlat12.x = ((x_164 * 6.0f) + 1.00000001e-10f);
  let x_170 : f32 = u_xlat1.x;
  let x_172 : f32 = u_xlat12.x;
  u_xlat1.x = (x_170 / x_172);
  let x_176 : f32 = u_xlat1.x;
  let x_178 : f32 = u_xlat1.z;
  u_xlat1.x = (x_176 + x_178);
  let x_182 : f32 = u_xlat0.x;
  let x_183 : f32 = u_xlat22;
  u_xlat0.x = (x_182 / x_183);
  let x_187 : f32 = u_xlat0.w;
  let x_193 : f32 = x_190.x_Hue;
  let x_196 : f32 = u_xlat1.x;
  u_xlat22 = ((x_187 * x_193) + abs(x_196));
  let x_200 : f32 = u_xlat22;
  u_xlatb33 = (x_200 < 0.0f);
  let x_202 : f32 = u_xlat22;
  u_xlatb1 = (1.0f < x_202);
  let x_204 : f32 = u_xlat22;
  let x_207 : vec2<f32> = (vec2<f32>(x_204, x_204) + vec2<f32>(1.0f, -1.0f));
  let x_208 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_207.x, x_207.y, x_208.z);
  let x_210 : bool = u_xlatb1;
  if (x_210) {
    let x_215 : f32 = u_xlat12.y;
    x_211 = x_215;
  } else {
    let x_217 : f32 = u_xlat22;
    x_211 = x_217;
  }
  let x_218 : f32 = x_211;
  u_xlat22 = x_218;
  let x_219 : bool = u_xlatb33;
  if (x_219) {
    let x_224 : f32 = u_xlat12.x;
    x_220 = x_224;
  } else {
    let x_226 : f32 = u_xlat22;
    x_220 = x_226;
  }
  let x_227 : f32 = x_220;
  u_xlat22 = x_227;
  let x_228 : f32 = u_xlat22;
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
  let x_279 : f32 = u_xlat11;
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
  u_xlat33 = dot(vec2<f32>(x_320.x, x_320.y), vec2<f32>(x_322.x, x_322.y));
  let x_325 : f32 = u_xlat33;
  u_xlat33 = min(x_325, 1.0f);
  let x_327 : f32 = u_xlat33;
  u_xlat33 = (-(x_327) + 1.0f);
  let x_330 : f32 = u_xlat33;
  u_xlat33 = sqrt(x_330);
  let x_332 : f32 = u_xlat33;
  u_xlat33 = max(x_332, 1.00000002e-16f);
  let x_340 : vec4<f32> = vs_INTERP3;
  let x_343 : f32 = x_44.x_GlobalMipBias.x;
  let x_344 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_340.x, x_340.y), x_343);
  let x_345 : vec3<f32> = vec3<f32>(x_344.x, x_344.w, x_344.y);
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_353 : f32 = vs_INTERP2.w;
  u_xlatb23.x = (0.0f < x_353);
  let x_361 : f32 = x_359.unity_WorldTransformParams.w;
  u_xlatb23.y = (x_361 >= 0.0f);
  let x_367 : bool = u_xlatb23.x;
  u_xlat23.x = select(-1.0f, 1.0f, x_367);
  let x_371 : bool = u_xlatb23.y;
  u_xlat23.y = select(-1.0f, 1.0f, x_371);
  let x_375 : f32 = u_xlat23.y;
  let x_377 : f32 = u_xlat23.x;
  u_xlat23.x = (x_375 * x_377);
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
  let x_400 : vec2<f32> = u_xlat23;
  let x_402 : vec4<f32> = u_xlat3;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.x, x_400.x) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat1;
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat12 = (vec3<f32>(x_407.y, x_407.y, x_407.y) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat1;
  let x_414 : vec4<f32> = vs_INTERP2;
  let x_417 : vec3<f32> = u_xlat12;
  let x_418 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.x, x_412.x) * vec3<f32>(x_414.x, x_414.y, x_414.z)) + x_417);
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : f32 = u_xlat33;
  let x_423 : vec3<f32> = vs_INTERP1;
  let x_425 : vec4<f32> = u_xlat1;
  let x_427 : vec3<f32> = ((vec3<f32>(x_421, x_421, x_421) * x_423) + vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat1;
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat33 = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_435);
  let x_437 : f32 = u_xlat33;
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : vec3<f32> = (vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_446 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb33 = (x_446 == 0.0f);
  let x_449 : vec3<f32> = vs_INTERP0;
  let x_454 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_455 : vec3<f32> = (-(x_449) + x_454);
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_459 : vec4<f32> = u_xlat3;
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat35 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat35;
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
  let x_486 : bool = u_xlatb33;
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
  u_xlat33 = dot(x_610, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_615 : f32 = u_xlat33;
  u_xlat33 = (-(x_615) + 4.0f);
  let x_620 : f32 = u_xlat33;
  u_xlatu33 = u32(x_620);
  let x_624 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_624) << bitcast<u32>(2i));
  let x_627 : vec3<f32> = vs_INTERP0;
  let x_629 : i32 = u_xlati33;
  let x_632 : i32 = u_xlati33;
  let x_636 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_629 + 1i) / 4i)][((x_632 + 1i) % 4i)];
  let x_638 : vec3<f32> = (vec3<f32>(x_627.y, x_627.y, x_627.y) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : i32 = u_xlati33;
  let x_643 : i32 = u_xlati33;
  let x_646 : vec4<f32> = x_503.x_MainLightWorldToShadow[(x_641 / 4i)][(x_643 % 4i)];
  let x_648 : vec3<f32> = vs_INTERP0;
  let x_651 : vec4<f32> = u_xlat4;
  let x_653 : vec3<f32> = ((vec3<f32>(x_646.x, x_646.y, x_646.z) * vec3<f32>(x_648.x, x_648.x, x_648.x)) + vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_654 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_656 : i32 = u_xlati33;
  let x_659 : i32 = u_xlati33;
  let x_663 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_656 + 2i) / 4i)][((x_659 + 2i) % 4i)];
  let x_665 : vec3<f32> = vs_INTERP0;
  let x_668 : vec4<f32> = u_xlat4;
  let x_670 : vec3<f32> = ((vec3<f32>(x_663.x, x_663.y, x_663.z) * vec3<f32>(x_665.z, x_665.z, x_665.z)) + vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_673 : vec4<f32> = u_xlat4;
  let x_675 : i32 = u_xlati33;
  let x_678 : i32 = u_xlati33;
  let x_682 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_675 + 3i) / 4i)][((x_678 + 3i) % 4i)];
  let x_684 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) + vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_688 : f32 = vs_INTERP0.y;
  let x_690 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_688 * x_690);
  let x_693 : f32 = x_44.unity_MatrixV[0i].z;
  let x_695 : f32 = vs_INTERP0.x;
  let x_697 : f32 = u_xlat33;
  u_xlat33 = ((x_693 * x_695) + x_697);
  let x_700 : f32 = x_44.unity_MatrixV[2i].z;
  let x_702 : f32 = vs_INTERP0.z;
  let x_704 : f32 = u_xlat33;
  u_xlat33 = ((x_700 * x_702) + x_704);
  let x_706 : f32 = u_xlat33;
  let x_708 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_706 + x_708);
  let x_710 : f32 = u_xlat33;
  let x_714 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_710) + -(x_714));
  let x_717 : f32 = u_xlat33;
  u_xlat33 = max(x_717, 0.0f);
  let x_719 : f32 = u_xlat33;
  let x_722 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_719 * x_722);
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
  u_xlat34 = (x_768 * x_770);
  let x_773 : f32 = u_xlat1.x;
  let x_775 : f32 = u_xlat1.x;
  let x_777 : f32 = u_xlat34;
  u_xlat34 = ((x_773 * x_775) + -(x_777));
  let x_782 : vec4<f32> = x_359.unity_SHC;
  let x_784 : f32 = u_xlat34;
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
  u_xlat34 = ((x_821 * x_824) + x_827);
  let x_829 : f32 = u_xlat34;
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
  u_xlat34 = ((-(x_845) * 0.959999979f) + 0.959999979f);
  let x_850 : f32 = u_xlat34;
  u_xlat35 = (-(x_850) + 1.0f);
  let x_853 : vec4<f32> = u_xlat0;
  let x_855 : f32 = u_xlat34;
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
  u_xlat34 = (-(x_876) + 1.0f);
  let x_879 : f32 = u_xlat34;
  let x_880 : f32 = u_xlat34;
  u_xlat2.x = (x_879 * x_880);
  let x_884 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_884, 0.0078125f);
  let x_890 : f32 = u_xlat2.x;
  let x_892 : f32 = u_xlat2.x;
  u_xlat36 = (x_890 * x_892);
  let x_895 : f32 = u_xlat35;
  let x_897 : f32 = u_xlat2.y;
  u_xlat13 = (x_895 + x_897);
  let x_899 : f32 = u_xlat13;
  u_xlat13 = min(x_899, 1.0f);
  let x_902 : f32 = u_xlat2.x;
  u_xlat35 = ((x_902 * 4.0f) + 2.0f);
  let x_911 : vec4<f32> = u_xlat6;
  let x_914 : f32 = x_44.x_GlobalMipBias.x;
  let x_915 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_911.x, x_911.z), x_914);
  u_xlat37 = x_915.x;
  let x_918 : f32 = u_xlat37;
  u_xlat38 = (x_918 + -1.0f);
  let x_921 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_922 : f32 = u_xlat38;
  u_xlat38 = ((x_921 * x_922) + 1.0f);
  let x_927 : f32 = u_xlat2.z;
  let x_928 : f32 = u_xlat37;
  u_xlat24 = min(x_927, x_928);
  let x_931 : vec4<f32> = u_xlat4;
  let x_932 : vec2<f32> = vec2<f32>(x_931.x, x_931.y);
  let x_934 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_932.x, x_932.y, x_934);
  let x_946 : vec3<f32> = txVec0;
  let x_948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_946.xy, x_946.z);
  u_xlat4.x = x_948;
  let x_952 : f32 = x_503.x_MainLightShadowParams.x;
  u_xlat15.x = (-(x_952) + 1.0f);
  let x_957 : f32 = u_xlat4.x;
  let x_959 : f32 = x_503.x_MainLightShadowParams.x;
  let x_962 : f32 = u_xlat15.x;
  u_xlat4.x = ((x_957 * x_959) + x_962);
  let x_967 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_967);
  let x_971 : f32 = u_xlat4.z;
  u_xlatb26 = (x_971 >= 1.0f);
  let x_973 : bool = u_xlatb26;
  let x_974 : bool = u_xlatb15;
  u_xlatb15 = (x_973 | x_974);
  let x_976 : bool = u_xlatb15;
  if (x_976) {
    x_977 = 1.0f;
  } else {
    let x_982 : f32 = u_xlat4.x;
    x_977 = x_982;
  }
  let x_983 : f32 = x_977;
  u_xlat4.x = x_983;
  let x_985 : vec3<f32> = vs_INTERP0;
  let x_987 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat15 = (x_985 + -(x_987));
  let x_990 : vec3<f32> = u_xlat15;
  let x_991 : vec3<f32> = u_xlat15;
  u_xlat15.x = dot(x_990, x_991);
  let x_995 : f32 = u_xlat15.x;
  let x_997 : f32 = x_503.x_MainLightShadowParams.z;
  let x_1000 : f32 = x_503.x_MainLightShadowParams.w;
  u_xlat15.x = ((x_995 * x_997) + x_1000);
  let x_1004 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_1004, 0.0f, 1.0f);
  let x_1009 : f32 = u_xlat4.x;
  u_xlat26 = (-(x_1009) + 1.0f);
  let x_1013 : f32 = u_xlat15.x;
  let x_1014 : f32 = u_xlat26;
  let x_1017 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1013 * x_1014) + x_1017);
  let x_1020 : f32 = u_xlat38;
  let x_1023 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat15 = (vec3<f32>(x_1020, x_1020, x_1020) * vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
  let x_1026 : vec4<f32> = u_xlat3;
  let x_1029 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(vec3<f32>(x_1026.x, x_1026.y, x_1026.z)), vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1034 : f32 = u_xlat6.x;
  let x_1036 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1034 + x_1036);
  let x_1039 : vec4<f32> = u_xlat1;
  let x_1041 : vec4<f32> = u_xlat6;
  let x_1045 : vec4<f32> = u_xlat3;
  let x_1048 : vec3<f32> = ((vec3<f32>(x_1039.x, x_1039.y, x_1039.z) * -(vec3<f32>(x_1041.x, x_1041.x, x_1041.x))) + -(vec3<f32>(x_1045.x, x_1045.y, x_1045.z)));
  let x_1049 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
  let x_1052 : vec4<f32> = u_xlat1;
  let x_1054 : vec4<f32> = u_xlat3;
  u_xlat39 = dot(vec3<f32>(x_1052.x, x_1052.y, x_1052.z), vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
  let x_1057 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1057, 0.0f, 1.0f);
  let x_1059 : f32 = u_xlat39;
  u_xlat39 = (-(x_1059) + 1.0f);
  let x_1062 : f32 = u_xlat39;
  let x_1063 : f32 = u_xlat39;
  u_xlat39 = (x_1062 * x_1063);
  let x_1065 : f32 = u_xlat39;
  let x_1066 : f32 = u_xlat39;
  u_xlat39 = (x_1065 * x_1066);
  let x_1069 : f32 = u_xlat34;
  u_xlat40 = ((-(x_1069) * 0.699999988f) + 1.700000048f);
  let x_1075 : f32 = u_xlat34;
  let x_1076 : f32 = u_xlat40;
  u_xlat34 = (x_1075 * x_1076);
  let x_1078 : f32 = u_xlat34;
  u_xlat34 = (x_1078 * 6.0f);
  let x_1089 : vec4<f32> = u_xlat6;
  let x_1091 : f32 = u_xlat34;
  let x_1092 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1089.x, x_1089.y, x_1089.z), x_1091);
  u_xlat8 = x_1092;
  let x_1094 : f32 = u_xlat8.w;
  u_xlat34 = (x_1094 + -1.0f);
  let x_1097 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_1098 : f32 = u_xlat34;
  u_xlat34 = ((x_1097 * x_1098) + 1.0f);
  let x_1101 : f32 = u_xlat34;
  u_xlat34 = max(x_1101, 0.0f);
  let x_1103 : f32 = u_xlat34;
  u_xlat34 = log2(x_1103);
  let x_1105 : f32 = u_xlat34;
  let x_1107 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat34 = (x_1105 * x_1107);
  let x_1109 : f32 = u_xlat34;
  u_xlat34 = exp2(x_1109);
  let x_1111 : f32 = u_xlat34;
  let x_1113 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat34 = (x_1111 * x_1113);
  let x_1115 : vec4<f32> = u_xlat8;
  let x_1117 : f32 = u_xlat34;
  let x_1119 : vec3<f32> = (vec3<f32>(x_1115.x, x_1115.y, x_1115.z) * vec3<f32>(x_1117, x_1117, x_1117));
  let x_1120 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec4<f32> = u_xlat2;
  let x_1124 : vec4<f32> = u_xlat2;
  let x_1128 : vec2<f32> = ((vec2<f32>(x_1122.x, x_1122.x) * vec2<f32>(x_1124.x, x_1124.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1129 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
  let x_1132 : f32 = u_xlat8.y;
  u_xlat34 = (1.0f / x_1132);
  let x_1135 : vec4<f32> = u_xlat0;
  let x_1138 : f32 = u_xlat13;
  u_xlat19 = (-(vec3<f32>(x_1135.x, x_1135.y, x_1135.z)) + vec3<f32>(x_1138, x_1138, x_1138));
  let x_1141 : f32 = u_xlat39;
  let x_1143 : vec3<f32> = u_xlat19;
  let x_1145 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_1141, x_1141, x_1141) * x_1143) + vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
  let x_1148 : f32 = u_xlat34;
  let x_1150 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1148, x_1148, x_1148) * x_1150);
  let x_1152 : vec4<f32> = u_xlat6;
  let x_1154 : vec3<f32> = u_xlat19;
  let x_1155 : vec3<f32> = (vec3<f32>(x_1152.x, x_1152.y, x_1152.z) * x_1154);
  let x_1156 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1158 : vec4<f32> = u_xlat5;
  let x_1160 : vec3<f32> = u_xlat7;
  let x_1162 : vec4<f32> = u_xlat6;
  let x_1164 : vec3<f32> = ((vec3<f32>(x_1158.x, x_1158.y, x_1158.z) * x_1160) + vec3<f32>(x_1162.x, x_1162.y, x_1162.z));
  let x_1165 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
  let x_1168 : f32 = u_xlat4.x;
  let x_1170 : f32 = x_359.unity_LightData.z;
  u_xlat34 = (x_1168 * x_1170);
  let x_1172 : vec4<f32> = u_xlat1;
  let x_1175 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1172.x, x_1172.y, x_1172.z), vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
  let x_1180 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1180, 0.0f, 1.0f);
  let x_1183 : f32 = u_xlat34;
  let x_1185 : f32 = u_xlat2.x;
  u_xlat34 = (x_1183 * x_1185);
  let x_1187 : f32 = u_xlat34;
  let x_1189 : vec3<f32> = u_xlat15;
  let x_1190 : vec3<f32> = (vec3<f32>(x_1187, x_1187, x_1187) * x_1189);
  let x_1191 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
  let x_1193 : vec4<f32> = u_xlat3;
  let x_1196 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1198 : vec3<f32> = (vec3<f32>(x_1193.x, x_1193.y, x_1193.z) + vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
  let x_1201 : vec4<f32> = u_xlat6;
  let x_1203 : vec4<f32> = u_xlat6;
  u_xlat34 = dot(vec3<f32>(x_1201.x, x_1201.y, x_1201.z), vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1206 : f32 = u_xlat34;
  u_xlat34 = max(x_1206, 1.17549435e-37f);
  let x_1209 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_1209);
  let x_1211 : f32 = u_xlat34;
  let x_1213 : vec4<f32> = u_xlat6;
  let x_1215 : vec3<f32> = (vec3<f32>(x_1211, x_1211, x_1211) * vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1216 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
  let x_1218 : vec4<f32> = u_xlat1;
  let x_1220 : vec4<f32> = u_xlat6;
  u_xlat34 = dot(vec3<f32>(x_1218.x, x_1218.y, x_1218.z), vec3<f32>(x_1220.x, x_1220.y, x_1220.z));
  let x_1223 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1223, 0.0f, 1.0f);
  let x_1226 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1228 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_1226.x, x_1226.y, x_1226.z), vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
  let x_1233 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1233, 0.0f, 1.0f);
  let x_1236 : f32 = u_xlat34;
  let x_1237 : f32 = u_xlat34;
  u_xlat34 = (x_1236 * x_1237);
  let x_1239 : f32 = u_xlat34;
  let x_1241 : f32 = u_xlat8.x;
  u_xlat34 = ((x_1239 * x_1241) + 1.000010014f);
  let x_1246 : f32 = u_xlat2.x;
  let x_1248 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1246 * x_1248);
  let x_1251 : f32 = u_xlat34;
  let x_1252 : f32 = u_xlat34;
  u_xlat34 = (x_1251 * x_1252);
  let x_1255 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1255, 0.100000001f);
  let x_1259 : f32 = u_xlat34;
  let x_1261 : f32 = u_xlat2.x;
  u_xlat34 = (x_1259 * x_1261);
  let x_1263 : f32 = u_xlat35;
  let x_1264 : f32 = u_xlat34;
  u_xlat34 = (x_1263 * x_1264);
  let x_1266 : f32 = u_xlat36;
  let x_1267 : f32 = u_xlat34;
  u_xlat34 = (x_1266 / x_1267);
  let x_1269 : vec4<f32> = u_xlat0;
  let x_1271 : f32 = u_xlat34;
  let x_1274 : vec3<f32> = u_xlat7;
  let x_1275 : vec3<f32> = ((vec3<f32>(x_1269.x, x_1269.y, x_1269.z) * vec3<f32>(x_1271, x_1271, x_1271)) + x_1274);
  let x_1276 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
  let x_1278 : vec4<f32> = u_xlat4;
  let x_1280 : vec4<f32> = u_xlat6;
  let x_1282 : vec3<f32> = (vec3<f32>(x_1278.x, x_1278.y, x_1278.z) * vec3<f32>(x_1280.x, x_1280.y, x_1280.z));
  let x_1283 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
  let x_1286 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1288 : f32 = x_359.unity_LightData.y;
  u_xlat34 = min(x_1286, x_1288);
  let x_1291 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1291));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1303 : u32 = u_xlatu_loop_1;
    let x_1304 : u32 = u_xlatu34;
    if ((x_1303 < x_1304)) {
    } else {
      break;
    }
    let x_1307 : u32 = u_xlatu_loop_1;
    u_xlatu13 = (x_1307 >> 2u);
    let x_1310 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_1310 & 3u));
    let x_1313 : u32 = u_xlatu13;
    let x_1316 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_1313)];
    let x_1326 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1331 : vec4<u32> = indexable[x_1326];
    u_xlat13 = dot(x_1316, bitcast<vec4<f32>>(x_1331));
    let x_1335 : f32 = u_xlat13;
    u_xlati13 = i32(x_1335);
    let x_1337 : vec3<f32> = vs_INTERP0;
    let x_1349 : i32 = u_xlati13;
    let x_1351 : vec4<f32> = x_1348.x_AdditionalLightsPosition[x_1349];
    let x_1354 : i32 = u_xlati13;
    let x_1356 : vec4<f32> = x_1348.x_AdditionalLightsPosition[x_1354];
    u_xlat19 = ((-(x_1337) * vec3<f32>(x_1351.w, x_1351.w, x_1351.w)) + vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
    let x_1359 : vec3<f32> = u_xlat19;
    let x_1360 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1359, x_1360);
    let x_1362 : f32 = u_xlat37;
    u_xlat37 = max(x_1362, 6.10351562e-05f);
    let x_1365 : f32 = u_xlat37;
    u_xlat39 = inverseSqrt(x_1365);
    let x_1368 : f32 = u_xlat39;
    let x_1370 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1368, x_1368, x_1368) * x_1370);
    let x_1372 : f32 = u_xlat37;
    u_xlat40 = (1.0f / x_1372);
    let x_1374 : f32 = u_xlat37;
    let x_1375 : i32 = u_xlati13;
    let x_1377 : f32 = x_1348.x_AdditionalLightsAttenuation[x_1375].x;
    u_xlat37 = (x_1374 * x_1377);
    let x_1379 : f32 = u_xlat37;
    let x_1381 : f32 = u_xlat37;
    u_xlat37 = ((-(x_1379) * x_1381) + 1.0f);
    let x_1384 : f32 = u_xlat37;
    u_xlat37 = max(x_1384, 0.0f);
    let x_1386 : f32 = u_xlat37;
    let x_1387 : f32 = u_xlat37;
    u_xlat37 = (x_1386 * x_1387);
    let x_1389 : f32 = u_xlat37;
    let x_1390 : f32 = u_xlat40;
    u_xlat37 = (x_1389 * x_1390);
    let x_1392 : i32 = u_xlati13;
    let x_1394 : vec4<f32> = x_1348.x_AdditionalLightsSpotDir[x_1392];
    let x_1396 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1394.x, x_1394.y, x_1394.z), x_1396);
    let x_1398 : f32 = u_xlat40;
    let x_1399 : i32 = u_xlati13;
    let x_1401 : f32 = x_1348.x_AdditionalLightsAttenuation[x_1399].z;
    let x_1403 : i32 = u_xlati13;
    let x_1405 : f32 = x_1348.x_AdditionalLightsAttenuation[x_1403].w;
    u_xlat40 = ((x_1398 * x_1401) + x_1405);
    let x_1407 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1407, 0.0f, 1.0f);
    let x_1409 : f32 = u_xlat40;
    let x_1410 : f32 = u_xlat40;
    u_xlat40 = (x_1409 * x_1410);
    let x_1412 : f32 = u_xlat37;
    let x_1413 : f32 = u_xlat40;
    u_xlat37 = (x_1412 * x_1413);
    let x_1416 : f32 = u_xlat38;
    let x_1418 : i32 = u_xlati13;
    let x_1420 : vec4<f32> = x_1348.x_AdditionalLightsColor[x_1418];
    u_xlat10 = (vec3<f32>(x_1416, x_1416, x_1416) * vec3<f32>(x_1420.x, x_1420.y, x_1420.z));
    let x_1423 : vec4<f32> = u_xlat1;
    let x_1425 : vec3<f32> = u_xlat9;
    u_xlat13 = dot(vec3<f32>(x_1423.x, x_1423.y, x_1423.z), x_1425);
    let x_1427 : f32 = u_xlat13;
    u_xlat13 = clamp(x_1427, 0.0f, 1.0f);
    let x_1429 : f32 = u_xlat13;
    let x_1430 : f32 = u_xlat37;
    u_xlat13 = (x_1429 * x_1430);
    let x_1432 : f32 = u_xlat13;
    let x_1434 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1432, x_1432, x_1432) * x_1434);
    let x_1436 : vec3<f32> = u_xlat19;
    let x_1437 : f32 = u_xlat39;
    let x_1440 : vec4<f32> = u_xlat3;
    u_xlat19 = ((x_1436 * vec3<f32>(x_1437, x_1437, x_1437)) + vec3<f32>(x_1440.x, x_1440.y, x_1440.z));
    let x_1443 : vec3<f32> = u_xlat19;
    let x_1444 : vec3<f32> = u_xlat19;
    u_xlat13 = dot(x_1443, x_1444);
    let x_1446 : f32 = u_xlat13;
    u_xlat13 = max(x_1446, 1.17549435e-37f);
    let x_1448 : f32 = u_xlat13;
    u_xlat13 = inverseSqrt(x_1448);
    let x_1450 : f32 = u_xlat13;
    let x_1452 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1450, x_1450, x_1450) * x_1452);
    let x_1454 : vec4<f32> = u_xlat1;
    let x_1456 : vec3<f32> = u_xlat19;
    u_xlat13 = dot(vec3<f32>(x_1454.x, x_1454.y, x_1454.z), x_1456);
    let x_1458 : f32 = u_xlat13;
    u_xlat13 = clamp(x_1458, 0.0f, 1.0f);
    let x_1460 : vec3<f32> = u_xlat9;
    let x_1461 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1460, x_1461);
    let x_1463 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1463, 0.0f, 1.0f);
    let x_1465 : f32 = u_xlat13;
    let x_1466 : f32 = u_xlat13;
    u_xlat13 = (x_1465 * x_1466);
    let x_1468 : f32 = u_xlat13;
    let x_1470 : f32 = u_xlat8.x;
    u_xlat13 = ((x_1468 * x_1470) + 1.000010014f);
    let x_1473 : f32 = u_xlat37;
    let x_1474 : f32 = u_xlat37;
    u_xlat37 = (x_1473 * x_1474);
    let x_1476 : f32 = u_xlat13;
    let x_1477 : f32 = u_xlat13;
    u_xlat13 = (x_1476 * x_1477);
    let x_1479 : f32 = u_xlat37;
    u_xlat37 = max(x_1479, 0.100000001f);
    let x_1481 : f32 = u_xlat13;
    let x_1482 : f32 = u_xlat37;
    u_xlat13 = (x_1481 * x_1482);
    let x_1484 : f32 = u_xlat35;
    let x_1485 : f32 = u_xlat13;
    u_xlat13 = (x_1484 * x_1485);
    let x_1487 : f32 = u_xlat36;
    let x_1488 : f32 = u_xlat13;
    u_xlat13 = (x_1487 / x_1488);
    let x_1490 : vec4<f32> = u_xlat0;
    let x_1492 : f32 = u_xlat13;
    let x_1495 : vec3<f32> = u_xlat7;
    u_xlat19 = ((vec3<f32>(x_1490.x, x_1490.y, x_1490.z) * vec3<f32>(x_1492, x_1492, x_1492)) + x_1495);
    let x_1497 : vec3<f32> = u_xlat19;
    let x_1498 : vec3<f32> = u_xlat10;
    let x_1500 : vec4<f32> = u_xlat6;
    let x_1502 : vec3<f32> = ((x_1497 * x_1498) + vec3<f32>(x_1500.x, x_1500.y, x_1500.z));
    let x_1503 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1502.x, x_1502.y, x_1502.z, x_1503.w);

    continuing {
      let x_1505 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1505 + bitcast<u32>(1i));
    }
  }
  let x_1507 : vec4<f32> = u_xlat5;
  let x_1509 : f32 = u_xlat24;
  let x_1512 : vec4<f32> = u_xlat4;
  let x_1514 : vec3<f32> = ((vec3<f32>(x_1507.x, x_1507.y, x_1507.z) * vec3<f32>(x_1509, x_1509, x_1509)) + vec3<f32>(x_1512.x, x_1512.y, x_1512.z));
  let x_1515 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1515.w);
  let x_1517 : vec4<f32> = u_xlat6;
  let x_1519 : vec4<f32> = u_xlat0;
  let x_1521 : vec3<f32> = (vec3<f32>(x_1517.x, x_1517.y, x_1517.z) + vec3<f32>(x_1519.x, x_1519.y, x_1519.z));
  let x_1522 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1521.x, x_1521.y, x_1521.z, x_1522.w);
  let x_1524 : f32 = u_xlat33;
  let x_1525 : f32 = u_xlat33;
  u_xlat33 = (x_1524 * -(x_1525));
  let x_1528 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1528);
  let x_1530 : vec4<f32> = u_xlat0;
  let x_1534 : vec4<f32> = x_44.unity_FogColor;
  let x_1537 : vec3<f32> = (vec3<f32>(x_1530.x, x_1530.y, x_1530.z) + -(vec3<f32>(x_1534.x, x_1534.y, x_1534.z)));
  let x_1538 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1538.w);
  let x_1542 : f32 = u_xlat33;
  let x_1544 : vec4<f32> = u_xlat0;
  let x_1548 : vec4<f32> = x_44.unity_FogColor;
  let x_1550 : vec3<f32> = ((vec3<f32>(x_1542, x_1542, x_1542) * vec3<f32>(x_1544.x, x_1544.y, x_1544.z)) + vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
  let x_1551 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1551.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0);
}

