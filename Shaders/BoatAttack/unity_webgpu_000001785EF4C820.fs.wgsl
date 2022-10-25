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

@group(1) @binding(3) var<uniform> x_515 : MainLightShadows;

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

@group(1) @binding(1) var<uniform> x_1278 : AdditionalLights;

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
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var u_xlat13 : f32;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat24 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlatb25 : bool;
  var x_928 : f32;
  var u_xlat25 : f32;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
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
  u_xlat33 = dot(x_622, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_627 : f32 = u_xlat33;
  u_xlat33 = (-(x_627) + 4.0f);
  let x_632 : f32 = u_xlat33;
  u_xlatu33 = u32(x_632);
  let x_636 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_636) << bitcast<u32>(2i));
  let x_639 : vec3<f32> = vs_INTERP0;
  let x_641 : i32 = u_xlati33;
  let x_644 : i32 = u_xlati33;
  let x_648 : vec4<f32> = x_515.x_MainLightWorldToShadow[((x_641 + 1i) / 4i)][((x_644 + 1i) % 4i)];
  let x_650 : vec3<f32> = (vec3<f32>(x_639.y, x_639.y, x_639.y) * vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : i32 = u_xlati33;
  let x_655 : i32 = u_xlati33;
  let x_658 : vec4<f32> = x_515.x_MainLightWorldToShadow[(x_653 / 4i)][(x_655 % 4i)];
  let x_660 : vec3<f32> = vs_INTERP0;
  let x_663 : vec4<f32> = u_xlat3;
  let x_665 : vec3<f32> = ((vec3<f32>(x_658.x, x_658.y, x_658.z) * vec3<f32>(x_660.x, x_660.x, x_660.x)) + vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_666 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_668 : i32 = u_xlati33;
  let x_671 : i32 = u_xlati33;
  let x_675 : vec4<f32> = x_515.x_MainLightWorldToShadow[((x_668 + 2i) / 4i)][((x_671 + 2i) % 4i)];
  let x_677 : vec3<f32> = vs_INTERP0;
  let x_680 : vec4<f32> = u_xlat3;
  let x_682 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(x_677.z, x_677.z, x_677.z)) + vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat3;
  let x_687 : i32 = u_xlati33;
  let x_690 : i32 = u_xlati33;
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
  u_xlat33 = dot(vec3<f32>(x_728.x, x_728.y, x_728.z), vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : f32 = u_xlat33;
  u_xlat33 = (x_733 + 0.5f);
  let x_736 : f32 = u_xlat33;
  let x_738 : vec4<f32> = u_xlat6;
  let x_740 : vec3<f32> = (vec3<f32>(x_736, x_736, x_736) * vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_744 : f32 = u_xlat5.w;
  u_xlat33 = max(x_744, 0.0001f);
  let x_747 : vec4<f32> = u_xlat5;
  let x_749 : f32 = u_xlat33;
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
  u_xlat33 = ((x_772 * x_775) + x_778);
  let x_780 : f32 = u_xlat33;
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
  u_xlat33 = ((-(x_796) * 0.959999979f) + 0.959999979f);
  let x_801 : f32 = u_xlat33;
  let x_804 : f32 = u_xlat2.y;
  u_xlat34 = (-(x_801) + x_804);
  let x_806 : f32 = u_xlat33;
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
  u_xlat33 = (-(x_829) + 1.0f);
  let x_832 : f32 = u_xlat33;
  let x_833 : f32 = u_xlat33;
  u_xlat2.x = (x_832 * x_833);
  let x_837 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_837, 0.0078125f);
  let x_843 : f32 = u_xlat2.x;
  let x_845 : f32 = u_xlat2.x;
  u_xlat13 = (x_843 * x_845);
  let x_847 : f32 = u_xlat34;
  u_xlat34 = (x_847 + 1.0f);
  let x_849 : f32 = u_xlat34;
  u_xlat34 = min(x_849, 1.0f);
  let x_853 : f32 = u_xlat2.x;
  u_xlat35 = ((x_853 * 4.0f) + 2.0f);
  let x_862 : vec4<f32> = u_xlat6;
  let x_865 : f32 = x_44.x_GlobalMipBias.x;
  let x_866 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_862.x, x_862.z), x_865);
  u_xlat36 = x_866.x;
  let x_869 : f32 = u_xlat36;
  u_xlat37 = (x_869 + -1.0f);
  let x_872 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_873 : f32 = u_xlat37;
  u_xlat37 = ((x_872 * x_873) + 1.0f);
  let x_878 : f32 = u_xlat2.z;
  let x_879 : f32 = u_xlat36;
  u_xlat24 = min(x_878, x_879);
  let x_882 : vec4<f32> = u_xlat3;
  let x_883 : vec2<f32> = vec2<f32>(x_882.x, x_882.y);
  let x_885 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_883.x, x_883.y, x_885);
  let x_897 : vec3<f32> = txVec0;
  let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_897.xy, x_897.z);
  u_xlat3.x = x_899;
  let x_903 : f32 = x_515.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_903) + 1.0f);
  let x_908 : f32 = u_xlat3.x;
  let x_910 : f32 = x_515.x_MainLightShadowParams.x;
  let x_913 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_908 * x_910) + x_913);
  let x_918 : f32 = u_xlat3.z;
  u_xlatb14 = (0.0f >= x_918);
  let x_922 : f32 = u_xlat3.z;
  u_xlatb25 = (x_922 >= 1.0f);
  let x_924 : bool = u_xlatb25;
  let x_925 : bool = u_xlatb14;
  u_xlatb14 = (x_924 | x_925);
  let x_927 : bool = u_xlatb14;
  if (x_927) {
    x_928 = 1.0f;
  } else {
    let x_933 : f32 = u_xlat3.x;
    x_928 = x_933;
  }
  let x_934 : f32 = x_928;
  u_xlat3.x = x_934;
  let x_936 : vec3<f32> = vs_INTERP0;
  let x_938 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat14 = (x_936 + -(x_938));
  let x_941 : vec3<f32> = u_xlat14;
  let x_942 : vec3<f32> = u_xlat14;
  u_xlat14.x = dot(x_941, x_942);
  let x_946 : f32 = u_xlat14.x;
  let x_948 : f32 = x_515.x_MainLightShadowParams.z;
  let x_951 : f32 = x_515.x_MainLightShadowParams.w;
  u_xlat14.x = ((x_946 * x_948) + x_951);
  let x_955 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_955, 0.0f, 1.0f);
  let x_960 : f32 = u_xlat3.x;
  u_xlat25 = (-(x_960) + 1.0f);
  let x_964 : f32 = u_xlat14.x;
  let x_965 : f32 = u_xlat25;
  let x_968 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_964 * x_965) + x_968);
  let x_971 : f32 = u_xlat37;
  let x_974 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat14 = (vec3<f32>(x_971, x_971, x_971) * vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_978 : vec3<f32> = u_xlat4;
  let x_980 : vec4<f32> = u_xlat1;
  u_xlat38 = dot(-(x_978), vec3<f32>(x_980.x, x_980.y, x_980.z));
  let x_983 : f32 = u_xlat38;
  let x_984 : f32 = u_xlat38;
  u_xlat38 = (x_983 + x_984);
  let x_986 : vec4<f32> = u_xlat1;
  let x_988 : f32 = u_xlat38;
  let x_992 : vec3<f32> = u_xlat4;
  let x_994 : vec3<f32> = ((vec3<f32>(x_986.x, x_986.y, x_986.z) * -(vec3<f32>(x_988, x_988, x_988))) + -(x_992));
  let x_995 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec4<f32> = u_xlat1;
  let x_999 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(vec3<f32>(x_997.x, x_997.y, x_997.z), x_999);
  let x_1001 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1001, 0.0f, 1.0f);
  let x_1003 : f32 = u_xlat38;
  u_xlat38 = (-(x_1003) + 1.0f);
  let x_1006 : f32 = u_xlat38;
  let x_1007 : f32 = u_xlat38;
  u_xlat38 = (x_1006 * x_1007);
  let x_1009 : f32 = u_xlat38;
  let x_1010 : f32 = u_xlat38;
  u_xlat38 = (x_1009 * x_1010);
  let x_1013 : f32 = u_xlat33;
  u_xlat39 = ((-(x_1013) * 0.699999988f) + 1.700000048f);
  let x_1019 : f32 = u_xlat33;
  let x_1020 : f32 = u_xlat39;
  u_xlat33 = (x_1019 * x_1020);
  let x_1022 : f32 = u_xlat33;
  u_xlat33 = (x_1022 * 6.0f);
  let x_1032 : vec4<f32> = u_xlat6;
  let x_1034 : f32 = u_xlat33;
  let x_1035 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1032.x, x_1032.y, x_1032.z), x_1034);
  u_xlat6 = x_1035;
  let x_1037 : f32 = u_xlat6.w;
  u_xlat33 = (x_1037 + -1.0f);
  let x_1040 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_1041 : f32 = u_xlat33;
  u_xlat33 = ((x_1040 * x_1041) + 1.0f);
  let x_1044 : f32 = u_xlat33;
  u_xlat33 = max(x_1044, 0.0f);
  let x_1046 : f32 = u_xlat33;
  u_xlat33 = log2(x_1046);
  let x_1048 : f32 = u_xlat33;
  let x_1050 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_1048 * x_1050);
  let x_1052 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1052);
  let x_1054 : f32 = u_xlat33;
  let x_1056 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_1054 * x_1056);
  let x_1058 : vec4<f32> = u_xlat6;
  let x_1060 : f32 = u_xlat33;
  let x_1062 : vec3<f32> = (vec3<f32>(x_1058.x, x_1058.y, x_1058.z) * vec3<f32>(x_1060, x_1060, x_1060));
  let x_1063 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
  let x_1066 : vec4<f32> = u_xlat2;
  let x_1068 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_1066.x, x_1066.x) * vec2<f32>(x_1068.x, x_1068.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1074 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_1074);
  let x_1077 : vec4<f32> = u_xlat0;
  let x_1080 : f32 = u_xlat34;
  u_xlat19 = (-(vec3<f32>(x_1077.x, x_1077.y, x_1077.z)) + vec3<f32>(x_1080, x_1080, x_1080));
  let x_1083 : f32 = u_xlat38;
  let x_1085 : vec3<f32> = u_xlat19;
  let x_1087 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_1083, x_1083, x_1083) * x_1085) + vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
  let x_1090 : f32 = u_xlat33;
  let x_1092 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1090, x_1090, x_1090) * x_1092);
  let x_1094 : vec4<f32> = u_xlat6;
  let x_1096 : vec3<f32> = u_xlat19;
  let x_1097 : vec3<f32> = (vec3<f32>(x_1094.x, x_1094.y, x_1094.z) * x_1096);
  let x_1098 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
  let x_1100 : vec4<f32> = u_xlat5;
  let x_1102 : vec3<f32> = u_xlat7;
  let x_1104 : vec4<f32> = u_xlat6;
  let x_1106 : vec3<f32> = ((vec3<f32>(x_1100.x, x_1100.y, x_1100.z) * x_1102) + vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
  let x_1110 : f32 = u_xlat3.x;
  let x_1112 : f32 = x_359.unity_LightData.z;
  u_xlat33 = (x_1110 * x_1112);
  let x_1114 : vec4<f32> = u_xlat1;
  let x_1117 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_1114.x, x_1114.y, x_1114.z), vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1120 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1120, 0.0f, 1.0f);
  let x_1122 : f32 = u_xlat33;
  let x_1123 : f32 = u_xlat34;
  u_xlat33 = (x_1122 * x_1123);
  let x_1125 : f32 = u_xlat33;
  let x_1127 : vec3<f32> = u_xlat14;
  let x_1128 : vec3<f32> = (vec3<f32>(x_1125, x_1125, x_1125) * x_1127);
  let x_1129 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
  let x_1131 : vec3<f32> = u_xlat4;
  let x_1133 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1135 : vec3<f32> = (x_1131 + vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : vec4<f32> = u_xlat6;
  let x_1140 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_1138.x, x_1138.y, x_1138.z), vec3<f32>(x_1140.x, x_1140.y, x_1140.z));
  let x_1143 : f32 = u_xlat33;
  u_xlat33 = max(x_1143, 1.17549435e-37f);
  let x_1146 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_1146);
  let x_1148 : f32 = u_xlat33;
  let x_1150 : vec4<f32> = u_xlat6;
  let x_1152 : vec3<f32> = (vec3<f32>(x_1148, x_1148, x_1148) * vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
  let x_1153 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1155 : vec4<f32> = u_xlat1;
  let x_1157 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_1155.x, x_1155.y, x_1155.z), vec3<f32>(x_1157.x, x_1157.y, x_1157.z));
  let x_1160 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1160, 0.0f, 1.0f);
  let x_1163 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1165 : vec4<f32> = u_xlat6;
  u_xlat34 = dot(vec3<f32>(x_1163.x, x_1163.y, x_1163.z), vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
  let x_1168 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1168, 0.0f, 1.0f);
  let x_1170 : f32 = u_xlat33;
  let x_1171 : f32 = u_xlat33;
  u_xlat33 = (x_1170 * x_1171);
  let x_1173 : f32 = u_xlat33;
  let x_1175 : f32 = u_xlat8.x;
  u_xlat33 = ((x_1173 * x_1175) + 1.000010014f);
  let x_1179 : f32 = u_xlat34;
  let x_1180 : f32 = u_xlat34;
  u_xlat34 = (x_1179 * x_1180);
  let x_1182 : f32 = u_xlat33;
  let x_1183 : f32 = u_xlat33;
  u_xlat33 = (x_1182 * x_1183);
  let x_1185 : f32 = u_xlat34;
  u_xlat34 = max(x_1185, 0.100000001f);
  let x_1188 : f32 = u_xlat33;
  let x_1189 : f32 = u_xlat34;
  u_xlat33 = (x_1188 * x_1189);
  let x_1191 : f32 = u_xlat35;
  let x_1192 : f32 = u_xlat33;
  u_xlat33 = (x_1191 * x_1192);
  let x_1194 : f32 = u_xlat13;
  let x_1195 : f32 = u_xlat33;
  u_xlat33 = (x_1194 / x_1195);
  let x_1197 : vec4<f32> = u_xlat0;
  let x_1199 : f32 = u_xlat33;
  let x_1202 : vec3<f32> = u_xlat7;
  let x_1203 : vec3<f32> = ((vec3<f32>(x_1197.x, x_1197.y, x_1197.z) * vec3<f32>(x_1199, x_1199, x_1199)) + x_1202);
  let x_1204 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
  let x_1206 : vec4<f32> = u_xlat3;
  let x_1208 : vec4<f32> = u_xlat6;
  let x_1210 : vec3<f32> = (vec3<f32>(x_1206.x, x_1206.y, x_1206.z) * vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1211 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1214 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1216 : f32 = x_359.unity_LightData.y;
  u_xlat33 = min(x_1214, x_1216);
  let x_1218 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_1218));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1230 : u32 = u_xlatu_loop_1;
    let x_1231 : u32 = u_xlatu33;
    if ((x_1230 < x_1231)) {
    } else {
      break;
    }
    let x_1234 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_1234 >> 2u);
    let x_1237 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_1237 & 3u));
    let x_1241 : u32 = u_xlatu2;
    let x_1244 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_1241)];
    let x_1254 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1259 : vec4<u32> = indexable[x_1254];
    u_xlat2.x = dot(x_1244, bitcast<vec4<f32>>(x_1259));
    let x_1265 : f32 = u_xlat2.x;
    u_xlati2 = i32(x_1265);
    let x_1267 : vec3<f32> = vs_INTERP0;
    let x_1279 : i32 = u_xlati2;
    let x_1281 : vec4<f32> = x_1278.x_AdditionalLightsPosition[x_1279];
    let x_1284 : i32 = u_xlati2;
    let x_1286 : vec4<f32> = x_1278.x_AdditionalLightsPosition[x_1284];
    u_xlat19 = ((-(x_1267) * vec3<f32>(x_1281.w, x_1281.w, x_1281.w)) + vec3<f32>(x_1286.x, x_1286.y, x_1286.z));
    let x_1289 : vec3<f32> = u_xlat19;
    let x_1290 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_1289, x_1290);
    let x_1292 : f32 = u_xlat36;
    u_xlat36 = max(x_1292, 6.10351562e-05f);
    let x_1295 : f32 = u_xlat36;
    u_xlat38 = inverseSqrt(x_1295);
    let x_1298 : f32 = u_xlat38;
    let x_1300 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1298, x_1298, x_1298) * x_1300);
    let x_1302 : f32 = u_xlat36;
    u_xlat39 = (1.0f / x_1302);
    let x_1304 : f32 = u_xlat36;
    let x_1305 : i32 = u_xlati2;
    let x_1307 : f32 = x_1278.x_AdditionalLightsAttenuation[x_1305].x;
    u_xlat36 = (x_1304 * x_1307);
    let x_1309 : f32 = u_xlat36;
    let x_1311 : f32 = u_xlat36;
    u_xlat36 = ((-(x_1309) * x_1311) + 1.0f);
    let x_1314 : f32 = u_xlat36;
    u_xlat36 = max(x_1314, 0.0f);
    let x_1316 : f32 = u_xlat36;
    let x_1317 : f32 = u_xlat36;
    u_xlat36 = (x_1316 * x_1317);
    let x_1319 : f32 = u_xlat36;
    let x_1320 : f32 = u_xlat39;
    u_xlat36 = (x_1319 * x_1320);
    let x_1322 : i32 = u_xlati2;
    let x_1324 : vec4<f32> = x_1278.x_AdditionalLightsSpotDir[x_1322];
    let x_1326 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1324.x, x_1324.y, x_1324.z), x_1326);
    let x_1328 : f32 = u_xlat39;
    let x_1329 : i32 = u_xlati2;
    let x_1331 : f32 = x_1278.x_AdditionalLightsAttenuation[x_1329].z;
    let x_1333 : i32 = u_xlati2;
    let x_1335 : f32 = x_1278.x_AdditionalLightsAttenuation[x_1333].w;
    u_xlat39 = ((x_1328 * x_1331) + x_1335);
    let x_1337 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1337, 0.0f, 1.0f);
    let x_1339 : f32 = u_xlat39;
    let x_1340 : f32 = u_xlat39;
    u_xlat39 = (x_1339 * x_1340);
    let x_1342 : f32 = u_xlat36;
    let x_1343 : f32 = u_xlat39;
    u_xlat36 = (x_1342 * x_1343);
    let x_1346 : f32 = u_xlat37;
    let x_1348 : i32 = u_xlati2;
    let x_1350 : vec4<f32> = x_1278.x_AdditionalLightsColor[x_1348];
    u_xlat10 = (vec3<f32>(x_1346, x_1346, x_1346) * vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
    let x_1353 : vec4<f32> = u_xlat1;
    let x_1355 : vec3<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_1353.x, x_1353.y, x_1353.z), x_1355);
    let x_1359 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1359, 0.0f, 1.0f);
    let x_1363 : f32 = u_xlat2.x;
    let x_1364 : f32 = u_xlat36;
    u_xlat2.x = (x_1363 * x_1364);
    let x_1367 : vec4<f32> = u_xlat2;
    let x_1369 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1367.x, x_1367.x, x_1367.x) * x_1369);
    let x_1371 : vec3<f32> = u_xlat19;
    let x_1372 : f32 = u_xlat38;
    let x_1375 : vec3<f32> = u_xlat4;
    u_xlat19 = ((x_1371 * vec3<f32>(x_1372, x_1372, x_1372)) + x_1375);
    let x_1377 : vec3<f32> = u_xlat19;
    let x_1378 : vec3<f32> = u_xlat19;
    u_xlat2.x = dot(x_1377, x_1378);
    let x_1382 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_1382, 1.17549435e-37f);
    let x_1386 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_1386);
    let x_1389 : vec4<f32> = u_xlat2;
    let x_1391 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1389.x, x_1389.x, x_1389.x) * x_1391);
    let x_1393 : vec4<f32> = u_xlat1;
    let x_1395 : vec3<f32> = u_xlat19;
    u_xlat2.x = dot(vec3<f32>(x_1393.x, x_1393.y, x_1393.z), x_1395);
    let x_1399 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1399, 0.0f, 1.0f);
    let x_1402 : vec3<f32> = u_xlat9;
    let x_1403 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_1402, x_1403);
    let x_1405 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1405, 0.0f, 1.0f);
    let x_1408 : f32 = u_xlat2.x;
    let x_1410 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1408 * x_1410);
    let x_1414 : f32 = u_xlat2.x;
    let x_1416 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_1414 * x_1416) + 1.000010014f);
    let x_1420 : f32 = u_xlat36;
    let x_1421 : f32 = u_xlat36;
    u_xlat36 = (x_1420 * x_1421);
    let x_1424 : f32 = u_xlat2.x;
    let x_1426 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1424 * x_1426);
    let x_1429 : f32 = u_xlat36;
    u_xlat36 = max(x_1429, 0.100000001f);
    let x_1432 : f32 = u_xlat2.x;
    let x_1433 : f32 = u_xlat36;
    u_xlat2.x = (x_1432 * x_1433);
    let x_1436 : f32 = u_xlat35;
    let x_1438 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1436 * x_1438);
    let x_1441 : f32 = u_xlat13;
    let x_1443 : f32 = u_xlat2.x;
    u_xlat2.x = (x_1441 / x_1443);
    let x_1446 : vec4<f32> = u_xlat0;
    let x_1448 : vec4<f32> = u_xlat2;
    let x_1451 : vec3<f32> = u_xlat7;
    u_xlat19 = ((vec3<f32>(x_1446.x, x_1446.y, x_1446.z) * vec3<f32>(x_1448.x, x_1448.x, x_1448.x)) + x_1451);
    let x_1453 : vec3<f32> = u_xlat19;
    let x_1454 : vec3<f32> = u_xlat10;
    let x_1456 : vec4<f32> = u_xlat6;
    let x_1458 : vec3<f32> = ((x_1453 * x_1454) + vec3<f32>(x_1456.x, x_1456.y, x_1456.z));
    let x_1459 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1458.x, x_1458.y, x_1458.z, x_1459.w);

    continuing {
      let x_1461 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1461 + bitcast<u32>(1i));
    }
  }
  let x_1463 : vec4<f32> = u_xlat5;
  let x_1465 : f32 = u_xlat24;
  let x_1468 : vec4<f32> = u_xlat3;
  let x_1470 : vec3<f32> = ((vec3<f32>(x_1463.x, x_1463.y, x_1463.z) * vec3<f32>(x_1465, x_1465, x_1465)) + vec3<f32>(x_1468.x, x_1468.y, x_1468.z));
  let x_1471 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
  let x_1475 : vec4<f32> = u_xlat6;
  let x_1477 : vec4<f32> = u_xlat0;
  let x_1479 : vec3<f32> = (vec3<f32>(x_1475.x, x_1475.y, x_1475.z) + vec3<f32>(x_1477.x, x_1477.y, x_1477.z));
  let x_1480 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1480.w);
  let x_1485 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1487 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_1485 & bitcast<u32>(x_1487));
  let x_1490 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1490);
  let x_1495 : f32 = u_xlat0.x;
  let x_1498 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1495 * x_1498);
  let x_1503 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1503, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1507 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1507.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

