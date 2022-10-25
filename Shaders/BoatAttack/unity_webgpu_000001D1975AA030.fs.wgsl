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

@group(1) @binding(3) var<uniform> x_706 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1083 : AdditionalLights;

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
  var x_487 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat6 : vec3<f32>;
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
  let x_541 : vec2<f32> = vs_INTERP4;
  let x_543 : f32 = x_44.x_GlobalMipBias.x;
  let x_544 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_541, x_543);
  u_xlat4 = vec3<f32>(x_544.x, x_544.y, x_544.z);
  let x_550 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_551 : vec2<f32> = vec2<f32>(x_550.x, x_550.y);
  let x_555 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_551.x, x_551.y));
  let x_556 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_555.x, x_555.y, x_556.z);
  let x_558 : vec3<f32> = u_xlat5;
  let x_560 : vec4<f32> = hlslcc_FragCoord;
  let x_562 : vec2<f32> = (vec2<f32>(x_558.x, x_558.y) * vec2<f32>(x_560.x, x_560.y));
  let x_563 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_562.x, x_562.y, x_563.z);
  let x_566 : f32 = u_xlat5.y;
  let x_569 : f32 = x_44.x_ScaleBiasRt.x;
  let x_572 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat34 = ((x_566 * x_569) + x_572);
  let x_574 : f32 = u_xlat34;
  u_xlat5.z = (-(x_574) + 1.0f);
  let x_578 : vec4<f32> = u_xlat2;
  let x_579 : vec2<f32> = vec2<f32>(x_578.x, x_578.y);
  let x_580 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_579.x, x_579.y, x_580.z, x_580.w);
  let x_582 : vec4<f32> = u_xlat2;
  let x_586 : vec2<f32> = clamp(vec2<f32>(x_582.x, x_582.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_587 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
  let x_590 : f32 = u_xlat2.x;
  u_xlat34 = ((-(x_590) * 0.959999979f) + 0.959999979f);
  let x_596 : f32 = u_xlat34;
  let x_599 : f32 = u_xlat2.y;
  u_xlat35 = (-(x_596) + x_599);
  let x_602 : vec4<f32> = u_xlat0;
  let x_604 : f32 = u_xlat34;
  u_xlat6 = (vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(x_604, x_604, x_604));
  let x_607 : vec4<f32> = u_xlat0;
  let x_611 : vec3<f32> = (vec3<f32>(x_607.x, x_607.y, x_607.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat2;
  let x_616 : vec4<f32> = u_xlat0;
  let x_621 : vec3<f32> = ((vec3<f32>(x_614.x, x_614.x, x_614.x) * vec3<f32>(x_616.x, x_616.y, x_616.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_622 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_625 : f32 = u_xlat2.y;
  u_xlat34 = (-(x_625) + 1.0f);
  let x_628 : f32 = u_xlat34;
  let x_629 : f32 = u_xlat34;
  u_xlat2.x = (x_628 * x_629);
  let x_633 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_633, 0.0078125f);
  let x_639 : f32 = u_xlat2.x;
  let x_641 : f32 = u_xlat2.x;
  u_xlat13 = (x_639 * x_641);
  let x_643 : f32 = u_xlat35;
  u_xlat35 = (x_643 + 1.0f);
  let x_645 : f32 = u_xlat35;
  u_xlat35 = min(x_645, 1.0f);
  let x_649 : f32 = u_xlat2.x;
  u_xlat36 = ((x_649 * 4.0f) + 2.0f);
  let x_659 : vec3<f32> = u_xlat5;
  let x_662 : f32 = x_44.x_GlobalMipBias.x;
  let x_663 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_659.x, x_659.z), x_662);
  u_xlat37 = x_663.x;
  let x_665 : f32 = u_xlat37;
  u_xlat5.x = (x_665 + -1.0f);
  let x_670 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_672 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_670 * x_672) + 1.0f);
  let x_678 : f32 = u_xlat2.z;
  let x_679 : f32 = u_xlat37;
  u_xlat24 = min(x_678, x_679);
  let x_683 : vec4<f32> = vs_INTERP8;
  let x_684 : vec2<f32> = vec2<f32>(x_683.x, x_683.y);
  let x_686 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_684.x, x_684.y, x_686);
  let x_698 : vec3<f32> = txVec0;
  let x_700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_698.xy, x_698.z);
  u_xlat37 = x_700;
  let x_708 : f32 = x_706.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_708) + 1.0f);
  let x_712 : f32 = u_xlat37;
  let x_714 : f32 = x_706.x_MainLightShadowParams.x;
  let x_717 : f32 = u_xlat16.x;
  u_xlat37 = ((x_712 * x_714) + x_717);
  let x_721 : f32 = vs_INTERP8.z;
  u_xlatb16 = (0.0f >= x_721);
  let x_725 : f32 = vs_INTERP8.z;
  u_xlatb27 = (x_725 >= 1.0f);
  let x_727 : bool = u_xlatb27;
  let x_728 : bool = u_xlatb16;
  u_xlatb16 = (x_727 | x_728);
  let x_730 : bool = u_xlatb16;
  let x_731 : f32 = u_xlat37;
  u_xlat37 = select(x_731, 1.0f, x_730);
  let x_733 : vec3<f32> = vs_INTERP0;
  let x_735 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat16 = (x_733 + -(x_735));
  let x_738 : vec3<f32> = u_xlat16;
  let x_739 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(x_738, x_739);
  let x_743 : f32 = u_xlat16.x;
  let x_745 : f32 = x_706.x_MainLightShadowParams.z;
  let x_748 : f32 = x_706.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_743 * x_745) + x_748);
  let x_752 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_752, 0.0f, 1.0f);
  let x_756 : f32 = u_xlat37;
  u_xlat27 = (-(x_756) + 1.0f);
  let x_760 : f32 = u_xlat16.x;
  let x_761 : f32 = u_xlat27;
  let x_763 : f32 = u_xlat37;
  u_xlat37 = ((x_760 * x_761) + x_763);
  let x_765 : vec3<f32> = u_xlat5;
  let x_768 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_765.x, x_765.x, x_765.x) * vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_772 : vec4<f32> = u_xlat3;
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat39 = dot(-(vec3<f32>(x_772.x, x_772.y, x_772.z)), vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : f32 = u_xlat39;
  let x_779 : f32 = u_xlat39;
  u_xlat39 = (x_778 + x_779);
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : f32 = u_xlat39;
  let x_788 : vec4<f32> = u_xlat3;
  let x_791 : vec3<f32> = ((vec3<f32>(x_782.x, x_782.y, x_782.z) * -(vec3<f32>(x_784, x_784, x_784))) + -(vec3<f32>(x_788.x, x_788.y, x_788.z)));
  let x_792 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : vec4<f32> = u_xlat1;
  let x_796 : vec4<f32> = u_xlat3;
  u_xlat39 = dot(vec3<f32>(x_794.x, x_794.y, x_794.z), vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : f32 = u_xlat39;
  u_xlat39 = clamp(x_799, 0.0f, 1.0f);
  let x_801 : f32 = u_xlat39;
  u_xlat39 = (-(x_801) + 1.0f);
  let x_804 : f32 = u_xlat39;
  let x_805 : f32 = u_xlat39;
  u_xlat39 = (x_804 * x_805);
  let x_807 : f32 = u_xlat39;
  let x_808 : f32 = u_xlat39;
  u_xlat39 = (x_807 * x_808);
  let x_811 : f32 = u_xlat34;
  u_xlat40 = ((-(x_811) * 0.699999988f) + 1.700000048f);
  let x_817 : f32 = u_xlat34;
  let x_818 : f32 = u_xlat40;
  u_xlat34 = (x_817 * x_818);
  let x_820 : f32 = u_xlat34;
  u_xlat34 = (x_820 * 6.0f);
  let x_830 : vec4<f32> = u_xlat7;
  let x_832 : f32 = u_xlat34;
  let x_833 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_830.x, x_830.y, x_830.z), x_832);
  u_xlat7 = x_833;
  let x_835 : f32 = u_xlat7.w;
  u_xlat34 = (x_835 + -1.0f);
  let x_838 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_839 : f32 = u_xlat34;
  u_xlat34 = ((x_838 * x_839) + 1.0f);
  let x_842 : f32 = u_xlat34;
  u_xlat34 = max(x_842, 0.0f);
  let x_844 : f32 = u_xlat34;
  u_xlat34 = log2(x_844);
  let x_846 : f32 = u_xlat34;
  let x_848 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat34 = (x_846 * x_848);
  let x_850 : f32 = u_xlat34;
  u_xlat34 = exp2(x_850);
  let x_852 : f32 = u_xlat34;
  let x_854 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat34 = (x_852 * x_854);
  let x_856 : vec4<f32> = u_xlat7;
  let x_858 : f32 = u_xlat34;
  let x_860 : vec3<f32> = (vec3<f32>(x_856.x, x_856.y, x_856.z) * vec3<f32>(x_858, x_858, x_858));
  let x_861 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_864 : vec4<f32> = u_xlat2;
  let x_866 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_864.x, x_864.x) * vec2<f32>(x_866.x, x_866.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_872 : f32 = u_xlat8.y;
  u_xlat34 = (1.0f / x_872);
  let x_875 : vec4<f32> = u_xlat0;
  let x_878 : f32 = u_xlat35;
  u_xlat19 = (-(vec3<f32>(x_875.x, x_875.y, x_875.z)) + vec3<f32>(x_878, x_878, x_878));
  let x_881 : f32 = u_xlat39;
  let x_883 : vec3<f32> = u_xlat19;
  let x_885 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_881, x_881, x_881) * x_883) + vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : f32 = u_xlat34;
  let x_890 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_888, x_888, x_888) * x_890);
  let x_892 : vec4<f32> = u_xlat7;
  let x_894 : vec3<f32> = u_xlat19;
  let x_895 : vec3<f32> = (vec3<f32>(x_892.x, x_892.y, x_892.z) * x_894);
  let x_896 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_898 : vec3<f32> = u_xlat4;
  let x_899 : vec3<f32> = u_xlat6;
  let x_901 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_898 * x_899) + vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : f32 = u_xlat37;
  let x_907 : f32 = x_359.unity_LightData.z;
  u_xlat34 = (x_904 * x_907);
  let x_909 : vec4<f32> = u_xlat1;
  let x_912 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_909.x, x_909.y, x_909.z), vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_917 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_917, 0.0f, 1.0f);
  let x_920 : f32 = u_xlat34;
  let x_922 : f32 = u_xlat2.x;
  u_xlat34 = (x_920 * x_922);
  let x_924 : f32 = u_xlat34;
  let x_926 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_924, x_924, x_924) * x_926);
  let x_928 : vec4<f32> = u_xlat3;
  let x_931 : vec4<f32> = x_44.x_MainLightPosition;
  let x_933 : vec3<f32> = (vec3<f32>(x_928.x, x_928.y, x_928.z) + vec3<f32>(x_931.x, x_931.y, x_931.z));
  let x_934 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_936 : vec4<f32> = u_xlat7;
  let x_938 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_936.x, x_936.y, x_936.z), vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_941 : f32 = u_xlat34;
  u_xlat34 = max(x_941, 1.17549435e-37f);
  let x_944 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_944);
  let x_946 : f32 = u_xlat34;
  let x_948 : vec4<f32> = u_xlat7;
  let x_950 : vec3<f32> = (vec3<f32>(x_946, x_946, x_946) * vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_951 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : vec4<f32> = u_xlat1;
  let x_955 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_953.x, x_953.y, x_953.z), vec3<f32>(x_955.x, x_955.y, x_955.z));
  let x_958 : f32 = u_xlat34;
  u_xlat34 = clamp(x_958, 0.0f, 1.0f);
  let x_961 : vec4<f32> = x_44.x_MainLightPosition;
  let x_963 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_961.x, x_961.y, x_961.z), vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_968 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_968, 0.0f, 1.0f);
  let x_971 : f32 = u_xlat34;
  let x_972 : f32 = u_xlat34;
  u_xlat34 = (x_971 * x_972);
  let x_974 : f32 = u_xlat34;
  let x_976 : f32 = u_xlat8.x;
  u_xlat34 = ((x_974 * x_976) + 1.000010014f);
  let x_981 : f32 = u_xlat2.x;
  let x_983 : f32 = u_xlat2.x;
  u_xlat2.x = (x_981 * x_983);
  let x_986 : f32 = u_xlat34;
  let x_987 : f32 = u_xlat34;
  u_xlat34 = (x_986 * x_987);
  let x_990 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_990, 0.100000001f);
  let x_994 : f32 = u_xlat34;
  let x_996 : f32 = u_xlat2.x;
  u_xlat34 = (x_994 * x_996);
  let x_998 : f32 = u_xlat36;
  let x_999 : f32 = u_xlat34;
  u_xlat34 = (x_998 * x_999);
  let x_1001 : f32 = u_xlat13;
  let x_1002 : f32 = u_xlat34;
  u_xlat34 = (x_1001 / x_1002);
  let x_1004 : vec4<f32> = u_xlat0;
  let x_1006 : f32 = u_xlat34;
  let x_1009 : vec3<f32> = u_xlat6;
  let x_1010 : vec3<f32> = ((vec3<f32>(x_1004.x, x_1004.y, x_1004.z) * vec3<f32>(x_1006, x_1006, x_1006)) + x_1009);
  let x_1011 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1013 : vec3<f32> = u_xlat16;
  let x_1014 : vec4<f32> = u_xlat7;
  u_xlat16 = (x_1013 * vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
  let x_1018 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1020 : f32 = x_359.unity_LightData.y;
  u_xlat34 = min(x_1018, x_1020);
  let x_1024 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1024));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1036 : u32 = u_xlatu_loop_1;
    let x_1037 : u32 = u_xlatu34;
    if ((x_1036 < x_1037)) {
    } else {
      break;
    }
    let x_1040 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_1040 >> 2u);
    let x_1044 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_1044 & 3u));
    let x_1048 : u32 = u_xlatu35;
    let x_1051 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_1048)];
    let x_1061 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1066 : vec4<u32> = indexable[x_1061];
    u_xlat35 = dot(x_1051, bitcast<vec4<f32>>(x_1066));
    let x_1070 : f32 = u_xlat35;
    u_xlati35 = i32(x_1070);
    let x_1072 : vec3<f32> = vs_INTERP0;
    let x_1084 : i32 = u_xlati35;
    let x_1086 : vec4<f32> = x_1083.x_AdditionalLightsPosition[x_1084];
    let x_1089 : i32 = u_xlati35;
    let x_1091 : vec4<f32> = x_1083.x_AdditionalLightsPosition[x_1089];
    u_xlat19 = ((-(x_1072) * vec3<f32>(x_1086.w, x_1086.w, x_1086.w)) + vec3<f32>(x_1091.x, x_1091.y, x_1091.z));
    let x_1094 : vec3<f32> = u_xlat19;
    let x_1095 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1094, x_1095);
    let x_1097 : f32 = u_xlat37;
    u_xlat37 = max(x_1097, 6.10351562e-05f);
    let x_1100 : f32 = u_xlat37;
    u_xlat39 = inverseSqrt(x_1100);
    let x_1103 : f32 = u_xlat39;
    let x_1105 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1103, x_1103, x_1103) * x_1105);
    let x_1107 : f32 = u_xlat37;
    u_xlat40 = (1.0f / x_1107);
    let x_1109 : f32 = u_xlat37;
    let x_1110 : i32 = u_xlati35;
    let x_1112 : f32 = x_1083.x_AdditionalLightsAttenuation[x_1110].x;
    u_xlat37 = (x_1109 * x_1112);
    let x_1114 : f32 = u_xlat37;
    let x_1116 : f32 = u_xlat37;
    u_xlat37 = ((-(x_1114) * x_1116) + 1.0f);
    let x_1119 : f32 = u_xlat37;
    u_xlat37 = max(x_1119, 0.0f);
    let x_1121 : f32 = u_xlat37;
    let x_1122 : f32 = u_xlat37;
    u_xlat37 = (x_1121 * x_1122);
    let x_1124 : f32 = u_xlat37;
    let x_1125 : f32 = u_xlat40;
    u_xlat37 = (x_1124 * x_1125);
    let x_1127 : i32 = u_xlati35;
    let x_1129 : vec4<f32> = x_1083.x_AdditionalLightsSpotDir[x_1127];
    let x_1131 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1129.x, x_1129.y, x_1129.z), x_1131);
    let x_1133 : f32 = u_xlat40;
    let x_1134 : i32 = u_xlati35;
    let x_1136 : f32 = x_1083.x_AdditionalLightsAttenuation[x_1134].z;
    let x_1138 : i32 = u_xlati35;
    let x_1140 : f32 = x_1083.x_AdditionalLightsAttenuation[x_1138].w;
    u_xlat40 = ((x_1133 * x_1136) + x_1140);
    let x_1142 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1142, 0.0f, 1.0f);
    let x_1144 : f32 = u_xlat40;
    let x_1145 : f32 = u_xlat40;
    u_xlat40 = (x_1144 * x_1145);
    let x_1147 : f32 = u_xlat37;
    let x_1148 : f32 = u_xlat40;
    u_xlat37 = (x_1147 * x_1148);
    let x_1151 : vec3<f32> = u_xlat5;
    let x_1153 : i32 = u_xlati35;
    let x_1155 : vec4<f32> = x_1083.x_AdditionalLightsColor[x_1153];
    u_xlat10 = (vec3<f32>(x_1151.x, x_1151.x, x_1151.x) * vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
    let x_1158 : vec4<f32> = u_xlat1;
    let x_1160 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1158.x, x_1158.y, x_1158.z), x_1160);
    let x_1162 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1162, 0.0f, 1.0f);
    let x_1164 : f32 = u_xlat35;
    let x_1165 : f32 = u_xlat37;
    u_xlat35 = (x_1164 * x_1165);
    let x_1167 : f32 = u_xlat35;
    let x_1169 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1167, x_1167, x_1167) * x_1169);
    let x_1171 : vec3<f32> = u_xlat19;
    let x_1172 : f32 = u_xlat39;
    let x_1175 : vec4<f32> = u_xlat3;
    u_xlat19 = ((x_1171 * vec3<f32>(x_1172, x_1172, x_1172)) + vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
    let x_1178 : vec3<f32> = u_xlat19;
    let x_1179 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(x_1178, x_1179);
    let x_1181 : f32 = u_xlat35;
    u_xlat35 = max(x_1181, 1.17549435e-37f);
    let x_1183 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_1183);
    let x_1185 : f32 = u_xlat35;
    let x_1187 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1185, x_1185, x_1185) * x_1187);
    let x_1189 : vec4<f32> = u_xlat1;
    let x_1191 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(vec3<f32>(x_1189.x, x_1189.y, x_1189.z), x_1191);
    let x_1193 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1193, 0.0f, 1.0f);
    let x_1195 : vec3<f32> = u_xlat9;
    let x_1196 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1195, x_1196);
    let x_1198 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1198, 0.0f, 1.0f);
    let x_1200 : f32 = u_xlat35;
    let x_1201 : f32 = u_xlat35;
    u_xlat35 = (x_1200 * x_1201);
    let x_1203 : f32 = u_xlat35;
    let x_1205 : f32 = u_xlat8.x;
    u_xlat35 = ((x_1203 * x_1205) + 1.000010014f);
    let x_1208 : f32 = u_xlat37;
    let x_1209 : f32 = u_xlat37;
    u_xlat37 = (x_1208 * x_1209);
    let x_1211 : f32 = u_xlat35;
    let x_1212 : f32 = u_xlat35;
    u_xlat35 = (x_1211 * x_1212);
    let x_1214 : f32 = u_xlat37;
    u_xlat37 = max(x_1214, 0.100000001f);
    let x_1216 : f32 = u_xlat35;
    let x_1217 : f32 = u_xlat37;
    u_xlat35 = (x_1216 * x_1217);
    let x_1219 : f32 = u_xlat36;
    let x_1220 : f32 = u_xlat35;
    u_xlat35 = (x_1219 * x_1220);
    let x_1222 : f32 = u_xlat13;
    let x_1223 : f32 = u_xlat35;
    u_xlat35 = (x_1222 / x_1223);
    let x_1225 : vec4<f32> = u_xlat0;
    let x_1227 : f32 = u_xlat35;
    let x_1230 : vec3<f32> = u_xlat6;
    u_xlat19 = ((vec3<f32>(x_1225.x, x_1225.y, x_1225.z) * vec3<f32>(x_1227, x_1227, x_1227)) + x_1230);
    let x_1232 : vec3<f32> = u_xlat19;
    let x_1233 : vec3<f32> = u_xlat10;
    let x_1235 : vec4<f32> = u_xlat7;
    let x_1237 : vec3<f32> = ((x_1232 * x_1233) + vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
    let x_1238 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);

    continuing {
      let x_1240 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1240 + bitcast<u32>(1i));
    }
  }
  let x_1242 : vec3<f32> = u_xlat4;
  let x_1243 : f32 = u_xlat24;
  let x_1246 : vec3<f32> = u_xlat16;
  let x_1247 : vec3<f32> = ((x_1242 * vec3<f32>(x_1243, x_1243, x_1243)) + x_1246);
  let x_1248 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1248.w);
  let x_1250 : vec4<f32> = u_xlat7;
  let x_1252 : vec4<f32> = u_xlat0;
  let x_1254 : vec3<f32> = (vec3<f32>(x_1250.x, x_1250.y, x_1250.z) + vec3<f32>(x_1252.x, x_1252.y, x_1252.z));
  let x_1255 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
  let x_1257 : f32 = u_xlat33;
  let x_1258 : f32 = u_xlat33;
  u_xlat33 = (x_1257 * -(x_1258));
  let x_1261 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1261);
  let x_1263 : vec4<f32> = u_xlat0;
  let x_1267 : vec4<f32> = x_44.unity_FogColor;
  let x_1270 : vec3<f32> = (vec3<f32>(x_1263.x, x_1263.y, x_1263.z) + -(vec3<f32>(x_1267.x, x_1267.y, x_1267.z)));
  let x_1271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
  let x_1275 : f32 = u_xlat33;
  let x_1277 : vec4<f32> = u_xlat0;
  let x_1281 : vec4<f32> = x_44.unity_FogColor;
  let x_1283 : vec3<f32> = ((vec3<f32>(x_1275, x_1275, x_1275) * vec3<f32>(x_1277.x, x_1277.y, x_1277.z)) + vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
  let x_1284 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1284.w);
  let x_1289 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1291 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_1289 & bitcast<u32>(x_1291));
  let x_1294 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1294);
  let x_1299 : f32 = u_xlat0.x;
  let x_1302 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1299 * x_1302);
  let x_1307 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1307, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1312 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1312.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

