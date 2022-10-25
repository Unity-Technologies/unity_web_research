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

@group(0) @binding(4) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(4) var<uniform> x_190 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_E9EC22CC : sampler;

@group(0) @binding(5) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_6EEDD32E : sampler;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_359 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_680 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1045 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  let x_520 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_517, x_519);
  let x_521 : vec3<f32> = vec3<f32>(x_520.x, x_520.y, x_520.z);
  let x_522 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_528 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_529 : vec2<f32> = vec2<f32>(x_528.x, x_528.y);
  let x_533 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_529.x, x_529.y));
  let x_534 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_533.x, x_533.y, x_534.z);
  let x_536 : vec3<f32> = u_xlat5;
  let x_538 : vec4<f32> = hlslcc_FragCoord;
  let x_540 : vec2<f32> = (vec2<f32>(x_536.x, x_536.y) * vec2<f32>(x_538.x, x_538.y));
  let x_541 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_540.x, x_540.y, x_541.z);
  let x_544 : f32 = u_xlat5.y;
  let x_547 : f32 = x_44.x_ScaleBiasRt.x;
  let x_550 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_544 * x_547) + x_550);
  let x_552 : f32 = u_xlat33;
  u_xlat5.z = (-(x_552) + 1.0f);
  let x_556 : vec4<f32> = u_xlat2;
  let x_557 : vec2<f32> = vec2<f32>(x_556.x, x_556.y);
  let x_558 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
  let x_560 : vec4<f32> = u_xlat2;
  let x_564 : vec2<f32> = clamp(vec2<f32>(x_560.x, x_560.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_565 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
  let x_568 : f32 = u_xlat2.x;
  u_xlat33 = ((-(x_568) * 0.959999979f) + 0.959999979f);
  let x_573 : f32 = u_xlat33;
  let x_576 : f32 = u_xlat2.y;
  u_xlat34 = (-(x_573) + x_576);
  let x_579 : f32 = u_xlat33;
  let x_581 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_579, x_579, x_579) * vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat0;
  let x_588 : vec3<f32> = (vec3<f32>(x_584.x, x_584.y, x_584.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_589 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat2;
  let x_593 : vec4<f32> = u_xlat0;
  let x_598 : vec3<f32> = ((vec3<f32>(x_591.x, x_591.x, x_591.x) * vec3<f32>(x_593.x, x_593.y, x_593.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_599 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_602 : f32 = u_xlat2.y;
  u_xlat33 = (-(x_602) + 1.0f);
  let x_605 : f32 = u_xlat33;
  let x_606 : f32 = u_xlat33;
  u_xlat2.x = (x_605 * x_606);
  let x_610 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_610, 0.0078125f);
  let x_616 : f32 = u_xlat2.x;
  let x_618 : f32 = u_xlat2.x;
  u_xlat13 = (x_616 * x_618);
  let x_620 : f32 = u_xlat34;
  u_xlat34 = (x_620 + 1.0f);
  let x_622 : f32 = u_xlat34;
  u_xlat34 = min(x_622, 1.0f);
  let x_626 : f32 = u_xlat2.x;
  u_xlat35 = ((x_626 * 4.0f) + 2.0f);
  let x_636 : vec3<f32> = u_xlat5;
  let x_639 : f32 = x_44.x_GlobalMipBias.x;
  let x_640 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_636.x, x_636.z), x_639);
  u_xlat36 = x_640.x;
  let x_643 : f32 = u_xlat36;
  u_xlat37 = (x_643 + -1.0f);
  let x_647 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_648 : f32 = u_xlat37;
  u_xlat37 = ((x_647 * x_648) + 1.0f);
  let x_653 : f32 = u_xlat2.z;
  let x_654 : f32 = u_xlat36;
  u_xlat24 = min(x_653, x_654);
  let x_658 : vec4<f32> = vs_INTERP8;
  let x_659 : vec2<f32> = vec2<f32>(x_658.x, x_658.y);
  let x_661 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_659.x, x_659.y, x_661);
  let x_673 : vec3<f32> = txVec0;
  let x_675 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_673.xy, x_673.z);
  u_xlat36 = x_675;
  let x_682 : f32 = x_680.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_682) + 1.0f);
  let x_686 : f32 = u_xlat36;
  let x_688 : f32 = x_680.x_MainLightShadowParams.x;
  let x_691 : f32 = u_xlat5.x;
  u_xlat36 = ((x_686 * x_688) + x_691);
  let x_695 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_695);
  let x_699 : f32 = vs_INTERP8.z;
  u_xlatb16 = (x_699 >= 1.0f);
  let x_701 : bool = u_xlatb16;
  let x_702 : bool = u_xlatb5;
  u_xlatb5 = (x_701 | x_702);
  let x_704 : bool = u_xlatb5;
  let x_705 : f32 = u_xlat36;
  u_xlat36 = select(x_705, 1.0f, x_704);
  let x_707 : vec3<f32> = vs_INTERP0;
  let x_709 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_707 + -(x_709));
  let x_712 : vec3<f32> = u_xlat5;
  let x_713 : vec3<f32> = u_xlat5;
  u_xlat5.x = dot(x_712, x_713);
  let x_717 : f32 = u_xlat5.x;
  let x_719 : f32 = x_680.x_MainLightShadowParams.z;
  let x_722 : f32 = x_680.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_717 * x_719) + x_722);
  let x_726 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_726, 0.0f, 1.0f);
  let x_730 : f32 = u_xlat36;
  u_xlat16 = (-(x_730) + 1.0f);
  let x_734 : f32 = u_xlat5.x;
  let x_735 : f32 = u_xlat16;
  let x_737 : f32 = u_xlat36;
  u_xlat36 = ((x_734 * x_735) + x_737);
  let x_739 : f32 = u_xlat37;
  let x_742 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_739, x_739, x_739) * vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_746 : vec3<f32> = u_xlat4;
  let x_748 : vec4<f32> = u_xlat1;
  u_xlat38 = dot(-(x_746), vec3<f32>(x_748.x, x_748.y, x_748.z));
  let x_751 : f32 = u_xlat38;
  let x_752 : f32 = u_xlat38;
  u_xlat38 = (x_751 + x_752);
  let x_755 : vec4<f32> = u_xlat1;
  let x_757 : f32 = u_xlat38;
  let x_761 : vec3<f32> = u_xlat4;
  let x_763 : vec3<f32> = ((vec3<f32>(x_755.x, x_755.y, x_755.z) * -(vec3<f32>(x_757, x_757, x_757))) + -(x_761));
  let x_764 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat1;
  let x_768 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(vec3<f32>(x_766.x, x_766.y, x_766.z), x_768);
  let x_770 : f32 = u_xlat38;
  u_xlat38 = clamp(x_770, 0.0f, 1.0f);
  let x_772 : f32 = u_xlat38;
  u_xlat38 = (-(x_772) + 1.0f);
  let x_775 : f32 = u_xlat38;
  let x_776 : f32 = u_xlat38;
  u_xlat38 = (x_775 * x_776);
  let x_778 : f32 = u_xlat38;
  let x_779 : f32 = u_xlat38;
  u_xlat38 = (x_778 * x_779);
  let x_782 : f32 = u_xlat33;
  u_xlat39 = ((-(x_782) * 0.699999988f) + 1.700000048f);
  let x_788 : f32 = u_xlat33;
  let x_789 : f32 = u_xlat39;
  u_xlat33 = (x_788 * x_789);
  let x_791 : f32 = u_xlat33;
  u_xlat33 = (x_791 * 6.0f);
  let x_801 : vec4<f32> = u_xlat7;
  let x_803 : f32 = u_xlat33;
  let x_804 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_801.x, x_801.y, x_801.z), x_803);
  u_xlat7 = x_804;
  let x_806 : f32 = u_xlat7.w;
  u_xlat33 = (x_806 + -1.0f);
  let x_809 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_810 : f32 = u_xlat33;
  u_xlat33 = ((x_809 * x_810) + 1.0f);
  let x_813 : f32 = u_xlat33;
  u_xlat33 = max(x_813, 0.0f);
  let x_815 : f32 = u_xlat33;
  u_xlat33 = log2(x_815);
  let x_817 : f32 = u_xlat33;
  let x_819 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_817 * x_819);
  let x_821 : f32 = u_xlat33;
  u_xlat33 = exp2(x_821);
  let x_823 : f32 = u_xlat33;
  let x_825 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_823 * x_825);
  let x_827 : vec4<f32> = u_xlat7;
  let x_829 : f32 = u_xlat33;
  let x_831 : vec3<f32> = (vec3<f32>(x_827.x, x_827.y, x_827.z) * vec3<f32>(x_829, x_829, x_829));
  let x_832 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_835 : vec4<f32> = u_xlat2;
  let x_837 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_835.x, x_835.x) * vec2<f32>(x_837.x, x_837.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_843 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_843);
  let x_846 : vec4<f32> = u_xlat0;
  let x_849 : f32 = u_xlat34;
  u_xlat19 = (-(vec3<f32>(x_846.x, x_846.y, x_846.z)) + vec3<f32>(x_849, x_849, x_849));
  let x_852 : f32 = u_xlat38;
  let x_854 : vec3<f32> = u_xlat19;
  let x_856 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_852, x_852, x_852) * x_854) + vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : f32 = u_xlat33;
  let x_861 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_859, x_859, x_859) * x_861);
  let x_863 : vec4<f32> = u_xlat7;
  let x_865 : vec3<f32> = u_xlat19;
  let x_866 : vec3<f32> = (vec3<f32>(x_863.x, x_863.y, x_863.z) * x_865);
  let x_867 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec4<f32> = u_xlat3;
  let x_871 : vec3<f32> = u_xlat6;
  let x_873 : vec4<f32> = u_xlat7;
  let x_875 : vec3<f32> = ((vec3<f32>(x_869.x, x_869.y, x_869.z) * x_871) + vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_876 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : f32 = u_xlat36;
  let x_881 : f32 = x_359.unity_LightData.z;
  u_xlat33 = (x_878 * x_881);
  let x_883 : vec4<f32> = u_xlat1;
  let x_886 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_886.x, x_886.y, x_886.z));
  let x_889 : f32 = u_xlat34;
  u_xlat34 = clamp(x_889, 0.0f, 1.0f);
  let x_891 : f32 = u_xlat33;
  let x_892 : f32 = u_xlat34;
  u_xlat33 = (x_891 * x_892);
  let x_894 : f32 = u_xlat33;
  let x_896 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_894, x_894, x_894) * x_896);
  let x_898 : vec3<f32> = u_xlat4;
  let x_900 : vec4<f32> = x_44.x_MainLightPosition;
  let x_902 : vec3<f32> = (x_898 + vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_903 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_905 : vec4<f32> = u_xlat7;
  let x_907 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_905.x, x_905.y, x_905.z), vec3<f32>(x_907.x, x_907.y, x_907.z));
  let x_910 : f32 = u_xlat33;
  u_xlat33 = max(x_910, 1.17549435e-37f);
  let x_913 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_913);
  let x_915 : f32 = u_xlat33;
  let x_917 : vec4<f32> = u_xlat7;
  let x_919 : vec3<f32> = (vec3<f32>(x_915, x_915, x_915) * vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_920 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : vec4<f32> = u_xlat1;
  let x_924 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_922.x, x_922.y, x_922.z), vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : f32 = u_xlat33;
  u_xlat33 = clamp(x_927, 0.0f, 1.0f);
  let x_930 : vec4<f32> = x_44.x_MainLightPosition;
  let x_932 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_930.x, x_930.y, x_930.z), vec3<f32>(x_932.x, x_932.y, x_932.z));
  let x_935 : f32 = u_xlat34;
  u_xlat34 = clamp(x_935, 0.0f, 1.0f);
  let x_937 : f32 = u_xlat33;
  let x_938 : f32 = u_xlat33;
  u_xlat33 = (x_937 * x_938);
  let x_940 : f32 = u_xlat33;
  let x_942 : f32 = u_xlat8.x;
  u_xlat33 = ((x_940 * x_942) + 1.000010014f);
  let x_946 : f32 = u_xlat34;
  let x_947 : f32 = u_xlat34;
  u_xlat34 = (x_946 * x_947);
  let x_949 : f32 = u_xlat33;
  let x_950 : f32 = u_xlat33;
  u_xlat33 = (x_949 * x_950);
  let x_952 : f32 = u_xlat34;
  u_xlat34 = max(x_952, 0.100000001f);
  let x_955 : f32 = u_xlat33;
  let x_956 : f32 = u_xlat34;
  u_xlat33 = (x_955 * x_956);
  let x_958 : f32 = u_xlat35;
  let x_959 : f32 = u_xlat33;
  u_xlat33 = (x_958 * x_959);
  let x_961 : f32 = u_xlat13;
  let x_962 : f32 = u_xlat33;
  u_xlat33 = (x_961 / x_962);
  let x_964 : vec4<f32> = u_xlat0;
  let x_966 : f32 = u_xlat33;
  let x_969 : vec3<f32> = u_xlat6;
  let x_970 : vec3<f32> = ((vec3<f32>(x_964.x, x_964.y, x_964.z) * vec3<f32>(x_966, x_966, x_966)) + x_969);
  let x_971 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
  let x_973 : vec3<f32> = u_xlat5;
  let x_974 : vec4<f32> = u_xlat7;
  u_xlat5 = (x_973 * vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_978 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_980 : f32 = x_359.unity_LightData.y;
  u_xlat33 = min(x_978, x_980);
  let x_984 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_984));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_996 : u32 = u_xlatu_loop_1;
    let x_997 : u32 = u_xlatu33;
    if ((x_996 < x_997)) {
    } else {
      break;
    }
    let x_1000 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_1000 >> 2u);
    let x_1004 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_1004 & 3u));
    let x_1008 : u32 = u_xlatu2;
    let x_1011 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_1008)];
    let x_1021 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1026 : vec4<u32> = indexable[x_1021];
    u_xlat2.x = dot(x_1011, bitcast<vec4<f32>>(x_1026));
    let x_1032 : f32 = u_xlat2.x;
    u_xlati2 = i32(x_1032);
    let x_1034 : vec3<f32> = vs_INTERP0;
    let x_1046 : i32 = u_xlati2;
    let x_1048 : vec4<f32> = x_1045.x_AdditionalLightsPosition[x_1046];
    let x_1051 : i32 = u_xlati2;
    let x_1053 : vec4<f32> = x_1045.x_AdditionalLightsPosition[x_1051];
    u_xlat19 = ((-(x_1034) * vec3<f32>(x_1048.w, x_1048.w, x_1048.w)) + vec3<f32>(x_1053.x, x_1053.y, x_1053.z));
    let x_1056 : vec3<f32> = u_xlat19;
    let x_1057 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_1056, x_1057);
    let x_1059 : f32 = u_xlat36;
    u_xlat36 = max(x_1059, 6.10351562e-05f);
    let x_1062 : f32 = u_xlat36;
    u_xlat38 = inverseSqrt(x_1062);
    let x_1065 : f32 = u_xlat38;
    let x_1067 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1065, x_1065, x_1065) * x_1067);
    let x_1069 : f32 = u_xlat36;
    u_xlat39 = (1.0f / x_1069);
    let x_1071 : f32 = u_xlat36;
    let x_1072 : i32 = u_xlati2;
    let x_1074 : f32 = x_1045.x_AdditionalLightsAttenuation[x_1072].x;
    u_xlat36 = (x_1071 * x_1074);
    let x_1076 : f32 = u_xlat36;
    let x_1078 : f32 = u_xlat36;
    u_xlat36 = ((-(x_1076) * x_1078) + 1.0f);
    let x_1081 : f32 = u_xlat36;
    u_xlat36 = max(x_1081, 0.0f);
    let x_1083 : f32 = u_xlat36;
    let x_1084 : f32 = u_xlat36;
    u_xlat36 = (x_1083 * x_1084);
    let x_1086 : f32 = u_xlat36;
    let x_1087 : f32 = u_xlat39;
    u_xlat36 = (x_1086 * x_1087);
    let x_1089 : i32 = u_xlati2;
    let x_1091 : vec4<f32> = x_1045.x_AdditionalLightsSpotDir[x_1089];
    let x_1093 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1091.x, x_1091.y, x_1091.z), x_1093);
    let x_1095 : f32 = u_xlat39;
    let x_1096 : i32 = u_xlati2;
    let x_1098 : f32 = x_1045.x_AdditionalLightsAttenuation[x_1096].z;
    let x_1100 : i32 = u_xlati2;
    let x_1102 : f32 = x_1045.x_AdditionalLightsAttenuation[x_1100].w;
    u_xlat39 = ((x_1095 * x_1098) + x_1102);
    let x_1104 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1104, 0.0f, 1.0f);
    let x_1106 : f32 = u_xlat39;
    let x_1107 : f32 = u_xlat39;
    u_xlat39 = (x_1106 * x_1107);
    let x_1109 : f32 = u_xlat36;
    let x_1110 : f32 = u_xlat39;
    u_xlat36 = (x_1109 * x_1110);
    let x_1113 : f32 = u_xlat37;
    let x_1115 : i32 = u_xlati2;
    let x_1117 : vec4<f32> = x_1045.x_AdditionalLightsColor[x_1115];
    u_xlat10 = (vec3<f32>(x_1113, x_1113, x_1113) * vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
    let x_1120 : vec4<f32> = u_xlat1;
    let x_1122 : vec3<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_1120.x, x_1120.y, x_1120.z), x_1122);
    let x_1126 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1126, 0.0f, 1.0f);
    let x_1130 : f32 = u_xlat2.x;
    let x_1131 : f32 = u_xlat36;
    u_xlat2.x = (x_1130 * x_1131);
    let x_1134 : vec4<f32> = u_xlat2;
    let x_1136 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1134.x, x_1134.x, x_1134.x) * x_1136);
    let x_1138 : vec3<f32> = u_xlat19;
    let x_1139 : f32 = u_xlat38;
    let x_1142 : vec3<f32> = u_xlat4;
    u_xlat19 = ((x_1138 * vec3<f32>(x_1139, x_1139, x_1139)) + x_1142);
    let x_1144 : vec3<f32> = u_xlat19;
    let x_1145 : vec3<f32> = u_xlat19;
    u_xlat2.x = dot(x_1144, x_1145);
    let x_1149 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_1149, 1.17549435e-37f);
    let x_1153 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_1153);
    let x_1156 : vec4<f32> = u_xlat2;
    let x_1158 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1156.x, x_1156.x, x_1156.x) * x_1158);
    let x_1160 : vec4<f32> = u_xlat1;
    let x_1162 : vec3<f32> = u_xlat19;
    u_xlat2.x = dot(vec3<f32>(x_1160.x, x_1160.y, x_1160.z), x_1162);
    let x_1166 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1166, 0.0f, 1.0f);
    let x_1169 : vec3<f32> = u_xlat9;
    let x_1170 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_1169, x_1170);
    let x_1172 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1172, 0.0f, 1.0f);
    let x_1175 : f32 = u_xlat2.x;
    let x_1177 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1175 * x_1177);
    let x_1181 : f32 = u_xlat2.x;
    let x_1183 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_1181 * x_1183) + 1.000010014f);
    let x_1187 : f32 = u_xlat36;
    let x_1188 : f32 = u_xlat36;
    u_xlat36 = (x_1187 * x_1188);
    let x_1191 : f32 = u_xlat2.x;
    let x_1193 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1191 * x_1193);
    let x_1196 : f32 = u_xlat36;
    u_xlat36 = max(x_1196, 0.100000001f);
    let x_1199 : f32 = u_xlat2.x;
    let x_1200 : f32 = u_xlat36;
    u_xlat2.x = (x_1199 * x_1200);
    let x_1203 : f32 = u_xlat35;
    let x_1205 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1203 * x_1205);
    let x_1208 : f32 = u_xlat13;
    let x_1210 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1208 / x_1210);
    let x_1213 : vec4<f32> = u_xlat0;
    let x_1215 : vec4<f32> = u_xlat2;
    let x_1218 : vec3<f32> = u_xlat6;
    u_xlat19 = ((vec3<f32>(x_1213.x, x_1213.y, x_1213.z) * vec3<f32>(x_1215.x, x_1215.x, x_1215.x)) + x_1218);
    let x_1220 : vec3<f32> = u_xlat19;
    let x_1221 : vec3<f32> = u_xlat10;
    let x_1223 : vec4<f32> = u_xlat7;
    let x_1225 : vec3<f32> = ((x_1220 * x_1221) + vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
    let x_1226 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1226.w);

    continuing {
      let x_1228 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1228 + bitcast<u32>(1i));
    }
  }
  let x_1230 : vec4<f32> = u_xlat3;
  let x_1232 : f32 = u_xlat24;
  let x_1235 : vec3<f32> = u_xlat5;
  let x_1236 : vec3<f32> = ((vec3<f32>(x_1230.x, x_1230.y, x_1230.z) * vec3<f32>(x_1232, x_1232, x_1232)) + x_1235);
  let x_1237 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
  let x_1241 : vec4<f32> = u_xlat7;
  let x_1243 : vec4<f32> = u_xlat0;
  let x_1245 : vec3<f32> = (vec3<f32>(x_1241.x, x_1241.y, x_1241.z) + vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1246 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
  let x_1251 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1253 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_1251 & bitcast<u32>(x_1253));
  let x_1256 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1256);
  let x_1261 : f32 = u_xlat0.x;
  let x_1264 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1261 * x_1264);
  let x_1269 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1269, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1274 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1274.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

