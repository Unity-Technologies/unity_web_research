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

@group(1) @binding(3) var<uniform> x_503 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1259 : AdditionalLights;

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
  var u_xlat4 : vec4<f32>;
  var x_487 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var u_xlat35 : f32;
  var u_xlat13 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat24 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb15 : bool;
  var u_xlatb26 : bool;
  var x_909 : f32;
  var u_xlat26 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
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
  u_xlat34 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat34;
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
  u_xlat6 = (x_522 + -(vec3<f32>(x_524.x, x_524.y, x_524.z)));
  let x_529 : vec3<f32> = vs_INTERP0;
  let x_532 : vec4<f32> = x_503.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_529 + -(vec3<f32>(x_532.x, x_532.y, x_532.z)));
  let x_536 : vec4<f32> = u_xlat4;
  let x_538 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_536.x, x_536.y, x_536.z), vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_542 : vec4<f32> = u_xlat5;
  let x_544 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_542.x, x_542.y, x_542.z), vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_548 : vec3<f32> = u_xlat6;
  let x_549 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_548, x_549);
  let x_552 : vec3<f32> = u_xlat7;
  let x_553 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_552, x_553);
  let x_559 : vec4<f32> = u_xlat4;
  let x_562 : vec4<f32> = x_503.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_559 < x_562);
  let x_565 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_565);
  let x_569 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_569);
  let x_573 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_573);
  let x_577 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_577);
  let x_581 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_581);
  let x_586 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_586);
  let x_590 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_590);
  let x_593 : vec4<f32> = u_xlat4;
  let x_595 : vec4<f32> = u_xlat5;
  let x_597 : vec3<f32> = (vec3<f32>(x_593.x, x_593.y, x_593.z) + vec3<f32>(x_595.y, x_595.z, x_595.w));
  let x_598 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : vec4<f32> = u_xlat4;
  let x_603 : vec3<f32> = max(vec3<f32>(x_600.x, x_600.y, x_600.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_604 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_604.x, x_603.x, x_603.y, x_603.z);
  let x_606 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(x_606, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_611 : f32 = u_xlat33;
  u_xlat33 = (-(x_611) + 4.0f);
  let x_616 : f32 = u_xlat33;
  u_xlatu33 = u32(x_616);
  let x_620 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_620) << bitcast<u32>(2i));
  let x_623 : vec3<f32> = vs_INTERP0;
  let x_625 : i32 = u_xlati33;
  let x_628 : i32 = u_xlati33;
  let x_632 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_625 + 1i) / 4i)][((x_628 + 1i) % 4i)];
  let x_634 : vec3<f32> = (vec3<f32>(x_623.y, x_623.y, x_623.y) * vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : i32 = u_xlati33;
  let x_639 : i32 = u_xlati33;
  let x_642 : vec4<f32> = x_503.x_MainLightWorldToShadow[(x_637 / 4i)][(x_639 % 4i)];
  let x_644 : vec3<f32> = vs_INTERP0;
  let x_647 : vec4<f32> = u_xlat4;
  let x_649 : vec3<f32> = ((vec3<f32>(x_642.x, x_642.y, x_642.z) * vec3<f32>(x_644.x, x_644.x, x_644.x)) + vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : i32 = u_xlati33;
  let x_655 : i32 = u_xlati33;
  let x_659 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_652 + 2i) / 4i)][((x_655 + 2i) % 4i)];
  let x_661 : vec3<f32> = vs_INTERP0;
  let x_664 : vec4<f32> = u_xlat4;
  let x_666 : vec3<f32> = ((vec3<f32>(x_659.x, x_659.y, x_659.z) * vec3<f32>(x_661.z, x_661.z, x_661.z)) + vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec4<f32> = u_xlat4;
  let x_671 : i32 = u_xlati33;
  let x_674 : i32 = u_xlati33;
  let x_678 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_671 + 3i) / 4i)][((x_674 + 3i) % 4i)];
  let x_680 : vec3<f32> = (vec3<f32>(x_669.x, x_669.y, x_669.z) + vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_684 : f32 = vs_INTERP0.y;
  let x_686 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_684 * x_686);
  let x_689 : f32 = x_44.unity_MatrixV[0i].z;
  let x_691 : f32 = vs_INTERP0.x;
  let x_693 : f32 = u_xlat33;
  u_xlat33 = ((x_689 * x_691) + x_693);
  let x_696 : f32 = x_44.unity_MatrixV[2i].z;
  let x_698 : f32 = vs_INTERP0.z;
  let x_700 : f32 = u_xlat33;
  u_xlat33 = ((x_696 * x_698) + x_700);
  let x_702 : f32 = u_xlat33;
  let x_704 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_702 + x_704);
  let x_706 : f32 = u_xlat33;
  let x_710 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_706) + -(x_710));
  let x_713 : f32 = u_xlat33;
  u_xlat33 = max(x_713, 0.0f);
  let x_715 : f32 = u_xlat33;
  let x_718 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_715 * x_718);
  let x_727 : vec2<f32> = vs_INTERP4;
  let x_729 : f32 = x_44.x_GlobalMipBias.x;
  let x_730 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_727, x_729);
  let x_731 : vec3<f32> = vec3<f32>(x_730.x, x_730.y, x_730.z);
  let x_732 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_736 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_737 : vec2<f32> = vec2<f32>(x_736.x, x_736.y);
  let x_741 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_737.x, x_737.y));
  let x_742 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_741.x, x_741.y, x_742.z);
  let x_744 : vec3<f32> = u_xlat6;
  let x_746 : vec4<f32> = hlslcc_FragCoord;
  let x_748 : vec2<f32> = (vec2<f32>(x_744.x, x_744.y) * vec2<f32>(x_746.x, x_746.y));
  let x_749 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_748.x, x_748.y, x_749.z);
  let x_752 : f32 = u_xlat6.y;
  let x_755 : f32 = x_44.x_ScaleBiasRt.x;
  let x_758 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat34 = ((x_752 * x_755) + x_758);
  let x_760 : f32 = u_xlat34;
  u_xlat6.z = (-(x_760) + 1.0f);
  let x_764 : vec4<f32> = u_xlat2;
  let x_765 : vec2<f32> = vec2<f32>(x_764.x, x_764.y);
  let x_766 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat2;
  let x_772 : vec2<f32> = clamp(vec2<f32>(x_768.x, x_768.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_773 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_772.x, x_772.y, x_773.z, x_773.w);
  let x_776 : f32 = u_xlat2.x;
  u_xlat34 = ((-(x_776) * 0.959999979f) + 0.959999979f);
  let x_782 : f32 = u_xlat34;
  let x_785 : f32 = u_xlat2.y;
  u_xlat35 = (-(x_782) + x_785);
  let x_787 : vec4<f32> = u_xlat0;
  let x_789 : f32 = u_xlat34;
  u_xlat7 = (vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(x_789, x_789, x_789));
  let x_792 : vec4<f32> = u_xlat0;
  let x_796 : vec3<f32> = (vec3<f32>(x_792.x, x_792.y, x_792.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_797 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_799 : vec4<f32> = u_xlat2;
  let x_801 : vec4<f32> = u_xlat0;
  let x_806 : vec3<f32> = ((vec3<f32>(x_799.x, x_799.x, x_799.x) * vec3<f32>(x_801.x, x_801.y, x_801.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_807 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_810 : f32 = u_xlat2.y;
  u_xlat34 = (-(x_810) + 1.0f);
  let x_813 : f32 = u_xlat34;
  let x_814 : f32 = u_xlat34;
  u_xlat2.x = (x_813 * x_814);
  let x_818 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_818, 0.0078125f);
  let x_824 : f32 = u_xlat2.x;
  let x_826 : f32 = u_xlat2.x;
  u_xlat13 = (x_824 * x_826);
  let x_828 : f32 = u_xlat35;
  u_xlat35 = (x_828 + 1.0f);
  let x_830 : f32 = u_xlat35;
  u_xlat35 = min(x_830, 1.0f);
  let x_834 : f32 = u_xlat2.x;
  u_xlat36 = ((x_834 * 4.0f) + 2.0f);
  let x_843 : vec3<f32> = u_xlat6;
  let x_846 : f32 = x_44.x_GlobalMipBias.x;
  let x_847 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_843.x, x_843.z), x_846);
  u_xlat37 = x_847.x;
  let x_850 : f32 = u_xlat37;
  u_xlat38 = (x_850 + -1.0f);
  let x_853 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_854 : f32 = u_xlat38;
  u_xlat38 = ((x_853 * x_854) + 1.0f);
  let x_859 : f32 = u_xlat2.z;
  let x_860 : f32 = u_xlat37;
  u_xlat24 = min(x_859, x_860);
  let x_863 : vec4<f32> = u_xlat4;
  let x_864 : vec2<f32> = vec2<f32>(x_863.x, x_863.y);
  let x_866 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_864.x, x_864.y, x_866);
  let x_878 : vec3<f32> = txVec0;
  let x_880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_878.xy, x_878.z);
  u_xlat4.x = x_880;
  let x_884 : f32 = x_503.x_MainLightShadowParams.x;
  u_xlat15.x = (-(x_884) + 1.0f);
  let x_889 : f32 = u_xlat4.x;
  let x_891 : f32 = x_503.x_MainLightShadowParams.x;
  let x_894 : f32 = u_xlat15.x;
  u_xlat4.x = ((x_889 * x_891) + x_894);
  let x_899 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_899);
  let x_903 : f32 = u_xlat4.z;
  u_xlatb26 = (x_903 >= 1.0f);
  let x_905 : bool = u_xlatb26;
  let x_906 : bool = u_xlatb15;
  u_xlatb15 = (x_905 | x_906);
  let x_908 : bool = u_xlatb15;
  if (x_908) {
    x_909 = 1.0f;
  } else {
    let x_914 : f32 = u_xlat4.x;
    x_909 = x_914;
  }
  let x_915 : f32 = x_909;
  u_xlat4.x = x_915;
  let x_917 : vec3<f32> = vs_INTERP0;
  let x_919 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat15 = (x_917 + -(x_919));
  let x_922 : vec3<f32> = u_xlat15;
  let x_923 : vec3<f32> = u_xlat15;
  u_xlat15.x = dot(x_922, x_923);
  let x_927 : f32 = u_xlat15.x;
  let x_929 : f32 = x_503.x_MainLightShadowParams.z;
  let x_932 : f32 = x_503.x_MainLightShadowParams.w;
  u_xlat15.x = ((x_927 * x_929) + x_932);
  let x_936 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_936, 0.0f, 1.0f);
  let x_941 : f32 = u_xlat4.x;
  u_xlat26 = (-(x_941) + 1.0f);
  let x_945 : f32 = u_xlat15.x;
  let x_946 : f32 = u_xlat26;
  let x_949 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_945 * x_946) + x_949);
  let x_952 : f32 = u_xlat38;
  let x_955 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat15 = (vec3<f32>(x_952, x_952, x_952) * vec3<f32>(x_955.x, x_955.y, x_955.z));
  let x_958 : vec4<f32> = u_xlat3;
  let x_961 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(vec3<f32>(x_958.x, x_958.y, x_958.z)), vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_966 : f32 = u_xlat6.x;
  let x_968 : f32 = u_xlat6.x;
  u_xlat6.x = (x_966 + x_968);
  let x_971 : vec4<f32> = u_xlat1;
  let x_973 : vec3<f32> = u_xlat6;
  let x_977 : vec4<f32> = u_xlat3;
  u_xlat6 = ((vec3<f32>(x_971.x, x_971.y, x_971.z) * -(vec3<f32>(x_973.x, x_973.x, x_973.x))) + -(vec3<f32>(x_977.x, x_977.y, x_977.z)));
  let x_982 : vec4<f32> = u_xlat1;
  let x_984 : vec4<f32> = u_xlat3;
  u_xlat39 = dot(vec3<f32>(x_982.x, x_982.y, x_982.z), vec3<f32>(x_984.x, x_984.y, x_984.z));
  let x_987 : f32 = u_xlat39;
  u_xlat39 = clamp(x_987, 0.0f, 1.0f);
  let x_989 : f32 = u_xlat39;
  u_xlat39 = (-(x_989) + 1.0f);
  let x_992 : f32 = u_xlat39;
  let x_993 : f32 = u_xlat39;
  u_xlat39 = (x_992 * x_993);
  let x_995 : f32 = u_xlat39;
  let x_996 : f32 = u_xlat39;
  u_xlat39 = (x_995 * x_996);
  let x_999 : f32 = u_xlat34;
  u_xlat40 = ((-(x_999) * 0.699999988f) + 1.700000048f);
  let x_1005 : f32 = u_xlat34;
  let x_1006 : f32 = u_xlat40;
  u_xlat34 = (x_1005 * x_1006);
  let x_1008 : f32 = u_xlat34;
  u_xlat34 = (x_1008 * 6.0f);
  let x_1019 : vec3<f32> = u_xlat6;
  let x_1020 : f32 = u_xlat34;
  let x_1021 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1019, x_1020);
  u_xlat8 = x_1021;
  let x_1023 : f32 = u_xlat8.w;
  u_xlat34 = (x_1023 + -1.0f);
  let x_1026 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_1027 : f32 = u_xlat34;
  u_xlat34 = ((x_1026 * x_1027) + 1.0f);
  let x_1030 : f32 = u_xlat34;
  u_xlat34 = max(x_1030, 0.0f);
  let x_1032 : f32 = u_xlat34;
  u_xlat34 = log2(x_1032);
  let x_1034 : f32 = u_xlat34;
  let x_1036 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat34 = (x_1034 * x_1036);
  let x_1038 : f32 = u_xlat34;
  u_xlat34 = exp2(x_1038);
  let x_1040 : f32 = u_xlat34;
  let x_1042 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat34 = (x_1040 * x_1042);
  let x_1044 : vec4<f32> = u_xlat8;
  let x_1046 : f32 = u_xlat34;
  u_xlat6 = (vec3<f32>(x_1044.x, x_1044.y, x_1044.z) * vec3<f32>(x_1046, x_1046, x_1046));
  let x_1049 : vec4<f32> = u_xlat2;
  let x_1051 : vec4<f32> = u_xlat2;
  let x_1055 : vec2<f32> = ((vec2<f32>(x_1049.x, x_1049.x) * vec2<f32>(x_1051.x, x_1051.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1056 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
  let x_1059 : f32 = u_xlat8.y;
  u_xlat34 = (1.0f / x_1059);
  let x_1062 : vec4<f32> = u_xlat0;
  let x_1065 : f32 = u_xlat35;
  u_xlat19 = (-(vec3<f32>(x_1062.x, x_1062.y, x_1062.z)) + vec3<f32>(x_1065, x_1065, x_1065));
  let x_1068 : f32 = u_xlat39;
  let x_1070 : vec3<f32> = u_xlat19;
  let x_1072 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_1068, x_1068, x_1068) * x_1070) + vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : f32 = u_xlat34;
  let x_1077 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1075, x_1075, x_1075) * x_1077);
  let x_1079 : vec3<f32> = u_xlat6;
  let x_1080 : vec3<f32> = u_xlat19;
  u_xlat6 = (x_1079 * x_1080);
  let x_1082 : vec4<f32> = u_xlat5;
  let x_1084 : vec3<f32> = u_xlat7;
  let x_1086 : vec3<f32> = u_xlat6;
  let x_1087 : vec3<f32> = ((vec3<f32>(x_1082.x, x_1082.y, x_1082.z) * x_1084) + x_1086);
  let x_1088 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1091 : f32 = u_xlat4.x;
  let x_1093 : f32 = x_359.unity_LightData.z;
  u_xlat34 = (x_1091 * x_1093);
  let x_1095 : vec4<f32> = u_xlat1;
  let x_1098 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1095.x, x_1095.y, x_1095.z), vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1103 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1103, 0.0f, 1.0f);
  let x_1106 : f32 = u_xlat34;
  let x_1108 : f32 = u_xlat2.x;
  u_xlat34 = (x_1106 * x_1108);
  let x_1110 : f32 = u_xlat34;
  let x_1112 : vec3<f32> = u_xlat15;
  let x_1113 : vec3<f32> = (vec3<f32>(x_1110, x_1110, x_1110) * x_1112);
  let x_1114 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
  let x_1116 : vec4<f32> = u_xlat3;
  let x_1119 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = (vec3<f32>(x_1116.x, x_1116.y, x_1116.z) + vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
  let x_1122 : vec3<f32> = u_xlat6;
  let x_1123 : vec3<f32> = u_xlat6;
  u_xlat34 = dot(x_1122, x_1123);
  let x_1125 : f32 = u_xlat34;
  u_xlat34 = max(x_1125, 1.17549435e-37f);
  let x_1128 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_1128);
  let x_1130 : f32 = u_xlat34;
  let x_1132 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_1130, x_1130, x_1130) * x_1132);
  let x_1134 : vec4<f32> = u_xlat1;
  let x_1136 : vec3<f32> = u_xlat6;
  u_xlat34 = dot(vec3<f32>(x_1134.x, x_1134.y, x_1134.z), x_1136);
  let x_1138 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1138, 0.0f, 1.0f);
  let x_1141 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1143 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_1141.x, x_1141.y, x_1141.z), x_1143);
  let x_1147 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1147, 0.0f, 1.0f);
  let x_1150 : f32 = u_xlat34;
  let x_1151 : f32 = u_xlat34;
  u_xlat34 = (x_1150 * x_1151);
  let x_1153 : f32 = u_xlat34;
  let x_1155 : f32 = u_xlat8.x;
  u_xlat34 = ((x_1153 * x_1155) + 1.000010014f);
  let x_1160 : f32 = u_xlat2.x;
  let x_1162 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1160 * x_1162);
  let x_1165 : f32 = u_xlat34;
  let x_1166 : f32 = u_xlat34;
  u_xlat34 = (x_1165 * x_1166);
  let x_1169 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1169, 0.100000001f);
  let x_1173 : f32 = u_xlat34;
  let x_1175 : f32 = u_xlat2.x;
  u_xlat34 = (x_1173 * x_1175);
  let x_1177 : f32 = u_xlat36;
  let x_1178 : f32 = u_xlat34;
  u_xlat34 = (x_1177 * x_1178);
  let x_1180 : f32 = u_xlat13;
  let x_1181 : f32 = u_xlat34;
  u_xlat34 = (x_1180 / x_1181);
  let x_1183 : vec4<f32> = u_xlat0;
  let x_1185 : f32 = u_xlat34;
  let x_1188 : vec3<f32> = u_xlat7;
  u_xlat6 = ((vec3<f32>(x_1183.x, x_1183.y, x_1183.z) * vec3<f32>(x_1185, x_1185, x_1185)) + x_1188);
  let x_1190 : vec4<f32> = u_xlat4;
  let x_1192 : vec3<f32> = u_xlat6;
  let x_1193 : vec3<f32> = (vec3<f32>(x_1190.x, x_1190.y, x_1190.z) * x_1192);
  let x_1194 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  let x_1197 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1199 : f32 = x_359.unity_LightData.y;
  u_xlat34 = min(x_1197, x_1199);
  let x_1202 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1202));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1214 : u32 = u_xlatu_loop_1;
    let x_1215 : u32 = u_xlatu34;
    if ((x_1214 < x_1215)) {
    } else {
      break;
    }
    let x_1218 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_1218 >> 2u);
    let x_1221 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_1221 & 3u));
    let x_1224 : u32 = u_xlatu35;
    let x_1227 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_1224)];
    let x_1237 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1242 : vec4<u32> = indexable[x_1237];
    u_xlat35 = dot(x_1227, bitcast<vec4<f32>>(x_1242));
    let x_1246 : f32 = u_xlat35;
    u_xlati35 = i32(x_1246);
    let x_1248 : vec3<f32> = vs_INTERP0;
    let x_1260 : i32 = u_xlati35;
    let x_1262 : vec4<f32> = x_1259.x_AdditionalLightsPosition[x_1260];
    let x_1265 : i32 = u_xlati35;
    let x_1267 : vec4<f32> = x_1259.x_AdditionalLightsPosition[x_1265];
    u_xlat19 = ((-(x_1248) * vec3<f32>(x_1262.w, x_1262.w, x_1262.w)) + vec3<f32>(x_1267.x, x_1267.y, x_1267.z));
    let x_1270 : vec3<f32> = u_xlat19;
    let x_1271 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1270, x_1271);
    let x_1273 : f32 = u_xlat37;
    u_xlat37 = max(x_1273, 6.10351562e-05f);
    let x_1276 : f32 = u_xlat37;
    u_xlat39 = inverseSqrt(x_1276);
    let x_1279 : f32 = u_xlat39;
    let x_1281 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1279, x_1279, x_1279) * x_1281);
    let x_1283 : f32 = u_xlat37;
    u_xlat40 = (1.0f / x_1283);
    let x_1285 : f32 = u_xlat37;
    let x_1286 : i32 = u_xlati35;
    let x_1288 : f32 = x_1259.x_AdditionalLightsAttenuation[x_1286].x;
    u_xlat37 = (x_1285 * x_1288);
    let x_1290 : f32 = u_xlat37;
    let x_1292 : f32 = u_xlat37;
    u_xlat37 = ((-(x_1290) * x_1292) + 1.0f);
    let x_1295 : f32 = u_xlat37;
    u_xlat37 = max(x_1295, 0.0f);
    let x_1297 : f32 = u_xlat37;
    let x_1298 : f32 = u_xlat37;
    u_xlat37 = (x_1297 * x_1298);
    let x_1300 : f32 = u_xlat37;
    let x_1301 : f32 = u_xlat40;
    u_xlat37 = (x_1300 * x_1301);
    let x_1303 : i32 = u_xlati35;
    let x_1305 : vec4<f32> = x_1259.x_AdditionalLightsSpotDir[x_1303];
    let x_1307 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1305.x, x_1305.y, x_1305.z), x_1307);
    let x_1309 : f32 = u_xlat40;
    let x_1310 : i32 = u_xlati35;
    let x_1312 : f32 = x_1259.x_AdditionalLightsAttenuation[x_1310].z;
    let x_1314 : i32 = u_xlati35;
    let x_1316 : f32 = x_1259.x_AdditionalLightsAttenuation[x_1314].w;
    u_xlat40 = ((x_1309 * x_1312) + x_1316);
    let x_1318 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1318, 0.0f, 1.0f);
    let x_1320 : f32 = u_xlat40;
    let x_1321 : f32 = u_xlat40;
    u_xlat40 = (x_1320 * x_1321);
    let x_1323 : f32 = u_xlat37;
    let x_1324 : f32 = u_xlat40;
    u_xlat37 = (x_1323 * x_1324);
    let x_1327 : f32 = u_xlat38;
    let x_1329 : i32 = u_xlati35;
    let x_1331 : vec4<f32> = x_1259.x_AdditionalLightsColor[x_1329];
    u_xlat10 = (vec3<f32>(x_1327, x_1327, x_1327) * vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
    let x_1334 : vec4<f32> = u_xlat1;
    let x_1336 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1334.x, x_1334.y, x_1334.z), x_1336);
    let x_1338 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1338, 0.0f, 1.0f);
    let x_1340 : f32 = u_xlat35;
    let x_1341 : f32 = u_xlat37;
    u_xlat35 = (x_1340 * x_1341);
    let x_1343 : f32 = u_xlat35;
    let x_1345 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1343, x_1343, x_1343) * x_1345);
    let x_1347 : vec3<f32> = u_xlat19;
    let x_1348 : f32 = u_xlat39;
    let x_1351 : vec4<f32> = u_xlat3;
    u_xlat19 = ((x_1347 * vec3<f32>(x_1348, x_1348, x_1348)) + vec3<f32>(x_1351.x, x_1351.y, x_1351.z));
    let x_1354 : vec3<f32> = u_xlat19;
    let x_1355 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(x_1354, x_1355);
    let x_1357 : f32 = u_xlat35;
    u_xlat35 = max(x_1357, 1.17549435e-37f);
    let x_1359 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_1359);
    let x_1361 : f32 = u_xlat35;
    let x_1363 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1361, x_1361, x_1361) * x_1363);
    let x_1365 : vec4<f32> = u_xlat1;
    let x_1367 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(vec3<f32>(x_1365.x, x_1365.y, x_1365.z), x_1367);
    let x_1369 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1369, 0.0f, 1.0f);
    let x_1371 : vec3<f32> = u_xlat9;
    let x_1372 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1371, x_1372);
    let x_1374 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1374, 0.0f, 1.0f);
    let x_1376 : f32 = u_xlat35;
    let x_1377 : f32 = u_xlat35;
    u_xlat35 = (x_1376 * x_1377);
    let x_1379 : f32 = u_xlat35;
    let x_1381 : f32 = u_xlat8.x;
    u_xlat35 = ((x_1379 * x_1381) + 1.000010014f);
    let x_1384 : f32 = u_xlat37;
    let x_1385 : f32 = u_xlat37;
    u_xlat37 = (x_1384 * x_1385);
    let x_1387 : f32 = u_xlat35;
    let x_1388 : f32 = u_xlat35;
    u_xlat35 = (x_1387 * x_1388);
    let x_1390 : f32 = u_xlat37;
    u_xlat37 = max(x_1390, 0.100000001f);
    let x_1392 : f32 = u_xlat35;
    let x_1393 : f32 = u_xlat37;
    u_xlat35 = (x_1392 * x_1393);
    let x_1395 : f32 = u_xlat36;
    let x_1396 : f32 = u_xlat35;
    u_xlat35 = (x_1395 * x_1396);
    let x_1398 : f32 = u_xlat13;
    let x_1399 : f32 = u_xlat35;
    u_xlat35 = (x_1398 / x_1399);
    let x_1401 : vec4<f32> = u_xlat0;
    let x_1403 : f32 = u_xlat35;
    let x_1406 : vec3<f32> = u_xlat7;
    u_xlat19 = ((vec3<f32>(x_1401.x, x_1401.y, x_1401.z) * vec3<f32>(x_1403, x_1403, x_1403)) + x_1406);
    let x_1408 : vec3<f32> = u_xlat19;
    let x_1409 : vec3<f32> = u_xlat10;
    let x_1411 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1408 * x_1409) + x_1411);

    continuing {
      let x_1413 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1413 + bitcast<u32>(1i));
    }
  }
  let x_1415 : vec4<f32> = u_xlat5;
  let x_1417 : f32 = u_xlat24;
  let x_1420 : vec4<f32> = u_xlat4;
  let x_1422 : vec3<f32> = ((vec3<f32>(x_1415.x, x_1415.y, x_1415.z) * vec3<f32>(x_1417, x_1417, x_1417)) + vec3<f32>(x_1420.x, x_1420.y, x_1420.z));
  let x_1423 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1422.x, x_1422.y, x_1422.z, x_1423.w);
  let x_1425 : vec3<f32> = u_xlat6;
  let x_1426 : vec4<f32> = u_xlat0;
  let x_1428 : vec3<f32> = (x_1425 + vec3<f32>(x_1426.x, x_1426.y, x_1426.z));
  let x_1429 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
  let x_1431 : f32 = u_xlat33;
  let x_1432 : f32 = u_xlat33;
  u_xlat33 = (x_1431 * -(x_1432));
  let x_1435 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1435);
  let x_1437 : vec4<f32> = u_xlat0;
  let x_1441 : vec4<f32> = x_44.unity_FogColor;
  let x_1444 : vec3<f32> = (vec3<f32>(x_1437.x, x_1437.y, x_1437.z) + -(vec3<f32>(x_1441.x, x_1441.y, x_1441.z)));
  let x_1445 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1444.x, x_1444.y, x_1444.z, x_1445.w);
  let x_1449 : f32 = u_xlat33;
  let x_1451 : vec4<f32> = u_xlat0;
  let x_1455 : vec4<f32> = x_44.unity_FogColor;
  let x_1457 : vec3<f32> = ((vec3<f32>(x_1449, x_1449, x_1449) * vec3<f32>(x_1451.x, x_1451.y, x_1451.z)) + vec3<f32>(x_1455.x, x_1455.y, x_1455.z));
  let x_1458 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
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

