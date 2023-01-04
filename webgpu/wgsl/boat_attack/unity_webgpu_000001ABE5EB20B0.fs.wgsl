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

@group(1) @binding(3) var<uniform> x_745 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1121 : AdditionalLights;

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
  var x_475 : f32;
  var x_488 : f32;
  var x_499 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat13 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat24 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb5 : bool;
  var u_xlatb16 : bool;
  var u_xlat16 : f32;
  var u_xlat38 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat39 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu2 : u32;
  var u_xlati36 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati2 : i32;
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
  let x_474 : bool = u_xlatb33;
  if (x_474) {
    let x_479 : f32 = u_xlat3.x;
    x_475 = x_479;
  } else {
    let x_484 : f32 = x_44.unity_MatrixV[0i].z;
    x_475 = x_484;
  }
  let x_485 : f32 = x_475;
  u_xlat4.x = x_485;
  let x_487 : bool = u_xlatb33;
  if (x_487) {
    let x_492 : f32 = u_xlat3.y;
    x_488 = x_492;
  } else {
    let x_495 : f32 = x_44.unity_MatrixV[1i].z;
    x_488 = x_495;
  }
  let x_496 : f32 = x_488;
  u_xlat4.y = x_496;
  let x_498 : bool = u_xlatb33;
  if (x_498) {
    let x_503 : f32 = u_xlat3.z;
    x_499 = x_503;
  } else {
    let x_507 : f32 = x_44.unity_MatrixV[2i].z;
    x_499 = x_507;
  }
  let x_508 : f32 = x_499;
  u_xlat4.z = x_508;
  u_xlat1.w = 1.0f;
  let x_514 : vec4<f32> = x_359.unity_SHAr;
  let x_515 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_514, x_515);
  let x_520 : vec4<f32> = x_359.unity_SHAg;
  let x_521 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_520, x_521);
  let x_526 : vec4<f32> = x_359.unity_SHAb;
  let x_527 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_526, x_527);
  let x_531 : vec4<f32> = u_xlat1;
  let x_533 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_531.y, x_531.z, x_531.z, x_531.x) * vec4<f32>(x_533.x, x_533.y, x_533.z, x_533.z));
  let x_539 : vec4<f32> = x_359.unity_SHBr;
  let x_540 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_539, x_540);
  let x_545 : vec4<f32> = x_359.unity_SHBg;
  let x_546 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_545, x_546);
  let x_551 : vec4<f32> = x_359.unity_SHBb;
  let x_552 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_551, x_552);
  let x_556 : f32 = u_xlat1.y;
  let x_558 : f32 = u_xlat1.y;
  u_xlat33 = (x_556 * x_558);
  let x_561 : f32 = u_xlat1.x;
  let x_563 : f32 = u_xlat1.x;
  let x_565 : f32 = u_xlat33;
  u_xlat33 = ((x_561 * x_563) + -(x_565));
  let x_570 : vec4<f32> = x_359.unity_SHC;
  let x_572 : f32 = u_xlat33;
  let x_575 : vec3<f32> = u_xlat6;
  let x_576 : vec3<f32> = ((vec3<f32>(x_570.x, x_570.y, x_570.z) * vec3<f32>(x_572, x_572, x_572)) + x_575);
  let x_577 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat3;
  let x_581 : vec4<f32> = u_xlat5;
  let x_583 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) + vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat3;
  let x_589 : vec3<f32> = max(vec3<f32>(x_586.x, x_586.y, x_586.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_590 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_594 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_595 : vec2<f32> = vec2<f32>(x_594.x, x_594.y);
  let x_599 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_595.x, x_595.y));
  let x_600 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat5;
  let x_604 : vec4<f32> = hlslcc_FragCoord;
  let x_606 : vec2<f32> = (vec2<f32>(x_602.x, x_602.y) * vec2<f32>(x_604.x, x_604.y));
  let x_607 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_607.w);
  let x_610 : f32 = u_xlat5.y;
  let x_613 : f32 = x_44.x_ScaleBiasRt.x;
  let x_616 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_610 * x_613) + x_616);
  let x_618 : f32 = u_xlat33;
  u_xlat5.z = (-(x_618) + 1.0f);
  let x_622 : vec4<f32> = u_xlat2;
  let x_623 : vec2<f32> = vec2<f32>(x_622.x, x_622.y);
  let x_624 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat2;
  let x_630 : vec2<f32> = clamp(vec2<f32>(x_626.x, x_626.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_631 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_630.x, x_630.y, x_631.z, x_631.w);
  let x_634 : f32 = u_xlat2.x;
  u_xlat33 = ((-(x_634) * 0.959999979f) + 0.959999979f);
  let x_640 : f32 = u_xlat33;
  let x_643 : f32 = u_xlat2.y;
  u_xlat34 = (-(x_640) + x_643);
  let x_645 : f32 = u_xlat33;
  let x_647 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_645, x_645, x_645) * vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat0;
  let x_654 : vec3<f32> = (vec3<f32>(x_650.x, x_650.y, x_650.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_655 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec4<f32> = u_xlat2;
  let x_659 : vec4<f32> = u_xlat0;
  let x_664 : vec3<f32> = ((vec3<f32>(x_657.x, x_657.x, x_657.x) * vec3<f32>(x_659.x, x_659.y, x_659.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_665 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_668 : f32 = u_xlat2.y;
  u_xlat33 = (-(x_668) + 1.0f);
  let x_671 : f32 = u_xlat33;
  let x_672 : f32 = u_xlat33;
  u_xlat2.x = (x_671 * x_672);
  let x_676 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_676, 0.0078125f);
  let x_682 : f32 = u_xlat2.x;
  let x_684 : f32 = u_xlat2.x;
  u_xlat13 = (x_682 * x_684);
  let x_686 : f32 = u_xlat34;
  u_xlat34 = (x_686 + 1.0f);
  let x_688 : f32 = u_xlat34;
  u_xlat34 = min(x_688, 1.0f);
  let x_691 : f32 = u_xlat2.x;
  u_xlat35 = ((x_691 * 4.0f) + 2.0f);
  let x_701 : vec4<f32> = u_xlat5;
  let x_704 : f32 = x_44.x_GlobalMipBias.x;
  let x_705 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_701.x, x_701.z), x_704);
  u_xlat36 = x_705.x;
  let x_708 : f32 = u_xlat36;
  u_xlat37 = (x_708 + -1.0f);
  let x_712 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_713 : f32 = u_xlat37;
  u_xlat37 = ((x_712 * x_713) + 1.0f);
  let x_718 : f32 = u_xlat2.z;
  let x_719 : f32 = u_xlat36;
  u_xlat24 = min(x_718, x_719);
  let x_723 : vec4<f32> = vs_INTERP8;
  let x_724 : vec2<f32> = vec2<f32>(x_723.x, x_723.y);
  let x_726 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_724.x, x_724.y, x_726);
  let x_738 : vec3<f32> = txVec0;
  let x_740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_738.xy, x_738.z);
  u_xlat36 = x_740;
  let x_747 : f32 = x_745.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_747) + 1.0f);
  let x_751 : f32 = u_xlat36;
  let x_753 : f32 = x_745.x_MainLightShadowParams.x;
  let x_756 : f32 = u_xlat5.x;
  u_xlat36 = ((x_751 * x_753) + x_756);
  let x_760 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_760);
  let x_764 : f32 = vs_INTERP8.z;
  u_xlatb16 = (x_764 >= 1.0f);
  let x_766 : bool = u_xlatb16;
  let x_767 : bool = u_xlatb5;
  u_xlatb5 = (x_766 | x_767);
  let x_769 : bool = u_xlatb5;
  let x_770 : f32 = u_xlat36;
  u_xlat36 = select(x_770, 1.0f, x_769);
  let x_772 : vec3<f32> = vs_INTERP0;
  let x_774 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_776 : vec3<f32> = (x_772 + -(x_774));
  let x_777 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_779 : vec4<f32> = u_xlat5;
  let x_781 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_779.x, x_779.y, x_779.z), vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_786 : f32 = u_xlat5.x;
  let x_788 : f32 = x_745.x_MainLightShadowParams.z;
  let x_791 : f32 = x_745.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_786 * x_788) + x_791);
  let x_795 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_795, 0.0f, 1.0f);
  let x_799 : f32 = u_xlat36;
  u_xlat16 = (-(x_799) + 1.0f);
  let x_803 : f32 = u_xlat5.x;
  let x_804 : f32 = u_xlat16;
  let x_806 : f32 = u_xlat36;
  u_xlat36 = ((x_803 * x_804) + x_806);
  let x_808 : f32 = u_xlat37;
  let x_811 : vec4<f32> = x_44.x_MainLightColor;
  let x_813 : vec3<f32> = (vec3<f32>(x_808, x_808, x_808) * vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  let x_817 : vec3<f32> = u_xlat4;
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat38 = dot(-(x_817), vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : f32 = u_xlat38;
  let x_823 : f32 = u_xlat38;
  u_xlat38 = (x_822 + x_823);
  let x_826 : vec4<f32> = u_xlat1;
  let x_828 : f32 = u_xlat38;
  let x_832 : vec3<f32> = u_xlat4;
  let x_834 : vec3<f32> = ((vec3<f32>(x_826.x, x_826.y, x_826.z) * -(vec3<f32>(x_828, x_828, x_828))) + -(x_832));
  let x_835 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat1;
  let x_839 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(vec3<f32>(x_837.x, x_837.y, x_837.z), x_839);
  let x_841 : f32 = u_xlat38;
  u_xlat38 = clamp(x_841, 0.0f, 1.0f);
  let x_843 : f32 = u_xlat38;
  u_xlat38 = (-(x_843) + 1.0f);
  let x_846 : f32 = u_xlat38;
  let x_847 : f32 = u_xlat38;
  u_xlat38 = (x_846 * x_847);
  let x_849 : f32 = u_xlat38;
  let x_850 : f32 = u_xlat38;
  u_xlat38 = (x_849 * x_850);
  let x_853 : f32 = u_xlat33;
  u_xlat39 = ((-(x_853) * 0.699999988f) + 1.700000048f);
  let x_859 : f32 = u_xlat33;
  let x_860 : f32 = u_xlat39;
  u_xlat33 = (x_859 * x_860);
  let x_862 : f32 = u_xlat33;
  u_xlat33 = (x_862 * 6.0f);
  let x_872 : vec4<f32> = u_xlat7;
  let x_874 : f32 = u_xlat33;
  let x_875 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_872.x, x_872.y, x_872.z), x_874);
  u_xlat7 = x_875;
  let x_877 : f32 = u_xlat7.w;
  u_xlat33 = (x_877 + -1.0f);
  let x_880 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_881 : f32 = u_xlat33;
  u_xlat33 = ((x_880 * x_881) + 1.0f);
  let x_884 : f32 = u_xlat33;
  u_xlat33 = max(x_884, 0.0f);
  let x_886 : f32 = u_xlat33;
  u_xlat33 = log2(x_886);
  let x_888 : f32 = u_xlat33;
  let x_890 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_888 * x_890);
  let x_892 : f32 = u_xlat33;
  u_xlat33 = exp2(x_892);
  let x_894 : f32 = u_xlat33;
  let x_896 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_894 * x_896);
  let x_898 : vec4<f32> = u_xlat7;
  let x_900 : f32 = u_xlat33;
  let x_902 : vec3<f32> = (vec3<f32>(x_898.x, x_898.y, x_898.z) * vec3<f32>(x_900, x_900, x_900));
  let x_903 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_906 : vec4<f32> = u_xlat2;
  let x_908 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_906.x, x_906.x) * vec2<f32>(x_908.x, x_908.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_914 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_914);
  let x_917 : vec4<f32> = u_xlat0;
  let x_920 : f32 = u_xlat34;
  u_xlat19 = (-(vec3<f32>(x_917.x, x_917.y, x_917.z)) + vec3<f32>(x_920, x_920, x_920));
  let x_923 : f32 = u_xlat38;
  let x_925 : vec3<f32> = u_xlat19;
  let x_927 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_923, x_923, x_923) * x_925) + vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_930 : f32 = u_xlat33;
  let x_932 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_930, x_930, x_930) * x_932);
  let x_934 : vec4<f32> = u_xlat7;
  let x_936 : vec3<f32> = u_xlat19;
  let x_937 : vec3<f32> = (vec3<f32>(x_934.x, x_934.y, x_934.z) * x_936);
  let x_938 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec4<f32> = u_xlat3;
  let x_942 : vec3<f32> = u_xlat6;
  let x_944 : vec4<f32> = u_xlat7;
  let x_946 : vec3<f32> = ((vec3<f32>(x_940.x, x_940.y, x_940.z) * x_942) + vec3<f32>(x_944.x, x_944.y, x_944.z));
  let x_947 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
  let x_949 : f32 = u_xlat36;
  let x_952 : f32 = x_359.unity_LightData.z;
  u_xlat33 = (x_949 * x_952);
  let x_954 : vec4<f32> = u_xlat1;
  let x_957 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_954.x, x_954.y, x_954.z), vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_960 : f32 = u_xlat34;
  u_xlat34 = clamp(x_960, 0.0f, 1.0f);
  let x_962 : f32 = u_xlat33;
  let x_963 : f32 = u_xlat34;
  u_xlat33 = (x_962 * x_963);
  let x_965 : f32 = u_xlat33;
  let x_967 : vec4<f32> = u_xlat5;
  let x_969 : vec3<f32> = (vec3<f32>(x_965, x_965, x_965) * vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
  let x_972 : vec3<f32> = u_xlat4;
  let x_974 : vec4<f32> = x_44.x_MainLightPosition;
  let x_976 : vec3<f32> = (x_972 + vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec4<f32> = u_xlat7;
  let x_981 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_979.x, x_979.y, x_979.z), vec3<f32>(x_981.x, x_981.y, x_981.z));
  let x_984 : f32 = u_xlat33;
  u_xlat33 = max(x_984, 1.17549435e-37f);
  let x_987 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_987);
  let x_989 : f32 = u_xlat33;
  let x_991 : vec4<f32> = u_xlat7;
  let x_993 : vec3<f32> = (vec3<f32>(x_989, x_989, x_989) * vec3<f32>(x_991.x, x_991.y, x_991.z));
  let x_994 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_996 : vec4<f32> = u_xlat1;
  let x_998 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_996.x, x_996.y, x_996.z), vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1001, 0.0f, 1.0f);
  let x_1004 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1006 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1004.x, x_1004.y, x_1004.z), vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1009, 0.0f, 1.0f);
  let x_1011 : f32 = u_xlat33;
  let x_1012 : f32 = u_xlat33;
  u_xlat33 = (x_1011 * x_1012);
  let x_1014 : f32 = u_xlat33;
  let x_1016 : f32 = u_xlat8.x;
  u_xlat33 = ((x_1014 * x_1016) + 1.000010014f);
  let x_1020 : f32 = u_xlat34;
  let x_1021 : f32 = u_xlat34;
  u_xlat34 = (x_1020 * x_1021);
  let x_1023 : f32 = u_xlat33;
  let x_1024 : f32 = u_xlat33;
  u_xlat33 = (x_1023 * x_1024);
  let x_1026 : f32 = u_xlat34;
  u_xlat34 = max(x_1026, 0.100000001f);
  let x_1029 : f32 = u_xlat33;
  let x_1030 : f32 = u_xlat34;
  u_xlat33 = (x_1029 * x_1030);
  let x_1032 : f32 = u_xlat35;
  let x_1033 : f32 = u_xlat33;
  u_xlat33 = (x_1032 * x_1033);
  let x_1035 : f32 = u_xlat13;
  let x_1036 : f32 = u_xlat33;
  u_xlat33 = (x_1035 / x_1036);
  let x_1038 : vec4<f32> = u_xlat0;
  let x_1040 : f32 = u_xlat33;
  let x_1043 : vec3<f32> = u_xlat6;
  let x_1044 : vec3<f32> = ((vec3<f32>(x_1038.x, x_1038.y, x_1038.z) * vec3<f32>(x_1040, x_1040, x_1040)) + x_1043);
  let x_1045 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1047 : vec4<f32> = u_xlat5;
  let x_1049 : vec4<f32> = u_xlat7;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1047.x, x_1047.y, x_1047.z) * vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1052 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1055 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1057 : f32 = x_359.unity_LightData.y;
  u_xlat33 = min(x_1055, x_1057);
  let x_1061 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_1061));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1073 : u32 = u_xlatu_loop_1;
    let x_1074 : u32 = u_xlatu33;
    if ((x_1073 < x_1074)) {
    } else {
      break;
    }
    let x_1077 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_1077 >> 2u);
    let x_1081 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_1081 & 3u));
    let x_1084 : u32 = u_xlatu2;
    let x_1087 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_1084)];
    let x_1097 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1102 : vec4<u32> = indexable[x_1097];
    u_xlat2.x = dot(x_1087, bitcast<vec4<f32>>(x_1102));
    let x_1108 : f32 = u_xlat2.x;
    u_xlati2 = i32(x_1108);
    let x_1110 : vec3<f32> = vs_INTERP0;
    let x_1122 : i32 = u_xlati2;
    let x_1124 : vec4<f32> = x_1121.x_AdditionalLightsPosition[x_1122];
    let x_1127 : i32 = u_xlati2;
    let x_1129 : vec4<f32> = x_1121.x_AdditionalLightsPosition[x_1127];
    u_xlat19 = ((-(x_1110) * vec3<f32>(x_1124.w, x_1124.w, x_1124.w)) + vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
    let x_1132 : vec3<f32> = u_xlat19;
    let x_1133 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_1132, x_1133);
    let x_1135 : f32 = u_xlat36;
    u_xlat36 = max(x_1135, 6.10351562e-05f);
    let x_1138 : f32 = u_xlat36;
    u_xlat38 = inverseSqrt(x_1138);
    let x_1141 : f32 = u_xlat38;
    let x_1143 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1141, x_1141, x_1141) * x_1143);
    let x_1145 : f32 = u_xlat36;
    u_xlat39 = (1.0f / x_1145);
    let x_1147 : f32 = u_xlat36;
    let x_1148 : i32 = u_xlati2;
    let x_1150 : f32 = x_1121.x_AdditionalLightsAttenuation[x_1148].x;
    u_xlat36 = (x_1147 * x_1150);
    let x_1152 : f32 = u_xlat36;
    let x_1154 : f32 = u_xlat36;
    u_xlat36 = ((-(x_1152) * x_1154) + 1.0f);
    let x_1157 : f32 = u_xlat36;
    u_xlat36 = max(x_1157, 0.0f);
    let x_1159 : f32 = u_xlat36;
    let x_1160 : f32 = u_xlat36;
    u_xlat36 = (x_1159 * x_1160);
    let x_1162 : f32 = u_xlat36;
    let x_1163 : f32 = u_xlat39;
    u_xlat36 = (x_1162 * x_1163);
    let x_1165 : i32 = u_xlati2;
    let x_1167 : vec4<f32> = x_1121.x_AdditionalLightsSpotDir[x_1165];
    let x_1169 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1167.x, x_1167.y, x_1167.z), x_1169);
    let x_1171 : f32 = u_xlat39;
    let x_1172 : i32 = u_xlati2;
    let x_1174 : f32 = x_1121.x_AdditionalLightsAttenuation[x_1172].z;
    let x_1176 : i32 = u_xlati2;
    let x_1178 : f32 = x_1121.x_AdditionalLightsAttenuation[x_1176].w;
    u_xlat39 = ((x_1171 * x_1174) + x_1178);
    let x_1180 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1180, 0.0f, 1.0f);
    let x_1182 : f32 = u_xlat39;
    let x_1183 : f32 = u_xlat39;
    u_xlat39 = (x_1182 * x_1183);
    let x_1185 : f32 = u_xlat36;
    let x_1186 : f32 = u_xlat39;
    u_xlat36 = (x_1185 * x_1186);
    let x_1189 : f32 = u_xlat37;
    let x_1191 : i32 = u_xlati2;
    let x_1193 : vec4<f32> = x_1121.x_AdditionalLightsColor[x_1191];
    u_xlat10 = (vec3<f32>(x_1189, x_1189, x_1189) * vec3<f32>(x_1193.x, x_1193.y, x_1193.z));
    let x_1196 : vec4<f32> = u_xlat1;
    let x_1198 : vec3<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_1196.x, x_1196.y, x_1196.z), x_1198);
    let x_1202 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1202, 0.0f, 1.0f);
    let x_1206 : f32 = u_xlat2.x;
    let x_1207 : f32 = u_xlat36;
    u_xlat2.x = (x_1206 * x_1207);
    let x_1210 : vec4<f32> = u_xlat2;
    let x_1212 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1210.x, x_1210.x, x_1210.x) * x_1212);
    let x_1214 : vec3<f32> = u_xlat19;
    let x_1215 : f32 = u_xlat38;
    let x_1218 : vec3<f32> = u_xlat4;
    u_xlat19 = ((x_1214 * vec3<f32>(x_1215, x_1215, x_1215)) + x_1218);
    let x_1220 : vec3<f32> = u_xlat19;
    let x_1221 : vec3<f32> = u_xlat19;
    u_xlat2.x = dot(x_1220, x_1221);
    let x_1225 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_1225, 1.17549435e-37f);
    let x_1229 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_1229);
    let x_1232 : vec4<f32> = u_xlat2;
    let x_1234 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1232.x, x_1232.x, x_1232.x) * x_1234);
    let x_1236 : vec4<f32> = u_xlat1;
    let x_1238 : vec3<f32> = u_xlat19;
    u_xlat2.x = dot(vec3<f32>(x_1236.x, x_1236.y, x_1236.z), x_1238);
    let x_1242 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1242, 0.0f, 1.0f);
    let x_1245 : vec3<f32> = u_xlat9;
    let x_1246 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_1245, x_1246);
    let x_1248 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1248, 0.0f, 1.0f);
    let x_1251 : f32 = u_xlat2.x;
    let x_1253 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1251 * x_1253);
    let x_1257 : f32 = u_xlat2.x;
    let x_1259 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_1257 * x_1259) + 1.000010014f);
    let x_1263 : f32 = u_xlat36;
    let x_1264 : f32 = u_xlat36;
    u_xlat36 = (x_1263 * x_1264);
    let x_1267 : f32 = u_xlat2.x;
    let x_1269 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1267 * x_1269);
    let x_1272 : f32 = u_xlat36;
    u_xlat36 = max(x_1272, 0.100000001f);
    let x_1275 : f32 = u_xlat2.x;
    let x_1276 : f32 = u_xlat36;
    u_xlat2.x = (x_1275 * x_1276);
    let x_1279 : f32 = u_xlat35;
    let x_1281 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1279 * x_1281);
    let x_1284 : f32 = u_xlat13;
    let x_1286 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1284 / x_1286);
    let x_1289 : vec4<f32> = u_xlat0;
    let x_1291 : vec4<f32> = u_xlat2;
    let x_1294 : vec3<f32> = u_xlat6;
    u_xlat19 = ((vec3<f32>(x_1289.x, x_1289.y, x_1289.z) * vec3<f32>(x_1291.x, x_1291.x, x_1291.x)) + x_1294);
    let x_1296 : vec3<f32> = u_xlat19;
    let x_1297 : vec3<f32> = u_xlat10;
    let x_1299 : vec4<f32> = u_xlat7;
    let x_1301 : vec3<f32> = ((x_1296 * x_1297) + vec3<f32>(x_1299.x, x_1299.y, x_1299.z));
    let x_1302 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);

    continuing {
      let x_1304 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1304 + bitcast<u32>(1i));
    }
  }
  let x_1306 : vec4<f32> = u_xlat3;
  let x_1308 : f32 = u_xlat24;
  let x_1311 : vec4<f32> = u_xlat5;
  let x_1313 : vec3<f32> = ((vec3<f32>(x_1306.x, x_1306.y, x_1306.z) * vec3<f32>(x_1308, x_1308, x_1308)) + vec3<f32>(x_1311.x, x_1311.y, x_1311.z));
  let x_1314 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1314.w);
  let x_1318 : vec4<f32> = u_xlat7;
  let x_1320 : vec4<f32> = u_xlat0;
  let x_1322 : vec3<f32> = (vec3<f32>(x_1318.x, x_1318.y, x_1318.z) + vec3<f32>(x_1320.x, x_1320.y, x_1320.z));
  let x_1323 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1323.w);
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

