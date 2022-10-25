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

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_767 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1143 : AdditionalLights;

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
  var u_xlat4 : vec3<f32>;
  var x_487 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat13 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat24 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb27 : bool;
  var u_xlat27 : f32;
  var u_xlat39 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu34 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati35 : i32;
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
    let x_493 : vec3<f32> = u_xlat4;
    x_487 = x_493;
  }
  let x_494 : vec3<f32> = x_487;
  let x_495 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_498 : f32 = vs_INTERP0.y;
  let x_500 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_498 * x_500);
  let x_503 : f32 = x_44.unity_MatrixV[0i].z;
  let x_505 : f32 = vs_INTERP0.x;
  let x_507 : f32 = u_xlat33;
  u_xlat33 = ((x_503 * x_505) + x_507);
  let x_510 : f32 = x_44.unity_MatrixV[2i].z;
  let x_512 : f32 = vs_INTERP0.z;
  let x_514 : f32 = u_xlat33;
  u_xlat33 = ((x_510 * x_512) + x_514);
  let x_516 : f32 = u_xlat33;
  let x_518 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_516 + x_518);
  let x_520 : f32 = u_xlat33;
  let x_524 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_520) + -(x_524));
  let x_527 : f32 = u_xlat33;
  u_xlat33 = max(x_527, 0.0f);
  let x_529 : f32 = u_xlat33;
  let x_532 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_529 * x_532);
  u_xlat1.w = 1.0f;
  let x_538 : vec4<f32> = x_359.unity_SHAr;
  let x_539 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_538, x_539);
  let x_544 : vec4<f32> = x_359.unity_SHAg;
  let x_545 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_544, x_545);
  let x_550 : vec4<f32> = x_359.unity_SHAb;
  let x_551 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_550, x_551);
  let x_555 : vec4<f32> = u_xlat1;
  let x_557 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_555.y, x_555.z, x_555.z, x_555.x) * vec4<f32>(x_557.x, x_557.y, x_557.z, x_557.z));
  let x_563 : vec4<f32> = x_359.unity_SHBr;
  let x_564 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_563, x_564);
  let x_569 : vec4<f32> = x_359.unity_SHBg;
  let x_570 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_569, x_570);
  let x_575 : vec4<f32> = x_359.unity_SHBb;
  let x_576 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_575, x_576);
  let x_581 : f32 = u_xlat1.y;
  let x_583 : f32 = u_xlat1.y;
  u_xlat34 = (x_581 * x_583);
  let x_586 : f32 = u_xlat1.x;
  let x_588 : f32 = u_xlat1.x;
  let x_590 : f32 = u_xlat34;
  u_xlat34 = ((x_586 * x_588) + -(x_590));
  let x_595 : vec4<f32> = x_359.unity_SHC;
  let x_597 : f32 = u_xlat34;
  let x_600 : vec3<f32> = u_xlat6;
  let x_601 : vec3<f32> = ((vec3<f32>(x_595.x, x_595.y, x_595.z) * vec3<f32>(x_597, x_597, x_597)) + x_600);
  let x_602 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_604 : vec3<f32> = u_xlat4;
  let x_605 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_604 + vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_608, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_613 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_614 : vec2<f32> = vec2<f32>(x_613.x, x_613.y);
  let x_618 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_614.x, x_614.y));
  let x_619 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
  let x_621 : vec4<f32> = u_xlat5;
  let x_623 : vec4<f32> = hlslcc_FragCoord;
  let x_625 : vec2<f32> = (vec2<f32>(x_621.x, x_621.y) * vec2<f32>(x_623.x, x_623.y));
  let x_626 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
  let x_629 : f32 = u_xlat5.y;
  let x_632 : f32 = x_44.x_ScaleBiasRt.x;
  let x_635 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat34 = ((x_629 * x_632) + x_635);
  let x_637 : f32 = u_xlat34;
  u_xlat5.z = (-(x_637) + 1.0f);
  let x_641 : vec4<f32> = u_xlat2;
  let x_642 : vec2<f32> = vec2<f32>(x_641.x, x_641.y);
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
  let x_645 : vec4<f32> = u_xlat2;
  let x_649 : vec2<f32> = clamp(vec2<f32>(x_645.x, x_645.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_650 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_649.x, x_649.y, x_650.z, x_650.w);
  let x_653 : f32 = u_xlat2.x;
  u_xlat34 = ((-(x_653) * 0.959999979f) + 0.959999979f);
  let x_658 : f32 = u_xlat34;
  let x_661 : f32 = u_xlat2.y;
  u_xlat35 = (-(x_658) + x_661);
  let x_663 : vec4<f32> = u_xlat0;
  let x_665 : f32 = u_xlat34;
  u_xlat6 = (vec3<f32>(x_663.x, x_663.y, x_663.z) * vec3<f32>(x_665, x_665, x_665));
  let x_668 : vec4<f32> = u_xlat0;
  let x_672 : vec3<f32> = (vec3<f32>(x_668.x, x_668.y, x_668.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_673 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat2;
  let x_677 : vec4<f32> = u_xlat0;
  let x_682 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.x, x_675.x) * vec3<f32>(x_677.x, x_677.y, x_677.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_683 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_686 : f32 = u_xlat2.y;
  u_xlat34 = (-(x_686) + 1.0f);
  let x_689 : f32 = u_xlat34;
  let x_690 : f32 = u_xlat34;
  u_xlat2.x = (x_689 * x_690);
  let x_694 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_694, 0.0078125f);
  let x_700 : f32 = u_xlat2.x;
  let x_702 : f32 = u_xlat2.x;
  u_xlat13 = (x_700 * x_702);
  let x_704 : f32 = u_xlat35;
  u_xlat35 = (x_704 + 1.0f);
  let x_706 : f32 = u_xlat35;
  u_xlat35 = min(x_706, 1.0f);
  let x_710 : f32 = u_xlat2.x;
  u_xlat36 = ((x_710 * 4.0f) + 2.0f);
  let x_720 : vec4<f32> = u_xlat5;
  let x_723 : f32 = x_44.x_GlobalMipBias.x;
  let x_724 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_720.x, x_720.z), x_723);
  u_xlat37 = x_724.x;
  let x_726 : f32 = u_xlat37;
  u_xlat5.x = (x_726 + -1.0f);
  let x_731 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_733 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_731 * x_733) + 1.0f);
  let x_739 : f32 = u_xlat2.z;
  let x_740 : f32 = u_xlat37;
  u_xlat24 = min(x_739, x_740);
  let x_744 : vec4<f32> = vs_INTERP8;
  let x_745 : vec2<f32> = vec2<f32>(x_744.x, x_744.y);
  let x_747 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_745.x, x_745.y, x_747);
  let x_759 : vec3<f32> = txVec0;
  let x_761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_759.xy, x_759.z);
  u_xlat37 = x_761;
  let x_769 : f32 = x_767.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_769) + 1.0f);
  let x_773 : f32 = u_xlat37;
  let x_775 : f32 = x_767.x_MainLightShadowParams.x;
  let x_778 : f32 = u_xlat16.x;
  u_xlat37 = ((x_773 * x_775) + x_778);
  let x_782 : f32 = vs_INTERP8.z;
  u_xlatb16 = (0.0f >= x_782);
  let x_786 : f32 = vs_INTERP8.z;
  u_xlatb27 = (x_786 >= 1.0f);
  let x_788 : bool = u_xlatb27;
  let x_789 : bool = u_xlatb16;
  u_xlatb16 = (x_788 | x_789);
  let x_791 : bool = u_xlatb16;
  let x_792 : f32 = u_xlat37;
  u_xlat37 = select(x_792, 1.0f, x_791);
  let x_794 : vec3<f32> = vs_INTERP0;
  let x_796 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat16 = (x_794 + -(x_796));
  let x_799 : vec3<f32> = u_xlat16;
  let x_800 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(x_799, x_800);
  let x_804 : f32 = u_xlat16.x;
  let x_806 : f32 = x_767.x_MainLightShadowParams.z;
  let x_809 : f32 = x_767.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_804 * x_806) + x_809);
  let x_813 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_813, 0.0f, 1.0f);
  let x_817 : f32 = u_xlat37;
  u_xlat27 = (-(x_817) + 1.0f);
  let x_821 : f32 = u_xlat16.x;
  let x_822 : f32 = u_xlat27;
  let x_824 : f32 = u_xlat37;
  u_xlat37 = ((x_821 * x_822) + x_824);
  let x_826 : vec4<f32> = u_xlat5;
  let x_829 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_826.x, x_826.x, x_826.x) * vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_833 : vec4<f32> = u_xlat3;
  let x_836 : vec4<f32> = u_xlat1;
  u_xlat39 = dot(-(vec3<f32>(x_833.x, x_833.y, x_833.z)), vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : f32 = u_xlat39;
  let x_840 : f32 = u_xlat39;
  u_xlat39 = (x_839 + x_840);
  let x_843 : vec4<f32> = u_xlat1;
  let x_845 : f32 = u_xlat39;
  let x_849 : vec4<f32> = u_xlat3;
  let x_852 : vec3<f32> = ((vec3<f32>(x_843.x, x_843.y, x_843.z) * -(vec3<f32>(x_845, x_845, x_845))) + -(vec3<f32>(x_849.x, x_849.y, x_849.z)));
  let x_853 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec4<f32> = u_xlat1;
  let x_857 : vec4<f32> = u_xlat3;
  u_xlat39 = dot(vec3<f32>(x_855.x, x_855.y, x_855.z), vec3<f32>(x_857.x, x_857.y, x_857.z));
  let x_860 : f32 = u_xlat39;
  u_xlat39 = clamp(x_860, 0.0f, 1.0f);
  let x_862 : f32 = u_xlat39;
  u_xlat39 = (-(x_862) + 1.0f);
  let x_865 : f32 = u_xlat39;
  let x_866 : f32 = u_xlat39;
  u_xlat39 = (x_865 * x_866);
  let x_868 : f32 = u_xlat39;
  let x_869 : f32 = u_xlat39;
  u_xlat39 = (x_868 * x_869);
  let x_872 : f32 = u_xlat34;
  u_xlat40 = ((-(x_872) * 0.699999988f) + 1.700000048f);
  let x_878 : f32 = u_xlat34;
  let x_879 : f32 = u_xlat40;
  u_xlat34 = (x_878 * x_879);
  let x_881 : f32 = u_xlat34;
  u_xlat34 = (x_881 * 6.0f);
  let x_891 : vec4<f32> = u_xlat7;
  let x_893 : f32 = u_xlat34;
  let x_894 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_891.x, x_891.y, x_891.z), x_893);
  u_xlat7 = x_894;
  let x_896 : f32 = u_xlat7.w;
  u_xlat34 = (x_896 + -1.0f);
  let x_899 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_900 : f32 = u_xlat34;
  u_xlat34 = ((x_899 * x_900) + 1.0f);
  let x_903 : f32 = u_xlat34;
  u_xlat34 = max(x_903, 0.0f);
  let x_905 : f32 = u_xlat34;
  u_xlat34 = log2(x_905);
  let x_907 : f32 = u_xlat34;
  let x_909 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat34 = (x_907 * x_909);
  let x_911 : f32 = u_xlat34;
  u_xlat34 = exp2(x_911);
  let x_913 : f32 = u_xlat34;
  let x_915 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat34 = (x_913 * x_915);
  let x_917 : vec4<f32> = u_xlat7;
  let x_919 : f32 = u_xlat34;
  let x_921 : vec3<f32> = (vec3<f32>(x_917.x, x_917.y, x_917.z) * vec3<f32>(x_919, x_919, x_919));
  let x_922 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
  let x_925 : vec4<f32> = u_xlat2;
  let x_927 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_925.x, x_925.x) * vec2<f32>(x_927.x, x_927.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_933 : f32 = u_xlat8.y;
  u_xlat34 = (1.0f / x_933);
  let x_936 : vec4<f32> = u_xlat0;
  let x_939 : f32 = u_xlat35;
  u_xlat19 = (-(vec3<f32>(x_936.x, x_936.y, x_936.z)) + vec3<f32>(x_939, x_939, x_939));
  let x_942 : f32 = u_xlat39;
  let x_944 : vec3<f32> = u_xlat19;
  let x_946 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_942, x_942, x_942) * x_944) + vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : f32 = u_xlat34;
  let x_951 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_949, x_949, x_949) * x_951);
  let x_953 : vec4<f32> = u_xlat7;
  let x_955 : vec3<f32> = u_xlat19;
  let x_956 : vec3<f32> = (vec3<f32>(x_953.x, x_953.y, x_953.z) * x_955);
  let x_957 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : vec3<f32> = u_xlat4;
  let x_960 : vec3<f32> = u_xlat6;
  let x_962 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_959 * x_960) + vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_965 : f32 = u_xlat37;
  let x_968 : f32 = x_359.unity_LightData.z;
  u_xlat34 = (x_965 * x_968);
  let x_970 : vec4<f32> = u_xlat1;
  let x_973 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_970.x, x_970.y, x_970.z), vec3<f32>(x_973.x, x_973.y, x_973.z));
  let x_978 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_978, 0.0f, 1.0f);
  let x_981 : f32 = u_xlat34;
  let x_983 : f32 = u_xlat2.x;
  u_xlat34 = (x_981 * x_983);
  let x_985 : f32 = u_xlat34;
  let x_987 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_985, x_985, x_985) * x_987);
  let x_989 : vec4<f32> = u_xlat3;
  let x_992 : vec4<f32> = x_44.x_MainLightPosition;
  let x_994 : vec3<f32> = (vec3<f32>(x_989.x, x_989.y, x_989.z) + vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec4<f32> = u_xlat7;
  let x_999 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_997.x, x_997.y, x_997.z), vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1002 : f32 = u_xlat34;
  u_xlat34 = max(x_1002, 1.17549435e-37f);
  let x_1005 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_1005);
  let x_1007 : f32 = u_xlat34;
  let x_1009 : vec4<f32> = u_xlat7;
  let x_1011 : vec3<f32> = (vec3<f32>(x_1007, x_1007, x_1007) * vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
  let x_1012 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
  let x_1014 : vec4<f32> = u_xlat1;
  let x_1016 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1014.x, x_1014.y, x_1014.z), vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1019, 0.0f, 1.0f);
  let x_1022 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1024 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_1022.x, x_1022.y, x_1022.z), vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
  let x_1029 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1029, 0.0f, 1.0f);
  let x_1032 : f32 = u_xlat34;
  let x_1033 : f32 = u_xlat34;
  u_xlat34 = (x_1032 * x_1033);
  let x_1035 : f32 = u_xlat34;
  let x_1037 : f32 = u_xlat8.x;
  u_xlat34 = ((x_1035 * x_1037) + 1.000010014f);
  let x_1042 : f32 = u_xlat2.x;
  let x_1044 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1042 * x_1044);
  let x_1047 : f32 = u_xlat34;
  let x_1048 : f32 = u_xlat34;
  u_xlat34 = (x_1047 * x_1048);
  let x_1051 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1051, 0.100000001f);
  let x_1055 : f32 = u_xlat34;
  let x_1057 : f32 = u_xlat2.x;
  u_xlat34 = (x_1055 * x_1057);
  let x_1059 : f32 = u_xlat36;
  let x_1060 : f32 = u_xlat34;
  u_xlat34 = (x_1059 * x_1060);
  let x_1062 : f32 = u_xlat13;
  let x_1063 : f32 = u_xlat34;
  u_xlat34 = (x_1062 / x_1063);
  let x_1065 : vec4<f32> = u_xlat0;
  let x_1067 : f32 = u_xlat34;
  let x_1070 : vec3<f32> = u_xlat6;
  let x_1071 : vec3<f32> = ((vec3<f32>(x_1065.x, x_1065.y, x_1065.z) * vec3<f32>(x_1067, x_1067, x_1067)) + x_1070);
  let x_1072 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1074 : vec3<f32> = u_xlat16;
  let x_1075 : vec4<f32> = u_xlat7;
  u_xlat16 = (x_1074 * vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
  let x_1079 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1081 : f32 = x_359.unity_LightData.y;
  u_xlat34 = min(x_1079, x_1081);
  let x_1085 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1085));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1097 : u32 = u_xlatu_loop_1;
    let x_1098 : u32 = u_xlatu34;
    if ((x_1097 < x_1098)) {
    } else {
      break;
    }
    let x_1101 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_1101 >> 2u);
    let x_1105 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_1105 & 3u));
    let x_1108 : u32 = u_xlatu35;
    let x_1111 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_1108)];
    let x_1121 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1126 : vec4<u32> = indexable[x_1121];
    u_xlat35 = dot(x_1111, bitcast<vec4<f32>>(x_1126));
    let x_1130 : f32 = u_xlat35;
    u_xlati35 = i32(x_1130);
    let x_1132 : vec3<f32> = vs_INTERP0;
    let x_1144 : i32 = u_xlati35;
    let x_1146 : vec4<f32> = x_1143.x_AdditionalLightsPosition[x_1144];
    let x_1149 : i32 = u_xlati35;
    let x_1151 : vec4<f32> = x_1143.x_AdditionalLightsPosition[x_1149];
    u_xlat19 = ((-(x_1132) * vec3<f32>(x_1146.w, x_1146.w, x_1146.w)) + vec3<f32>(x_1151.x, x_1151.y, x_1151.z));
    let x_1154 : vec3<f32> = u_xlat19;
    let x_1155 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1154, x_1155);
    let x_1157 : f32 = u_xlat37;
    u_xlat37 = max(x_1157, 6.10351562e-05f);
    let x_1160 : f32 = u_xlat37;
    u_xlat39 = inverseSqrt(x_1160);
    let x_1163 : f32 = u_xlat39;
    let x_1165 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1163, x_1163, x_1163) * x_1165);
    let x_1167 : f32 = u_xlat37;
    u_xlat40 = (1.0f / x_1167);
    let x_1169 : f32 = u_xlat37;
    let x_1170 : i32 = u_xlati35;
    let x_1172 : f32 = x_1143.x_AdditionalLightsAttenuation[x_1170].x;
    u_xlat37 = (x_1169 * x_1172);
    let x_1174 : f32 = u_xlat37;
    let x_1176 : f32 = u_xlat37;
    u_xlat37 = ((-(x_1174) * x_1176) + 1.0f);
    let x_1179 : f32 = u_xlat37;
    u_xlat37 = max(x_1179, 0.0f);
    let x_1181 : f32 = u_xlat37;
    let x_1182 : f32 = u_xlat37;
    u_xlat37 = (x_1181 * x_1182);
    let x_1184 : f32 = u_xlat37;
    let x_1185 : f32 = u_xlat40;
    u_xlat37 = (x_1184 * x_1185);
    let x_1187 : i32 = u_xlati35;
    let x_1189 : vec4<f32> = x_1143.x_AdditionalLightsSpotDir[x_1187];
    let x_1191 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1189.x, x_1189.y, x_1189.z), x_1191);
    let x_1193 : f32 = u_xlat40;
    let x_1194 : i32 = u_xlati35;
    let x_1196 : f32 = x_1143.x_AdditionalLightsAttenuation[x_1194].z;
    let x_1198 : i32 = u_xlati35;
    let x_1200 : f32 = x_1143.x_AdditionalLightsAttenuation[x_1198].w;
    u_xlat40 = ((x_1193 * x_1196) + x_1200);
    let x_1202 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1202, 0.0f, 1.0f);
    let x_1204 : f32 = u_xlat40;
    let x_1205 : f32 = u_xlat40;
    u_xlat40 = (x_1204 * x_1205);
    let x_1207 : f32 = u_xlat37;
    let x_1208 : f32 = u_xlat40;
    u_xlat37 = (x_1207 * x_1208);
    let x_1211 : vec4<f32> = u_xlat5;
    let x_1213 : i32 = u_xlati35;
    let x_1215 : vec4<f32> = x_1143.x_AdditionalLightsColor[x_1213];
    u_xlat10 = (vec3<f32>(x_1211.x, x_1211.x, x_1211.x) * vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
    let x_1218 : vec4<f32> = u_xlat1;
    let x_1220 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1218.x, x_1218.y, x_1218.z), x_1220);
    let x_1222 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1222, 0.0f, 1.0f);
    let x_1224 : f32 = u_xlat35;
    let x_1225 : f32 = u_xlat37;
    u_xlat35 = (x_1224 * x_1225);
    let x_1227 : f32 = u_xlat35;
    let x_1229 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1227, x_1227, x_1227) * x_1229);
    let x_1231 : vec3<f32> = u_xlat19;
    let x_1232 : f32 = u_xlat39;
    let x_1235 : vec4<f32> = u_xlat3;
    u_xlat19 = ((x_1231 * vec3<f32>(x_1232, x_1232, x_1232)) + vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
    let x_1238 : vec3<f32> = u_xlat19;
    let x_1239 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(x_1238, x_1239);
    let x_1241 : f32 = u_xlat35;
    u_xlat35 = max(x_1241, 1.17549435e-37f);
    let x_1243 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_1243);
    let x_1245 : f32 = u_xlat35;
    let x_1247 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1245, x_1245, x_1245) * x_1247);
    let x_1249 : vec4<f32> = u_xlat1;
    let x_1251 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(vec3<f32>(x_1249.x, x_1249.y, x_1249.z), x_1251);
    let x_1253 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1253, 0.0f, 1.0f);
    let x_1255 : vec3<f32> = u_xlat9;
    let x_1256 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1255, x_1256);
    let x_1258 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1258, 0.0f, 1.0f);
    let x_1260 : f32 = u_xlat35;
    let x_1261 : f32 = u_xlat35;
    u_xlat35 = (x_1260 * x_1261);
    let x_1263 : f32 = u_xlat35;
    let x_1265 : f32 = u_xlat8.x;
    u_xlat35 = ((x_1263 * x_1265) + 1.000010014f);
    let x_1268 : f32 = u_xlat37;
    let x_1269 : f32 = u_xlat37;
    u_xlat37 = (x_1268 * x_1269);
    let x_1271 : f32 = u_xlat35;
    let x_1272 : f32 = u_xlat35;
    u_xlat35 = (x_1271 * x_1272);
    let x_1274 : f32 = u_xlat37;
    u_xlat37 = max(x_1274, 0.100000001f);
    let x_1276 : f32 = u_xlat35;
    let x_1277 : f32 = u_xlat37;
    u_xlat35 = (x_1276 * x_1277);
    let x_1279 : f32 = u_xlat36;
    let x_1280 : f32 = u_xlat35;
    u_xlat35 = (x_1279 * x_1280);
    let x_1282 : f32 = u_xlat13;
    let x_1283 : f32 = u_xlat35;
    u_xlat35 = (x_1282 / x_1283);
    let x_1285 : vec4<f32> = u_xlat0;
    let x_1287 : f32 = u_xlat35;
    let x_1290 : vec3<f32> = u_xlat6;
    u_xlat19 = ((vec3<f32>(x_1285.x, x_1285.y, x_1285.z) * vec3<f32>(x_1287, x_1287, x_1287)) + x_1290);
    let x_1292 : vec3<f32> = u_xlat19;
    let x_1293 : vec3<f32> = u_xlat10;
    let x_1295 : vec4<f32> = u_xlat7;
    let x_1297 : vec3<f32> = ((x_1292 * x_1293) + vec3<f32>(x_1295.x, x_1295.y, x_1295.z));
    let x_1298 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);

    continuing {
      let x_1300 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1300 + bitcast<u32>(1i));
    }
  }
  let x_1302 : vec3<f32> = u_xlat4;
  let x_1303 : f32 = u_xlat24;
  let x_1306 : vec3<f32> = u_xlat16;
  let x_1307 : vec3<f32> = ((x_1302 * vec3<f32>(x_1303, x_1303, x_1303)) + x_1306);
  let x_1308 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1307.x, x_1307.y, x_1307.z, x_1308.w);
  let x_1310 : vec4<f32> = u_xlat7;
  let x_1312 : vec4<f32> = u_xlat0;
  let x_1314 : vec3<f32> = (vec3<f32>(x_1310.x, x_1310.y, x_1310.z) + vec3<f32>(x_1312.x, x_1312.y, x_1312.z));
  let x_1315 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
  let x_1317 : f32 = u_xlat33;
  let x_1318 : f32 = u_xlat33;
  u_xlat33 = (x_1317 * -(x_1318));
  let x_1321 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1321);
  let x_1323 : vec4<f32> = u_xlat0;
  let x_1327 : vec4<f32> = x_44.unity_FogColor;
  let x_1330 : vec3<f32> = (vec3<f32>(x_1323.x, x_1323.y, x_1323.z) + -(vec3<f32>(x_1327.x, x_1327.y, x_1327.z)));
  let x_1331 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1331.w);
  let x_1335 : f32 = u_xlat33;
  let x_1337 : vec4<f32> = u_xlat0;
  let x_1341 : vec4<f32> = x_44.unity_FogColor;
  let x_1343 : vec3<f32> = ((vec3<f32>(x_1335, x_1335, x_1335) * vec3<f32>(x_1337.x, x_1337.y, x_1337.z)) + vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
  let x_1344 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0);
}

