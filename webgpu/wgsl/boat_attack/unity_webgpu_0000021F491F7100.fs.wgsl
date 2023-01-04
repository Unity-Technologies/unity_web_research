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

@group(0) @binding(5) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(4) var<uniform> x_190 : UnityPerMaterial;

@group(0) @binding(7) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_E9EC22CC : sampler;

@group(0) @binding(6) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_6EEDD32E : sampler;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_359 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_718 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1082 : AdditionalLights;

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
  var u_xlat34 : f32;
  var u_xlat4 : vec3<f32>;
  var x_475 : f32;
  var x_488 : f32;
  var x_499 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat13 : f32;
  var u_xlat35 : f32;
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
  u_xlat34 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat34;
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
  let x_517 : vec2<f32> = vs_INTERP4;
  let x_519 : f32 = x_44.x_GlobalMipBias.x;
  let x_520 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_517, x_519);
  u_xlat3 = x_520;
  let x_526 : vec2<f32> = vs_INTERP4;
  let x_528 : f32 = x_44.x_GlobalMipBias.x;
  let x_529 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_526, x_528);
  u_xlat5 = vec3<f32>(x_529.x, x_529.y, x_529.z);
  let x_531 : vec4<f32> = u_xlat3;
  let x_535 : vec3<f32> = (vec3<f32>(x_531.x, x_531.y, x_531.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_536 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat1;
  let x_540 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(vec3<f32>(x_538.x, x_538.y, x_538.z), vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : f32 = u_xlat33;
  u_xlat33 = (x_543 + 0.5f);
  let x_546 : f32 = u_xlat33;
  let x_548 : vec3<f32> = u_xlat5;
  let x_549 : vec3<f32> = (vec3<f32>(x_546, x_546, x_546) * x_548);
  let x_550 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_553 : f32 = u_xlat3.w;
  u_xlat33 = max(x_553, 0.0001f);
  let x_556 : vec4<f32> = u_xlat3;
  let x_558 : f32 = u_xlat33;
  let x_560 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) / vec3<f32>(x_558, x_558, x_558));
  let x_561 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_566 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_567 : vec2<f32> = vec2<f32>(x_566.x, x_566.y);
  let x_571 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_567.x, x_567.y));
  let x_572 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_571.x, x_571.y, x_572.z);
  let x_574 : vec3<f32> = u_xlat5;
  let x_576 : vec4<f32> = hlslcc_FragCoord;
  let x_578 : vec2<f32> = (vec2<f32>(x_574.x, x_574.y) * vec2<f32>(x_576.x, x_576.y));
  let x_579 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_578.x, x_578.y, x_579.z);
  let x_582 : f32 = u_xlat5.y;
  let x_585 : f32 = x_44.x_ScaleBiasRt.x;
  let x_588 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_582 * x_585) + x_588);
  let x_590 : f32 = u_xlat33;
  u_xlat5.z = (-(x_590) + 1.0f);
  let x_594 : vec4<f32> = u_xlat2;
  let x_595 : vec2<f32> = vec2<f32>(x_594.x, x_594.y);
  let x_596 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_596.w);
  let x_598 : vec4<f32> = u_xlat2;
  let x_602 : vec2<f32> = clamp(vec2<f32>(x_598.x, x_598.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_603 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_602.x, x_602.y, x_603.z, x_603.w);
  let x_606 : f32 = u_xlat2.x;
  u_xlat33 = ((-(x_606) * 0.959999979f) + 0.959999979f);
  let x_611 : f32 = u_xlat33;
  let x_614 : f32 = u_xlat2.y;
  u_xlat34 = (-(x_611) + x_614);
  let x_617 : f32 = u_xlat33;
  let x_619 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_617, x_617, x_617) * vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat0;
  let x_626 : vec3<f32> = (vec3<f32>(x_622.x, x_622.y, x_622.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_627 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat2;
  let x_631 : vec4<f32> = u_xlat0;
  let x_636 : vec3<f32> = ((vec3<f32>(x_629.x, x_629.x, x_629.x) * vec3<f32>(x_631.x, x_631.y, x_631.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_637 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_640 : f32 = u_xlat2.y;
  u_xlat33 = (-(x_640) + 1.0f);
  let x_643 : f32 = u_xlat33;
  let x_644 : f32 = u_xlat33;
  u_xlat2.x = (x_643 * x_644);
  let x_648 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_648, 0.0078125f);
  let x_654 : f32 = u_xlat2.x;
  let x_656 : f32 = u_xlat2.x;
  u_xlat13 = (x_654 * x_656);
  let x_658 : f32 = u_xlat34;
  u_xlat34 = (x_658 + 1.0f);
  let x_660 : f32 = u_xlat34;
  u_xlat34 = min(x_660, 1.0f);
  let x_664 : f32 = u_xlat2.x;
  u_xlat35 = ((x_664 * 4.0f) + 2.0f);
  let x_674 : vec3<f32> = u_xlat5;
  let x_677 : f32 = x_44.x_GlobalMipBias.x;
  let x_678 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_674.x, x_674.z), x_677);
  u_xlat36 = x_678.x;
  let x_681 : f32 = u_xlat36;
  u_xlat37 = (x_681 + -1.0f);
  let x_685 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_686 : f32 = u_xlat37;
  u_xlat37 = ((x_685 * x_686) + 1.0f);
  let x_691 : f32 = u_xlat2.z;
  let x_692 : f32 = u_xlat36;
  u_xlat24 = min(x_691, x_692);
  let x_696 : vec4<f32> = vs_INTERP8;
  let x_697 : vec2<f32> = vec2<f32>(x_696.x, x_696.y);
  let x_699 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_697.x, x_697.y, x_699);
  let x_711 : vec3<f32> = txVec0;
  let x_713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_711.xy, x_711.z);
  u_xlat36 = x_713;
  let x_720 : f32 = x_718.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_720) + 1.0f);
  let x_724 : f32 = u_xlat36;
  let x_726 : f32 = x_718.x_MainLightShadowParams.x;
  let x_729 : f32 = u_xlat5.x;
  u_xlat36 = ((x_724 * x_726) + x_729);
  let x_733 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_733);
  let x_737 : f32 = vs_INTERP8.z;
  u_xlatb16 = (x_737 >= 1.0f);
  let x_739 : bool = u_xlatb16;
  let x_740 : bool = u_xlatb5;
  u_xlatb5 = (x_739 | x_740);
  let x_742 : bool = u_xlatb5;
  let x_743 : f32 = u_xlat36;
  u_xlat36 = select(x_743, 1.0f, x_742);
  let x_745 : vec3<f32> = vs_INTERP0;
  let x_747 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_745 + -(x_747));
  let x_750 : vec3<f32> = u_xlat5;
  let x_751 : vec3<f32> = u_xlat5;
  u_xlat5.x = dot(x_750, x_751);
  let x_755 : f32 = u_xlat5.x;
  let x_757 : f32 = x_718.x_MainLightShadowParams.z;
  let x_760 : f32 = x_718.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_755 * x_757) + x_760);
  let x_764 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_764, 0.0f, 1.0f);
  let x_768 : f32 = u_xlat36;
  u_xlat16 = (-(x_768) + 1.0f);
  let x_772 : f32 = u_xlat5.x;
  let x_773 : f32 = u_xlat16;
  let x_775 : f32 = u_xlat36;
  u_xlat36 = ((x_772 * x_773) + x_775);
  let x_777 : f32 = u_xlat37;
  let x_780 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_777, x_777, x_777) * vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_784 : vec3<f32> = u_xlat4;
  let x_786 : vec4<f32> = u_xlat1;
  u_xlat38 = dot(-(x_784), vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_789 : f32 = u_xlat38;
  let x_790 : f32 = u_xlat38;
  u_xlat38 = (x_789 + x_790);
  let x_793 : vec4<f32> = u_xlat1;
  let x_795 : f32 = u_xlat38;
  let x_799 : vec3<f32> = u_xlat4;
  let x_801 : vec3<f32> = ((vec3<f32>(x_793.x, x_793.y, x_793.z) * -(vec3<f32>(x_795, x_795, x_795))) + -(x_799));
  let x_802 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(vec3<f32>(x_804.x, x_804.y, x_804.z), x_806);
  let x_808 : f32 = u_xlat38;
  u_xlat38 = clamp(x_808, 0.0f, 1.0f);
  let x_810 : f32 = u_xlat38;
  u_xlat38 = (-(x_810) + 1.0f);
  let x_813 : f32 = u_xlat38;
  let x_814 : f32 = u_xlat38;
  u_xlat38 = (x_813 * x_814);
  let x_816 : f32 = u_xlat38;
  let x_817 : f32 = u_xlat38;
  u_xlat38 = (x_816 * x_817);
  let x_820 : f32 = u_xlat33;
  u_xlat39 = ((-(x_820) * 0.699999988f) + 1.700000048f);
  let x_826 : f32 = u_xlat33;
  let x_827 : f32 = u_xlat39;
  u_xlat33 = (x_826 * x_827);
  let x_829 : f32 = u_xlat33;
  u_xlat33 = (x_829 * 6.0f);
  let x_839 : vec4<f32> = u_xlat7;
  let x_841 : f32 = u_xlat33;
  let x_842 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_839.x, x_839.y, x_839.z), x_841);
  u_xlat7 = x_842;
  let x_844 : f32 = u_xlat7.w;
  u_xlat33 = (x_844 + -1.0f);
  let x_847 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_848 : f32 = u_xlat33;
  u_xlat33 = ((x_847 * x_848) + 1.0f);
  let x_851 : f32 = u_xlat33;
  u_xlat33 = max(x_851, 0.0f);
  let x_853 : f32 = u_xlat33;
  u_xlat33 = log2(x_853);
  let x_855 : f32 = u_xlat33;
  let x_857 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_855 * x_857);
  let x_859 : f32 = u_xlat33;
  u_xlat33 = exp2(x_859);
  let x_861 : f32 = u_xlat33;
  let x_863 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_861 * x_863);
  let x_865 : vec4<f32> = u_xlat7;
  let x_867 : f32 = u_xlat33;
  let x_869 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) * vec3<f32>(x_867, x_867, x_867));
  let x_870 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_873 : vec4<f32> = u_xlat2;
  let x_875 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_873.x, x_873.x) * vec2<f32>(x_875.x, x_875.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_881 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_881);
  let x_884 : vec4<f32> = u_xlat0;
  let x_887 : f32 = u_xlat34;
  u_xlat19 = (-(vec3<f32>(x_884.x, x_884.y, x_884.z)) + vec3<f32>(x_887, x_887, x_887));
  let x_890 : f32 = u_xlat38;
  let x_892 : vec3<f32> = u_xlat19;
  let x_894 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_890, x_890, x_890) * x_892) + vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_897 : f32 = u_xlat33;
  let x_899 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_897, x_897, x_897) * x_899);
  let x_901 : vec4<f32> = u_xlat7;
  let x_903 : vec3<f32> = u_xlat19;
  let x_904 : vec3<f32> = (vec3<f32>(x_901.x, x_901.y, x_901.z) * x_903);
  let x_905 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : vec4<f32> = u_xlat3;
  let x_909 : vec3<f32> = u_xlat6;
  let x_911 : vec4<f32> = u_xlat7;
  let x_913 : vec3<f32> = ((vec3<f32>(x_907.x, x_907.y, x_907.z) * x_909) + vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_916 : f32 = u_xlat36;
  let x_919 : f32 = x_359.unity_LightData.z;
  u_xlat33 = (x_916 * x_919);
  let x_921 : vec4<f32> = u_xlat1;
  let x_924 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_921.x, x_921.y, x_921.z), vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : f32 = u_xlat34;
  u_xlat34 = clamp(x_927, 0.0f, 1.0f);
  let x_929 : f32 = u_xlat33;
  let x_930 : f32 = u_xlat34;
  u_xlat33 = (x_929 * x_930);
  let x_932 : f32 = u_xlat33;
  let x_934 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_932, x_932, x_932) * x_934);
  let x_936 : vec3<f32> = u_xlat4;
  let x_938 : vec4<f32> = x_44.x_MainLightPosition;
  let x_940 : vec3<f32> = (x_936 + vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_941 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat7;
  let x_945 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_943.x, x_943.y, x_943.z), vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : f32 = u_xlat33;
  u_xlat33 = max(x_948, 1.17549435e-37f);
  let x_951 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_951);
  let x_953 : f32 = u_xlat33;
  let x_955 : vec4<f32> = u_xlat7;
  let x_957 : vec3<f32> = (vec3<f32>(x_953, x_953, x_953) * vec3<f32>(x_955.x, x_955.y, x_955.z));
  let x_958 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
  let x_960 : vec4<f32> = u_xlat1;
  let x_962 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_960.x, x_960.y, x_960.z), vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_965 : f32 = u_xlat33;
  u_xlat33 = clamp(x_965, 0.0f, 1.0f);
  let x_968 : vec4<f32> = x_44.x_MainLightPosition;
  let x_970 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_968.x, x_968.y, x_968.z), vec3<f32>(x_970.x, x_970.y, x_970.z));
  let x_973 : f32 = u_xlat34;
  u_xlat34 = clamp(x_973, 0.0f, 1.0f);
  let x_975 : f32 = u_xlat33;
  let x_976 : f32 = u_xlat33;
  u_xlat33 = (x_975 * x_976);
  let x_978 : f32 = u_xlat33;
  let x_980 : f32 = u_xlat8.x;
  u_xlat33 = ((x_978 * x_980) + 1.000010014f);
  let x_984 : f32 = u_xlat34;
  let x_985 : f32 = u_xlat34;
  u_xlat34 = (x_984 * x_985);
  let x_987 : f32 = u_xlat33;
  let x_988 : f32 = u_xlat33;
  u_xlat33 = (x_987 * x_988);
  let x_990 : f32 = u_xlat34;
  u_xlat34 = max(x_990, 0.100000001f);
  let x_993 : f32 = u_xlat33;
  let x_994 : f32 = u_xlat34;
  u_xlat33 = (x_993 * x_994);
  let x_996 : f32 = u_xlat35;
  let x_997 : f32 = u_xlat33;
  u_xlat33 = (x_996 * x_997);
  let x_999 : f32 = u_xlat13;
  let x_1000 : f32 = u_xlat33;
  u_xlat33 = (x_999 / x_1000);
  let x_1002 : vec4<f32> = u_xlat0;
  let x_1004 : f32 = u_xlat33;
  let x_1007 : vec3<f32> = u_xlat6;
  let x_1008 : vec3<f32> = ((vec3<f32>(x_1002.x, x_1002.y, x_1002.z) * vec3<f32>(x_1004, x_1004, x_1004)) + x_1007);
  let x_1009 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec3<f32> = u_xlat5;
  let x_1012 : vec4<f32> = u_xlat7;
  u_xlat5 = (x_1011 * vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1016 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1018 : f32 = x_359.unity_LightData.y;
  u_xlat33 = min(x_1016, x_1018);
  let x_1022 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_1022));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1034 : u32 = u_xlatu_loop_1;
    let x_1035 : u32 = u_xlatu33;
    if ((x_1034 < x_1035)) {
    } else {
      break;
    }
    let x_1038 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_1038 >> 2u);
    let x_1042 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_1042 & 3u));
    let x_1045 : u32 = u_xlatu2;
    let x_1048 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_1045)];
    let x_1058 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1063 : vec4<u32> = indexable[x_1058];
    u_xlat2.x = dot(x_1048, bitcast<vec4<f32>>(x_1063));
    let x_1069 : f32 = u_xlat2.x;
    u_xlati2 = i32(x_1069);
    let x_1071 : vec3<f32> = vs_INTERP0;
    let x_1083 : i32 = u_xlati2;
    let x_1085 : vec4<f32> = x_1082.x_AdditionalLightsPosition[x_1083];
    let x_1088 : i32 = u_xlati2;
    let x_1090 : vec4<f32> = x_1082.x_AdditionalLightsPosition[x_1088];
    u_xlat19 = ((-(x_1071) * vec3<f32>(x_1085.w, x_1085.w, x_1085.w)) + vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
    let x_1093 : vec3<f32> = u_xlat19;
    let x_1094 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_1093, x_1094);
    let x_1096 : f32 = u_xlat36;
    u_xlat36 = max(x_1096, 6.10351562e-05f);
    let x_1099 : f32 = u_xlat36;
    u_xlat38 = inverseSqrt(x_1099);
    let x_1102 : f32 = u_xlat38;
    let x_1104 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1102, x_1102, x_1102) * x_1104);
    let x_1106 : f32 = u_xlat36;
    u_xlat39 = (1.0f / x_1106);
    let x_1108 : f32 = u_xlat36;
    let x_1109 : i32 = u_xlati2;
    let x_1111 : f32 = x_1082.x_AdditionalLightsAttenuation[x_1109].x;
    u_xlat36 = (x_1108 * x_1111);
    let x_1113 : f32 = u_xlat36;
    let x_1115 : f32 = u_xlat36;
    u_xlat36 = ((-(x_1113) * x_1115) + 1.0f);
    let x_1118 : f32 = u_xlat36;
    u_xlat36 = max(x_1118, 0.0f);
    let x_1120 : f32 = u_xlat36;
    let x_1121 : f32 = u_xlat36;
    u_xlat36 = (x_1120 * x_1121);
    let x_1123 : f32 = u_xlat36;
    let x_1124 : f32 = u_xlat39;
    u_xlat36 = (x_1123 * x_1124);
    let x_1126 : i32 = u_xlati2;
    let x_1128 : vec4<f32> = x_1082.x_AdditionalLightsSpotDir[x_1126];
    let x_1130 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1128.x, x_1128.y, x_1128.z), x_1130);
    let x_1132 : f32 = u_xlat39;
    let x_1133 : i32 = u_xlati2;
    let x_1135 : f32 = x_1082.x_AdditionalLightsAttenuation[x_1133].z;
    let x_1137 : i32 = u_xlati2;
    let x_1139 : f32 = x_1082.x_AdditionalLightsAttenuation[x_1137].w;
    u_xlat39 = ((x_1132 * x_1135) + x_1139);
    let x_1141 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1141, 0.0f, 1.0f);
    let x_1143 : f32 = u_xlat39;
    let x_1144 : f32 = u_xlat39;
    u_xlat39 = (x_1143 * x_1144);
    let x_1146 : f32 = u_xlat36;
    let x_1147 : f32 = u_xlat39;
    u_xlat36 = (x_1146 * x_1147);
    let x_1150 : f32 = u_xlat37;
    let x_1152 : i32 = u_xlati2;
    let x_1154 : vec4<f32> = x_1082.x_AdditionalLightsColor[x_1152];
    u_xlat10 = (vec3<f32>(x_1150, x_1150, x_1150) * vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
    let x_1157 : vec4<f32> = u_xlat1;
    let x_1159 : vec3<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_1157.x, x_1157.y, x_1157.z), x_1159);
    let x_1163 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1163, 0.0f, 1.0f);
    let x_1167 : f32 = u_xlat2.x;
    let x_1168 : f32 = u_xlat36;
    u_xlat2.x = (x_1167 * x_1168);
    let x_1171 : vec4<f32> = u_xlat2;
    let x_1173 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1171.x, x_1171.x, x_1171.x) * x_1173);
    let x_1175 : vec3<f32> = u_xlat19;
    let x_1176 : f32 = u_xlat38;
    let x_1179 : vec3<f32> = u_xlat4;
    u_xlat19 = ((x_1175 * vec3<f32>(x_1176, x_1176, x_1176)) + x_1179);
    let x_1181 : vec3<f32> = u_xlat19;
    let x_1182 : vec3<f32> = u_xlat19;
    u_xlat2.x = dot(x_1181, x_1182);
    let x_1186 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_1186, 1.17549435e-37f);
    let x_1190 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_1190);
    let x_1193 : vec4<f32> = u_xlat2;
    let x_1195 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1193.x, x_1193.x, x_1193.x) * x_1195);
    let x_1197 : vec4<f32> = u_xlat1;
    let x_1199 : vec3<f32> = u_xlat19;
    u_xlat2.x = dot(vec3<f32>(x_1197.x, x_1197.y, x_1197.z), x_1199);
    let x_1203 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1203, 0.0f, 1.0f);
    let x_1206 : vec3<f32> = u_xlat9;
    let x_1207 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_1206, x_1207);
    let x_1209 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1209, 0.0f, 1.0f);
    let x_1212 : f32 = u_xlat2.x;
    let x_1214 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1212 * x_1214);
    let x_1218 : f32 = u_xlat2.x;
    let x_1220 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_1218 * x_1220) + 1.000010014f);
    let x_1224 : f32 = u_xlat36;
    let x_1225 : f32 = u_xlat36;
    u_xlat36 = (x_1224 * x_1225);
    let x_1228 : f32 = u_xlat2.x;
    let x_1230 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1228 * x_1230);
    let x_1233 : f32 = u_xlat36;
    u_xlat36 = max(x_1233, 0.100000001f);
    let x_1236 : f32 = u_xlat2.x;
    let x_1237 : f32 = u_xlat36;
    u_xlat2.x = (x_1236 * x_1237);
    let x_1240 : f32 = u_xlat35;
    let x_1242 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1240 * x_1242);
    let x_1245 : f32 = u_xlat13;
    let x_1247 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1245 / x_1247);
    let x_1250 : vec4<f32> = u_xlat0;
    let x_1252 : vec4<f32> = u_xlat2;
    let x_1255 : vec3<f32> = u_xlat6;
    u_xlat19 = ((vec3<f32>(x_1250.x, x_1250.y, x_1250.z) * vec3<f32>(x_1252.x, x_1252.x, x_1252.x)) + x_1255);
    let x_1257 : vec3<f32> = u_xlat19;
    let x_1258 : vec3<f32> = u_xlat10;
    let x_1260 : vec4<f32> = u_xlat7;
    let x_1262 : vec3<f32> = ((x_1257 * x_1258) + vec3<f32>(x_1260.x, x_1260.y, x_1260.z));
    let x_1263 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);

    continuing {
      let x_1265 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1265 + bitcast<u32>(1i));
    }
  }
  let x_1267 : vec4<f32> = u_xlat3;
  let x_1269 : f32 = u_xlat24;
  let x_1272 : vec3<f32> = u_xlat5;
  let x_1273 : vec3<f32> = ((vec3<f32>(x_1267.x, x_1267.y, x_1267.z) * vec3<f32>(x_1269, x_1269, x_1269)) + x_1272);
  let x_1274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
  let x_1278 : vec4<f32> = u_xlat7;
  let x_1280 : vec4<f32> = u_xlat0;
  let x_1282 : vec3<f32> = (vec3<f32>(x_1278.x, x_1278.y, x_1278.z) + vec3<f32>(x_1280.x, x_1280.y, x_1280.z));
  let x_1283 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>, @location(5) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0);
}

