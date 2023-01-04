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

@group(1) @binding(3) var<uniform> x_503 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1297 : AdditionalLights;

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
  var x_947 : f32;
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
  let x_730 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_727, x_729);
  u_xlat5 = x_730;
  let x_735 : vec2<f32> = vs_INTERP4;
  let x_737 : f32 = x_44.x_GlobalMipBias.x;
  let x_738 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_735, x_737);
  u_xlat6 = vec3<f32>(x_738.x, x_738.y, x_738.z);
  let x_740 : vec4<f32> = u_xlat5;
  let x_744 : vec3<f32> = (vec3<f32>(x_740.x, x_740.y, x_740.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_745 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
  let x_747 : vec4<f32> = u_xlat1;
  let x_749 : vec4<f32> = u_xlat5;
  u_xlat34 = dot(vec3<f32>(x_747.x, x_747.y, x_747.z), vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : f32 = u_xlat34;
  u_xlat34 = (x_752 + 0.5f);
  let x_755 : f32 = u_xlat34;
  let x_757 : vec3<f32> = u_xlat6;
  let x_758 : vec3<f32> = (vec3<f32>(x_755, x_755, x_755) * x_757);
  let x_759 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_762 : f32 = u_xlat5.w;
  u_xlat34 = max(x_762, 0.0001f);
  let x_765 : vec4<f32> = u_xlat5;
  let x_767 : f32 = u_xlat34;
  let x_769 : vec3<f32> = (vec3<f32>(x_765.x, x_765.y, x_765.z) / vec3<f32>(x_767, x_767, x_767));
  let x_770 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_774 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_775 : vec2<f32> = vec2<f32>(x_774.x, x_774.y);
  let x_779 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_775.x, x_775.y));
  let x_780 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_779.x, x_779.y, x_780.z);
  let x_782 : vec3<f32> = u_xlat6;
  let x_784 : vec4<f32> = hlslcc_FragCoord;
  let x_786 : vec2<f32> = (vec2<f32>(x_782.x, x_782.y) * vec2<f32>(x_784.x, x_784.y));
  let x_787 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_786.x, x_786.y, x_787.z);
  let x_790 : f32 = u_xlat6.y;
  let x_793 : f32 = x_44.x_ScaleBiasRt.x;
  let x_796 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat34 = ((x_790 * x_793) + x_796);
  let x_798 : f32 = u_xlat34;
  u_xlat6.z = (-(x_798) + 1.0f);
  let x_802 : vec4<f32> = u_xlat2;
  let x_803 : vec2<f32> = vec2<f32>(x_802.x, x_802.y);
  let x_804 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_803.x, x_803.y, x_804.z, x_804.w);
  let x_806 : vec4<f32> = u_xlat2;
  let x_810 : vec2<f32> = clamp(vec2<f32>(x_806.x, x_806.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_811 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_810.x, x_810.y, x_811.z, x_811.w);
  let x_814 : f32 = u_xlat2.x;
  u_xlat34 = ((-(x_814) * 0.959999979f) + 0.959999979f);
  let x_820 : f32 = u_xlat34;
  let x_823 : f32 = u_xlat2.y;
  u_xlat35 = (-(x_820) + x_823);
  let x_825 : vec4<f32> = u_xlat0;
  let x_827 : f32 = u_xlat34;
  u_xlat7 = (vec3<f32>(x_825.x, x_825.y, x_825.z) * vec3<f32>(x_827, x_827, x_827));
  let x_830 : vec4<f32> = u_xlat0;
  let x_834 : vec3<f32> = (vec3<f32>(x_830.x, x_830.y, x_830.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_835 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat2;
  let x_839 : vec4<f32> = u_xlat0;
  let x_844 : vec3<f32> = ((vec3<f32>(x_837.x, x_837.x, x_837.x) * vec3<f32>(x_839.x, x_839.y, x_839.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_845 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_848 : f32 = u_xlat2.y;
  u_xlat34 = (-(x_848) + 1.0f);
  let x_851 : f32 = u_xlat34;
  let x_852 : f32 = u_xlat34;
  u_xlat2.x = (x_851 * x_852);
  let x_856 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_856, 0.0078125f);
  let x_862 : f32 = u_xlat2.x;
  let x_864 : f32 = u_xlat2.x;
  u_xlat13 = (x_862 * x_864);
  let x_866 : f32 = u_xlat35;
  u_xlat35 = (x_866 + 1.0f);
  let x_868 : f32 = u_xlat35;
  u_xlat35 = min(x_868, 1.0f);
  let x_872 : f32 = u_xlat2.x;
  u_xlat36 = ((x_872 * 4.0f) + 2.0f);
  let x_881 : vec3<f32> = u_xlat6;
  let x_884 : f32 = x_44.x_GlobalMipBias.x;
  let x_885 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_881.x, x_881.z), x_884);
  u_xlat37 = x_885.x;
  let x_888 : f32 = u_xlat37;
  u_xlat38 = (x_888 + -1.0f);
  let x_891 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_892 : f32 = u_xlat38;
  u_xlat38 = ((x_891 * x_892) + 1.0f);
  let x_897 : f32 = u_xlat2.z;
  let x_898 : f32 = u_xlat37;
  u_xlat24 = min(x_897, x_898);
  let x_901 : vec4<f32> = u_xlat4;
  let x_902 : vec2<f32> = vec2<f32>(x_901.x, x_901.y);
  let x_904 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_902.x, x_902.y, x_904);
  let x_916 : vec3<f32> = txVec0;
  let x_918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_916.xy, x_916.z);
  u_xlat4.x = x_918;
  let x_922 : f32 = x_503.x_MainLightShadowParams.x;
  u_xlat15.x = (-(x_922) + 1.0f);
  let x_927 : f32 = u_xlat4.x;
  let x_929 : f32 = x_503.x_MainLightShadowParams.x;
  let x_932 : f32 = u_xlat15.x;
  u_xlat4.x = ((x_927 * x_929) + x_932);
  let x_937 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_937);
  let x_941 : f32 = u_xlat4.z;
  u_xlatb26 = (x_941 >= 1.0f);
  let x_943 : bool = u_xlatb26;
  let x_944 : bool = u_xlatb15;
  u_xlatb15 = (x_943 | x_944);
  let x_946 : bool = u_xlatb15;
  if (x_946) {
    x_947 = 1.0f;
  } else {
    let x_952 : f32 = u_xlat4.x;
    x_947 = x_952;
  }
  let x_953 : f32 = x_947;
  u_xlat4.x = x_953;
  let x_955 : vec3<f32> = vs_INTERP0;
  let x_957 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat15 = (x_955 + -(x_957));
  let x_960 : vec3<f32> = u_xlat15;
  let x_961 : vec3<f32> = u_xlat15;
  u_xlat15.x = dot(x_960, x_961);
  let x_965 : f32 = u_xlat15.x;
  let x_967 : f32 = x_503.x_MainLightShadowParams.z;
  let x_970 : f32 = x_503.x_MainLightShadowParams.w;
  u_xlat15.x = ((x_965 * x_967) + x_970);
  let x_974 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_974, 0.0f, 1.0f);
  let x_979 : f32 = u_xlat4.x;
  u_xlat26 = (-(x_979) + 1.0f);
  let x_983 : f32 = u_xlat15.x;
  let x_984 : f32 = u_xlat26;
  let x_987 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_983 * x_984) + x_987);
  let x_990 : f32 = u_xlat38;
  let x_993 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat15 = (vec3<f32>(x_990, x_990, x_990) * vec3<f32>(x_993.x, x_993.y, x_993.z));
  let x_996 : vec4<f32> = u_xlat3;
  let x_999 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(vec3<f32>(x_996.x, x_996.y, x_996.z)), vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1004 : f32 = u_xlat6.x;
  let x_1006 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1004 + x_1006);
  let x_1009 : vec4<f32> = u_xlat1;
  let x_1011 : vec3<f32> = u_xlat6;
  let x_1015 : vec4<f32> = u_xlat3;
  u_xlat6 = ((vec3<f32>(x_1009.x, x_1009.y, x_1009.z) * -(vec3<f32>(x_1011.x, x_1011.x, x_1011.x))) + -(vec3<f32>(x_1015.x, x_1015.y, x_1015.z)));
  let x_1020 : vec4<f32> = u_xlat1;
  let x_1022 : vec4<f32> = u_xlat3;
  u_xlat39 = dot(vec3<f32>(x_1020.x, x_1020.y, x_1020.z), vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1025 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1025, 0.0f, 1.0f);
  let x_1027 : f32 = u_xlat39;
  u_xlat39 = (-(x_1027) + 1.0f);
  let x_1030 : f32 = u_xlat39;
  let x_1031 : f32 = u_xlat39;
  u_xlat39 = (x_1030 * x_1031);
  let x_1033 : f32 = u_xlat39;
  let x_1034 : f32 = u_xlat39;
  u_xlat39 = (x_1033 * x_1034);
  let x_1037 : f32 = u_xlat34;
  u_xlat40 = ((-(x_1037) * 0.699999988f) + 1.700000048f);
  let x_1043 : f32 = u_xlat34;
  let x_1044 : f32 = u_xlat40;
  u_xlat34 = (x_1043 * x_1044);
  let x_1046 : f32 = u_xlat34;
  u_xlat34 = (x_1046 * 6.0f);
  let x_1057 : vec3<f32> = u_xlat6;
  let x_1058 : f32 = u_xlat34;
  let x_1059 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1057, x_1058);
  u_xlat8 = x_1059;
  let x_1061 : f32 = u_xlat8.w;
  u_xlat34 = (x_1061 + -1.0f);
  let x_1064 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_1065 : f32 = u_xlat34;
  u_xlat34 = ((x_1064 * x_1065) + 1.0f);
  let x_1068 : f32 = u_xlat34;
  u_xlat34 = max(x_1068, 0.0f);
  let x_1070 : f32 = u_xlat34;
  u_xlat34 = log2(x_1070);
  let x_1072 : f32 = u_xlat34;
  let x_1074 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat34 = (x_1072 * x_1074);
  let x_1076 : f32 = u_xlat34;
  u_xlat34 = exp2(x_1076);
  let x_1078 : f32 = u_xlat34;
  let x_1080 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat34 = (x_1078 * x_1080);
  let x_1082 : vec4<f32> = u_xlat8;
  let x_1084 : f32 = u_xlat34;
  u_xlat6 = (vec3<f32>(x_1082.x, x_1082.y, x_1082.z) * vec3<f32>(x_1084, x_1084, x_1084));
  let x_1087 : vec4<f32> = u_xlat2;
  let x_1089 : vec4<f32> = u_xlat2;
  let x_1093 : vec2<f32> = ((vec2<f32>(x_1087.x, x_1087.x) * vec2<f32>(x_1089.x, x_1089.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1094 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1093.x, x_1093.y, x_1094.z, x_1094.w);
  let x_1097 : f32 = u_xlat8.y;
  u_xlat34 = (1.0f / x_1097);
  let x_1100 : vec4<f32> = u_xlat0;
  let x_1103 : f32 = u_xlat35;
  u_xlat19 = (-(vec3<f32>(x_1100.x, x_1100.y, x_1100.z)) + vec3<f32>(x_1103, x_1103, x_1103));
  let x_1106 : f32 = u_xlat39;
  let x_1108 : vec3<f32> = u_xlat19;
  let x_1110 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_1106, x_1106, x_1106) * x_1108) + vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : f32 = u_xlat34;
  let x_1115 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1113, x_1113, x_1113) * x_1115);
  let x_1117 : vec3<f32> = u_xlat6;
  let x_1118 : vec3<f32> = u_xlat19;
  u_xlat6 = (x_1117 * x_1118);
  let x_1120 : vec4<f32> = u_xlat5;
  let x_1122 : vec3<f32> = u_xlat7;
  let x_1124 : vec3<f32> = u_xlat6;
  let x_1125 : vec3<f32> = ((vec3<f32>(x_1120.x, x_1120.y, x_1120.z) * x_1122) + x_1124);
  let x_1126 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
  let x_1129 : f32 = u_xlat4.x;
  let x_1131 : f32 = x_359.unity_LightData.z;
  u_xlat34 = (x_1129 * x_1131);
  let x_1133 : vec4<f32> = u_xlat1;
  let x_1136 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1133.x, x_1133.y, x_1133.z), vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
  let x_1141 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1141, 0.0f, 1.0f);
  let x_1144 : f32 = u_xlat34;
  let x_1146 : f32 = u_xlat2.x;
  u_xlat34 = (x_1144 * x_1146);
  let x_1148 : f32 = u_xlat34;
  let x_1150 : vec3<f32> = u_xlat15;
  let x_1151 : vec3<f32> = (vec3<f32>(x_1148, x_1148, x_1148) * x_1150);
  let x_1152 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  let x_1154 : vec4<f32> = u_xlat3;
  let x_1157 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = (vec3<f32>(x_1154.x, x_1154.y, x_1154.z) + vec3<f32>(x_1157.x, x_1157.y, x_1157.z));
  let x_1160 : vec3<f32> = u_xlat6;
  let x_1161 : vec3<f32> = u_xlat6;
  u_xlat34 = dot(x_1160, x_1161);
  let x_1163 : f32 = u_xlat34;
  u_xlat34 = max(x_1163, 1.17549435e-37f);
  let x_1166 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_1166);
  let x_1168 : f32 = u_xlat34;
  let x_1170 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_1168, x_1168, x_1168) * x_1170);
  let x_1172 : vec4<f32> = u_xlat1;
  let x_1174 : vec3<f32> = u_xlat6;
  u_xlat34 = dot(vec3<f32>(x_1172.x, x_1172.y, x_1172.z), x_1174);
  let x_1176 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1176, 0.0f, 1.0f);
  let x_1179 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1181 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_1179.x, x_1179.y, x_1179.z), x_1181);
  let x_1185 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1185, 0.0f, 1.0f);
  let x_1188 : f32 = u_xlat34;
  let x_1189 : f32 = u_xlat34;
  u_xlat34 = (x_1188 * x_1189);
  let x_1191 : f32 = u_xlat34;
  let x_1193 : f32 = u_xlat8.x;
  u_xlat34 = ((x_1191 * x_1193) + 1.000010014f);
  let x_1198 : f32 = u_xlat2.x;
  let x_1200 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1198 * x_1200);
  let x_1203 : f32 = u_xlat34;
  let x_1204 : f32 = u_xlat34;
  u_xlat34 = (x_1203 * x_1204);
  let x_1207 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1207, 0.100000001f);
  let x_1211 : f32 = u_xlat34;
  let x_1213 : f32 = u_xlat2.x;
  u_xlat34 = (x_1211 * x_1213);
  let x_1215 : f32 = u_xlat36;
  let x_1216 : f32 = u_xlat34;
  u_xlat34 = (x_1215 * x_1216);
  let x_1218 : f32 = u_xlat13;
  let x_1219 : f32 = u_xlat34;
  u_xlat34 = (x_1218 / x_1219);
  let x_1221 : vec4<f32> = u_xlat0;
  let x_1223 : f32 = u_xlat34;
  let x_1226 : vec3<f32> = u_xlat7;
  u_xlat6 = ((vec3<f32>(x_1221.x, x_1221.y, x_1221.z) * vec3<f32>(x_1223, x_1223, x_1223)) + x_1226);
  let x_1228 : vec4<f32> = u_xlat4;
  let x_1230 : vec3<f32> = u_xlat6;
  let x_1231 : vec3<f32> = (vec3<f32>(x_1228.x, x_1228.y, x_1228.z) * x_1230);
  let x_1232 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1232.w);
  let x_1235 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1237 : f32 = x_359.unity_LightData.y;
  u_xlat34 = min(x_1235, x_1237);
  let x_1240 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1240));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1252 : u32 = u_xlatu_loop_1;
    let x_1253 : u32 = u_xlatu34;
    if ((x_1252 < x_1253)) {
    } else {
      break;
    }
    let x_1256 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_1256 >> 2u);
    let x_1259 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_1259 & 3u));
    let x_1262 : u32 = u_xlatu35;
    let x_1265 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_1262)];
    let x_1275 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1280 : vec4<u32> = indexable[x_1275];
    u_xlat35 = dot(x_1265, bitcast<vec4<f32>>(x_1280));
    let x_1284 : f32 = u_xlat35;
    u_xlati35 = i32(x_1284);
    let x_1286 : vec3<f32> = vs_INTERP0;
    let x_1298 : i32 = u_xlati35;
    let x_1300 : vec4<f32> = x_1297.x_AdditionalLightsPosition[x_1298];
    let x_1303 : i32 = u_xlati35;
    let x_1305 : vec4<f32> = x_1297.x_AdditionalLightsPosition[x_1303];
    u_xlat19 = ((-(x_1286) * vec3<f32>(x_1300.w, x_1300.w, x_1300.w)) + vec3<f32>(x_1305.x, x_1305.y, x_1305.z));
    let x_1308 : vec3<f32> = u_xlat19;
    let x_1309 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1308, x_1309);
    let x_1311 : f32 = u_xlat37;
    u_xlat37 = max(x_1311, 6.10351562e-05f);
    let x_1314 : f32 = u_xlat37;
    u_xlat39 = inverseSqrt(x_1314);
    let x_1317 : f32 = u_xlat39;
    let x_1319 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1317, x_1317, x_1317) * x_1319);
    let x_1321 : f32 = u_xlat37;
    u_xlat40 = (1.0f / x_1321);
    let x_1323 : f32 = u_xlat37;
    let x_1324 : i32 = u_xlati35;
    let x_1326 : f32 = x_1297.x_AdditionalLightsAttenuation[x_1324].x;
    u_xlat37 = (x_1323 * x_1326);
    let x_1328 : f32 = u_xlat37;
    let x_1330 : f32 = u_xlat37;
    u_xlat37 = ((-(x_1328) * x_1330) + 1.0f);
    let x_1333 : f32 = u_xlat37;
    u_xlat37 = max(x_1333, 0.0f);
    let x_1335 : f32 = u_xlat37;
    let x_1336 : f32 = u_xlat37;
    u_xlat37 = (x_1335 * x_1336);
    let x_1338 : f32 = u_xlat37;
    let x_1339 : f32 = u_xlat40;
    u_xlat37 = (x_1338 * x_1339);
    let x_1341 : i32 = u_xlati35;
    let x_1343 : vec4<f32> = x_1297.x_AdditionalLightsSpotDir[x_1341];
    let x_1345 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1343.x, x_1343.y, x_1343.z), x_1345);
    let x_1347 : f32 = u_xlat40;
    let x_1348 : i32 = u_xlati35;
    let x_1350 : f32 = x_1297.x_AdditionalLightsAttenuation[x_1348].z;
    let x_1352 : i32 = u_xlati35;
    let x_1354 : f32 = x_1297.x_AdditionalLightsAttenuation[x_1352].w;
    u_xlat40 = ((x_1347 * x_1350) + x_1354);
    let x_1356 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1356, 0.0f, 1.0f);
    let x_1358 : f32 = u_xlat40;
    let x_1359 : f32 = u_xlat40;
    u_xlat40 = (x_1358 * x_1359);
    let x_1361 : f32 = u_xlat37;
    let x_1362 : f32 = u_xlat40;
    u_xlat37 = (x_1361 * x_1362);
    let x_1365 : f32 = u_xlat38;
    let x_1367 : i32 = u_xlati35;
    let x_1369 : vec4<f32> = x_1297.x_AdditionalLightsColor[x_1367];
    u_xlat10 = (vec3<f32>(x_1365, x_1365, x_1365) * vec3<f32>(x_1369.x, x_1369.y, x_1369.z));
    let x_1372 : vec4<f32> = u_xlat1;
    let x_1374 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1372.x, x_1372.y, x_1372.z), x_1374);
    let x_1376 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1376, 0.0f, 1.0f);
    let x_1378 : f32 = u_xlat35;
    let x_1379 : f32 = u_xlat37;
    u_xlat35 = (x_1378 * x_1379);
    let x_1381 : f32 = u_xlat35;
    let x_1383 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1381, x_1381, x_1381) * x_1383);
    let x_1385 : vec3<f32> = u_xlat19;
    let x_1386 : f32 = u_xlat39;
    let x_1389 : vec4<f32> = u_xlat3;
    u_xlat19 = ((x_1385 * vec3<f32>(x_1386, x_1386, x_1386)) + vec3<f32>(x_1389.x, x_1389.y, x_1389.z));
    let x_1392 : vec3<f32> = u_xlat19;
    let x_1393 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(x_1392, x_1393);
    let x_1395 : f32 = u_xlat35;
    u_xlat35 = max(x_1395, 1.17549435e-37f);
    let x_1397 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_1397);
    let x_1399 : f32 = u_xlat35;
    let x_1401 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1399, x_1399, x_1399) * x_1401);
    let x_1403 : vec4<f32> = u_xlat1;
    let x_1405 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(vec3<f32>(x_1403.x, x_1403.y, x_1403.z), x_1405);
    let x_1407 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1407, 0.0f, 1.0f);
    let x_1409 : vec3<f32> = u_xlat9;
    let x_1410 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1409, x_1410);
    let x_1412 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1412, 0.0f, 1.0f);
    let x_1414 : f32 = u_xlat35;
    let x_1415 : f32 = u_xlat35;
    u_xlat35 = (x_1414 * x_1415);
    let x_1417 : f32 = u_xlat35;
    let x_1419 : f32 = u_xlat8.x;
    u_xlat35 = ((x_1417 * x_1419) + 1.000010014f);
    let x_1422 : f32 = u_xlat37;
    let x_1423 : f32 = u_xlat37;
    u_xlat37 = (x_1422 * x_1423);
    let x_1425 : f32 = u_xlat35;
    let x_1426 : f32 = u_xlat35;
    u_xlat35 = (x_1425 * x_1426);
    let x_1428 : f32 = u_xlat37;
    u_xlat37 = max(x_1428, 0.100000001f);
    let x_1430 : f32 = u_xlat35;
    let x_1431 : f32 = u_xlat37;
    u_xlat35 = (x_1430 * x_1431);
    let x_1433 : f32 = u_xlat36;
    let x_1434 : f32 = u_xlat35;
    u_xlat35 = (x_1433 * x_1434);
    let x_1436 : f32 = u_xlat13;
    let x_1437 : f32 = u_xlat35;
    u_xlat35 = (x_1436 / x_1437);
    let x_1439 : vec4<f32> = u_xlat0;
    let x_1441 : f32 = u_xlat35;
    let x_1444 : vec3<f32> = u_xlat7;
    u_xlat19 = ((vec3<f32>(x_1439.x, x_1439.y, x_1439.z) * vec3<f32>(x_1441, x_1441, x_1441)) + x_1444);
    let x_1446 : vec3<f32> = u_xlat19;
    let x_1447 : vec3<f32> = u_xlat10;
    let x_1449 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1446 * x_1447) + x_1449);

    continuing {
      let x_1451 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1451 + bitcast<u32>(1i));
    }
  }
  let x_1453 : vec4<f32> = u_xlat5;
  let x_1455 : f32 = u_xlat24;
  let x_1458 : vec4<f32> = u_xlat4;
  let x_1460 : vec3<f32> = ((vec3<f32>(x_1453.x, x_1453.y, x_1453.z) * vec3<f32>(x_1455, x_1455, x_1455)) + vec3<f32>(x_1458.x, x_1458.y, x_1458.z));
  let x_1461 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1460.x, x_1460.y, x_1460.z, x_1461.w);
  let x_1463 : vec3<f32> = u_xlat6;
  let x_1464 : vec4<f32> = u_xlat0;
  let x_1466 : vec3<f32> = (x_1463 + vec3<f32>(x_1464.x, x_1464.y, x_1464.z));
  let x_1467 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1467.w);
  let x_1469 : f32 = u_xlat33;
  let x_1470 : f32 = u_xlat33;
  u_xlat33 = (x_1469 * -(x_1470));
  let x_1473 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1473);
  let x_1475 : vec4<f32> = u_xlat0;
  let x_1479 : vec4<f32> = x_44.unity_FogColor;
  let x_1482 : vec3<f32> = (vec3<f32>(x_1475.x, x_1475.y, x_1475.z) + -(vec3<f32>(x_1479.x, x_1479.y, x_1479.z)));
  let x_1483 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1482.x, x_1482.y, x_1482.z, x_1483.w);
  let x_1487 : f32 = u_xlat33;
  let x_1489 : vec4<f32> = u_xlat0;
  let x_1493 : vec4<f32> = x_44.unity_FogColor;
  let x_1495 : vec3<f32> = ((vec3<f32>(x_1487, x_1487, x_1487) * vec3<f32>(x_1489.x, x_1489.y, x_1489.z)) + vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
  let x_1496 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
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

