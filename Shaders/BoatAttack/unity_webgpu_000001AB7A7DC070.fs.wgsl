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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_702 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2332 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb20 : bool;
  var u_xlat20 : f32;
  var u_xlat40 : f32;
  var x_146 : f32;
  var u_xlat21 : vec3<f32>;
  var u_xlatb60 : bool;
  var x_211 : f32;
  var x_220 : f32;
  var u_xlat60 : f32;
  var u_xlatb41 : vec2<bool>;
  var u_xlat41 : vec2<f32>;
  var u_xlat61 : f32;
  var u_xlat4 : vec3<f32>;
  var x_475 : f32;
  var x_488 : f32;
  var x_499 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat62 : f32;
  var u_xlat63 : f32;
  var u_xlat64 : f32;
  var u_xlat42 : f32;
  var u_xlatb63 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb5 : bool;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat25 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat66 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec3<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu2 : u32;
  var u_xlati63 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati2 : i32;
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
  u_xlatb20 = (x_96 >= x_98);
  let x_101 : bool = u_xlatb20;
  u_xlat20 = select(0.0f, 1.0f, x_101);
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
  let x_118 : f32 = u_xlat20;
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
  u_xlatb20 = (x_138 == 0.0f);
  let x_142 : f32 = u_xlat1.x;
  u_xlat40 = (x_142 + 1.00000001e-10f);
  let x_145 : bool = u_xlatb20;
  if (x_145) {
    let x_150 : f32 = u_xlat1.x;
    x_146 = x_150;
  } else {
    let x_152 : f32 = u_xlat40;
    x_146 = x_152;
  }
  let x_153 : f32 = x_146;
  u_xlat20 = x_153;
  let x_155 : f32 = u_xlat1.y;
  let x_158 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_155) + x_158);
  let x_164 : f32 = u_xlat0.x;
  u_xlat21.x = ((x_164 * 6.0f) + 1.00000001e-10f);
  let x_170 : f32 = u_xlat1.x;
  let x_172 : f32 = u_xlat21.x;
  u_xlat1.x = (x_170 / x_172);
  let x_176 : f32 = u_xlat1.x;
  let x_178 : f32 = u_xlat1.z;
  u_xlat1.x = (x_176 + x_178);
  let x_182 : f32 = u_xlat0.x;
  let x_183 : f32 = u_xlat40;
  u_xlat0.x = (x_182 / x_183);
  let x_187 : f32 = u_xlat0.w;
  let x_193 : f32 = x_190.x_Hue;
  let x_196 : f32 = u_xlat1.x;
  u_xlat40 = ((x_187 * x_193) + abs(x_196));
  let x_200 : f32 = u_xlat40;
  u_xlatb60 = (x_200 < 0.0f);
  let x_202 : f32 = u_xlat40;
  u_xlatb1 = (1.0f < x_202);
  let x_204 : f32 = u_xlat40;
  let x_207 : vec2<f32> = (vec2<f32>(x_204, x_204) + vec2<f32>(1.0f, -1.0f));
  let x_208 : vec3<f32> = u_xlat21;
  u_xlat21 = vec3<f32>(x_207.x, x_207.y, x_208.z);
  let x_210 : bool = u_xlatb1;
  if (x_210) {
    let x_215 : f32 = u_xlat21.y;
    x_211 = x_215;
  } else {
    let x_217 : f32 = u_xlat40;
    x_211 = x_217;
  }
  let x_218 : f32 = x_211;
  u_xlat40 = x_218;
  let x_219 : bool = u_xlatb60;
  if (x_219) {
    let x_224 : f32 = u_xlat21.x;
    x_220 = x_224;
  } else {
    let x_226 : f32 = u_xlat40;
    x_220 = x_226;
  }
  let x_227 : f32 = x_220;
  u_xlat40 = x_227;
  let x_228 : f32 = u_xlat40;
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
  let x_279 : f32 = u_xlat20;
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
  u_xlat60 = dot(vec2<f32>(x_320.x, x_320.y), vec2<f32>(x_322.x, x_322.y));
  let x_325 : f32 = u_xlat60;
  u_xlat60 = min(x_325, 1.0f);
  let x_327 : f32 = u_xlat60;
  u_xlat60 = (-(x_327) + 1.0f);
  let x_330 : f32 = u_xlat60;
  u_xlat60 = sqrt(x_330);
  let x_332 : f32 = u_xlat60;
  u_xlat60 = max(x_332, 1.00000002e-16f);
  let x_340 : vec4<f32> = vs_INTERP3;
  let x_343 : f32 = x_44.x_GlobalMipBias.x;
  let x_344 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_340.x, x_340.y), x_343);
  let x_345 : vec3<f32> = vec3<f32>(x_344.x, x_344.w, x_344.y);
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_353 : f32 = vs_INTERP2.w;
  u_xlatb41.x = (0.0f < x_353);
  let x_361 : f32 = x_359.unity_WorldTransformParams.w;
  u_xlatb41.y = (x_361 >= 0.0f);
  let x_367 : bool = u_xlatb41.x;
  u_xlat41.x = select(-1.0f, 1.0f, x_367);
  let x_371 : bool = u_xlatb41.y;
  u_xlat41.y = select(-1.0f, 1.0f, x_371);
  let x_375 : f32 = u_xlat41.y;
  let x_377 : f32 = u_xlat41.x;
  u_xlat41.x = (x_375 * x_377);
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
  let x_400 : vec2<f32> = u_xlat41;
  let x_402 : vec4<f32> = u_xlat3;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.x, x_400.x) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat1;
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat21 = (vec3<f32>(x_407.y, x_407.y, x_407.y) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat1;
  let x_414 : vec4<f32> = vs_INTERP2;
  let x_417 : vec3<f32> = u_xlat21;
  let x_418 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.x, x_412.x) * vec3<f32>(x_414.x, x_414.y, x_414.z)) + x_417);
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : f32 = u_xlat60;
  let x_423 : vec3<f32> = vs_INTERP1;
  let x_425 : vec4<f32> = u_xlat1;
  let x_427 : vec3<f32> = ((vec3<f32>(x_421, x_421, x_421) * x_423) + vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat1;
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat60 = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_435);
  let x_437 : f32 = u_xlat60;
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : vec3<f32> = (vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_446 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb60 = (x_446 == 0.0f);
  let x_449 : vec3<f32> = vs_INTERP0;
  let x_454 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_455 : vec3<f32> = (-(x_449) + x_454);
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_459 : vec4<f32> = u_xlat3;
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat61 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat61;
  let x_468 : vec4<f32> = u_xlat3;
  let x_470 : vec3<f32> = (vec3<f32>(x_466, x_466, x_466) * vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_474 : bool = u_xlatb60;
  if (x_474) {
    let x_479 : f32 = u_xlat3.x;
    x_475 = x_479;
  } else {
    let x_484 : f32 = x_44.unity_MatrixV[0i].z;
    x_475 = x_484;
  }
  let x_485 : f32 = x_475;
  u_xlat4.x = x_485;
  let x_487 : bool = u_xlatb60;
  if (x_487) {
    let x_492 : f32 = u_xlat3.y;
    x_488 = x_492;
  } else {
    let x_495 : f32 = x_44.unity_MatrixV[1i].z;
    x_488 = x_495;
  }
  let x_496 : f32 = x_488;
  u_xlat4.y = x_496;
  let x_498 : bool = u_xlatb60;
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
  let x_530 : vec3<f32> = vec3<f32>(x_529.x, x_529.y, x_529.z);
  let x_531 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat3;
  let x_537 : vec3<f32> = (vec3<f32>(x_533.x, x_533.y, x_533.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_538 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat1;
  let x_542 : vec4<f32> = u_xlat3;
  u_xlat60 = dot(vec3<f32>(x_540.x, x_540.y, x_540.z), vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : f32 = u_xlat60;
  u_xlat60 = (x_545 + 0.5f);
  let x_548 : f32 = u_xlat60;
  let x_550 : vec4<f32> = u_xlat5;
  let x_552 : vec3<f32> = (vec3<f32>(x_548, x_548, x_548) * vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_556 : f32 = u_xlat3.w;
  u_xlat60 = max(x_556, 0.0001f);
  let x_559 : vec4<f32> = u_xlat3;
  let x_561 : f32 = u_xlat60;
  let x_563 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) / vec3<f32>(x_561, x_561, x_561));
  let x_564 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_569 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_570 : vec2<f32> = vec2<f32>(x_569.x, x_569.y);
  let x_574 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_570.x, x_570.y));
  let x_575 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_575.w);
  let x_577 : vec4<f32> = u_xlat5;
  let x_579 : vec4<f32> = hlslcc_FragCoord;
  let x_581 : vec2<f32> = (vec2<f32>(x_577.x, x_577.y) * vec2<f32>(x_579.x, x_579.y));
  let x_582 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
  let x_585 : f32 = u_xlat5.y;
  let x_588 : f32 = x_44.x_ScaleBiasRt.x;
  let x_591 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_585 * x_588) + x_591);
  let x_593 : f32 = u_xlat60;
  u_xlat5.z = (-(x_593) + 1.0f);
  let x_597 : vec4<f32> = u_xlat2;
  let x_598 : vec2<f32> = vec2<f32>(x_597.x, x_597.y);
  let x_599 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat2;
  let x_605 : vec2<f32> = clamp(vec2<f32>(x_601.x, x_601.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_606 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
  let x_609 : f32 = u_xlat2.x;
  u_xlat60 = ((-(x_609) * 0.959999979f) + 0.959999979f);
  let x_614 : f32 = u_xlat60;
  let x_617 : f32 = u_xlat2.y;
  u_xlat61 = (-(x_614) + x_617);
  let x_620 : f32 = u_xlat60;
  let x_622 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_620, x_620, x_620) * vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : vec4<f32> = u_xlat0;
  let x_629 : vec3<f32> = (vec3<f32>(x_625.x, x_625.y, x_625.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_630 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat2;
  let x_634 : vec4<f32> = u_xlat0;
  let x_639 : vec3<f32> = ((vec3<f32>(x_632.x, x_632.x, x_632.x) * vec3<f32>(x_634.x, x_634.y, x_634.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_640 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_643 : f32 = u_xlat2.y;
  u_xlat60 = (-(x_643) + 1.0f);
  let x_646 : f32 = u_xlat60;
  let x_647 : f32 = u_xlat60;
  u_xlat2.x = (x_646 * x_647);
  let x_651 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_651, 0.0078125f);
  let x_657 : f32 = u_xlat2.x;
  let x_659 : f32 = u_xlat2.x;
  u_xlat22 = (x_657 * x_659);
  let x_661 : f32 = u_xlat61;
  u_xlat61 = (x_661 + 1.0f);
  let x_663 : f32 = u_xlat61;
  u_xlat61 = min(x_663, 1.0f);
  let x_667 : f32 = u_xlat2.x;
  u_xlat62 = ((x_667 * 4.0f) + 2.0f);
  let x_677 : vec4<f32> = u_xlat5;
  let x_680 : f32 = x_44.x_GlobalMipBias.x;
  let x_681 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_677.x, x_677.z), x_680);
  u_xlat63 = x_681.x;
  let x_684 : f32 = u_xlat63;
  u_xlat64 = (x_684 + -1.0f);
  let x_688 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_689 : f32 = u_xlat64;
  u_xlat64 = ((x_688 * x_689) + 1.0f);
  let x_694 : f32 = u_xlat2.z;
  let x_695 : f32 = u_xlat63;
  u_xlat42 = min(x_694, x_695);
  let x_704 : f32 = x_702.x_MainLightShadowParams.y;
  u_xlatb63 = (0.0f < x_704);
  let x_706 : bool = u_xlatb63;
  if (x_706) {
    let x_710 : f32 = x_702.x_MainLightShadowParams.y;
    u_xlatb63 = (x_710 == 1.0f);
    let x_712 : bool = u_xlatb63;
    if (x_712) {
      let x_716 : vec4<f32> = vs_INTERP8;
      let x_720 : vec4<f32> = x_702.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_716.x, x_716.y, x_716.x, x_716.y) + x_720);
      let x_723 : vec4<f32> = u_xlat5;
      let x_724 : vec2<f32> = vec2<f32>(x_723.x, x_723.y);
      let x_726 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_724.x, x_724.y, x_726);
      let x_739 : vec3<f32> = txVec0;
      let x_741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_739.xy, x_739.z);
      u_xlat7.x = x_741;
      let x_744 : vec4<f32> = u_xlat5;
      let x_745 : vec2<f32> = vec2<f32>(x_744.z, x_744.w);
      let x_747 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_745.x, x_745.y, x_747);
      let x_754 : vec3<f32> = txVec1;
      let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_754.xy, x_754.z);
      u_xlat7.y = x_756;
      let x_758 : vec4<f32> = vs_INTERP8;
      let x_762 : vec4<f32> = x_702.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_758.x, x_758.y, x_758.x, x_758.y) + x_762);
      let x_765 : vec4<f32> = u_xlat5;
      let x_766 : vec2<f32> = vec2<f32>(x_765.x, x_765.y);
      let x_768 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_766.x, x_766.y, x_768);
      let x_775 : vec3<f32> = txVec2;
      let x_777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_775.xy, x_775.z);
      u_xlat7.z = x_777;
      let x_780 : vec4<f32> = u_xlat5;
      let x_781 : vec2<f32> = vec2<f32>(x_780.z, x_780.w);
      let x_783 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_781.x, x_781.y, x_783);
      let x_790 : vec3<f32> = txVec3;
      let x_792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_790.xy, x_790.z);
      u_xlat7.w = x_792;
      let x_794 : vec4<f32> = u_xlat7;
      u_xlat63 = dot(x_794, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_801 : f32 = x_702.x_MainLightShadowParams.y;
      u_xlatb5 = (x_801 == 2.0f);
      let x_803 : bool = u_xlatb5;
      if (x_803) {
        let x_806 : vec4<f32> = vs_INTERP8;
        let x_809 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_813 : vec2<f32> = ((vec2<f32>(x_806.x, x_806.y) * vec2<f32>(x_809.z, x_809.w)) + vec2<f32>(0.5f, 0.5f));
        let x_814 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_813.x, x_813.y, x_814.z, x_814.w);
        let x_816 : vec4<f32> = u_xlat5;
        let x_818 : vec2<f32> = floor(vec2<f32>(x_816.x, x_816.y));
        let x_819 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_818.x, x_818.y, x_819.z, x_819.w);
        let x_822 : vec4<f32> = vs_INTERP8;
        let x_825 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_828 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_822.x, x_822.y) * vec2<f32>(x_825.z, x_825.w)) + -(vec2<f32>(x_828.x, x_828.y)));
        let x_832 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_832.x, x_832.x, x_832.y, x_832.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_837 : vec4<f32> = u_xlat7;
        let x_839 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_837.x, x_837.x, x_837.z, x_837.z) * vec4<f32>(x_839.x, x_839.x, x_839.z, x_839.z));
        let x_842 : vec4<f32> = u_xlat8;
        let x_846 : vec2<f32> = (vec2<f32>(x_842.y, x_842.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_847 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_846.x, x_847.y, x_846.y, x_847.w);
        let x_849 : vec4<f32> = u_xlat8;
        let x_852 : vec2<f32> = u_xlat45;
        let x_854 : vec2<f32> = ((vec2<f32>(x_849.x, x_849.z) * vec2<f32>(0.5f, 0.5f)) + -(x_852));
        let x_855 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_858 : vec2<f32> = u_xlat45;
        u_xlat48 = (-(x_858) + vec2<f32>(1.0f, 1.0f));
        let x_862 : vec2<f32> = u_xlat45;
        let x_864 : vec2<f32> = min(x_862, vec2<f32>(0.0f, 0.0f));
        let x_865 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
        let x_867 : vec4<f32> = u_xlat9;
        let x_870 : vec4<f32> = u_xlat9;
        let x_873 : vec2<f32> = u_xlat48;
        let x_874 : vec2<f32> = ((-(vec2<f32>(x_867.x, x_867.y)) * vec2<f32>(x_870.x, x_870.y)) + x_873);
        let x_875 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_874.x, x_874.y, x_875.z, x_875.w);
        let x_877 : vec2<f32> = u_xlat45;
        u_xlat45 = max(x_877, vec2<f32>(0.0f, 0.0f));
        let x_879 : vec2<f32> = u_xlat45;
        let x_881 : vec2<f32> = u_xlat45;
        let x_883 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_879) * x_881) + vec2<f32>(x_883.y, x_883.w));
        let x_886 : vec4<f32> = u_xlat9;
        let x_888 : vec2<f32> = (vec2<f32>(x_886.x, x_886.y) + vec2<f32>(1.0f, 1.0f));
        let x_889 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_888.x, x_888.y, x_889.z, x_889.w);
        let x_891 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_891 + vec2<f32>(1.0f, 1.0f));
        let x_894 : vec4<f32> = u_xlat8;
        let x_898 : vec2<f32> = (vec2<f32>(x_894.x, x_894.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_899 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_898.x, x_898.y, x_899.z, x_899.w);
        let x_901 : vec2<f32> = u_xlat48;
        let x_902 : vec2<f32> = (x_901 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_903 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_902.x, x_902.y, x_903.z, x_903.w);
        let x_905 : vec4<f32> = u_xlat9;
        let x_907 : vec2<f32> = (vec2<f32>(x_905.x, x_905.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_908 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
        let x_911 : vec2<f32> = u_xlat45;
        let x_912 : vec2<f32> = (x_911 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_913 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_912.x, x_912.y, x_913.z, x_913.w);
        let x_915 : vec4<f32> = u_xlat7;
        u_xlat45 = (vec2<f32>(x_915.y, x_915.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_919 : f32 = u_xlat9.x;
        u_xlat10.z = x_919;
        let x_922 : f32 = u_xlat45.x;
        u_xlat10.w = x_922;
        let x_925 : f32 = u_xlat11.x;
        u_xlat8.z = x_925;
        let x_928 : f32 = u_xlat7.x;
        u_xlat8.w = x_928;
        let x_931 : vec4<f32> = u_xlat8;
        let x_933 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_931.z, x_931.w, x_931.x, x_931.z) + vec4<f32>(x_933.z, x_933.w, x_933.x, x_933.z));
        let x_937 : f32 = u_xlat10.y;
        u_xlat9.z = x_937;
        let x_940 : f32 = u_xlat45.y;
        u_xlat9.w = x_940;
        let x_943 : f32 = u_xlat8.y;
        u_xlat11.z = x_943;
        let x_946 : f32 = u_xlat7.z;
        u_xlat11.w = x_946;
        let x_948 : vec4<f32> = u_xlat9;
        let x_950 : vec4<f32> = u_xlat11;
        let x_952 : vec3<f32> = (vec3<f32>(x_948.z, x_948.y, x_948.w) + vec3<f32>(x_950.z, x_950.y, x_950.w));
        let x_953 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
        let x_955 : vec4<f32> = u_xlat8;
        let x_957 : vec4<f32> = u_xlat12;
        let x_959 : vec3<f32> = (vec3<f32>(x_955.x, x_955.z, x_955.w) / vec3<f32>(x_957.z, x_957.w, x_957.y));
        let x_960 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
        let x_962 : vec4<f32> = u_xlat8;
        let x_967 : vec3<f32> = (vec3<f32>(x_962.x, x_962.y, x_962.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_968 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
        let x_970 : vec4<f32> = u_xlat11;
        let x_972 : vec4<f32> = u_xlat7;
        let x_974 : vec3<f32> = (vec3<f32>(x_970.z, x_970.y, x_970.w) / vec3<f32>(x_972.x, x_972.y, x_972.z));
        let x_975 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
        let x_977 : vec4<f32> = u_xlat9;
        let x_979 : vec3<f32> = (vec3<f32>(x_977.x, x_977.y, x_977.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_980 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
        let x_982 : vec4<f32> = u_xlat8;
        let x_985 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_987 : vec3<f32> = (vec3<f32>(x_982.y, x_982.x, x_982.z) * vec3<f32>(x_985.x, x_985.x, x_985.x));
        let x_988 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
        let x_990 : vec4<f32> = u_xlat9;
        let x_993 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_995 : vec3<f32> = (vec3<f32>(x_990.x, x_990.y, x_990.z) * vec3<f32>(x_993.y, x_993.y, x_993.y));
        let x_996 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
        let x_999 : f32 = u_xlat9.x;
        u_xlat8.w = x_999;
        let x_1001 : vec4<f32> = u_xlat5;
        let x_1004 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1007 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1001.x, x_1001.y, x_1001.x, x_1001.y) * vec4<f32>(x_1004.x, x_1004.y, x_1004.x, x_1004.y)) + vec4<f32>(x_1007.y, x_1007.w, x_1007.x, x_1007.w));
        let x_1010 : vec4<f32> = u_xlat5;
        let x_1013 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1016 : vec4<f32> = u_xlat8;
        u_xlat45 = ((vec2<f32>(x_1010.x, x_1010.y) * vec2<f32>(x_1013.x, x_1013.y)) + vec2<f32>(x_1016.z, x_1016.w));
        let x_1020 : f32 = u_xlat8.y;
        u_xlat9.w = x_1020;
        let x_1022 : vec4<f32> = u_xlat9;
        let x_1023 : vec2<f32> = vec2<f32>(x_1022.y, x_1022.z);
        let x_1024 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1024.x, x_1023.x, x_1024.z, x_1023.y);
        let x_1026 : vec4<f32> = u_xlat5;
        let x_1029 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y) * vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y)) + vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1032.y));
        let x_1035 : vec4<f32> = u_xlat5;
        let x_1038 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1041 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1035.x, x_1035.y, x_1035.x, x_1035.y) * vec4<f32>(x_1038.x, x_1038.y, x_1038.x, x_1038.y)) + vec4<f32>(x_1041.w, x_1041.y, x_1041.w, x_1041.z));
        let x_1044 : vec4<f32> = u_xlat5;
        let x_1047 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1050 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y) * vec4<f32>(x_1047.x, x_1047.y, x_1047.x, x_1047.y)) + vec4<f32>(x_1050.x, x_1050.w, x_1050.z, x_1050.w));
        let x_1054 : vec4<f32> = u_xlat7;
        let x_1056 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1054.x, x_1054.x, x_1054.x, x_1054.y) * vec4<f32>(x_1056.z, x_1056.w, x_1056.y, x_1056.z));
        let x_1060 : vec4<f32> = u_xlat7;
        let x_1062 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1060.y, x_1060.y, x_1060.z, x_1060.z) * x_1062);
        let x_1065 : f32 = u_xlat7.z;
        let x_1067 : f32 = u_xlat12.y;
        u_xlat5.x = (x_1065 * x_1067);
        let x_1071 : vec4<f32> = u_xlat10;
        let x_1072 : vec2<f32> = vec2<f32>(x_1071.x, x_1071.y);
        let x_1074 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_1072.x, x_1072.y, x_1074);
        let x_1082 : vec3<f32> = txVec4;
        let x_1084 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1082.xy, x_1082.z);
        u_xlat25 = x_1084;
        let x_1086 : vec4<f32> = u_xlat10;
        let x_1087 : vec2<f32> = vec2<f32>(x_1086.z, x_1086.w);
        let x_1089 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1087.x, x_1087.y, x_1089);
        let x_1097 : vec3<f32> = txVec5;
        let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1097.xy, x_1097.z);
        u_xlat66 = x_1099;
        let x_1100 : f32 = u_xlat66;
        let x_1102 : f32 = u_xlat13.y;
        u_xlat66 = (x_1100 * x_1102);
        let x_1105 : f32 = u_xlat13.x;
        let x_1106 : f32 = u_xlat25;
        let x_1108 : f32 = u_xlat66;
        u_xlat25 = ((x_1105 * x_1106) + x_1108);
        let x_1111 : vec2<f32> = u_xlat45;
        let x_1113 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1111.x, x_1111.y, x_1113);
        let x_1120 : vec3<f32> = txVec6;
        let x_1122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1120.xy, x_1120.z);
        u_xlat45.x = x_1122;
        let x_1125 : f32 = u_xlat13.z;
        let x_1127 : f32 = u_xlat45.x;
        let x_1129 : f32 = u_xlat25;
        u_xlat25 = ((x_1125 * x_1127) + x_1129);
        let x_1132 : vec4<f32> = u_xlat9;
        let x_1133 : vec2<f32> = vec2<f32>(x_1132.x, x_1132.y);
        let x_1135 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1133.x, x_1133.y, x_1135);
        let x_1142 : vec3<f32> = txVec7;
        let x_1144 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1142.xy, x_1142.z);
        u_xlat45.x = x_1144;
        let x_1147 : f32 = u_xlat13.w;
        let x_1149 : f32 = u_xlat45.x;
        let x_1151 : f32 = u_xlat25;
        u_xlat25 = ((x_1147 * x_1149) + x_1151);
        let x_1154 : vec4<f32> = u_xlat11;
        let x_1155 : vec2<f32> = vec2<f32>(x_1154.x, x_1154.y);
        let x_1157 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1155.x, x_1155.y, x_1157);
        let x_1164 : vec3<f32> = txVec8;
        let x_1166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1164.xy, x_1164.z);
        u_xlat45.x = x_1166;
        let x_1169 : f32 = u_xlat14.x;
        let x_1171 : f32 = u_xlat45.x;
        let x_1173 : f32 = u_xlat25;
        u_xlat25 = ((x_1169 * x_1171) + x_1173);
        let x_1176 : vec4<f32> = u_xlat11;
        let x_1177 : vec2<f32> = vec2<f32>(x_1176.z, x_1176.w);
        let x_1179 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1177.x, x_1177.y, x_1179);
        let x_1186 : vec3<f32> = txVec9;
        let x_1188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1186.xy, x_1186.z);
        u_xlat45.x = x_1188;
        let x_1191 : f32 = u_xlat14.y;
        let x_1193 : f32 = u_xlat45.x;
        let x_1195 : f32 = u_xlat25;
        u_xlat25 = ((x_1191 * x_1193) + x_1195);
        let x_1198 : vec4<f32> = u_xlat9;
        let x_1199 : vec2<f32> = vec2<f32>(x_1198.z, x_1198.w);
        let x_1201 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1199.x, x_1199.y, x_1201);
        let x_1208 : vec3<f32> = txVec10;
        let x_1210 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1208.xy, x_1208.z);
        u_xlat45.x = x_1210;
        let x_1213 : f32 = u_xlat14.z;
        let x_1215 : f32 = u_xlat45.x;
        let x_1217 : f32 = u_xlat25;
        u_xlat25 = ((x_1213 * x_1215) + x_1217);
        let x_1220 : vec4<f32> = u_xlat8;
        let x_1221 : vec2<f32> = vec2<f32>(x_1220.x, x_1220.y);
        let x_1223 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1221.x, x_1221.y, x_1223);
        let x_1230 : vec3<f32> = txVec11;
        let x_1232 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1230.xy, x_1230.z);
        u_xlat45.x = x_1232;
        let x_1235 : f32 = u_xlat14.w;
        let x_1237 : f32 = u_xlat45.x;
        let x_1239 : f32 = u_xlat25;
        u_xlat25 = ((x_1235 * x_1237) + x_1239);
        let x_1242 : vec4<f32> = u_xlat8;
        let x_1243 : vec2<f32> = vec2<f32>(x_1242.z, x_1242.w);
        let x_1245 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1243.x, x_1243.y, x_1245);
        let x_1252 : vec3<f32> = txVec12;
        let x_1254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1252.xy, x_1252.z);
        u_xlat45.x = x_1254;
        let x_1257 : f32 = u_xlat5.x;
        let x_1259 : f32 = u_xlat45.x;
        let x_1261 : f32 = u_xlat25;
        u_xlat63 = ((x_1257 * x_1259) + x_1261);
      } else {
        let x_1264 : vec4<f32> = vs_INTERP8;
        let x_1267 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1270 : vec2<f32> = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(x_1267.z, x_1267.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1271 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1270.x, x_1270.y, x_1271.z, x_1271.w);
        let x_1273 : vec4<f32> = u_xlat5;
        let x_1275 : vec2<f32> = floor(vec2<f32>(x_1273.x, x_1273.y));
        let x_1276 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1275.x, x_1275.y, x_1276.z, x_1276.w);
        let x_1278 : vec4<f32> = vs_INTERP8;
        let x_1281 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1284 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(x_1281.z, x_1281.w)) + -(vec2<f32>(x_1284.x, x_1284.y)));
        let x_1288 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_1288.x, x_1288.x, x_1288.y, x_1288.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1291 : vec4<f32> = u_xlat7;
        let x_1293 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1291.x, x_1291.x, x_1291.z, x_1291.z) * vec4<f32>(x_1293.x, x_1293.x, x_1293.z, x_1293.z));
        let x_1296 : vec4<f32> = u_xlat8;
        let x_1300 : vec2<f32> = (vec2<f32>(x_1296.y, x_1296.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1301 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1301.x, x_1300.x, x_1301.z, x_1300.y);
        let x_1303 : vec4<f32> = u_xlat8;
        let x_1306 : vec2<f32> = u_xlat45;
        let x_1308 : vec2<f32> = ((vec2<f32>(x_1303.x, x_1303.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1306));
        let x_1309 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1308.x, x_1309.y, x_1308.y, x_1309.w);
        let x_1311 : vec2<f32> = u_xlat45;
        let x_1313 : vec2<f32> = (-(x_1311) + vec2<f32>(1.0f, 1.0f));
        let x_1314 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
        let x_1316 : vec2<f32> = u_xlat45;
        u_xlat48 = min(x_1316, vec2<f32>(0.0f, 0.0f));
        let x_1318 : vec2<f32> = u_xlat48;
        let x_1320 : vec2<f32> = u_xlat48;
        let x_1322 : vec4<f32> = u_xlat8;
        let x_1324 : vec2<f32> = ((-(x_1318) * x_1320) + vec2<f32>(x_1322.x, x_1322.y));
        let x_1325 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1324.x, x_1324.y, x_1325.z, x_1325.w);
        let x_1327 : vec2<f32> = u_xlat45;
        u_xlat48 = max(x_1327, vec2<f32>(0.0f, 0.0f));
        let x_1330 : vec2<f32> = u_xlat48;
        let x_1332 : vec2<f32> = u_xlat48;
        let x_1334 : vec4<f32> = u_xlat7;
        let x_1336 : vec2<f32> = ((-(x_1330) * x_1332) + vec2<f32>(x_1334.y, x_1334.w));
        let x_1337 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1336.x, x_1337.y, x_1336.y);
        let x_1339 : vec4<f32> = u_xlat8;
        let x_1341 : vec2<f32> = (vec2<f32>(x_1339.x, x_1339.y) + vec2<f32>(2.0f, 2.0f));
        let x_1342 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1341.x, x_1341.y, x_1342.z, x_1342.w);
        let x_1344 : vec3<f32> = u_xlat27;
        let x_1346 : vec2<f32> = (vec2<f32>(x_1344.x, x_1344.z) + vec2<f32>(2.0f, 2.0f));
        let x_1347 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1347.x, x_1346.x, x_1347.z, x_1346.y);
        let x_1350 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1350 * 0.081632003f);
        let x_1354 : vec4<f32> = u_xlat7;
        let x_1357 : vec3<f32> = (vec3<f32>(x_1354.z, x_1354.x, x_1354.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1358 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
        let x_1360 : vec4<f32> = u_xlat8;
        let x_1363 : vec2<f32> = (vec2<f32>(x_1360.x, x_1360.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1364 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1363.x, x_1363.y, x_1364.z, x_1364.w);
        let x_1367 : f32 = u_xlat11.y;
        u_xlat10.x = x_1367;
        let x_1369 : vec2<f32> = u_xlat45;
        let x_1376 : vec2<f32> = ((vec2<f32>(x_1369.x, x_1369.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1377 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1377.x, x_1376.x, x_1377.z, x_1376.y);
        let x_1379 : vec2<f32> = u_xlat45;
        let x_1383 : vec2<f32> = ((vec2<f32>(x_1379.x, x_1379.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1384 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1383.x, x_1384.y, x_1383.y, x_1384.w);
        let x_1387 : f32 = u_xlat7.x;
        u_xlat8.y = x_1387;
        let x_1390 : f32 = u_xlat9.y;
        u_xlat8.w = x_1390;
        let x_1392 : vec4<f32> = u_xlat8;
        let x_1393 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1392 + x_1393);
        let x_1395 : vec2<f32> = u_xlat45;
        let x_1398 : vec2<f32> = ((vec2<f32>(x_1395.y, x_1395.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1399 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1399.x, x_1398.x, x_1399.z, x_1398.y);
        let x_1401 : vec2<f32> = u_xlat45;
        let x_1404 : vec2<f32> = ((vec2<f32>(x_1401.y, x_1401.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1405 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1404.x, x_1405.y, x_1404.y, x_1405.w);
        let x_1408 : f32 = u_xlat7.y;
        u_xlat9.y = x_1408;
        let x_1410 : vec4<f32> = u_xlat9;
        let x_1411 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1410 + x_1411);
        let x_1413 : vec4<f32> = u_xlat8;
        let x_1414 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1413 / x_1414);
        let x_1416 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1416 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1422 : vec4<f32> = u_xlat9;
        let x_1423 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1422 / x_1423);
        let x_1425 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1425 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1427 : vec4<f32> = u_xlat8;
        let x_1430 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1427.w, x_1427.x, x_1427.y, x_1427.z) * vec4<f32>(x_1430.x, x_1430.x, x_1430.x, x_1430.x));
        let x_1433 : vec4<f32> = u_xlat9;
        let x_1436 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1433.x, x_1433.w, x_1433.y, x_1433.z) * vec4<f32>(x_1436.y, x_1436.y, x_1436.y, x_1436.y));
        let x_1439 : vec4<f32> = u_xlat8;
        let x_1440 : vec3<f32> = vec3<f32>(x_1439.y, x_1439.z, x_1439.w);
        let x_1441 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1440.x, x_1441.y, x_1440.y, x_1440.z);
        let x_1444 : f32 = u_xlat9.x;
        u_xlat11.y = x_1444;
        let x_1446 : vec4<f32> = u_xlat5;
        let x_1449 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1452 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1446.x, x_1446.y, x_1446.x, x_1446.y) * vec4<f32>(x_1449.x, x_1449.y, x_1449.x, x_1449.y)) + vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1452.y));
        let x_1455 : vec4<f32> = u_xlat5;
        let x_1458 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1461 : vec4<f32> = u_xlat11;
        u_xlat45 = ((vec2<f32>(x_1455.x, x_1455.y) * vec2<f32>(x_1458.x, x_1458.y)) + vec2<f32>(x_1461.w, x_1461.y));
        let x_1465 : f32 = u_xlat11.y;
        u_xlat8.y = x_1465;
        let x_1468 : f32 = u_xlat9.z;
        u_xlat11.y = x_1468;
        let x_1470 : vec4<f32> = u_xlat5;
        let x_1473 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1476 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1470.x, x_1470.y, x_1470.x, x_1470.y) * vec4<f32>(x_1473.x, x_1473.y, x_1473.x, x_1473.y)) + vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1476.y));
        let x_1479 : vec4<f32> = u_xlat5;
        let x_1482 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1485 : vec4<f32> = u_xlat11;
        let x_1487 : vec2<f32> = ((vec2<f32>(x_1479.x, x_1479.y) * vec2<f32>(x_1482.x, x_1482.y)) + vec2<f32>(x_1485.w, x_1485.y));
        let x_1488 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1487.x, x_1487.y, x_1488.z, x_1488.w);
        let x_1491 : f32 = u_xlat11.y;
        u_xlat8.z = x_1491;
        let x_1494 : vec4<f32> = u_xlat5;
        let x_1497 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1500 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1494.x, x_1494.y, x_1494.x, x_1494.y) * vec4<f32>(x_1497.x, x_1497.y, x_1497.x, x_1497.y)) + vec4<f32>(x_1500.x, x_1500.y, x_1500.x, x_1500.z));
        let x_1504 : f32 = u_xlat9.w;
        u_xlat11.y = x_1504;
        let x_1507 : vec4<f32> = u_xlat5;
        let x_1510 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1513 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1507.x, x_1507.y, x_1507.x, x_1507.y) * vec4<f32>(x_1510.x, x_1510.y, x_1510.x, x_1510.y)) + vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1513.y));
        let x_1517 : vec4<f32> = u_xlat5;
        let x_1520 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1523 : vec4<f32> = u_xlat11;
        let x_1525 : vec2<f32> = ((vec2<f32>(x_1517.x, x_1517.y) * vec2<f32>(x_1520.x, x_1520.y)) + vec2<f32>(x_1523.w, x_1523.y));
        let x_1526 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1525.x, x_1525.y, x_1526.z);
        let x_1529 : f32 = u_xlat11.y;
        u_xlat8.w = x_1529;
        let x_1532 : vec4<f32> = u_xlat5;
        let x_1535 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1538 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1532.x, x_1532.y) * vec2<f32>(x_1535.x, x_1535.y)) + vec2<f32>(x_1538.x, x_1538.w));
        let x_1541 : vec4<f32> = u_xlat11;
        let x_1542 : vec3<f32> = vec3<f32>(x_1541.x, x_1541.z, x_1541.w);
        let x_1543 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1542.x, x_1543.y, x_1542.y, x_1542.z);
        let x_1545 : vec4<f32> = u_xlat5;
        let x_1548 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1551 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1545.x, x_1545.y, x_1545.x, x_1545.y) * vec4<f32>(x_1548.x, x_1548.y, x_1548.x, x_1548.y)) + vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1551.y));
        let x_1555 : vec4<f32> = u_xlat5;
        let x_1558 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1561 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1555.x, x_1555.y) * vec2<f32>(x_1558.x, x_1558.y)) + vec2<f32>(x_1561.w, x_1561.y));
        let x_1565 : f32 = u_xlat8.x;
        u_xlat9.x = x_1565;
        let x_1567 : vec4<f32> = u_xlat5;
        let x_1570 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1573 : vec4<f32> = u_xlat9;
        let x_1575 : vec2<f32> = ((vec2<f32>(x_1567.x, x_1567.y) * vec2<f32>(x_1570.x, x_1570.y)) + vec2<f32>(x_1573.x, x_1573.y));
        let x_1576 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1575.x, x_1575.y, x_1576.z, x_1576.w);
        let x_1579 : vec4<f32> = u_xlat7;
        let x_1581 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1579.x, x_1579.x, x_1579.x, x_1579.x) * x_1581);
        let x_1584 : vec4<f32> = u_xlat7;
        let x_1586 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1584.y, x_1584.y, x_1584.y, x_1584.y) * x_1586);
        let x_1589 : vec4<f32> = u_xlat7;
        let x_1591 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1589.z, x_1589.z, x_1589.z, x_1589.z) * x_1591);
        let x_1593 : vec4<f32> = u_xlat7;
        let x_1595 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1593.w, x_1593.w, x_1593.w, x_1593.w) * x_1595);
        let x_1598 : vec4<f32> = u_xlat12;
        let x_1599 : vec2<f32> = vec2<f32>(x_1598.x, x_1598.y);
        let x_1601 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1599.x, x_1599.y, x_1601);
        let x_1608 : vec3<f32> = txVec13;
        let x_1610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1608.xy, x_1608.z);
        u_xlat66 = x_1610;
        let x_1612 : vec4<f32> = u_xlat12;
        let x_1613 : vec2<f32> = vec2<f32>(x_1612.z, x_1612.w);
        let x_1615 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1613.x, x_1613.y, x_1615);
        let x_1622 : vec3<f32> = txVec14;
        let x_1624 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1622.xy, x_1622.z);
        u_xlat8.x = x_1624;
        let x_1627 : f32 = u_xlat8.x;
        let x_1629 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1627 * x_1629);
        let x_1633 : f32 = u_xlat17.x;
        let x_1634 : f32 = u_xlat66;
        let x_1637 : f32 = u_xlat8.x;
        u_xlat66 = ((x_1633 * x_1634) + x_1637);
        let x_1640 : vec2<f32> = u_xlat45;
        let x_1642 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1640.x, x_1640.y, x_1642);
        let x_1649 : vec3<f32> = txVec15;
        let x_1651 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1649.xy, x_1649.z);
        u_xlat45.x = x_1651;
        let x_1654 : f32 = u_xlat17.z;
        let x_1656 : f32 = u_xlat45.x;
        let x_1658 : f32 = u_xlat66;
        u_xlat45.x = ((x_1654 * x_1656) + x_1658);
        let x_1662 : vec4<f32> = u_xlat15;
        let x_1663 : vec2<f32> = vec2<f32>(x_1662.x, x_1662.y);
        let x_1665 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1673 : vec3<f32> = txVec16;
        let x_1675 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1673.xy, x_1673.z);
        u_xlat65 = x_1675;
        let x_1677 : f32 = u_xlat17.w;
        let x_1678 : f32 = u_xlat65;
        let x_1681 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1677 * x_1678) + x_1681);
        let x_1685 : vec4<f32> = u_xlat13;
        let x_1686 : vec2<f32> = vec2<f32>(x_1685.x, x_1685.y);
        let x_1688 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1686.x, x_1686.y, x_1688);
        let x_1695 : vec3<f32> = txVec17;
        let x_1697 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1695.xy, x_1695.z);
        u_xlat65 = x_1697;
        let x_1699 : f32 = u_xlat18.x;
        let x_1700 : f32 = u_xlat65;
        let x_1703 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1699 * x_1700) + x_1703);
        let x_1707 : vec4<f32> = u_xlat13;
        let x_1708 : vec2<f32> = vec2<f32>(x_1707.z, x_1707.w);
        let x_1710 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1708.x, x_1708.y, x_1710);
        let x_1717 : vec3<f32> = txVec18;
        let x_1719 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1717.xy, x_1717.z);
        u_xlat65 = x_1719;
        let x_1721 : f32 = u_xlat18.y;
        let x_1722 : f32 = u_xlat65;
        let x_1725 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1721 * x_1722) + x_1725);
        let x_1729 : vec4<f32> = u_xlat14;
        let x_1730 : vec2<f32> = vec2<f32>(x_1729.x, x_1729.y);
        let x_1732 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1730.x, x_1730.y, x_1732);
        let x_1739 : vec3<f32> = txVec19;
        let x_1741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1739.xy, x_1739.z);
        u_xlat65 = x_1741;
        let x_1743 : f32 = u_xlat18.z;
        let x_1744 : f32 = u_xlat65;
        let x_1747 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1743 * x_1744) + x_1747);
        let x_1751 : vec4<f32> = u_xlat15;
        let x_1752 : vec2<f32> = vec2<f32>(x_1751.z, x_1751.w);
        let x_1754 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1752.x, x_1752.y, x_1754);
        let x_1761 : vec3<f32> = txVec20;
        let x_1763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1761.xy, x_1761.z);
        u_xlat65 = x_1763;
        let x_1765 : f32 = u_xlat18.w;
        let x_1766 : f32 = u_xlat65;
        let x_1769 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1765 * x_1766) + x_1769);
        let x_1773 : vec4<f32> = u_xlat16;
        let x_1774 : vec2<f32> = vec2<f32>(x_1773.x, x_1773.y);
        let x_1776 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1774.x, x_1774.y, x_1776);
        let x_1783 : vec3<f32> = txVec21;
        let x_1785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1783.xy, x_1783.z);
        u_xlat65 = x_1785;
        let x_1787 : f32 = u_xlat19.x;
        let x_1788 : f32 = u_xlat65;
        let x_1791 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1787 * x_1788) + x_1791);
        let x_1795 : vec4<f32> = u_xlat16;
        let x_1796 : vec2<f32> = vec2<f32>(x_1795.z, x_1795.w);
        let x_1798 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1796.x, x_1796.y, x_1798);
        let x_1805 : vec3<f32> = txVec22;
        let x_1807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1805.xy, x_1805.z);
        u_xlat65 = x_1807;
        let x_1809 : f32 = u_xlat19.y;
        let x_1810 : f32 = u_xlat65;
        let x_1813 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1809 * x_1810) + x_1813);
        let x_1817 : vec3<f32> = u_xlat28;
        let x_1818 : vec2<f32> = vec2<f32>(x_1817.x, x_1817.y);
        let x_1820 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1818.x, x_1818.y, x_1820);
        let x_1827 : vec3<f32> = txVec23;
        let x_1829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1827.xy, x_1827.z);
        u_xlat65 = x_1829;
        let x_1831 : f32 = u_xlat19.z;
        let x_1832 : f32 = u_xlat65;
        let x_1835 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1831 * x_1832) + x_1835);
        let x_1839 : vec2<f32> = u_xlat54;
        let x_1841 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1839.x, x_1839.y, x_1841);
        let x_1848 : vec3<f32> = txVec24;
        let x_1850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1848.xy, x_1848.z);
        u_xlat65 = x_1850;
        let x_1852 : f32 = u_xlat19.w;
        let x_1853 : f32 = u_xlat65;
        let x_1856 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1852 * x_1853) + x_1856);
        let x_1860 : vec4<f32> = u_xlat11;
        let x_1861 : vec2<f32> = vec2<f32>(x_1860.x, x_1860.y);
        let x_1863 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1861.x, x_1861.y, x_1863);
        let x_1870 : vec3<f32> = txVec25;
        let x_1872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1870.xy, x_1870.z);
        u_xlat65 = x_1872;
        let x_1874 : f32 = u_xlat7.x;
        let x_1875 : f32 = u_xlat65;
        let x_1878 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1874 * x_1875) + x_1878);
        let x_1882 : vec4<f32> = u_xlat11;
        let x_1883 : vec2<f32> = vec2<f32>(x_1882.z, x_1882.w);
        let x_1885 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1883.x, x_1883.y, x_1885);
        let x_1892 : vec3<f32> = txVec26;
        let x_1894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1892.xy, x_1892.z);
        u_xlat65 = x_1894;
        let x_1896 : f32 = u_xlat7.y;
        let x_1897 : f32 = u_xlat65;
        let x_1900 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1896 * x_1897) + x_1900);
        let x_1904 : vec2<f32> = u_xlat49;
        let x_1906 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1904.x, x_1904.y, x_1906);
        let x_1913 : vec3<f32> = txVec27;
        let x_1915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1913.xy, x_1913.z);
        u_xlat65 = x_1915;
        let x_1917 : f32 = u_xlat7.z;
        let x_1918 : f32 = u_xlat65;
        let x_1921 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1917 * x_1918) + x_1921);
        let x_1925 : vec4<f32> = u_xlat5;
        let x_1926 : vec2<f32> = vec2<f32>(x_1925.x, x_1925.y);
        let x_1928 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1926.x, x_1926.y, x_1928);
        let x_1935 : vec3<f32> = txVec28;
        let x_1937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1935.xy, x_1935.z);
        u_xlat5.x = x_1937;
        let x_1940 : f32 = u_xlat7.w;
        let x_1942 : f32 = u_xlat5.x;
        let x_1945 : f32 = u_xlat45.x;
        u_xlat63 = ((x_1940 * x_1942) + x_1945);
      }
    }
  } else {
    let x_1949 : vec4<f32> = vs_INTERP8;
    let x_1950 : vec2<f32> = vec2<f32>(x_1949.x, x_1949.y);
    let x_1952 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1950.x, x_1950.y, x_1952);
    let x_1959 : vec3<f32> = txVec29;
    let x_1961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1959.xy, x_1959.z);
    u_xlat63 = x_1961;
  }
  let x_1963 : f32 = x_702.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1963) + 1.0f);
  let x_1967 : f32 = u_xlat63;
  let x_1969 : f32 = x_702.x_MainLightShadowParams.x;
  let x_1972 : f32 = u_xlat5.x;
  u_xlat63 = ((x_1967 * x_1969) + x_1972);
  let x_1975 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_1975);
  let x_1979 : f32 = vs_INTERP8.z;
  u_xlatb25 = (x_1979 >= 1.0f);
  let x_1981 : bool = u_xlatb25;
  let x_1982 : bool = u_xlatb5;
  u_xlatb5 = (x_1981 | x_1982);
  let x_1984 : bool = u_xlatb5;
  let x_1985 : f32 = u_xlat63;
  u_xlat63 = select(x_1985, 1.0f, x_1984);
  let x_1987 : vec3<f32> = vs_INTERP0;
  let x_1989 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1991 : vec3<f32> = (x_1987 + -(x_1989));
  let x_1992 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1991.x, x_1991.y, x_1991.z, x_1992.w);
  let x_1994 : vec4<f32> = u_xlat5;
  let x_1996 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1994.x, x_1994.y, x_1994.z), vec3<f32>(x_1996.x, x_1996.y, x_1996.z));
  let x_2001 : f32 = u_xlat5.x;
  let x_2003 : f32 = x_702.x_MainLightShadowParams.z;
  let x_2006 : f32 = x_702.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_2001 * x_2003) + x_2006);
  let x_2010 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_2010, 0.0f, 1.0f);
  let x_2013 : f32 = u_xlat63;
  u_xlat25 = (-(x_2013) + 1.0f);
  let x_2017 : f32 = u_xlat5.x;
  let x_2018 : f32 = u_xlat25;
  let x_2020 : f32 = u_xlat63;
  u_xlat63 = ((x_2017 * x_2018) + x_2020);
  let x_2022 : f32 = u_xlat64;
  let x_2025 : vec4<f32> = x_44.x_MainLightColor;
  let x_2027 : vec3<f32> = (vec3<f32>(x_2022, x_2022, x_2022) * vec3<f32>(x_2025.x, x_2025.y, x_2025.z));
  let x_2028 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
  let x_2030 : vec3<f32> = u_xlat4;
  let x_2032 : vec4<f32> = u_xlat1;
  u_xlat65 = dot(-(x_2030), vec3<f32>(x_2032.x, x_2032.y, x_2032.z));
  let x_2035 : f32 = u_xlat65;
  let x_2036 : f32 = u_xlat65;
  u_xlat65 = (x_2035 + x_2036);
  let x_2038 : vec4<f32> = u_xlat1;
  let x_2040 : f32 = u_xlat65;
  let x_2044 : vec3<f32> = u_xlat4;
  let x_2046 : vec3<f32> = ((vec3<f32>(x_2038.x, x_2038.y, x_2038.z) * -(vec3<f32>(x_2040, x_2040, x_2040))) + -(x_2044));
  let x_2047 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2046.x, x_2046.y, x_2046.z, x_2047.w);
  let x_2049 : vec4<f32> = u_xlat1;
  let x_2051 : vec3<f32> = u_xlat4;
  u_xlat65 = dot(vec3<f32>(x_2049.x, x_2049.y, x_2049.z), x_2051);
  let x_2053 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2053, 0.0f, 1.0f);
  let x_2055 : f32 = u_xlat65;
  u_xlat65 = (-(x_2055) + 1.0f);
  let x_2058 : f32 = u_xlat65;
  let x_2059 : f32 = u_xlat65;
  u_xlat65 = (x_2058 * x_2059);
  let x_2061 : f32 = u_xlat65;
  let x_2062 : f32 = u_xlat65;
  u_xlat65 = (x_2061 * x_2062);
  let x_2064 : f32 = u_xlat60;
  u_xlat66 = ((-(x_2064) * 0.699999988f) + 1.700000048f);
  let x_2070 : f32 = u_xlat60;
  let x_2071 : f32 = u_xlat66;
  u_xlat60 = (x_2070 * x_2071);
  let x_2073 : f32 = u_xlat60;
  u_xlat60 = (x_2073 * 6.0f);
  let x_2083 : vec4<f32> = u_xlat7;
  let x_2085 : f32 = u_xlat60;
  let x_2086 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2083.x, x_2083.y, x_2083.z), x_2085);
  u_xlat7 = x_2086;
  let x_2088 : f32 = u_xlat7.w;
  u_xlat60 = (x_2088 + -1.0f);
  let x_2091 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2092 : f32 = u_xlat60;
  u_xlat60 = ((x_2091 * x_2092) + 1.0f);
  let x_2095 : f32 = u_xlat60;
  u_xlat60 = max(x_2095, 0.0f);
  let x_2097 : f32 = u_xlat60;
  u_xlat60 = log2(x_2097);
  let x_2099 : f32 = u_xlat60;
  let x_2101 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat60 = (x_2099 * x_2101);
  let x_2103 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2103);
  let x_2105 : f32 = u_xlat60;
  let x_2107 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat60 = (x_2105 * x_2107);
  let x_2109 : vec4<f32> = u_xlat7;
  let x_2111 : f32 = u_xlat60;
  let x_2113 : vec3<f32> = (vec3<f32>(x_2109.x, x_2109.y, x_2109.z) * vec3<f32>(x_2111, x_2111, x_2111));
  let x_2114 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2114.w);
  let x_2116 : vec4<f32> = u_xlat2;
  let x_2118 : vec4<f32> = u_xlat2;
  let x_2122 : vec2<f32> = ((vec2<f32>(x_2116.x, x_2116.x) * vec2<f32>(x_2118.x, x_2118.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2123 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2122.x, x_2122.y, x_2123.z, x_2123.w);
  let x_2126 : f32 = u_xlat8.y;
  u_xlat60 = (1.0f / x_2126);
  let x_2128 : vec4<f32> = u_xlat0;
  let x_2131 : f32 = u_xlat61;
  u_xlat28 = (-(vec3<f32>(x_2128.x, x_2128.y, x_2128.z)) + vec3<f32>(x_2131, x_2131, x_2131));
  let x_2134 : f32 = u_xlat65;
  let x_2136 : vec3<f32> = u_xlat28;
  let x_2138 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_2134, x_2134, x_2134) * x_2136) + vec3<f32>(x_2138.x, x_2138.y, x_2138.z));
  let x_2141 : f32 = u_xlat60;
  let x_2143 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2141, x_2141, x_2141) * x_2143);
  let x_2145 : vec4<f32> = u_xlat7;
  let x_2147 : vec3<f32> = u_xlat28;
  let x_2148 : vec3<f32> = (vec3<f32>(x_2145.x, x_2145.y, x_2145.z) * x_2147);
  let x_2149 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2148.x, x_2148.y, x_2148.z, x_2149.w);
  let x_2151 : vec4<f32> = u_xlat3;
  let x_2153 : vec3<f32> = u_xlat6;
  let x_2155 : vec4<f32> = u_xlat7;
  let x_2157 : vec3<f32> = ((vec3<f32>(x_2151.x, x_2151.y, x_2151.z) * x_2153) + vec3<f32>(x_2155.x, x_2155.y, x_2155.z));
  let x_2158 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2157.x, x_2157.y, x_2157.z, x_2158.w);
  let x_2160 : f32 = u_xlat63;
  let x_2163 : f32 = x_359.unity_LightData.z;
  u_xlat60 = (x_2160 * x_2163);
  let x_2165 : vec4<f32> = u_xlat1;
  let x_2168 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat61 = dot(vec3<f32>(x_2165.x, x_2165.y, x_2165.z), vec3<f32>(x_2168.x, x_2168.y, x_2168.z));
  let x_2171 : f32 = u_xlat61;
  u_xlat61 = clamp(x_2171, 0.0f, 1.0f);
  let x_2173 : f32 = u_xlat60;
  let x_2174 : f32 = u_xlat61;
  u_xlat60 = (x_2173 * x_2174);
  let x_2176 : f32 = u_xlat60;
  let x_2178 : vec4<f32> = u_xlat5;
  let x_2180 : vec3<f32> = (vec3<f32>(x_2176, x_2176, x_2176) * vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
  let x_2181 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2181.w);
  let x_2183 : vec3<f32> = u_xlat4;
  let x_2185 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2187 : vec3<f32> = (x_2183 + vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
  let x_2188 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2187.x, x_2187.y, x_2187.z, x_2188.w);
  let x_2190 : vec4<f32> = u_xlat7;
  let x_2192 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2190.x, x_2190.y, x_2190.z), vec3<f32>(x_2192.x, x_2192.y, x_2192.z));
  let x_2195 : f32 = u_xlat60;
  u_xlat60 = max(x_2195, 1.17549435e-37f);
  let x_2198 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_2198);
  let x_2200 : f32 = u_xlat60;
  let x_2202 : vec4<f32> = u_xlat7;
  let x_2204 : vec3<f32> = (vec3<f32>(x_2200, x_2200, x_2200) * vec3<f32>(x_2202.x, x_2202.y, x_2202.z));
  let x_2205 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2204.x, x_2204.y, x_2204.z, x_2205.w);
  let x_2207 : vec4<f32> = u_xlat1;
  let x_2209 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2207.x, x_2207.y, x_2207.z), vec3<f32>(x_2209.x, x_2209.y, x_2209.z));
  let x_2212 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2212, 0.0f, 1.0f);
  let x_2215 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2217 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec3<f32>(x_2215.x, x_2215.y, x_2215.z), vec3<f32>(x_2217.x, x_2217.y, x_2217.z));
  let x_2220 : f32 = u_xlat61;
  u_xlat61 = clamp(x_2220, 0.0f, 1.0f);
  let x_2222 : f32 = u_xlat60;
  let x_2223 : f32 = u_xlat60;
  u_xlat60 = (x_2222 * x_2223);
  let x_2225 : f32 = u_xlat60;
  let x_2227 : f32 = u_xlat8.x;
  u_xlat60 = ((x_2225 * x_2227) + 1.000010014f);
  let x_2231 : f32 = u_xlat61;
  let x_2232 : f32 = u_xlat61;
  u_xlat61 = (x_2231 * x_2232);
  let x_2234 : f32 = u_xlat60;
  let x_2235 : f32 = u_xlat60;
  u_xlat60 = (x_2234 * x_2235);
  let x_2237 : f32 = u_xlat61;
  u_xlat61 = max(x_2237, 0.100000001f);
  let x_2240 : f32 = u_xlat60;
  let x_2241 : f32 = u_xlat61;
  u_xlat60 = (x_2240 * x_2241);
  let x_2243 : f32 = u_xlat62;
  let x_2244 : f32 = u_xlat60;
  u_xlat60 = (x_2243 * x_2244);
  let x_2246 : f32 = u_xlat22;
  let x_2247 : f32 = u_xlat60;
  u_xlat60 = (x_2246 / x_2247);
  let x_2249 : vec4<f32> = u_xlat0;
  let x_2251 : f32 = u_xlat60;
  let x_2254 : vec3<f32> = u_xlat6;
  let x_2255 : vec3<f32> = ((vec3<f32>(x_2249.x, x_2249.y, x_2249.z) * vec3<f32>(x_2251, x_2251, x_2251)) + x_2254);
  let x_2256 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2255.x, x_2255.y, x_2255.z, x_2256.w);
  let x_2258 : vec4<f32> = u_xlat5;
  let x_2260 : vec4<f32> = u_xlat7;
  let x_2262 : vec3<f32> = (vec3<f32>(x_2258.x, x_2258.y, x_2258.z) * vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
  let x_2263 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
  let x_2266 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2268 : f32 = x_359.unity_LightData.y;
  u_xlat60 = min(x_2266, x_2268);
  let x_2272 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2272));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2284 : u32 = u_xlatu_loop_1;
    let x_2285 : u32 = u_xlatu60;
    if ((x_2284 < x_2285)) {
    } else {
      break;
    }
    let x_2288 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_2288 >> 2u);
    let x_2292 : u32 = u_xlatu_loop_1;
    u_xlati63 = bitcast<i32>((x_2292 & 3u));
    let x_2295 : u32 = u_xlatu2;
    let x_2298 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2295)];
    let x_2308 : i32 = u_xlati63;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2313 : vec4<u32> = indexable[x_2308];
    u_xlat2.x = dot(x_2298, bitcast<vec4<f32>>(x_2313));
    let x_2319 : f32 = u_xlat2.x;
    u_xlati2 = i32(x_2319);
    let x_2321 : vec3<f32> = vs_INTERP0;
    let x_2333 : i32 = u_xlati2;
    let x_2335 : vec4<f32> = x_2332.x_AdditionalLightsPosition[x_2333];
    let x_2338 : i32 = u_xlati2;
    let x_2340 : vec4<f32> = x_2332.x_AdditionalLightsPosition[x_2338];
    u_xlat28 = ((-(x_2321) * vec3<f32>(x_2335.w, x_2335.w, x_2335.w)) + vec3<f32>(x_2340.x, x_2340.y, x_2340.z));
    let x_2343 : vec3<f32> = u_xlat28;
    let x_2344 : vec3<f32> = u_xlat28;
    u_xlat63 = dot(x_2343, x_2344);
    let x_2346 : f32 = u_xlat63;
    u_xlat63 = max(x_2346, 6.10351562e-05f);
    let x_2349 : f32 = u_xlat63;
    u_xlat65 = inverseSqrt(x_2349);
    let x_2351 : f32 = u_xlat65;
    let x_2353 : vec3<f32> = u_xlat28;
    let x_2354 : vec3<f32> = (vec3<f32>(x_2351, x_2351, x_2351) * x_2353);
    let x_2355 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2354.x, x_2354.y, x_2354.z, x_2355.w);
    let x_2357 : f32 = u_xlat63;
    u_xlat66 = (1.0f / x_2357);
    let x_2359 : f32 = u_xlat63;
    let x_2360 : i32 = u_xlati2;
    let x_2362 : f32 = x_2332.x_AdditionalLightsAttenuation[x_2360].x;
    u_xlat63 = (x_2359 * x_2362);
    let x_2364 : f32 = u_xlat63;
    let x_2366 : f32 = u_xlat63;
    u_xlat63 = ((-(x_2364) * x_2366) + 1.0f);
    let x_2369 : f32 = u_xlat63;
    u_xlat63 = max(x_2369, 0.0f);
    let x_2371 : f32 = u_xlat63;
    let x_2372 : f32 = u_xlat63;
    u_xlat63 = (x_2371 * x_2372);
    let x_2374 : f32 = u_xlat63;
    let x_2375 : f32 = u_xlat66;
    u_xlat63 = (x_2374 * x_2375);
    let x_2377 : i32 = u_xlati2;
    let x_2379 : vec4<f32> = x_2332.x_AdditionalLightsSpotDir[x_2377];
    let x_2381 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_2379.x, x_2379.y, x_2379.z), vec3<f32>(x_2381.x, x_2381.y, x_2381.z));
    let x_2384 : f32 = u_xlat66;
    let x_2385 : i32 = u_xlati2;
    let x_2387 : f32 = x_2332.x_AdditionalLightsAttenuation[x_2385].z;
    let x_2389 : i32 = u_xlati2;
    let x_2391 : f32 = x_2332.x_AdditionalLightsAttenuation[x_2389].w;
    u_xlat66 = ((x_2384 * x_2387) + x_2391);
    let x_2393 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2393, 0.0f, 1.0f);
    let x_2395 : f32 = u_xlat66;
    let x_2396 : f32 = u_xlat66;
    u_xlat66 = (x_2395 * x_2396);
    let x_2398 : f32 = u_xlat63;
    let x_2399 : f32 = u_xlat66;
    u_xlat63 = (x_2398 * x_2399);
    let x_2401 : f32 = u_xlat64;
    let x_2403 : i32 = u_xlati2;
    let x_2405 : vec4<f32> = x_2332.x_AdditionalLightsColor[x_2403];
    let x_2407 : vec3<f32> = (vec3<f32>(x_2401, x_2401, x_2401) * vec3<f32>(x_2405.x, x_2405.y, x_2405.z));
    let x_2408 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2407.x, x_2407.y, x_2407.z, x_2408.w);
    let x_2410 : vec4<f32> = u_xlat1;
    let x_2412 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_2410.x, x_2410.y, x_2410.z), vec3<f32>(x_2412.x, x_2412.y, x_2412.z));
    let x_2417 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_2417, 0.0f, 1.0f);
    let x_2421 : f32 = u_xlat2.x;
    let x_2422 : f32 = u_xlat63;
    u_xlat2.x = (x_2421 * x_2422);
    let x_2425 : vec4<f32> = u_xlat2;
    let x_2427 : vec4<f32> = u_xlat10;
    let x_2429 : vec3<f32> = (vec3<f32>(x_2425.x, x_2425.x, x_2425.x) * vec3<f32>(x_2427.x, x_2427.y, x_2427.z));
    let x_2430 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2429.x, x_2429.y, x_2429.z, x_2430.w);
    let x_2432 : vec3<f32> = u_xlat28;
    let x_2433 : f32 = u_xlat65;
    let x_2436 : vec3<f32> = u_xlat4;
    u_xlat28 = ((x_2432 * vec3<f32>(x_2433, x_2433, x_2433)) + x_2436);
    let x_2438 : vec3<f32> = u_xlat28;
    let x_2439 : vec3<f32> = u_xlat28;
    u_xlat2.x = dot(x_2438, x_2439);
    let x_2443 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_2443, 1.17549435e-37f);
    let x_2447 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_2447);
    let x_2450 : vec4<f32> = u_xlat2;
    let x_2452 : vec3<f32> = u_xlat28;
    u_xlat28 = (vec3<f32>(x_2450.x, x_2450.x, x_2450.x) * x_2452);
    let x_2454 : vec4<f32> = u_xlat1;
    let x_2456 : vec3<f32> = u_xlat28;
    u_xlat2.x = dot(vec3<f32>(x_2454.x, x_2454.y, x_2454.z), x_2456);
    let x_2460 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_2460, 0.0f, 1.0f);
    let x_2463 : vec4<f32> = u_xlat9;
    let x_2465 : vec3<f32> = u_xlat28;
    u_xlat63 = dot(vec3<f32>(x_2463.x, x_2463.y, x_2463.z), x_2465);
    let x_2467 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2467, 0.0f, 1.0f);
    let x_2470 : f32 = u_xlat2.x;
    let x_2472 : f32 = u_xlat2.x;
    u_xlat2.x = (x_2470 * x_2472);
    let x_2476 : f32 = u_xlat2.x;
    let x_2478 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_2476 * x_2478) + 1.000010014f);
    let x_2482 : f32 = u_xlat63;
    let x_2483 : f32 = u_xlat63;
    u_xlat63 = (x_2482 * x_2483);
    let x_2486 : f32 = u_xlat2.x;
    let x_2488 : f32 = u_xlat2.x;
    u_xlat2.x = (x_2486 * x_2488);
    let x_2491 : f32 = u_xlat63;
    u_xlat63 = max(x_2491, 0.100000001f);
    let x_2494 : f32 = u_xlat2.x;
    let x_2495 : f32 = u_xlat63;
    u_xlat2.x = (x_2494 * x_2495);
    let x_2498 : f32 = u_xlat62;
    let x_2500 : f32 = u_xlat2.x;
    u_xlat2.x = (x_2498 * x_2500);
    let x_2503 : f32 = u_xlat22;
    let x_2505 : f32 = u_xlat2.x;
    u_xlat2.x = (x_2503 / x_2505);
    let x_2508 : vec4<f32> = u_xlat0;
    let x_2510 : vec4<f32> = u_xlat2;
    let x_2513 : vec3<f32> = u_xlat6;
    u_xlat28 = ((vec3<f32>(x_2508.x, x_2508.y, x_2508.z) * vec3<f32>(x_2510.x, x_2510.x, x_2510.x)) + x_2513);
    let x_2515 : vec3<f32> = u_xlat28;
    let x_2516 : vec4<f32> = u_xlat10;
    let x_2519 : vec4<f32> = u_xlat7;
    let x_2521 : vec3<f32> = ((x_2515 * vec3<f32>(x_2516.x, x_2516.y, x_2516.z)) + vec3<f32>(x_2519.x, x_2519.y, x_2519.z));
    let x_2522 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2521.x, x_2521.y, x_2521.z, x_2522.w);

    continuing {
      let x_2524 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2524 + bitcast<u32>(1i));
    }
  }
  let x_2526 : vec4<f32> = u_xlat3;
  let x_2528 : f32 = u_xlat42;
  let x_2531 : vec4<f32> = u_xlat5;
  let x_2533 : vec3<f32> = ((vec3<f32>(x_2526.x, x_2526.y, x_2526.z) * vec3<f32>(x_2528, x_2528, x_2528)) + vec3<f32>(x_2531.x, x_2531.y, x_2531.z));
  let x_2534 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2533.x, x_2533.y, x_2533.z, x_2534.w);
  let x_2538 : vec4<f32> = u_xlat7;
  let x_2540 : vec4<f32> = u_xlat0;
  let x_2542 : vec3<f32> = (vec3<f32>(x_2538.x, x_2538.y, x_2538.z) + vec3<f32>(x_2540.x, x_2540.y, x_2540.z));
  let x_2543 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2542.x, x_2542.y, x_2542.z, x_2543.w);
  let x_2548 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_2550 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_2548 & bitcast<u32>(x_2550));
  let x_2553 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2553);
  let x_2558 : f32 = u_xlat0.x;
  let x_2560 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2558 * x_2560);
  let x_2565 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2565, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2570 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2570.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

