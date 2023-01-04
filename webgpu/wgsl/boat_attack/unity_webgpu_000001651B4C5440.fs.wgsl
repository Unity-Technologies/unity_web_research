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

@group(1) @binding(3) var<uniform> x_747 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1127 : AdditionalLights;

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
  var u_xlat4 : vec4<f32>;
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
    let x_493 : vec4<f32> = u_xlat4;
    x_487 = vec3<f32>(x_493.x, x_493.y, x_493.z);
  }
  let x_495 : vec3<f32> = x_487;
  let x_496 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_499 : f32 = vs_INTERP0.y;
  let x_501 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_499 * x_501);
  let x_504 : f32 = x_44.unity_MatrixV[0i].z;
  let x_506 : f32 = vs_INTERP0.x;
  let x_508 : f32 = u_xlat33;
  u_xlat33 = ((x_504 * x_506) + x_508);
  let x_511 : f32 = x_44.unity_MatrixV[2i].z;
  let x_513 : f32 = vs_INTERP0.z;
  let x_515 : f32 = u_xlat33;
  u_xlat33 = ((x_511 * x_513) + x_515);
  let x_517 : f32 = u_xlat33;
  let x_519 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_517 + x_519);
  let x_521 : f32 = u_xlat33;
  let x_525 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_521) + -(x_525));
  let x_528 : f32 = u_xlat33;
  u_xlat33 = max(x_528, 0.0f);
  let x_530 : f32 = u_xlat33;
  let x_533 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_530 * x_533);
  let x_542 : vec2<f32> = vs_INTERP4;
  let x_544 : f32 = x_44.x_GlobalMipBias.x;
  let x_545 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_542, x_544);
  u_xlat4 = x_545;
  let x_551 : vec2<f32> = vs_INTERP4;
  let x_553 : f32 = x_44.x_GlobalMipBias.x;
  let x_554 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_551, x_553);
  u_xlat5 = vec3<f32>(x_554.x, x_554.y, x_554.z);
  let x_556 : vec4<f32> = u_xlat4;
  let x_560 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat1;
  let x_565 : vec4<f32> = u_xlat4;
  u_xlat34 = dot(vec3<f32>(x_563.x, x_563.y, x_563.z), vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_568 : f32 = u_xlat34;
  u_xlat34 = (x_568 + 0.5f);
  let x_571 : f32 = u_xlat34;
  let x_573 : vec3<f32> = u_xlat5;
  let x_574 : vec3<f32> = (vec3<f32>(x_571, x_571, x_571) * x_573);
  let x_575 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_578 : f32 = u_xlat4.w;
  u_xlat34 = max(x_578, 0.0001f);
  let x_581 : vec4<f32> = u_xlat4;
  let x_583 : f32 = u_xlat34;
  let x_585 : vec3<f32> = (vec3<f32>(x_581.x, x_581.y, x_581.z) / vec3<f32>(x_583, x_583, x_583));
  let x_586 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_591 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_592 : vec2<f32> = vec2<f32>(x_591.x, x_591.y);
  let x_596 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_592.x, x_592.y));
  let x_597 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_596.x, x_596.y, x_597.z);
  let x_599 : vec3<f32> = u_xlat5;
  let x_601 : vec4<f32> = hlslcc_FragCoord;
  let x_603 : vec2<f32> = (vec2<f32>(x_599.x, x_599.y) * vec2<f32>(x_601.x, x_601.y));
  let x_604 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_603.x, x_603.y, x_604.z);
  let x_607 : f32 = u_xlat5.y;
  let x_610 : f32 = x_44.x_ScaleBiasRt.x;
  let x_613 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat34 = ((x_607 * x_610) + x_613);
  let x_615 : f32 = u_xlat34;
  u_xlat5.z = (-(x_615) + 1.0f);
  let x_619 : vec4<f32> = u_xlat2;
  let x_620 : vec2<f32> = vec2<f32>(x_619.x, x_619.y);
  let x_621 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat2;
  let x_627 : vec2<f32> = clamp(vec2<f32>(x_623.x, x_623.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_628 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_627.x, x_627.y, x_628.z, x_628.w);
  let x_631 : f32 = u_xlat2.x;
  u_xlat34 = ((-(x_631) * 0.959999979f) + 0.959999979f);
  let x_637 : f32 = u_xlat34;
  let x_640 : f32 = u_xlat2.y;
  u_xlat35 = (-(x_637) + x_640);
  let x_643 : vec4<f32> = u_xlat0;
  let x_645 : f32 = u_xlat34;
  u_xlat6 = (vec3<f32>(x_643.x, x_643.y, x_643.z) * vec3<f32>(x_645, x_645, x_645));
  let x_648 : vec4<f32> = u_xlat0;
  let x_652 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_653 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_655 : vec4<f32> = u_xlat2;
  let x_657 : vec4<f32> = u_xlat0;
  let x_662 : vec3<f32> = ((vec3<f32>(x_655.x, x_655.x, x_655.x) * vec3<f32>(x_657.x, x_657.y, x_657.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_663 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_666 : f32 = u_xlat2.y;
  u_xlat34 = (-(x_666) + 1.0f);
  let x_669 : f32 = u_xlat34;
  let x_670 : f32 = u_xlat34;
  u_xlat2.x = (x_669 * x_670);
  let x_674 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_674, 0.0078125f);
  let x_680 : f32 = u_xlat2.x;
  let x_682 : f32 = u_xlat2.x;
  u_xlat13 = (x_680 * x_682);
  let x_684 : f32 = u_xlat35;
  u_xlat35 = (x_684 + 1.0f);
  let x_686 : f32 = u_xlat35;
  u_xlat35 = min(x_686, 1.0f);
  let x_690 : f32 = u_xlat2.x;
  u_xlat36 = ((x_690 * 4.0f) + 2.0f);
  let x_700 : vec3<f32> = u_xlat5;
  let x_703 : f32 = x_44.x_GlobalMipBias.x;
  let x_704 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_700.x, x_700.z), x_703);
  u_xlat37 = x_704.x;
  let x_706 : f32 = u_xlat37;
  u_xlat5.x = (x_706 + -1.0f);
  let x_711 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_713 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_711 * x_713) + 1.0f);
  let x_719 : f32 = u_xlat2.z;
  let x_720 : f32 = u_xlat37;
  u_xlat24 = min(x_719, x_720);
  let x_724 : vec4<f32> = vs_INTERP8;
  let x_725 : vec2<f32> = vec2<f32>(x_724.x, x_724.y);
  let x_727 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_725.x, x_725.y, x_727);
  let x_739 : vec3<f32> = txVec0;
  let x_741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_739.xy, x_739.z);
  u_xlat37 = x_741;
  let x_749 : f32 = x_747.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_749) + 1.0f);
  let x_753 : f32 = u_xlat37;
  let x_755 : f32 = x_747.x_MainLightShadowParams.x;
  let x_758 : f32 = u_xlat16.x;
  u_xlat37 = ((x_753 * x_755) + x_758);
  let x_762 : f32 = vs_INTERP8.z;
  u_xlatb16 = (0.0f >= x_762);
  let x_766 : f32 = vs_INTERP8.z;
  u_xlatb27 = (x_766 >= 1.0f);
  let x_768 : bool = u_xlatb27;
  let x_769 : bool = u_xlatb16;
  u_xlatb16 = (x_768 | x_769);
  let x_771 : bool = u_xlatb16;
  let x_772 : f32 = u_xlat37;
  u_xlat37 = select(x_772, 1.0f, x_771);
  let x_774 : vec3<f32> = vs_INTERP0;
  let x_776 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat16 = (x_774 + -(x_776));
  let x_779 : vec3<f32> = u_xlat16;
  let x_780 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(x_779, x_780);
  let x_784 : f32 = u_xlat16.x;
  let x_786 : f32 = x_747.x_MainLightShadowParams.z;
  let x_789 : f32 = x_747.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_784 * x_786) + x_789);
  let x_793 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_793, 0.0f, 1.0f);
  let x_797 : f32 = u_xlat37;
  u_xlat27 = (-(x_797) + 1.0f);
  let x_801 : f32 = u_xlat16.x;
  let x_802 : f32 = u_xlat27;
  let x_804 : f32 = u_xlat37;
  u_xlat37 = ((x_801 * x_802) + x_804);
  let x_806 : vec3<f32> = u_xlat5;
  let x_809 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_806.x, x_806.x, x_806.x) * vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_813 : vec4<f32> = u_xlat3;
  let x_816 : vec4<f32> = u_xlat1;
  u_xlat39 = dot(-(vec3<f32>(x_813.x, x_813.y, x_813.z)), vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : f32 = u_xlat39;
  let x_820 : f32 = u_xlat39;
  u_xlat39 = (x_819 + x_820);
  let x_823 : vec4<f32> = u_xlat1;
  let x_825 : f32 = u_xlat39;
  let x_829 : vec4<f32> = u_xlat3;
  let x_832 : vec3<f32> = ((vec3<f32>(x_823.x, x_823.y, x_823.z) * -(vec3<f32>(x_825, x_825, x_825))) + -(vec3<f32>(x_829.x, x_829.y, x_829.z)));
  let x_833 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : vec4<f32> = u_xlat1;
  let x_837 : vec4<f32> = u_xlat3;
  u_xlat39 = dot(vec3<f32>(x_835.x, x_835.y, x_835.z), vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : f32 = u_xlat39;
  u_xlat39 = clamp(x_840, 0.0f, 1.0f);
  let x_842 : f32 = u_xlat39;
  u_xlat39 = (-(x_842) + 1.0f);
  let x_845 : f32 = u_xlat39;
  let x_846 : f32 = u_xlat39;
  u_xlat39 = (x_845 * x_846);
  let x_848 : f32 = u_xlat39;
  let x_849 : f32 = u_xlat39;
  u_xlat39 = (x_848 * x_849);
  let x_852 : f32 = u_xlat34;
  u_xlat40 = ((-(x_852) * 0.699999988f) + 1.700000048f);
  let x_858 : f32 = u_xlat34;
  let x_859 : f32 = u_xlat40;
  u_xlat34 = (x_858 * x_859);
  let x_861 : f32 = u_xlat34;
  u_xlat34 = (x_861 * 6.0f);
  let x_871 : vec4<f32> = u_xlat7;
  let x_873 : f32 = u_xlat34;
  let x_874 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_871.x, x_871.y, x_871.z), x_873);
  u_xlat7 = x_874;
  let x_876 : f32 = u_xlat7.w;
  u_xlat34 = (x_876 + -1.0f);
  let x_879 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_880 : f32 = u_xlat34;
  u_xlat34 = ((x_879 * x_880) + 1.0f);
  let x_883 : f32 = u_xlat34;
  u_xlat34 = max(x_883, 0.0f);
  let x_885 : f32 = u_xlat34;
  u_xlat34 = log2(x_885);
  let x_887 : f32 = u_xlat34;
  let x_889 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat34 = (x_887 * x_889);
  let x_891 : f32 = u_xlat34;
  u_xlat34 = exp2(x_891);
  let x_893 : f32 = u_xlat34;
  let x_895 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat34 = (x_893 * x_895);
  let x_897 : vec4<f32> = u_xlat7;
  let x_899 : f32 = u_xlat34;
  let x_901 : vec3<f32> = (vec3<f32>(x_897.x, x_897.y, x_897.z) * vec3<f32>(x_899, x_899, x_899));
  let x_902 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_905 : vec4<f32> = u_xlat2;
  let x_907 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_905.x, x_905.x) * vec2<f32>(x_907.x, x_907.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_913 : f32 = u_xlat8.y;
  u_xlat34 = (1.0f / x_913);
  let x_916 : vec4<f32> = u_xlat0;
  let x_919 : f32 = u_xlat35;
  u_xlat19 = (-(vec3<f32>(x_916.x, x_916.y, x_916.z)) + vec3<f32>(x_919, x_919, x_919));
  let x_922 : f32 = u_xlat39;
  let x_924 : vec3<f32> = u_xlat19;
  let x_926 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_922, x_922, x_922) * x_924) + vec3<f32>(x_926.x, x_926.y, x_926.z));
  let x_929 : f32 = u_xlat34;
  let x_931 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_929, x_929, x_929) * x_931);
  let x_933 : vec4<f32> = u_xlat7;
  let x_935 : vec3<f32> = u_xlat19;
  let x_936 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) * x_935);
  let x_937 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_939 : vec4<f32> = u_xlat4;
  let x_941 : vec3<f32> = u_xlat6;
  let x_943 : vec4<f32> = u_xlat7;
  let x_945 : vec3<f32> = ((vec3<f32>(x_939.x, x_939.y, x_939.z) * x_941) + vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_946 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_948 : f32 = u_xlat37;
  let x_951 : f32 = x_359.unity_LightData.z;
  u_xlat34 = (x_948 * x_951);
  let x_953 : vec4<f32> = u_xlat1;
  let x_956 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_953.x, x_953.y, x_953.z), vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_961 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_961, 0.0f, 1.0f);
  let x_964 : f32 = u_xlat34;
  let x_966 : f32 = u_xlat2.x;
  u_xlat34 = (x_964 * x_966);
  let x_968 : f32 = u_xlat34;
  let x_970 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_968, x_968, x_968) * x_970);
  let x_972 : vec4<f32> = u_xlat3;
  let x_975 : vec4<f32> = x_44.x_MainLightPosition;
  let x_977 : vec3<f32> = (vec3<f32>(x_972.x, x_972.y, x_972.z) + vec3<f32>(x_975.x, x_975.y, x_975.z));
  let x_978 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  let x_980 : vec4<f32> = u_xlat7;
  let x_982 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_980.x, x_980.y, x_980.z), vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_985 : f32 = u_xlat34;
  u_xlat34 = max(x_985, 1.17549435e-37f);
  let x_988 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_988);
  let x_990 : f32 = u_xlat34;
  let x_992 : vec4<f32> = u_xlat7;
  let x_994 : vec3<f32> = (vec3<f32>(x_990, x_990, x_990) * vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec4<f32> = u_xlat1;
  let x_999 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_997.x, x_997.y, x_997.z), vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1002 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1002, 0.0f, 1.0f);
  let x_1005 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1007 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_1005.x, x_1005.y, x_1005.z), vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1012 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1012, 0.0f, 1.0f);
  let x_1015 : f32 = u_xlat34;
  let x_1016 : f32 = u_xlat34;
  u_xlat34 = (x_1015 * x_1016);
  let x_1018 : f32 = u_xlat34;
  let x_1020 : f32 = u_xlat8.x;
  u_xlat34 = ((x_1018 * x_1020) + 1.000010014f);
  let x_1025 : f32 = u_xlat2.x;
  let x_1027 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1025 * x_1027);
  let x_1030 : f32 = u_xlat34;
  let x_1031 : f32 = u_xlat34;
  u_xlat34 = (x_1030 * x_1031);
  let x_1034 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1034, 0.100000001f);
  let x_1038 : f32 = u_xlat34;
  let x_1040 : f32 = u_xlat2.x;
  u_xlat34 = (x_1038 * x_1040);
  let x_1042 : f32 = u_xlat36;
  let x_1043 : f32 = u_xlat34;
  u_xlat34 = (x_1042 * x_1043);
  let x_1045 : f32 = u_xlat13;
  let x_1046 : f32 = u_xlat34;
  u_xlat34 = (x_1045 / x_1046);
  let x_1048 : vec4<f32> = u_xlat0;
  let x_1050 : f32 = u_xlat34;
  let x_1053 : vec3<f32> = u_xlat6;
  let x_1054 : vec3<f32> = ((vec3<f32>(x_1048.x, x_1048.y, x_1048.z) * vec3<f32>(x_1050, x_1050, x_1050)) + x_1053);
  let x_1055 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
  let x_1057 : vec3<f32> = u_xlat16;
  let x_1058 : vec4<f32> = u_xlat7;
  u_xlat16 = (x_1057 * vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1062 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1064 : f32 = x_359.unity_LightData.y;
  u_xlat34 = min(x_1062, x_1064);
  let x_1068 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1068));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1080 : u32 = u_xlatu_loop_1;
    let x_1081 : u32 = u_xlatu34;
    if ((x_1080 < x_1081)) {
    } else {
      break;
    }
    let x_1084 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_1084 >> 2u);
    let x_1088 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_1088 & 3u));
    let x_1092 : u32 = u_xlatu35;
    let x_1095 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_1092)];
    let x_1105 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1110 : vec4<u32> = indexable[x_1105];
    u_xlat35 = dot(x_1095, bitcast<vec4<f32>>(x_1110));
    let x_1114 : f32 = u_xlat35;
    u_xlati35 = i32(x_1114);
    let x_1116 : vec3<f32> = vs_INTERP0;
    let x_1128 : i32 = u_xlati35;
    let x_1130 : vec4<f32> = x_1127.x_AdditionalLightsPosition[x_1128];
    let x_1133 : i32 = u_xlati35;
    let x_1135 : vec4<f32> = x_1127.x_AdditionalLightsPosition[x_1133];
    u_xlat19 = ((-(x_1116) * vec3<f32>(x_1130.w, x_1130.w, x_1130.w)) + vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
    let x_1138 : vec3<f32> = u_xlat19;
    let x_1139 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1138, x_1139);
    let x_1141 : f32 = u_xlat37;
    u_xlat37 = max(x_1141, 6.10351562e-05f);
    let x_1144 : f32 = u_xlat37;
    u_xlat39 = inverseSqrt(x_1144);
    let x_1147 : f32 = u_xlat39;
    let x_1149 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1147, x_1147, x_1147) * x_1149);
    let x_1151 : f32 = u_xlat37;
    u_xlat40 = (1.0f / x_1151);
    let x_1153 : f32 = u_xlat37;
    let x_1154 : i32 = u_xlati35;
    let x_1156 : f32 = x_1127.x_AdditionalLightsAttenuation[x_1154].x;
    u_xlat37 = (x_1153 * x_1156);
    let x_1158 : f32 = u_xlat37;
    let x_1160 : f32 = u_xlat37;
    u_xlat37 = ((-(x_1158) * x_1160) + 1.0f);
    let x_1163 : f32 = u_xlat37;
    u_xlat37 = max(x_1163, 0.0f);
    let x_1165 : f32 = u_xlat37;
    let x_1166 : f32 = u_xlat37;
    u_xlat37 = (x_1165 * x_1166);
    let x_1168 : f32 = u_xlat37;
    let x_1169 : f32 = u_xlat40;
    u_xlat37 = (x_1168 * x_1169);
    let x_1171 : i32 = u_xlati35;
    let x_1173 : vec4<f32> = x_1127.x_AdditionalLightsSpotDir[x_1171];
    let x_1175 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1173.x, x_1173.y, x_1173.z), x_1175);
    let x_1177 : f32 = u_xlat40;
    let x_1178 : i32 = u_xlati35;
    let x_1180 : f32 = x_1127.x_AdditionalLightsAttenuation[x_1178].z;
    let x_1182 : i32 = u_xlati35;
    let x_1184 : f32 = x_1127.x_AdditionalLightsAttenuation[x_1182].w;
    u_xlat40 = ((x_1177 * x_1180) + x_1184);
    let x_1186 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1186, 0.0f, 1.0f);
    let x_1188 : f32 = u_xlat40;
    let x_1189 : f32 = u_xlat40;
    u_xlat40 = (x_1188 * x_1189);
    let x_1191 : f32 = u_xlat37;
    let x_1192 : f32 = u_xlat40;
    u_xlat37 = (x_1191 * x_1192);
    let x_1195 : vec3<f32> = u_xlat5;
    let x_1197 : i32 = u_xlati35;
    let x_1199 : vec4<f32> = x_1127.x_AdditionalLightsColor[x_1197];
    u_xlat10 = (vec3<f32>(x_1195.x, x_1195.x, x_1195.x) * vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
    let x_1202 : vec4<f32> = u_xlat1;
    let x_1204 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1202.x, x_1202.y, x_1202.z), x_1204);
    let x_1206 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1206, 0.0f, 1.0f);
    let x_1208 : f32 = u_xlat35;
    let x_1209 : f32 = u_xlat37;
    u_xlat35 = (x_1208 * x_1209);
    let x_1211 : f32 = u_xlat35;
    let x_1213 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1211, x_1211, x_1211) * x_1213);
    let x_1215 : vec3<f32> = u_xlat19;
    let x_1216 : f32 = u_xlat39;
    let x_1219 : vec4<f32> = u_xlat3;
    u_xlat19 = ((x_1215 * vec3<f32>(x_1216, x_1216, x_1216)) + vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
    let x_1222 : vec3<f32> = u_xlat19;
    let x_1223 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(x_1222, x_1223);
    let x_1225 : f32 = u_xlat35;
    u_xlat35 = max(x_1225, 1.17549435e-37f);
    let x_1227 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_1227);
    let x_1229 : f32 = u_xlat35;
    let x_1231 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1229, x_1229, x_1229) * x_1231);
    let x_1233 : vec4<f32> = u_xlat1;
    let x_1235 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(vec3<f32>(x_1233.x, x_1233.y, x_1233.z), x_1235);
    let x_1237 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1237, 0.0f, 1.0f);
    let x_1239 : vec3<f32> = u_xlat9;
    let x_1240 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1239, x_1240);
    let x_1242 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1242, 0.0f, 1.0f);
    let x_1244 : f32 = u_xlat35;
    let x_1245 : f32 = u_xlat35;
    u_xlat35 = (x_1244 * x_1245);
    let x_1247 : f32 = u_xlat35;
    let x_1249 : f32 = u_xlat8.x;
    u_xlat35 = ((x_1247 * x_1249) + 1.000010014f);
    let x_1252 : f32 = u_xlat37;
    let x_1253 : f32 = u_xlat37;
    u_xlat37 = (x_1252 * x_1253);
    let x_1255 : f32 = u_xlat35;
    let x_1256 : f32 = u_xlat35;
    u_xlat35 = (x_1255 * x_1256);
    let x_1258 : f32 = u_xlat37;
    u_xlat37 = max(x_1258, 0.100000001f);
    let x_1260 : f32 = u_xlat35;
    let x_1261 : f32 = u_xlat37;
    u_xlat35 = (x_1260 * x_1261);
    let x_1263 : f32 = u_xlat36;
    let x_1264 : f32 = u_xlat35;
    u_xlat35 = (x_1263 * x_1264);
    let x_1266 : f32 = u_xlat13;
    let x_1267 : f32 = u_xlat35;
    u_xlat35 = (x_1266 / x_1267);
    let x_1269 : vec4<f32> = u_xlat0;
    let x_1271 : f32 = u_xlat35;
    let x_1274 : vec3<f32> = u_xlat6;
    u_xlat19 = ((vec3<f32>(x_1269.x, x_1269.y, x_1269.z) * vec3<f32>(x_1271, x_1271, x_1271)) + x_1274);
    let x_1276 : vec3<f32> = u_xlat19;
    let x_1277 : vec3<f32> = u_xlat10;
    let x_1279 : vec4<f32> = u_xlat7;
    let x_1281 : vec3<f32> = ((x_1276 * x_1277) + vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
    let x_1282 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);

    continuing {
      let x_1284 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1284 + bitcast<u32>(1i));
    }
  }
  let x_1286 : vec4<f32> = u_xlat4;
  let x_1288 : f32 = u_xlat24;
  let x_1291 : vec3<f32> = u_xlat16;
  let x_1292 : vec3<f32> = ((vec3<f32>(x_1286.x, x_1286.y, x_1286.z) * vec3<f32>(x_1288, x_1288, x_1288)) + x_1291);
  let x_1293 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1292.x, x_1292.y, x_1292.z, x_1293.w);
  let x_1295 : vec4<f32> = u_xlat7;
  let x_1297 : vec4<f32> = u_xlat0;
  let x_1299 : vec3<f32> = (vec3<f32>(x_1295.x, x_1295.y, x_1295.z) + vec3<f32>(x_1297.x, x_1297.y, x_1297.z));
  let x_1300 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1300.w);
  let x_1302 : f32 = u_xlat33;
  let x_1303 : f32 = u_xlat33;
  u_xlat33 = (x_1302 * -(x_1303));
  let x_1306 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1306);
  let x_1308 : vec4<f32> = u_xlat0;
  let x_1312 : vec4<f32> = x_44.unity_FogColor;
  let x_1315 : vec3<f32> = (vec3<f32>(x_1308.x, x_1308.y, x_1308.z) + -(vec3<f32>(x_1312.x, x_1312.y, x_1312.z)));
  let x_1316 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
  let x_1320 : f32 = u_xlat33;
  let x_1322 : vec4<f32> = u_xlat0;
  let x_1326 : vec4<f32> = x_44.unity_FogColor;
  let x_1328 : vec3<f32> = ((vec3<f32>(x_1320, x_1320, x_1320) * vec3<f32>(x_1322.x, x_1322.y, x_1322.z)) + vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
  let x_1329 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
  let x_1334 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1336 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_1334 & bitcast<u32>(x_1336));
  let x_1339 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1339);
  let x_1344 : f32 = u_xlat0.x;
  let x_1347 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1344 * x_1347);
  let x_1352 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1352, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1357 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1357.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

