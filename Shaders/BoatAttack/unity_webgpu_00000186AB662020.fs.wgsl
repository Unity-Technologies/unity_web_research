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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(5) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(6) var<uniform> x_190 : UnityPerMaterial;

@group(0) @binding(7) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_E9EC22CC : sampler;

@group(0) @binding(6) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_6EEDD32E : sampler;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_359 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_515 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2233 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2664 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2783 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb21 : bool;
  var u_xlat21 : f32;
  var u_xlat42 : f32;
  var x_146 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlatb63 : bool;
  var x_211 : f32;
  var x_220 : f32;
  var u_xlat63 : f32;
  var u_xlatb43 : vec2<bool>;
  var u_xlat43 : vec2<f32>;
  var u_xlat65 : f32;
  var u_xlat4 : vec3<f32>;
  var x_475 : f32;
  var x_488 : f32;
  var x_499 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu63 : u32;
  var u_xlati63 : i32;
  var u_xlat64 : f32;
  var u_xlat23 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat44 : f32;
  var u_xlatb66 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb68 : bool;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat68 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat27 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat70 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
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
  var u_xlatb24 : vec2<bool>;
  var u_xlatb45 : bool;
  var x_2185 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlat45 : f32;
  var x_2315 : f32;
  var x_2326 : vec3<f32>;
  var u_xlat69 : f32;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu2 : u32;
  var u_xlati66 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu48 : u32;
  var u_xlati69 : i32;
  var u_xlati48 : i32;
  var u_xlati70 : i32;
  var u_xlatb48 : bool;
  var u_xlatb53 : vec2<bool>;
  var u_xlat53 : vec2<f32>;
  var x_3083 : f32;
  var x_3096 : f32;
  var x_3148 : f32;
  var x_3160 : vec3<f32>;
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
  u_xlatb21 = (x_96 >= x_98);
  let x_101 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_101);
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
  let x_118 : f32 = u_xlat21;
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
  u_xlatb21 = (x_138 == 0.0f);
  let x_142 : f32 = u_xlat1.x;
  u_xlat42 = (x_142 + 1.00000001e-10f);
  let x_145 : bool = u_xlatb21;
  if (x_145) {
    let x_150 : f32 = u_xlat1.x;
    x_146 = x_150;
  } else {
    let x_152 : f32 = u_xlat42;
    x_146 = x_152;
  }
  let x_153 : f32 = x_146;
  u_xlat21 = x_153;
  let x_155 : f32 = u_xlat1.y;
  let x_158 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_155) + x_158);
  let x_164 : f32 = u_xlat0.x;
  u_xlat22.x = ((x_164 * 6.0f) + 1.00000001e-10f);
  let x_170 : f32 = u_xlat1.x;
  let x_172 : f32 = u_xlat22.x;
  u_xlat1.x = (x_170 / x_172);
  let x_176 : f32 = u_xlat1.x;
  let x_178 : f32 = u_xlat1.z;
  u_xlat1.x = (x_176 + x_178);
  let x_182 : f32 = u_xlat0.x;
  let x_183 : f32 = u_xlat42;
  u_xlat0.x = (x_182 / x_183);
  let x_187 : f32 = u_xlat0.w;
  let x_193 : f32 = x_190.x_Hue;
  let x_196 : f32 = u_xlat1.x;
  u_xlat42 = ((x_187 * x_193) + abs(x_196));
  let x_200 : f32 = u_xlat42;
  u_xlatb63 = (x_200 < 0.0f);
  let x_202 : f32 = u_xlat42;
  u_xlatb1 = (1.0f < x_202);
  let x_204 : f32 = u_xlat42;
  let x_207 : vec2<f32> = (vec2<f32>(x_204, x_204) + vec2<f32>(1.0f, -1.0f));
  let x_208 : vec3<f32> = u_xlat22;
  u_xlat22 = vec3<f32>(x_207.x, x_207.y, x_208.z);
  let x_210 : bool = u_xlatb1;
  if (x_210) {
    let x_215 : f32 = u_xlat22.y;
    x_211 = x_215;
  } else {
    let x_217 : f32 = u_xlat42;
    x_211 = x_217;
  }
  let x_218 : f32 = x_211;
  u_xlat42 = x_218;
  let x_219 : bool = u_xlatb63;
  if (x_219) {
    let x_224 : f32 = u_xlat22.x;
    x_220 = x_224;
  } else {
    let x_226 : f32 = u_xlat42;
    x_220 = x_226;
  }
  let x_227 : f32 = x_220;
  u_xlat42 = x_227;
  let x_228 : f32 = u_xlat42;
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
  let x_279 : f32 = u_xlat21;
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
  u_xlat63 = dot(vec2<f32>(x_320.x, x_320.y), vec2<f32>(x_322.x, x_322.y));
  let x_325 : f32 = u_xlat63;
  u_xlat63 = min(x_325, 1.0f);
  let x_327 : f32 = u_xlat63;
  u_xlat63 = (-(x_327) + 1.0f);
  let x_330 : f32 = u_xlat63;
  u_xlat63 = sqrt(x_330);
  let x_332 : f32 = u_xlat63;
  u_xlat63 = max(x_332, 1.00000002e-16f);
  let x_340 : vec4<f32> = vs_INTERP3;
  let x_343 : f32 = x_44.x_GlobalMipBias.x;
  let x_344 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_340.x, x_340.y), x_343);
  let x_345 : vec3<f32> = vec3<f32>(x_344.x, x_344.w, x_344.y);
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_353 : f32 = vs_INTERP2.w;
  u_xlatb43.x = (0.0f < x_353);
  let x_361 : f32 = x_359.unity_WorldTransformParams.w;
  u_xlatb43.y = (x_361 >= 0.0f);
  let x_367 : bool = u_xlatb43.x;
  u_xlat43.x = select(-1.0f, 1.0f, x_367);
  let x_371 : bool = u_xlatb43.y;
  u_xlat43.y = select(-1.0f, 1.0f, x_371);
  let x_375 : f32 = u_xlat43.y;
  let x_377 : f32 = u_xlat43.x;
  u_xlat43.x = (x_375 * x_377);
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
  let x_400 : vec2<f32> = u_xlat43;
  let x_402 : vec4<f32> = u_xlat3;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.x, x_400.x) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat1;
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat22 = (vec3<f32>(x_407.y, x_407.y, x_407.y) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat1;
  let x_414 : vec4<f32> = vs_INTERP2;
  let x_417 : vec3<f32> = u_xlat22;
  let x_418 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.x, x_412.x) * vec3<f32>(x_414.x, x_414.y, x_414.z)) + x_417);
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : f32 = u_xlat63;
  let x_423 : vec3<f32> = vs_INTERP1;
  let x_425 : vec4<f32> = u_xlat1;
  let x_427 : vec3<f32> = ((vec3<f32>(x_421, x_421, x_421) * x_423) + vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat1;
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat63 = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_435);
  let x_437 : f32 = u_xlat63;
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : vec3<f32> = (vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_446 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb63 = (x_446 == 0.0f);
  let x_449 : vec3<f32> = vs_INTERP0;
  let x_454 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_455 : vec3<f32> = (-(x_449) + x_454);
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_459 : vec4<f32> = u_xlat3;
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat65 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat65;
  let x_468 : vec4<f32> = u_xlat3;
  let x_470 : vec3<f32> = (vec3<f32>(x_466, x_466, x_466) * vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_474 : bool = u_xlatb63;
  if (x_474) {
    let x_479 : f32 = u_xlat3.x;
    x_475 = x_479;
  } else {
    let x_484 : f32 = x_44.unity_MatrixV[0i].z;
    x_475 = x_484;
  }
  let x_485 : f32 = x_475;
  u_xlat4.x = x_485;
  let x_487 : bool = u_xlatb63;
  if (x_487) {
    let x_492 : f32 = u_xlat3.y;
    x_488 = x_492;
  } else {
    let x_495 : f32 = x_44.unity_MatrixV[1i].z;
    x_488 = x_495;
  }
  let x_496 : f32 = x_488;
  u_xlat4.y = x_496;
  let x_498 : bool = u_xlatb63;
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
  u_xlat63 = dot(x_622, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_627 : f32 = u_xlat63;
  u_xlat63 = (-(x_627) + 4.0f);
  let x_632 : f32 = u_xlat63;
  u_xlatu63 = u32(x_632);
  let x_636 : u32 = u_xlatu63;
  u_xlati63 = (bitcast<i32>(x_636) << bitcast<u32>(2i));
  let x_639 : vec3<f32> = vs_INTERP0;
  let x_641 : i32 = u_xlati63;
  let x_644 : i32 = u_xlati63;
  let x_648 : vec4<f32> = x_515.x_MainLightWorldToShadow[((x_641 + 1i) / 4i)][((x_644 + 1i) % 4i)];
  let x_650 : vec3<f32> = (vec3<f32>(x_639.y, x_639.y, x_639.y) * vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : i32 = u_xlati63;
  let x_655 : i32 = u_xlati63;
  let x_658 : vec4<f32> = x_515.x_MainLightWorldToShadow[(x_653 / 4i)][(x_655 % 4i)];
  let x_660 : vec3<f32> = vs_INTERP0;
  let x_663 : vec4<f32> = u_xlat3;
  let x_665 : vec3<f32> = ((vec3<f32>(x_658.x, x_658.y, x_658.z) * vec3<f32>(x_660.x, x_660.x, x_660.x)) + vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_666 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_668 : i32 = u_xlati63;
  let x_671 : i32 = u_xlati63;
  let x_675 : vec4<f32> = x_515.x_MainLightWorldToShadow[((x_668 + 2i) / 4i)][((x_671 + 2i) % 4i)];
  let x_677 : vec3<f32> = vs_INTERP0;
  let x_680 : vec4<f32> = u_xlat3;
  let x_682 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(x_677.z, x_677.z, x_677.z)) + vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat3;
  let x_687 : i32 = u_xlati63;
  let x_690 : i32 = u_xlati63;
  let x_694 : vec4<f32> = x_515.x_MainLightWorldToShadow[((x_687 + 3i) / 4i)][((x_690 + 3i) % 4i)];
  let x_696 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) + vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  u_xlat1.w = 1.0f;
  let x_702 : vec4<f32> = x_359.unity_SHAr;
  let x_703 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(x_702, x_703);
  let x_708 : vec4<f32> = x_359.unity_SHAg;
  let x_709 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(x_708, x_709);
  let x_714 : vec4<f32> = x_359.unity_SHAb;
  let x_715 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_714, x_715);
  let x_718 : vec4<f32> = u_xlat1;
  let x_720 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_718.y, x_718.z, x_718.z, x_718.x) * vec4<f32>(x_720.x, x_720.y, x_720.z, x_720.z));
  let x_725 : vec4<f32> = x_359.unity_SHBr;
  let x_726 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_725, x_726);
  let x_731 : vec4<f32> = x_359.unity_SHBg;
  let x_732 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_731, x_732);
  let x_737 : vec4<f32> = x_359.unity_SHBb;
  let x_738 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_737, x_738);
  let x_742 : f32 = u_xlat1.y;
  let x_744 : f32 = u_xlat1.y;
  u_xlat63 = (x_742 * x_744);
  let x_747 : f32 = u_xlat1.x;
  let x_749 : f32 = u_xlat1.x;
  let x_751 : f32 = u_xlat63;
  u_xlat63 = ((x_747 * x_749) + -(x_751));
  let x_756 : vec4<f32> = x_359.unity_SHC;
  let x_758 : f32 = u_xlat63;
  let x_761 : vec3<f32> = u_xlat7;
  let x_762 : vec3<f32> = ((vec3<f32>(x_756.x, x_756.y, x_756.z) * vec3<f32>(x_758, x_758, x_758)) + x_761);
  let x_763 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : vec4<f32> = u_xlat5;
  let x_767 : vec4<f32> = u_xlat6;
  let x_769 : vec3<f32> = (vec3<f32>(x_765.x, x_765.y, x_765.z) + vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat5;
  let x_774 : vec3<f32> = max(vec3<f32>(x_772.x, x_772.y, x_772.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_775 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_779 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_780 : vec2<f32> = vec2<f32>(x_779.x, x_779.y);
  let x_784 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_780.x, x_780.y));
  let x_785 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_784.x, x_784.y, x_785.z, x_785.w);
  let x_787 : vec4<f32> = u_xlat6;
  let x_789 : vec4<f32> = hlslcc_FragCoord;
  let x_791 : vec2<f32> = (vec2<f32>(x_787.x, x_787.y) * vec2<f32>(x_789.x, x_789.y));
  let x_792 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_791.x, x_791.y, x_792.z, x_792.w);
  let x_795 : f32 = u_xlat6.y;
  let x_798 : f32 = x_44.x_ScaleBiasRt.x;
  let x_801 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat63 = ((x_795 * x_798) + x_801);
  let x_803 : f32 = u_xlat63;
  u_xlat6.z = (-(x_803) + 1.0f);
  let x_807 : vec4<f32> = u_xlat2;
  let x_808 : vec2<f32> = vec2<f32>(x_807.x, x_807.y);
  let x_809 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_808.x, x_808.y, x_809.z, x_809.w);
  let x_811 : vec4<f32> = u_xlat2;
  let x_815 : vec2<f32> = clamp(vec2<f32>(x_811.x, x_811.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_816 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_815.x, x_815.y, x_816.z, x_816.w);
  let x_819 : f32 = u_xlat2.x;
  u_xlat63 = ((-(x_819) * 0.959999979f) + 0.959999979f);
  let x_825 : f32 = u_xlat63;
  u_xlat64 = (-(x_825) + 1.0f);
  let x_828 : f32 = u_xlat63;
  let x_830 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_828, x_828, x_828) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat0;
  let x_837 : vec3<f32> = (vec3<f32>(x_833.x, x_833.y, x_833.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_838 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat2;
  let x_842 : vec4<f32> = u_xlat0;
  let x_847 : vec3<f32> = ((vec3<f32>(x_840.x, x_840.x, x_840.x) * vec3<f32>(x_842.x, x_842.y, x_842.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_848 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_851 : f32 = u_xlat2.y;
  u_xlat63 = (-(x_851) + 1.0f);
  let x_854 : f32 = u_xlat63;
  let x_855 : f32 = u_xlat63;
  u_xlat2.x = (x_854 * x_855);
  let x_859 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_859, 0.0078125f);
  let x_864 : f32 = u_xlat2.x;
  let x_866 : f32 = u_xlat2.x;
  u_xlat65 = (x_864 * x_866);
  let x_868 : f32 = u_xlat64;
  let x_870 : f32 = u_xlat2.y;
  u_xlat64 = (x_868 + x_870);
  let x_872 : f32 = u_xlat64;
  u_xlat64 = min(x_872, 1.0f);
  let x_876 : f32 = u_xlat2.x;
  u_xlat23 = ((x_876 * 4.0f) + 2.0f);
  let x_885 : vec4<f32> = u_xlat6;
  let x_888 : f32 = x_44.x_GlobalMipBias.x;
  let x_889 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_885.x, x_885.z), x_888);
  u_xlat66 = x_889.x;
  let x_892 : f32 = u_xlat66;
  u_xlat67 = (x_892 + -1.0f);
  let x_895 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_896 : f32 = u_xlat67;
  u_xlat67 = ((x_895 * x_896) + 1.0f);
  let x_901 : f32 = u_xlat2.z;
  let x_902 : f32 = u_xlat66;
  u_xlat44 = min(x_901, x_902);
  let x_906 : f32 = x_515.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_906);
  let x_908 : bool = u_xlatb66;
  if (x_908) {
    let x_912 : f32 = x_515.x_MainLightShadowParams.y;
    u_xlatb66 = (x_912 == 1.0f);
    let x_914 : bool = u_xlatb66;
    if (x_914) {
      let x_917 : vec4<f32> = u_xlat3;
      let x_921 : vec4<f32> = x_515.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_917.x, x_917.y, x_917.x, x_917.y) + x_921);
      let x_924 : vec4<f32> = u_xlat6;
      let x_925 : vec2<f32> = vec2<f32>(x_924.x, x_924.y);
      let x_927 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_925.x, x_925.y, x_927);
      let x_940 : vec3<f32> = txVec0;
      let x_942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_940.xy, x_940.z);
      u_xlat8.x = x_942;
      let x_945 : vec4<f32> = u_xlat6;
      let x_946 : vec2<f32> = vec2<f32>(x_945.z, x_945.w);
      let x_948 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_946.x, x_946.y, x_948);
      let x_955 : vec3<f32> = txVec1;
      let x_957 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_955.xy, x_955.z);
      u_xlat8.y = x_957;
      let x_959 : vec4<f32> = u_xlat3;
      let x_963 : vec4<f32> = x_515.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_959.x, x_959.y, x_959.x, x_959.y) + x_963);
      let x_966 : vec4<f32> = u_xlat6;
      let x_967 : vec2<f32> = vec2<f32>(x_966.x, x_966.y);
      let x_969 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_967.x, x_967.y, x_969);
      let x_976 : vec3<f32> = txVec2;
      let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_976.xy, x_976.z);
      u_xlat8.z = x_978;
      let x_981 : vec4<f32> = u_xlat6;
      let x_982 : vec2<f32> = vec2<f32>(x_981.z, x_981.w);
      let x_984 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_982.x, x_982.y, x_984);
      let x_991 : vec3<f32> = txVec3;
      let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_991.xy, x_991.z);
      u_xlat8.w = x_993;
      let x_995 : vec4<f32> = u_xlat8;
      u_xlat66 = dot(x_995, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1002 : f32 = x_515.x_MainLightShadowParams.y;
      u_xlatb68 = (x_1002 == 2.0f);
      let x_1004 : bool = u_xlatb68;
      if (x_1004) {
        let x_1007 : vec4<f32> = u_xlat3;
        let x_1010 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1015 : vec2<f32> = ((vec2<f32>(x_1007.x, x_1007.y) * vec2<f32>(x_1010.z, x_1010.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1016 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1016.w);
        let x_1018 : vec4<f32> = u_xlat6;
        let x_1020 : vec2<f32> = floor(vec2<f32>(x_1018.x, x_1018.y));
        let x_1021 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1020.x, x_1020.y, x_1021.z, x_1021.w);
        let x_1024 : vec4<f32> = u_xlat3;
        let x_1027 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1030 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1024.x, x_1024.y) * vec2<f32>(x_1027.z, x_1027.w)) + -(vec2<f32>(x_1030.x, x_1030.y)));
        let x_1034 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1034.x, x_1034.x, x_1034.y, x_1034.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1039 : vec4<f32> = u_xlat8;
        let x_1041 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1039.x, x_1039.x, x_1039.z, x_1039.z) * vec4<f32>(x_1041.x, x_1041.x, x_1041.z, x_1041.z));
        let x_1044 : vec4<f32> = u_xlat9;
        let x_1048 : vec2<f32> = (vec2<f32>(x_1044.y, x_1044.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1049 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1048.x, x_1049.y, x_1048.y, x_1049.w);
        let x_1051 : vec4<f32> = u_xlat9;
        let x_1054 : vec2<f32> = u_xlat48;
        let x_1056 : vec2<f32> = ((vec2<f32>(x_1051.x, x_1051.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1054));
        let x_1057 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1060 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_1060) + vec2<f32>(1.0f, 1.0f));
        let x_1064 : vec2<f32> = u_xlat48;
        let x_1066 : vec2<f32> = min(x_1064, vec2<f32>(0.0f, 0.0f));
        let x_1067 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
        let x_1069 : vec4<f32> = u_xlat10;
        let x_1072 : vec4<f32> = u_xlat10;
        let x_1075 : vec2<f32> = u_xlat51;
        let x_1076 : vec2<f32> = ((-(vec2<f32>(x_1069.x, x_1069.y)) * vec2<f32>(x_1072.x, x_1072.y)) + x_1075);
        let x_1077 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1076.x, x_1076.y, x_1077.z, x_1077.w);
        let x_1079 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1079, vec2<f32>(0.0f, 0.0f));
        let x_1081 : vec2<f32> = u_xlat48;
        let x_1083 : vec2<f32> = u_xlat48;
        let x_1085 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1081) * x_1083) + vec2<f32>(x_1085.y, x_1085.w));
        let x_1088 : vec4<f32> = u_xlat10;
        let x_1090 : vec2<f32> = (vec2<f32>(x_1088.x, x_1088.y) + vec2<f32>(1.0f, 1.0f));
        let x_1091 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
        let x_1093 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1093 + vec2<f32>(1.0f, 1.0f));
        let x_1096 : vec4<f32> = u_xlat9;
        let x_1100 : vec2<f32> = (vec2<f32>(x_1096.x, x_1096.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1101 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
        let x_1103 : vec2<f32> = u_xlat51;
        let x_1104 : vec2<f32> = (x_1103 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1105 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1104.x, x_1104.y, x_1105.z, x_1105.w);
        let x_1107 : vec4<f32> = u_xlat10;
        let x_1109 : vec2<f32> = (vec2<f32>(x_1107.x, x_1107.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1110 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1109.x, x_1109.y, x_1110.z, x_1110.w);
        let x_1113 : vec2<f32> = u_xlat48;
        let x_1114 : vec2<f32> = (x_1113 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1115 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1117.y, x_1117.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1121 : f32 = u_xlat10.x;
        u_xlat11.z = x_1121;
        let x_1124 : f32 = u_xlat48.x;
        u_xlat11.w = x_1124;
        let x_1127 : f32 = u_xlat12.x;
        u_xlat9.z = x_1127;
        let x_1130 : f32 = u_xlat8.x;
        u_xlat9.w = x_1130;
        let x_1133 : vec4<f32> = u_xlat9;
        let x_1135 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1133.z, x_1133.w, x_1133.x, x_1133.z) + vec4<f32>(x_1135.z, x_1135.w, x_1135.x, x_1135.z));
        let x_1139 : f32 = u_xlat11.y;
        u_xlat10.z = x_1139;
        let x_1142 : f32 = u_xlat48.y;
        u_xlat10.w = x_1142;
        let x_1145 : f32 = u_xlat9.y;
        u_xlat12.z = x_1145;
        let x_1148 : f32 = u_xlat8.z;
        u_xlat12.w = x_1148;
        let x_1150 : vec4<f32> = u_xlat10;
        let x_1152 : vec4<f32> = u_xlat12;
        let x_1154 : vec3<f32> = (vec3<f32>(x_1150.z, x_1150.y, x_1150.w) + vec3<f32>(x_1152.z, x_1152.y, x_1152.w));
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
        let x_1157 : vec4<f32> = u_xlat9;
        let x_1159 : vec4<f32> = u_xlat13;
        let x_1161 : vec3<f32> = (vec3<f32>(x_1157.x, x_1157.z, x_1157.w) / vec3<f32>(x_1159.z, x_1159.w, x_1159.y));
        let x_1162 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
        let x_1164 : vec4<f32> = u_xlat9;
        let x_1170 : vec3<f32> = (vec3<f32>(x_1164.x, x_1164.y, x_1164.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1171 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1171.w);
        let x_1173 : vec4<f32> = u_xlat12;
        let x_1175 : vec4<f32> = u_xlat8;
        let x_1177 : vec3<f32> = (vec3<f32>(x_1173.z, x_1173.y, x_1173.w) / vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
        let x_1178 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat10;
        let x_1182 : vec3<f32> = (vec3<f32>(x_1180.x, x_1180.y, x_1180.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1183 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
        let x_1185 : vec4<f32> = u_xlat9;
        let x_1188 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1190 : vec3<f32> = (vec3<f32>(x_1185.y, x_1185.x, x_1185.z) * vec3<f32>(x_1188.x, x_1188.x, x_1188.x));
        let x_1191 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
        let x_1193 : vec4<f32> = u_xlat10;
        let x_1196 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1198 : vec3<f32> = (vec3<f32>(x_1193.x, x_1193.y, x_1193.z) * vec3<f32>(x_1196.y, x_1196.y, x_1196.y));
        let x_1199 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
        let x_1202 : f32 = u_xlat10.x;
        u_xlat9.w = x_1202;
        let x_1204 : vec4<f32> = u_xlat6;
        let x_1207 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1204.x, x_1204.y, x_1204.x, x_1204.y) * vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y)) + vec4<f32>(x_1210.y, x_1210.w, x_1210.x, x_1210.w));
        let x_1213 : vec4<f32> = u_xlat6;
        let x_1216 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1219 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1213.x, x_1213.y) * vec2<f32>(x_1216.x, x_1216.y)) + vec2<f32>(x_1219.z, x_1219.w));
        let x_1223 : f32 = u_xlat9.y;
        u_xlat10.w = x_1223;
        let x_1225 : vec4<f32> = u_xlat10;
        let x_1226 : vec2<f32> = vec2<f32>(x_1225.y, x_1225.z);
        let x_1227 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1227.x, x_1226.x, x_1227.z, x_1226.y);
        let x_1229 : vec4<f32> = u_xlat6;
        let x_1232 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1235 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y) * vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y)) + vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1235.y));
        let x_1238 : vec4<f32> = u_xlat6;
        let x_1241 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1244 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.y) * vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y)) + vec4<f32>(x_1244.w, x_1244.y, x_1244.w, x_1244.z));
        let x_1247 : vec4<f32> = u_xlat6;
        let x_1250 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1253 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y) * vec4<f32>(x_1250.x, x_1250.y, x_1250.x, x_1250.y)) + vec4<f32>(x_1253.x, x_1253.w, x_1253.z, x_1253.w));
        let x_1257 : vec4<f32> = u_xlat8;
        let x_1259 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1257.x, x_1257.x, x_1257.x, x_1257.y) * vec4<f32>(x_1259.z, x_1259.w, x_1259.y, x_1259.z));
        let x_1263 : vec4<f32> = u_xlat8;
        let x_1265 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1263.y, x_1263.y, x_1263.z, x_1263.z) * x_1265);
        let x_1269 : f32 = u_xlat8.z;
        let x_1271 : f32 = u_xlat13.y;
        u_xlat68 = (x_1269 * x_1271);
        let x_1274 : vec4<f32> = u_xlat11;
        let x_1275 : vec2<f32> = vec2<f32>(x_1274.x, x_1274.y);
        let x_1277 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
        let x_1284 : vec3<f32> = txVec4;
        let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1284.xy, x_1284.z);
        u_xlat6.x = x_1286;
        let x_1289 : vec4<f32> = u_xlat11;
        let x_1290 : vec2<f32> = vec2<f32>(x_1289.z, x_1289.w);
        let x_1292 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1290.x, x_1290.y, x_1292);
        let x_1300 : vec3<f32> = txVec5;
        let x_1302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1300.xy, x_1300.z);
        u_xlat27 = x_1302;
        let x_1303 : f32 = u_xlat27;
        let x_1305 : f32 = u_xlat14.y;
        u_xlat27 = (x_1303 * x_1305);
        let x_1308 : f32 = u_xlat14.x;
        let x_1310 : f32 = u_xlat6.x;
        let x_1312 : f32 = u_xlat27;
        u_xlat6.x = ((x_1308 * x_1310) + x_1312);
        let x_1316 : vec2<f32> = u_xlat48;
        let x_1318 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1316.x, x_1316.y, x_1318);
        let x_1325 : vec3<f32> = txVec6;
        let x_1327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1325.xy, x_1325.z);
        u_xlat27 = x_1327;
        let x_1329 : f32 = u_xlat14.z;
        let x_1330 : f32 = u_xlat27;
        let x_1333 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1329 * x_1330) + x_1333);
        let x_1337 : vec4<f32> = u_xlat10;
        let x_1338 : vec2<f32> = vec2<f32>(x_1337.x, x_1337.y);
        let x_1340 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1338.x, x_1338.y, x_1340);
        let x_1347 : vec3<f32> = txVec7;
        let x_1349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1347.xy, x_1347.z);
        u_xlat27 = x_1349;
        let x_1351 : f32 = u_xlat14.w;
        let x_1352 : f32 = u_xlat27;
        let x_1355 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1351 * x_1352) + x_1355);
        let x_1359 : vec4<f32> = u_xlat12;
        let x_1360 : vec2<f32> = vec2<f32>(x_1359.x, x_1359.y);
        let x_1362 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1360.x, x_1360.y, x_1362);
        let x_1369 : vec3<f32> = txVec8;
        let x_1371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1369.xy, x_1369.z);
        u_xlat27 = x_1371;
        let x_1373 : f32 = u_xlat15.x;
        let x_1374 : f32 = u_xlat27;
        let x_1377 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1373 * x_1374) + x_1377);
        let x_1381 : vec4<f32> = u_xlat12;
        let x_1382 : vec2<f32> = vec2<f32>(x_1381.z, x_1381.w);
        let x_1384 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec9;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1391.xy, x_1391.z);
        u_xlat27 = x_1393;
        let x_1395 : f32 = u_xlat15.y;
        let x_1396 : f32 = u_xlat27;
        let x_1399 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1395 * x_1396) + x_1399);
        let x_1403 : vec4<f32> = u_xlat10;
        let x_1404 : vec2<f32> = vec2<f32>(x_1403.z, x_1403.w);
        let x_1406 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec10;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1413.xy, x_1413.z);
        u_xlat27 = x_1415;
        let x_1417 : f32 = u_xlat15.z;
        let x_1418 : f32 = u_xlat27;
        let x_1421 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1417 * x_1418) + x_1421);
        let x_1425 : vec4<f32> = u_xlat9;
        let x_1426 : vec2<f32> = vec2<f32>(x_1425.x, x_1425.y);
        let x_1428 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1426.x, x_1426.y, x_1428);
        let x_1435 : vec3<f32> = txVec11;
        let x_1437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1435.xy, x_1435.z);
        u_xlat27 = x_1437;
        let x_1439 : f32 = u_xlat15.w;
        let x_1440 : f32 = u_xlat27;
        let x_1443 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1439 * x_1440) + x_1443);
        let x_1447 : vec4<f32> = u_xlat9;
        let x_1448 : vec2<f32> = vec2<f32>(x_1447.z, x_1447.w);
        let x_1450 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1448.x, x_1448.y, x_1450);
        let x_1457 : vec3<f32> = txVec12;
        let x_1459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1457.xy, x_1457.z);
        u_xlat27 = x_1459;
        let x_1460 : f32 = u_xlat68;
        let x_1461 : f32 = u_xlat27;
        let x_1464 : f32 = u_xlat6.x;
        u_xlat66 = ((x_1460 * x_1461) + x_1464);
      } else {
        let x_1467 : vec4<f32> = u_xlat3;
        let x_1470 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1473 : vec2<f32> = ((vec2<f32>(x_1467.x, x_1467.y) * vec2<f32>(x_1470.z, x_1470.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1474 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1473.x, x_1473.y, x_1474.z, x_1474.w);
        let x_1476 : vec4<f32> = u_xlat6;
        let x_1478 : vec2<f32> = floor(vec2<f32>(x_1476.x, x_1476.y));
        let x_1479 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1478.x, x_1478.y, x_1479.z, x_1479.w);
        let x_1481 : vec4<f32> = u_xlat3;
        let x_1484 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1487 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1481.x, x_1481.y) * vec2<f32>(x_1484.z, x_1484.w)) + -(vec2<f32>(x_1487.x, x_1487.y)));
        let x_1491 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1491.x, x_1491.x, x_1491.y, x_1491.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1494 : vec4<f32> = u_xlat8;
        let x_1496 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1494.x, x_1494.x, x_1494.z, x_1494.z) * vec4<f32>(x_1496.x, x_1496.x, x_1496.z, x_1496.z));
        let x_1499 : vec4<f32> = u_xlat9;
        let x_1503 : vec2<f32> = (vec2<f32>(x_1499.y, x_1499.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1504 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1504.x, x_1503.x, x_1504.z, x_1503.y);
        let x_1506 : vec4<f32> = u_xlat9;
        let x_1509 : vec2<f32> = u_xlat48;
        let x_1511 : vec2<f32> = ((vec2<f32>(x_1506.x, x_1506.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1509));
        let x_1512 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1511.x, x_1512.y, x_1511.y, x_1512.w);
        let x_1514 : vec2<f32> = u_xlat48;
        let x_1516 : vec2<f32> = (-(x_1514) + vec2<f32>(1.0f, 1.0f));
        let x_1517 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1516.x, x_1516.y, x_1517.z, x_1517.w);
        let x_1519 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1519, vec2<f32>(0.0f, 0.0f));
        let x_1521 : vec2<f32> = u_xlat51;
        let x_1523 : vec2<f32> = u_xlat51;
        let x_1525 : vec4<f32> = u_xlat9;
        let x_1527 : vec2<f32> = ((-(x_1521) * x_1523) + vec2<f32>(x_1525.x, x_1525.y));
        let x_1528 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1527.x, x_1527.y, x_1528.z, x_1528.w);
        let x_1530 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1530, vec2<f32>(0.0f, 0.0f));
        let x_1533 : vec2<f32> = u_xlat51;
        let x_1535 : vec2<f32> = u_xlat51;
        let x_1537 : vec4<f32> = u_xlat8;
        let x_1539 : vec2<f32> = ((-(x_1533) * x_1535) + vec2<f32>(x_1537.y, x_1537.w));
        let x_1540 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1539.x, x_1540.y, x_1539.y);
        let x_1542 : vec4<f32> = u_xlat9;
        let x_1544 : vec2<f32> = (vec2<f32>(x_1542.x, x_1542.y) + vec2<f32>(2.0f, 2.0f));
        let x_1545 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1544.x, x_1544.y, x_1545.z, x_1545.w);
        let x_1547 : vec3<f32> = u_xlat29;
        let x_1549 : vec2<f32> = (vec2<f32>(x_1547.x, x_1547.z) + vec2<f32>(2.0f, 2.0f));
        let x_1550 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1550.x, x_1549.x, x_1550.z, x_1549.y);
        let x_1553 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1553 * 0.081632003f);
        let x_1557 : vec4<f32> = u_xlat8;
        let x_1560 : vec3<f32> = (vec3<f32>(x_1557.z, x_1557.x, x_1557.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1561 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1560.x, x_1560.y, x_1560.z, x_1561.w);
        let x_1563 : vec4<f32> = u_xlat9;
        let x_1566 : vec2<f32> = (vec2<f32>(x_1563.x, x_1563.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1567 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1566.x, x_1566.y, x_1567.z, x_1567.w);
        let x_1570 : f32 = u_xlat12.y;
        u_xlat11.x = x_1570;
        let x_1572 : vec2<f32> = u_xlat48;
        let x_1579 : vec2<f32> = ((vec2<f32>(x_1572.x, x_1572.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1580 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1580.x, x_1579.x, x_1580.z, x_1579.y);
        let x_1582 : vec2<f32> = u_xlat48;
        let x_1586 : vec2<f32> = ((vec2<f32>(x_1582.x, x_1582.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1587 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1586.x, x_1587.y, x_1586.y, x_1587.w);
        let x_1590 : f32 = u_xlat8.x;
        u_xlat9.y = x_1590;
        let x_1593 : f32 = u_xlat10.y;
        u_xlat9.w = x_1593;
        let x_1595 : vec4<f32> = u_xlat9;
        let x_1596 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1595 + x_1596);
        let x_1598 : vec2<f32> = u_xlat48;
        let x_1601 : vec2<f32> = ((vec2<f32>(x_1598.y, x_1598.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1602 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1602.x, x_1601.x, x_1602.z, x_1601.y);
        let x_1604 : vec2<f32> = u_xlat48;
        let x_1607 : vec2<f32> = ((vec2<f32>(x_1604.y, x_1604.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1608 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1607.x, x_1608.y, x_1607.y, x_1608.w);
        let x_1611 : f32 = u_xlat8.y;
        u_xlat10.y = x_1611;
        let x_1613 : vec4<f32> = u_xlat10;
        let x_1614 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1613 + x_1614);
        let x_1616 : vec4<f32> = u_xlat9;
        let x_1617 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1616 / x_1617);
        let x_1619 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1619 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1625 : vec4<f32> = u_xlat10;
        let x_1626 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1625 / x_1626);
        let x_1628 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1628 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1630 : vec4<f32> = u_xlat9;
        let x_1633 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1630.w, x_1630.x, x_1630.y, x_1630.z) * vec4<f32>(x_1633.x, x_1633.x, x_1633.x, x_1633.x));
        let x_1636 : vec4<f32> = u_xlat10;
        let x_1639 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1636.x, x_1636.w, x_1636.y, x_1636.z) * vec4<f32>(x_1639.y, x_1639.y, x_1639.y, x_1639.y));
        let x_1642 : vec4<f32> = u_xlat9;
        let x_1643 : vec3<f32> = vec3<f32>(x_1642.y, x_1642.z, x_1642.w);
        let x_1644 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1643.x, x_1644.y, x_1643.y, x_1643.z);
        let x_1647 : f32 = u_xlat10.x;
        u_xlat12.y = x_1647;
        let x_1649 : vec4<f32> = u_xlat6;
        let x_1652 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1655 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1649.x, x_1649.y, x_1649.x, x_1649.y) * vec4<f32>(x_1652.x, x_1652.y, x_1652.x, x_1652.y)) + vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1655.y));
        let x_1658 : vec4<f32> = u_xlat6;
        let x_1661 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1664 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1658.x, x_1658.y) * vec2<f32>(x_1661.x, x_1661.y)) + vec2<f32>(x_1664.w, x_1664.y));
        let x_1668 : f32 = u_xlat12.y;
        u_xlat9.y = x_1668;
        let x_1671 : f32 = u_xlat10.z;
        u_xlat12.y = x_1671;
        let x_1673 : vec4<f32> = u_xlat6;
        let x_1676 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1679 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1673.x, x_1673.y, x_1673.x, x_1673.y) * vec4<f32>(x_1676.x, x_1676.y, x_1676.x, x_1676.y)) + vec4<f32>(x_1679.x, x_1679.y, x_1679.z, x_1679.y));
        let x_1682 : vec4<f32> = u_xlat6;
        let x_1685 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1688 : vec4<f32> = u_xlat12;
        let x_1690 : vec2<f32> = ((vec2<f32>(x_1682.x, x_1682.y) * vec2<f32>(x_1685.x, x_1685.y)) + vec2<f32>(x_1688.w, x_1688.y));
        let x_1691 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1690.x, x_1690.y, x_1691.z, x_1691.w);
        let x_1694 : f32 = u_xlat12.y;
        u_xlat9.z = x_1694;
        let x_1697 : vec4<f32> = u_xlat6;
        let x_1700 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1703 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1697.x, x_1697.y, x_1697.x, x_1697.y) * vec4<f32>(x_1700.x, x_1700.y, x_1700.x, x_1700.y)) + vec4<f32>(x_1703.x, x_1703.y, x_1703.x, x_1703.z));
        let x_1707 : f32 = u_xlat10.w;
        u_xlat12.y = x_1707;
        let x_1710 : vec4<f32> = u_xlat6;
        let x_1713 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1716 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1710.x, x_1710.y, x_1710.x, x_1710.y) * vec4<f32>(x_1713.x, x_1713.y, x_1713.x, x_1713.y)) + vec4<f32>(x_1716.x, x_1716.y, x_1716.z, x_1716.y));
        let x_1720 : vec4<f32> = u_xlat6;
        let x_1723 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1726 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1720.x, x_1720.y) * vec2<f32>(x_1723.x, x_1723.y)) + vec2<f32>(x_1726.w, x_1726.y));
        let x_1730 : f32 = u_xlat12.y;
        u_xlat9.w = x_1730;
        let x_1733 : vec4<f32> = u_xlat6;
        let x_1736 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1739 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1733.x, x_1733.y) * vec2<f32>(x_1736.x, x_1736.y)) + vec2<f32>(x_1739.x, x_1739.w));
        let x_1742 : vec4<f32> = u_xlat12;
        let x_1743 : vec3<f32> = vec3<f32>(x_1742.x, x_1742.z, x_1742.w);
        let x_1744 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1743.x, x_1744.y, x_1743.y, x_1743.z);
        let x_1746 : vec4<f32> = u_xlat6;
        let x_1749 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1752 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1746.x, x_1746.y, x_1746.x, x_1746.y) * vec4<f32>(x_1749.x, x_1749.y, x_1749.x, x_1749.y)) + vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1752.y));
        let x_1756 : vec4<f32> = u_xlat6;
        let x_1759 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1762 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1756.x, x_1756.y) * vec2<f32>(x_1759.x, x_1759.y)) + vec2<f32>(x_1762.w, x_1762.y));
        let x_1766 : f32 = u_xlat9.x;
        u_xlat10.x = x_1766;
        let x_1768 : vec4<f32> = u_xlat6;
        let x_1771 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1774 : vec4<f32> = u_xlat10;
        let x_1776 : vec2<f32> = ((vec2<f32>(x_1768.x, x_1768.y) * vec2<f32>(x_1771.x, x_1771.y)) + vec2<f32>(x_1774.x, x_1774.y));
        let x_1777 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1776.x, x_1776.y, x_1777.z, x_1777.w);
        let x_1780 : vec4<f32> = u_xlat8;
        let x_1782 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1780.x, x_1780.x, x_1780.x, x_1780.x) * x_1782);
        let x_1785 : vec4<f32> = u_xlat8;
        let x_1787 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1785.y, x_1785.y, x_1785.y, x_1785.y) * x_1787);
        let x_1790 : vec4<f32> = u_xlat8;
        let x_1792 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1790.z, x_1790.z, x_1790.z, x_1790.z) * x_1792);
        let x_1794 : vec4<f32> = u_xlat8;
        let x_1796 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1794.w, x_1794.w, x_1794.w, x_1794.w) * x_1796);
        let x_1799 : vec4<f32> = u_xlat13;
        let x_1800 : vec2<f32> = vec2<f32>(x_1799.x, x_1799.y);
        let x_1802 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1800.x, x_1800.y, x_1802);
        let x_1809 : vec3<f32> = txVec13;
        let x_1811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1809.xy, x_1809.z);
        u_xlat68 = x_1811;
        let x_1813 : vec4<f32> = u_xlat13;
        let x_1814 : vec2<f32> = vec2<f32>(x_1813.z, x_1813.w);
        let x_1816 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1814.x, x_1814.y, x_1816);
        let x_1824 : vec3<f32> = txVec14;
        let x_1826 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1824.xy, x_1824.z);
        u_xlat70 = x_1826;
        let x_1827 : f32 = u_xlat70;
        let x_1829 : f32 = u_xlat18.y;
        u_xlat70 = (x_1827 * x_1829);
        let x_1832 : f32 = u_xlat18.x;
        let x_1833 : f32 = u_xlat68;
        let x_1835 : f32 = u_xlat70;
        u_xlat68 = ((x_1832 * x_1833) + x_1835);
        let x_1838 : vec2<f32> = u_xlat48;
        let x_1840 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1838.x, x_1838.y, x_1840);
        let x_1847 : vec3<f32> = txVec15;
        let x_1849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1847.xy, x_1847.z);
        u_xlat48.x = x_1849;
        let x_1852 : f32 = u_xlat18.z;
        let x_1854 : f32 = u_xlat48.x;
        let x_1856 : f32 = u_xlat68;
        u_xlat68 = ((x_1852 * x_1854) + x_1856);
        let x_1859 : vec4<f32> = u_xlat16;
        let x_1860 : vec2<f32> = vec2<f32>(x_1859.x, x_1859.y);
        let x_1862 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1860.x, x_1860.y, x_1862);
        let x_1869 : vec3<f32> = txVec16;
        let x_1871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1869.xy, x_1869.z);
        u_xlat48.x = x_1871;
        let x_1874 : f32 = u_xlat18.w;
        let x_1876 : f32 = u_xlat48.x;
        let x_1878 : f32 = u_xlat68;
        u_xlat68 = ((x_1874 * x_1876) + x_1878);
        let x_1881 : vec4<f32> = u_xlat14;
        let x_1882 : vec2<f32> = vec2<f32>(x_1881.x, x_1881.y);
        let x_1884 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1882.x, x_1882.y, x_1884);
        let x_1891 : vec3<f32> = txVec17;
        let x_1893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1891.xy, x_1891.z);
        u_xlat48.x = x_1893;
        let x_1896 : f32 = u_xlat19.x;
        let x_1898 : f32 = u_xlat48.x;
        let x_1900 : f32 = u_xlat68;
        u_xlat68 = ((x_1896 * x_1898) + x_1900);
        let x_1903 : vec4<f32> = u_xlat14;
        let x_1904 : vec2<f32> = vec2<f32>(x_1903.z, x_1903.w);
        let x_1906 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1904.x, x_1904.y, x_1906);
        let x_1913 : vec3<f32> = txVec18;
        let x_1915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1913.xy, x_1913.z);
        u_xlat48.x = x_1915;
        let x_1918 : f32 = u_xlat19.y;
        let x_1920 : f32 = u_xlat48.x;
        let x_1922 : f32 = u_xlat68;
        u_xlat68 = ((x_1918 * x_1920) + x_1922);
        let x_1925 : vec4<f32> = u_xlat15;
        let x_1926 : vec2<f32> = vec2<f32>(x_1925.x, x_1925.y);
        let x_1928 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1926.x, x_1926.y, x_1928);
        let x_1935 : vec3<f32> = txVec19;
        let x_1937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1935.xy, x_1935.z);
        u_xlat48.x = x_1937;
        let x_1940 : f32 = u_xlat19.z;
        let x_1942 : f32 = u_xlat48.x;
        let x_1944 : f32 = u_xlat68;
        u_xlat68 = ((x_1940 * x_1942) + x_1944);
        let x_1947 : vec4<f32> = u_xlat16;
        let x_1948 : vec2<f32> = vec2<f32>(x_1947.z, x_1947.w);
        let x_1950 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1948.x, x_1948.y, x_1950);
        let x_1957 : vec3<f32> = txVec20;
        let x_1959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1957.xy, x_1957.z);
        u_xlat48.x = x_1959;
        let x_1962 : f32 = u_xlat19.w;
        let x_1964 : f32 = u_xlat48.x;
        let x_1966 : f32 = u_xlat68;
        u_xlat68 = ((x_1962 * x_1964) + x_1966);
        let x_1969 : vec4<f32> = u_xlat17;
        let x_1970 : vec2<f32> = vec2<f32>(x_1969.x, x_1969.y);
        let x_1972 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1970.x, x_1970.y, x_1972);
        let x_1979 : vec3<f32> = txVec21;
        let x_1981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1979.xy, x_1979.z);
        u_xlat48.x = x_1981;
        let x_1984 : f32 = u_xlat20.x;
        let x_1986 : f32 = u_xlat48.x;
        let x_1988 : f32 = u_xlat68;
        u_xlat68 = ((x_1984 * x_1986) + x_1988);
        let x_1991 : vec4<f32> = u_xlat17;
        let x_1992 : vec2<f32> = vec2<f32>(x_1991.z, x_1991.w);
        let x_1994 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1992.x, x_1992.y, x_1994);
        let x_2001 : vec3<f32> = txVec22;
        let x_2003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2001.xy, x_2001.z);
        u_xlat48.x = x_2003;
        let x_2006 : f32 = u_xlat20.y;
        let x_2008 : f32 = u_xlat48.x;
        let x_2010 : f32 = u_xlat68;
        u_xlat68 = ((x_2006 * x_2008) + x_2010);
        let x_2013 : vec2<f32> = u_xlat30;
        let x_2015 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2013.x, x_2013.y, x_2015);
        let x_2022 : vec3<f32> = txVec23;
        let x_2024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2022.xy, x_2022.z);
        u_xlat48.x = x_2024;
        let x_2027 : f32 = u_xlat20.z;
        let x_2029 : f32 = u_xlat48.x;
        let x_2031 : f32 = u_xlat68;
        u_xlat68 = ((x_2027 * x_2029) + x_2031);
        let x_2034 : vec2<f32> = u_xlat57;
        let x_2036 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2034.x, x_2034.y, x_2036);
        let x_2043 : vec3<f32> = txVec24;
        let x_2045 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2043.xy, x_2043.z);
        u_xlat48.x = x_2045;
        let x_2048 : f32 = u_xlat20.w;
        let x_2050 : f32 = u_xlat48.x;
        let x_2052 : f32 = u_xlat68;
        u_xlat68 = ((x_2048 * x_2050) + x_2052);
        let x_2055 : vec4<f32> = u_xlat12;
        let x_2056 : vec2<f32> = vec2<f32>(x_2055.x, x_2055.y);
        let x_2058 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2056.x, x_2056.y, x_2058);
        let x_2065 : vec3<f32> = txVec25;
        let x_2067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2065.xy, x_2065.z);
        u_xlat48.x = x_2067;
        let x_2070 : f32 = u_xlat8.x;
        let x_2072 : f32 = u_xlat48.x;
        let x_2074 : f32 = u_xlat68;
        u_xlat68 = ((x_2070 * x_2072) + x_2074);
        let x_2077 : vec4<f32> = u_xlat12;
        let x_2078 : vec2<f32> = vec2<f32>(x_2077.z, x_2077.w);
        let x_2080 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2078.x, x_2078.y, x_2080);
        let x_2087 : vec3<f32> = txVec26;
        let x_2089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2087.xy, x_2087.z);
        u_xlat48.x = x_2089;
        let x_2092 : f32 = u_xlat8.y;
        let x_2094 : f32 = u_xlat48.x;
        let x_2096 : f32 = u_xlat68;
        u_xlat68 = ((x_2092 * x_2094) + x_2096);
        let x_2099 : vec2<f32> = u_xlat52;
        let x_2101 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2099.x, x_2099.y, x_2101);
        let x_2108 : vec3<f32> = txVec27;
        let x_2110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2108.xy, x_2108.z);
        u_xlat48.x = x_2110;
        let x_2113 : f32 = u_xlat8.z;
        let x_2115 : f32 = u_xlat48.x;
        let x_2117 : f32 = u_xlat68;
        u_xlat68 = ((x_2113 * x_2115) + x_2117);
        let x_2120 : vec4<f32> = u_xlat6;
        let x_2121 : vec2<f32> = vec2<f32>(x_2120.x, x_2120.y);
        let x_2123 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2121.x, x_2121.y, x_2123);
        let x_2130 : vec3<f32> = txVec28;
        let x_2132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2130.xy, x_2130.z);
        u_xlat6.x = x_2132;
        let x_2135 : f32 = u_xlat8.w;
        let x_2137 : f32 = u_xlat6.x;
        let x_2139 : f32 = u_xlat68;
        u_xlat66 = ((x_2135 * x_2137) + x_2139);
      }
    }
  } else {
    let x_2143 : vec4<f32> = u_xlat3;
    let x_2144 : vec2<f32> = vec2<f32>(x_2143.x, x_2143.y);
    let x_2146 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2144.x, x_2144.y, x_2146);
    let x_2153 : vec3<f32> = txVec29;
    let x_2155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2153.xy, x_2153.z);
    u_xlat66 = x_2155;
  }
  let x_2157 : f32 = x_515.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2157) + 1.0f);
  let x_2161 : f32 = u_xlat66;
  let x_2163 : f32 = x_515.x_MainLightShadowParams.x;
  let x_2166 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2161 * x_2163) + x_2166);
  let x_2171 : f32 = u_xlat3.z;
  u_xlatb24.x = (0.0f >= x_2171);
  let x_2176 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2176 >= 1.0f);
  let x_2178 : bool = u_xlatb45;
  let x_2180 : bool = u_xlatb24.x;
  u_xlatb24.x = (x_2178 | x_2180);
  let x_2184 : bool = u_xlatb24.x;
  if (x_2184) {
    x_2185 = 1.0f;
  } else {
    let x_2190 : f32 = u_xlat3.x;
    x_2185 = x_2190;
  }
  let x_2191 : f32 = x_2185;
  u_xlat3.x = x_2191;
  let x_2194 : vec3<f32> = vs_INTERP0;
  let x_2196 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat24 = (x_2194 + -(x_2196));
  let x_2199 : vec3<f32> = u_xlat24;
  let x_2200 : vec3<f32> = u_xlat24;
  u_xlat24.x = dot(x_2199, x_2200);
  let x_2204 : f32 = u_xlat24.x;
  let x_2206 : f32 = x_515.x_MainLightShadowParams.z;
  let x_2209 : f32 = x_515.x_MainLightShadowParams.w;
  u_xlat24.x = ((x_2204 * x_2206) + x_2209);
  let x_2213 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_2213, 0.0f, 1.0f);
  let x_2218 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2218) + 1.0f);
  let x_2222 : f32 = u_xlat24.x;
  let x_2223 : f32 = u_xlat45;
  let x_2226 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2222 * x_2223) + x_2226);
  let x_2235 : f32 = x_2233.x_MainLightCookieTextureFormat;
  u_xlatb24.x = !((x_2235 == -1.0f));
  let x_2239 : bool = u_xlatb24.x;
  if (x_2239) {
    let x_2242 : vec3<f32> = vs_INTERP0;
    let x_2245 : vec4<f32> = x_2233.x_MainLightWorldToLight[1i];
    let x_2247 : vec2<f32> = (vec2<f32>(x_2242.y, x_2242.y) * vec2<f32>(x_2245.x, x_2245.y));
    let x_2248 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2247.x, x_2247.y, x_2248.z);
    let x_2251 : vec4<f32> = x_2233.x_MainLightWorldToLight[0i];
    let x_2253 : vec3<f32> = vs_INTERP0;
    let x_2256 : vec3<f32> = u_xlat24;
    let x_2258 : vec2<f32> = ((vec2<f32>(x_2251.x, x_2251.y) * vec2<f32>(x_2253.x, x_2253.x)) + vec2<f32>(x_2256.x, x_2256.y));
    let x_2259 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2258.x, x_2258.y, x_2259.z);
    let x_2262 : vec4<f32> = x_2233.x_MainLightWorldToLight[2i];
    let x_2264 : vec3<f32> = vs_INTERP0;
    let x_2267 : vec3<f32> = u_xlat24;
    let x_2269 : vec2<f32> = ((vec2<f32>(x_2262.x, x_2262.y) * vec2<f32>(x_2264.z, x_2264.z)) + vec2<f32>(x_2267.x, x_2267.y));
    let x_2270 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2269.x, x_2269.y, x_2270.z);
    let x_2272 : vec3<f32> = u_xlat24;
    let x_2275 : vec4<f32> = x_2233.x_MainLightWorldToLight[3i];
    let x_2277 : vec2<f32> = (vec2<f32>(x_2272.x, x_2272.y) + vec2<f32>(x_2275.x, x_2275.y));
    let x_2278 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2277.x, x_2277.y, x_2278.z);
    let x_2280 : vec3<f32> = u_xlat24;
    let x_2283 : vec2<f32> = ((vec2<f32>(x_2280.x, x_2280.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2284 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2283.x, x_2283.y, x_2284.z);
    let x_2291 : vec3<f32> = u_xlat24;
    let x_2294 : f32 = x_44.x_GlobalMipBias.x;
    let x_2295 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2291.x, x_2291.y), x_2294);
    u_xlat6 = x_2295;
    let x_2297 : f32 = x_2233.x_MainLightCookieTextureFormat;
    let x_2299 : f32 = x_2233.x_MainLightCookieTextureFormat;
    let x_2301 : f32 = x_2233.x_MainLightCookieTextureFormat;
    let x_2303 : f32 = x_2233.x_MainLightCookieTextureFormat;
    let x_2304 : vec4<f32> = vec4<f32>(x_2297, x_2299, x_2301, x_2303);
    let x_2311 : vec4<bool> = (vec4<f32>(x_2304.x, x_2304.y, x_2304.z, x_2304.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb24 = vec2<bool>(x_2311.x, x_2311.y);
    let x_2314 : bool = u_xlatb24.y;
    if (x_2314) {
      let x_2319 : f32 = u_xlat6.w;
      x_2315 = x_2319;
    } else {
      let x_2322 : f32 = u_xlat6.x;
      x_2315 = x_2322;
    }
    let x_2323 : f32 = x_2315;
    u_xlat45 = x_2323;
    let x_2325 : bool = u_xlatb24.x;
    if (x_2325) {
      let x_2329 : vec4<f32> = u_xlat6;
      x_2326 = vec3<f32>(x_2329.x, x_2329.y, x_2329.z);
    } else {
      let x_2332 : f32 = u_xlat45;
      x_2326 = vec3<f32>(x_2332, x_2332, x_2332);
    }
    let x_2334 : vec3<f32> = x_2326;
    u_xlat24 = x_2334;
  } else {
    u_xlat24.x = 1.0f;
    u_xlat24.y = 1.0f;
    u_xlat24.z = 1.0f;
  }
  let x_2339 : vec3<f32> = u_xlat24;
  let x_2341 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat24 = (x_2339 * vec3<f32>(x_2341.x, x_2341.y, x_2341.z));
  let x_2344 : f32 = u_xlat67;
  let x_2346 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_2344, x_2344, x_2344) * x_2346);
  let x_2348 : vec3<f32> = u_xlat4;
  let x_2350 : vec4<f32> = u_xlat1;
  u_xlat68 = dot(-(x_2348), vec3<f32>(x_2350.x, x_2350.y, x_2350.z));
  let x_2353 : f32 = u_xlat68;
  let x_2354 : f32 = u_xlat68;
  u_xlat68 = (x_2353 + x_2354);
  let x_2356 : vec4<f32> = u_xlat1;
  let x_2358 : f32 = u_xlat68;
  let x_2362 : vec3<f32> = u_xlat4;
  let x_2364 : vec3<f32> = ((vec3<f32>(x_2356.x, x_2356.y, x_2356.z) * -(vec3<f32>(x_2358, x_2358, x_2358))) + -(x_2362));
  let x_2365 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2364.x, x_2364.y, x_2364.z, x_2365.w);
  let x_2367 : vec4<f32> = u_xlat1;
  let x_2369 : vec3<f32> = u_xlat4;
  u_xlat68 = dot(vec3<f32>(x_2367.x, x_2367.y, x_2367.z), x_2369);
  let x_2371 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2371, 0.0f, 1.0f);
  let x_2373 : f32 = u_xlat68;
  u_xlat68 = (-(x_2373) + 1.0f);
  let x_2376 : f32 = u_xlat68;
  let x_2377 : f32 = u_xlat68;
  u_xlat68 = (x_2376 * x_2377);
  let x_2379 : f32 = u_xlat68;
  let x_2380 : f32 = u_xlat68;
  u_xlat68 = (x_2379 * x_2380);
  let x_2383 : f32 = u_xlat63;
  u_xlat69 = ((-(x_2383) * 0.699999988f) + 1.700000048f);
  let x_2389 : f32 = u_xlat63;
  let x_2390 : f32 = u_xlat69;
  u_xlat63 = (x_2389 * x_2390);
  let x_2392 : f32 = u_xlat63;
  u_xlat63 = (x_2392 * 6.0f);
  let x_2402 : vec4<f32> = u_xlat6;
  let x_2404 : f32 = u_xlat63;
  let x_2405 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2402.x, x_2402.y, x_2402.z), x_2404);
  u_xlat6 = x_2405;
  let x_2407 : f32 = u_xlat6.w;
  u_xlat63 = (x_2407 + -1.0f);
  let x_2410 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2411 : f32 = u_xlat63;
  u_xlat63 = ((x_2410 * x_2411) + 1.0f);
  let x_2414 : f32 = u_xlat63;
  u_xlat63 = max(x_2414, 0.0f);
  let x_2416 : f32 = u_xlat63;
  u_xlat63 = log2(x_2416);
  let x_2418 : f32 = u_xlat63;
  let x_2420 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_2418 * x_2420);
  let x_2422 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2422);
  let x_2424 : f32 = u_xlat63;
  let x_2426 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_2424 * x_2426);
  let x_2428 : vec4<f32> = u_xlat6;
  let x_2430 : f32 = u_xlat63;
  let x_2432 : vec3<f32> = (vec3<f32>(x_2428.x, x_2428.y, x_2428.z) * vec3<f32>(x_2430, x_2430, x_2430));
  let x_2433 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2432.x, x_2432.y, x_2432.z, x_2433.w);
  let x_2435 : vec4<f32> = u_xlat2;
  let x_2437 : vec4<f32> = u_xlat2;
  let x_2441 : vec2<f32> = ((vec2<f32>(x_2435.x, x_2435.x) * vec2<f32>(x_2437.x, x_2437.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2442 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2441.x, x_2441.y, x_2442.z, x_2442.w);
  let x_2445 : f32 = u_xlat8.y;
  u_xlat63 = (1.0f / x_2445);
  let x_2447 : vec4<f32> = u_xlat0;
  let x_2450 : f32 = u_xlat64;
  u_xlat29 = (-(vec3<f32>(x_2447.x, x_2447.y, x_2447.z)) + vec3<f32>(x_2450, x_2450, x_2450));
  let x_2453 : f32 = u_xlat68;
  let x_2455 : vec3<f32> = u_xlat29;
  let x_2457 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2453, x_2453, x_2453) * x_2455) + vec3<f32>(x_2457.x, x_2457.y, x_2457.z));
  let x_2460 : f32 = u_xlat63;
  let x_2462 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2460, x_2460, x_2460) * x_2462);
  let x_2464 : vec4<f32> = u_xlat6;
  let x_2466 : vec3<f32> = u_xlat29;
  let x_2467 : vec3<f32> = (vec3<f32>(x_2464.x, x_2464.y, x_2464.z) * x_2466);
  let x_2468 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2467.x, x_2467.y, x_2467.z, x_2468.w);
  let x_2470 : vec4<f32> = u_xlat5;
  let x_2472 : vec3<f32> = u_xlat7;
  let x_2474 : vec4<f32> = u_xlat6;
  let x_2476 : vec3<f32> = ((vec3<f32>(x_2470.x, x_2470.y, x_2470.z) * x_2472) + vec3<f32>(x_2474.x, x_2474.y, x_2474.z));
  let x_2477 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2476.x, x_2476.y, x_2476.z, x_2477.w);
  let x_2480 : f32 = u_xlat3.x;
  let x_2482 : f32 = x_359.unity_LightData.z;
  u_xlat63 = (x_2480 * x_2482);
  let x_2484 : vec4<f32> = u_xlat1;
  let x_2487 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat64 = dot(vec3<f32>(x_2484.x, x_2484.y, x_2484.z), vec3<f32>(x_2487.x, x_2487.y, x_2487.z));
  let x_2490 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2490, 0.0f, 1.0f);
  let x_2492 : f32 = u_xlat63;
  let x_2493 : f32 = u_xlat64;
  u_xlat63 = (x_2492 * x_2493);
  let x_2495 : f32 = u_xlat63;
  let x_2497 : vec3<f32> = u_xlat24;
  let x_2498 : vec3<f32> = (vec3<f32>(x_2495, x_2495, x_2495) * x_2497);
  let x_2499 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2499.w);
  let x_2501 : vec3<f32> = u_xlat4;
  let x_2503 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2505 : vec3<f32> = (x_2501 + vec3<f32>(x_2503.x, x_2503.y, x_2503.z));
  let x_2506 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2505.x, x_2505.y, x_2505.z, x_2506.w);
  let x_2508 : vec4<f32> = u_xlat6;
  let x_2510 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2508.x, x_2508.y, x_2508.z), vec3<f32>(x_2510.x, x_2510.y, x_2510.z));
  let x_2513 : f32 = u_xlat63;
  u_xlat63 = max(x_2513, 1.17549435e-37f);
  let x_2516 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2516);
  let x_2518 : f32 = u_xlat63;
  let x_2520 : vec4<f32> = u_xlat6;
  let x_2522 : vec3<f32> = (vec3<f32>(x_2518, x_2518, x_2518) * vec3<f32>(x_2520.x, x_2520.y, x_2520.z));
  let x_2523 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2522.x, x_2522.y, x_2522.z, x_2523.w);
  let x_2525 : vec4<f32> = u_xlat1;
  let x_2527 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2525.x, x_2525.y, x_2525.z), vec3<f32>(x_2527.x, x_2527.y, x_2527.z));
  let x_2530 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2530, 0.0f, 1.0f);
  let x_2533 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2535 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2533.x, x_2533.y, x_2533.z), vec3<f32>(x_2535.x, x_2535.y, x_2535.z));
  let x_2538 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2538, 0.0f, 1.0f);
  let x_2540 : f32 = u_xlat63;
  let x_2541 : f32 = u_xlat63;
  u_xlat63 = (x_2540 * x_2541);
  let x_2543 : f32 = u_xlat63;
  let x_2545 : f32 = u_xlat8.x;
  u_xlat63 = ((x_2543 * x_2545) + 1.000010014f);
  let x_2549 : f32 = u_xlat64;
  let x_2550 : f32 = u_xlat64;
  u_xlat64 = (x_2549 * x_2550);
  let x_2552 : f32 = u_xlat63;
  let x_2553 : f32 = u_xlat63;
  u_xlat63 = (x_2552 * x_2553);
  let x_2555 : f32 = u_xlat64;
  u_xlat64 = max(x_2555, 0.100000001f);
  let x_2558 : f32 = u_xlat63;
  let x_2559 : f32 = u_xlat64;
  u_xlat63 = (x_2558 * x_2559);
  let x_2561 : f32 = u_xlat23;
  let x_2562 : f32 = u_xlat63;
  u_xlat63 = (x_2561 * x_2562);
  let x_2564 : f32 = u_xlat65;
  let x_2565 : f32 = u_xlat63;
  u_xlat63 = (x_2564 / x_2565);
  let x_2567 : vec4<f32> = u_xlat0;
  let x_2569 : f32 = u_xlat63;
  let x_2572 : vec3<f32> = u_xlat7;
  let x_2573 : vec3<f32> = ((vec3<f32>(x_2567.x, x_2567.y, x_2567.z) * vec3<f32>(x_2569, x_2569, x_2569)) + x_2572);
  let x_2574 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2573.x, x_2573.y, x_2573.z, x_2574.w);
  let x_2576 : vec4<f32> = u_xlat3;
  let x_2578 : vec4<f32> = u_xlat6;
  let x_2580 : vec3<f32> = (vec3<f32>(x_2576.x, x_2576.y, x_2576.z) * vec3<f32>(x_2578.x, x_2578.y, x_2578.z));
  let x_2581 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2580.x, x_2580.y, x_2580.z, x_2581.w);
  let x_2584 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2586 : f32 = x_359.unity_LightData.y;
  u_xlat63 = min(x_2584, x_2586);
  let x_2588 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2588));
  let x_2593 : f32 = x_2233.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2595 : f32 = x_2233.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2597 : f32 = x_2233.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2599 : f32 = x_2233.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2600 : vec4<f32> = vec4<f32>(x_2593, x_2595, x_2597, x_2599);
  let x_2606 : vec4<bool> = (vec4<f32>(x_2600.x, x_2600.y, x_2600.z, x_2600.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2606.x, x_2606.y);
  u_xlat29.x = 0.0f;
  u_xlat29.y = 0.0f;
  u_xlat29.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2617 : u32 = u_xlatu_loop_1;
    let x_2618 : u32 = u_xlatu63;
    if ((x_2617 < x_2618)) {
    } else {
      break;
    }
    let x_2621 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_2621 >> 2u);
    let x_2624 : u32 = u_xlatu_loop_1;
    u_xlati66 = bitcast<i32>((x_2624 & 3u));
    let x_2627 : u32 = u_xlatu2;
    let x_2630 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2627)];
    let x_2640 : i32 = u_xlati66;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2645 : vec4<u32> = indexable[x_2640];
    u_xlat2.x = dot(x_2630, bitcast<vec4<f32>>(x_2645));
    let x_2650 : f32 = u_xlat2.x;
    u_xlatu2 = bitcast<u32>(i32(x_2650));
    let x_2653 : vec3<f32> = vs_INTERP0;
    let x_2665 : u32 = u_xlatu2;
    let x_2668 : vec4<f32> = x_2664.x_AdditionalLightsPosition[bitcast<i32>(x_2665)];
    let x_2671 : u32 = u_xlatu2;
    let x_2674 : vec4<f32> = x_2664.x_AdditionalLightsPosition[bitcast<i32>(x_2671)];
    let x_2676 : vec3<f32> = ((-(x_2653) * vec3<f32>(x_2668.w, x_2668.w, x_2668.w)) + vec3<f32>(x_2674.x, x_2674.y, x_2674.z));
    let x_2677 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2676.x, x_2676.y, x_2676.z, x_2677.w);
    let x_2679 : vec4<f32> = u_xlat9;
    let x_2681 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_2679.x, x_2679.y, x_2679.z), vec3<f32>(x_2681.x, x_2681.y, x_2681.z));
    let x_2684 : f32 = u_xlat66;
    u_xlat66 = max(x_2684, 6.10351562e-05f);
    let x_2687 : f32 = u_xlat66;
    u_xlat68 = inverseSqrt(x_2687);
    let x_2689 : f32 = u_xlat68;
    let x_2691 : vec4<f32> = u_xlat9;
    let x_2693 : vec3<f32> = (vec3<f32>(x_2689, x_2689, x_2689) * vec3<f32>(x_2691.x, x_2691.y, x_2691.z));
    let x_2694 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2693.x, x_2693.y, x_2693.z, x_2694.w);
    let x_2696 : f32 = u_xlat66;
    u_xlat48.x = (1.0f / x_2696);
    let x_2699 : f32 = u_xlat66;
    let x_2700 : u32 = u_xlatu2;
    let x_2703 : f32 = x_2664.x_AdditionalLightsAttenuation[bitcast<i32>(x_2700)].x;
    u_xlat66 = (x_2699 * x_2703);
    let x_2705 : f32 = u_xlat66;
    let x_2707 : f32 = u_xlat66;
    u_xlat66 = ((-(x_2705) * x_2707) + 1.0f);
    let x_2710 : f32 = u_xlat66;
    u_xlat66 = max(x_2710, 0.0f);
    let x_2712 : f32 = u_xlat66;
    let x_2713 : f32 = u_xlat66;
    u_xlat66 = (x_2712 * x_2713);
    let x_2715 : f32 = u_xlat66;
    let x_2717 : f32 = u_xlat48.x;
    u_xlat66 = (x_2715 * x_2717);
    let x_2719 : u32 = u_xlatu2;
    let x_2722 : vec4<f32> = x_2664.x_AdditionalLightsSpotDir[bitcast<i32>(x_2719)];
    let x_2724 : vec4<f32> = u_xlat10;
    u_xlat48.x = dot(vec3<f32>(x_2722.x, x_2722.y, x_2722.z), vec3<f32>(x_2724.x, x_2724.y, x_2724.z));
    let x_2729 : f32 = u_xlat48.x;
    let x_2730 : u32 = u_xlatu2;
    let x_2733 : f32 = x_2664.x_AdditionalLightsAttenuation[bitcast<i32>(x_2730)].z;
    let x_2735 : u32 = u_xlatu2;
    let x_2738 : f32 = x_2664.x_AdditionalLightsAttenuation[bitcast<i32>(x_2735)].w;
    u_xlat48.x = ((x_2729 * x_2733) + x_2738);
    let x_2742 : f32 = u_xlat48.x;
    u_xlat48.x = clamp(x_2742, 0.0f, 1.0f);
    let x_2746 : f32 = u_xlat48.x;
    let x_2748 : f32 = u_xlat48.x;
    u_xlat48.x = (x_2746 * x_2748);
    let x_2751 : f32 = u_xlat66;
    let x_2753 : f32 = u_xlat48.x;
    u_xlat66 = (x_2751 * x_2753);
    let x_2756 : u32 = u_xlatu2;
    u_xlatu48 = (x_2756 >> 5u);
    let x_2759 : u32 = u_xlatu2;
    u_xlati69 = (1i << bitcast<u32>((bitcast<i32>(x_2759) & 31i)));
    let x_2765 : i32 = u_xlati69;
    let x_2767 : u32 = u_xlatu48;
    let x_2770 : f32 = x_2233.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2767)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_2765) & bitcast<u32>(x_2770)));
    let x_2774 : i32 = u_xlati48;
    if ((x_2774 != 0i)) {
      let x_2784 : u32 = u_xlatu2;
      let x_2787 : f32 = x_2783.x_AdditionalLightsLightTypes[bitcast<i32>(x_2784)].el;
      u_xlati48 = i32(x_2787);
      let x_2789 : i32 = u_xlati48;
      u_xlati69 = select(1i, 0i, (x_2789 != 0i));
      let x_2793 : u32 = u_xlatu2;
      u_xlati70 = (bitcast<i32>(x_2793) << bitcast<u32>(2i));
      let x_2796 : i32 = u_xlati69;
      if ((x_2796 != 0i)) {
        let x_2800 : vec3<f32> = vs_INTERP0;
        let x_2802 : i32 = u_xlati70;
        let x_2805 : i32 = u_xlati70;
        let x_2809 : vec4<f32> = x_2783.x_AdditionalLightsWorldToLights[((x_2802 + 1i) / 4i)][((x_2805 + 1i) % 4i)];
        let x_2811 : vec3<f32> = (vec3<f32>(x_2800.y, x_2800.y, x_2800.y) * vec3<f32>(x_2809.x, x_2809.y, x_2809.w));
        let x_2812 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2811.x, x_2811.y, x_2811.z, x_2812.w);
        let x_2814 : i32 = u_xlati70;
        let x_2816 : i32 = u_xlati70;
        let x_2819 : vec4<f32> = x_2783.x_AdditionalLightsWorldToLights[(x_2814 / 4i)][(x_2816 % 4i)];
        let x_2821 : vec3<f32> = vs_INTERP0;
        let x_2824 : vec4<f32> = u_xlat11;
        let x_2826 : vec3<f32> = ((vec3<f32>(x_2819.x, x_2819.y, x_2819.w) * vec3<f32>(x_2821.x, x_2821.x, x_2821.x)) + vec3<f32>(x_2824.x, x_2824.y, x_2824.z));
        let x_2827 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2826.x, x_2826.y, x_2826.z, x_2827.w);
        let x_2829 : i32 = u_xlati70;
        let x_2832 : i32 = u_xlati70;
        let x_2836 : vec4<f32> = x_2783.x_AdditionalLightsWorldToLights[((x_2829 + 2i) / 4i)][((x_2832 + 2i) % 4i)];
        let x_2838 : vec3<f32> = vs_INTERP0;
        let x_2841 : vec4<f32> = u_xlat11;
        let x_2843 : vec3<f32> = ((vec3<f32>(x_2836.x, x_2836.y, x_2836.w) * vec3<f32>(x_2838.z, x_2838.z, x_2838.z)) + vec3<f32>(x_2841.x, x_2841.y, x_2841.z));
        let x_2844 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2843.x, x_2843.y, x_2843.z, x_2844.w);
        let x_2846 : vec4<f32> = u_xlat11;
        let x_2848 : i32 = u_xlati70;
        let x_2851 : i32 = u_xlati70;
        let x_2855 : vec4<f32> = x_2783.x_AdditionalLightsWorldToLights[((x_2848 + 3i) / 4i)][((x_2851 + 3i) % 4i)];
        let x_2857 : vec3<f32> = (vec3<f32>(x_2846.x, x_2846.y, x_2846.z) + vec3<f32>(x_2855.x, x_2855.y, x_2855.w));
        let x_2858 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2857.x, x_2857.y, x_2857.z, x_2858.w);
        let x_2860 : vec4<f32> = u_xlat11;
        let x_2862 : vec4<f32> = u_xlat11;
        let x_2864 : vec2<f32> = (vec2<f32>(x_2860.x, x_2860.y) / vec2<f32>(x_2862.z, x_2862.z));
        let x_2865 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2864.x, x_2864.y, x_2865.z, x_2865.w);
        let x_2867 : vec4<f32> = u_xlat11;
        let x_2870 : vec2<f32> = ((vec2<f32>(x_2867.x, x_2867.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2871 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2870.x, x_2870.y, x_2871.z, x_2871.w);
        let x_2873 : vec4<f32> = u_xlat11;
        let x_2877 : vec2<f32> = clamp(vec2<f32>(x_2873.x, x_2873.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2878 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2877.x, x_2877.y, x_2878.z, x_2878.w);
        let x_2880 : u32 = u_xlatu2;
        let x_2883 : vec4<f32> = x_2783.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2880)];
        let x_2885 : vec4<f32> = u_xlat11;
        let x_2888 : u32 = u_xlatu2;
        let x_2891 : vec4<f32> = x_2783.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2888)];
        let x_2893 : vec2<f32> = ((vec2<f32>(x_2883.x, x_2883.y) * vec2<f32>(x_2885.x, x_2885.y)) + vec2<f32>(x_2891.z, x_2891.w));
        let x_2894 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2893.x, x_2893.y, x_2894.z, x_2894.w);
      } else {
        let x_2898 : i32 = u_xlati48;
        u_xlatb48 = (x_2898 == 1i);
        let x_2900 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_2900);
        let x_2902 : i32 = u_xlati48;
        if ((x_2902 != 0i)) {
          let x_2906 : vec3<f32> = vs_INTERP0;
          let x_2908 : i32 = u_xlati70;
          let x_2911 : i32 = u_xlati70;
          let x_2915 : vec4<f32> = x_2783.x_AdditionalLightsWorldToLights[((x_2908 + 1i) / 4i)][((x_2911 + 1i) % 4i)];
          u_xlat48 = (vec2<f32>(x_2906.y, x_2906.y) * vec2<f32>(x_2915.x, x_2915.y));
          let x_2918 : i32 = u_xlati70;
          let x_2920 : i32 = u_xlati70;
          let x_2923 : vec4<f32> = x_2783.x_AdditionalLightsWorldToLights[(x_2918 / 4i)][(x_2920 % 4i)];
          let x_2925 : vec3<f32> = vs_INTERP0;
          let x_2928 : vec2<f32> = u_xlat48;
          u_xlat48 = ((vec2<f32>(x_2923.x, x_2923.y) * vec2<f32>(x_2925.x, x_2925.x)) + x_2928);
          let x_2930 : i32 = u_xlati70;
          let x_2933 : i32 = u_xlati70;
          let x_2937 : vec4<f32> = x_2783.x_AdditionalLightsWorldToLights[((x_2930 + 2i) / 4i)][((x_2933 + 2i) % 4i)];
          let x_2939 : vec3<f32> = vs_INTERP0;
          let x_2942 : vec2<f32> = u_xlat48;
          u_xlat48 = ((vec2<f32>(x_2937.x, x_2937.y) * vec2<f32>(x_2939.z, x_2939.z)) + x_2942);
          let x_2944 : vec2<f32> = u_xlat48;
          let x_2945 : i32 = u_xlati70;
          let x_2948 : i32 = u_xlati70;
          let x_2952 : vec4<f32> = x_2783.x_AdditionalLightsWorldToLights[((x_2945 + 3i) / 4i)][((x_2948 + 3i) % 4i)];
          u_xlat48 = (x_2944 + vec2<f32>(x_2952.x, x_2952.y));
          let x_2955 : vec2<f32> = u_xlat48;
          u_xlat48 = ((x_2955 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2958 : vec2<f32> = u_xlat48;
          u_xlat48 = fract(x_2958);
          let x_2960 : u32 = u_xlatu2;
          let x_2963 : vec4<f32> = x_2783.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2960)];
          let x_2965 : vec2<f32> = u_xlat48;
          let x_2967 : u32 = u_xlatu2;
          let x_2970 : vec4<f32> = x_2783.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2967)];
          let x_2972 : vec2<f32> = ((vec2<f32>(x_2963.x, x_2963.y) * x_2965) + vec2<f32>(x_2970.z, x_2970.w));
          let x_2973 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2972.x, x_2972.y, x_2973.z, x_2973.w);
        } else {
          let x_2976 : vec3<f32> = vs_INTERP0;
          let x_2978 : i32 = u_xlati70;
          let x_2981 : i32 = u_xlati70;
          let x_2985 : vec4<f32> = x_2783.x_AdditionalLightsWorldToLights[((x_2978 + 1i) / 4i)][((x_2981 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2976.y, x_2976.y, x_2976.y, x_2976.y) * x_2985);
          let x_2987 : i32 = u_xlati70;
          let x_2989 : i32 = u_xlati70;
          let x_2992 : vec4<f32> = x_2783.x_AdditionalLightsWorldToLights[(x_2987 / 4i)][(x_2989 % 4i)];
          let x_2993 : vec3<f32> = vs_INTERP0;
          let x_2996 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2992 * vec4<f32>(x_2993.x, x_2993.x, x_2993.x, x_2993.x)) + x_2996);
          let x_2998 : i32 = u_xlati70;
          let x_3001 : i32 = u_xlati70;
          let x_3005 : vec4<f32> = x_2783.x_AdditionalLightsWorldToLights[((x_2998 + 2i) / 4i)][((x_3001 + 2i) % 4i)];
          let x_3006 : vec3<f32> = vs_INTERP0;
          let x_3009 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3005 * vec4<f32>(x_3006.z, x_3006.z, x_3006.z, x_3006.z)) + x_3009);
          let x_3011 : vec4<f32> = u_xlat12;
          let x_3012 : i32 = u_xlati70;
          let x_3015 : i32 = u_xlati70;
          let x_3019 : vec4<f32> = x_2783.x_AdditionalLightsWorldToLights[((x_3012 + 3i) / 4i)][((x_3015 + 3i) % 4i)];
          u_xlat12 = (x_3011 + x_3019);
          let x_3021 : vec4<f32> = u_xlat12;
          let x_3023 : vec4<f32> = u_xlat12;
          let x_3025 : vec3<f32> = (vec3<f32>(x_3021.x, x_3021.y, x_3021.z) / vec3<f32>(x_3023.w, x_3023.w, x_3023.w));
          let x_3026 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3025.x, x_3025.y, x_3025.z, x_3026.w);
          let x_3028 : vec4<f32> = u_xlat12;
          let x_3030 : vec4<f32> = u_xlat12;
          u_xlat48.x = dot(vec3<f32>(x_3028.x, x_3028.y, x_3028.z), vec3<f32>(x_3030.x, x_3030.y, x_3030.z));
          let x_3035 : f32 = u_xlat48.x;
          u_xlat48.x = inverseSqrt(x_3035);
          let x_3038 : vec2<f32> = u_xlat48;
          let x_3040 : vec4<f32> = u_xlat12;
          let x_3042 : vec3<f32> = (vec3<f32>(x_3038.x, x_3038.x, x_3038.x) * vec3<f32>(x_3040.x, x_3040.y, x_3040.z));
          let x_3043 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3042.x, x_3042.y, x_3042.z, x_3043.w);
          let x_3045 : vec4<f32> = u_xlat12;
          u_xlat48.x = dot(abs(vec3<f32>(x_3045.x, x_3045.y, x_3045.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3051 : f32 = u_xlat48.x;
          u_xlat48.x = max(x_3051, 0.000001f);
          let x_3056 : f32 = u_xlat48.x;
          u_xlat48.x = (1.0f / x_3056);
          let x_3059 : vec2<f32> = u_xlat48;
          let x_3061 : vec4<f32> = u_xlat12;
          let x_3063 : vec3<f32> = (vec3<f32>(x_3059.x, x_3059.x, x_3059.x) * vec3<f32>(x_3061.z, x_3061.x, x_3061.y));
          let x_3064 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3063.x, x_3063.y, x_3063.z, x_3064.w);
          let x_3067 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3067);
          let x_3071 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3071, 0.0f, 1.0f);
          let x_3075 : vec4<f32> = u_xlat13;
          let x_3078 : vec4<bool> = (vec4<f32>(x_3075.y, x_3075.z, x_3075.y, x_3075.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3078.x, x_3078.y);
          let x_3082 : bool = u_xlatb53.x;
          if (x_3082) {
            let x_3087 : f32 = u_xlat13.x;
            x_3083 = x_3087;
          } else {
            let x_3090 : f32 = u_xlat13.x;
            x_3083 = -(x_3090);
          }
          let x_3092 : f32 = x_3083;
          u_xlat53.x = x_3092;
          let x_3095 : bool = u_xlatb53.y;
          if (x_3095) {
            let x_3100 : f32 = u_xlat13.x;
            x_3096 = x_3100;
          } else {
            let x_3103 : f32 = u_xlat13.x;
            x_3096 = -(x_3103);
          }
          let x_3105 : f32 = x_3096;
          u_xlat53.y = x_3105;
          let x_3107 : vec4<f32> = u_xlat12;
          let x_3109 : vec2<f32> = u_xlat48;
          let x_3112 : vec2<f32> = u_xlat53;
          u_xlat48 = ((vec2<f32>(x_3107.x, x_3107.y) * vec2<f32>(x_3109.x, x_3109.x)) + x_3112);
          let x_3114 : vec2<f32> = u_xlat48;
          u_xlat48 = ((x_3114 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3117 : vec2<f32> = u_xlat48;
          u_xlat48 = clamp(x_3117, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3121 : u32 = u_xlatu2;
          let x_3124 : vec4<f32> = x_2783.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3121)];
          let x_3126 : vec2<f32> = u_xlat48;
          let x_3128 : u32 = u_xlatu2;
          let x_3131 : vec4<f32> = x_2783.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3128)];
          let x_3133 : vec2<f32> = ((vec2<f32>(x_3124.x, x_3124.y) * x_3126) + vec2<f32>(x_3131.z, x_3131.w));
          let x_3134 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3133.x, x_3133.y, x_3134.z, x_3134.w);
        }
      }
      let x_3141 : vec4<f32> = u_xlat11;
      let x_3144 : f32 = x_44.x_GlobalMipBias.x;
      let x_3145 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3141.x, x_3141.y), x_3144);
      u_xlat11 = x_3145;
      let x_3147 : bool = u_xlatb6.y;
      if (x_3147) {
        let x_3152 : f32 = u_xlat11.w;
        x_3148 = x_3152;
      } else {
        let x_3155 : f32 = u_xlat11.x;
        x_3148 = x_3155;
      }
      let x_3156 : f32 = x_3148;
      u_xlat48.x = x_3156;
      let x_3159 : bool = u_xlatb6.x;
      if (x_3159) {
        let x_3163 : vec4<f32> = u_xlat11;
        x_3160 = vec3<f32>(x_3163.x, x_3163.y, x_3163.z);
      } else {
        let x_3166 : vec2<f32> = u_xlat48;
        x_3160 = vec3<f32>(x_3166.x, x_3166.x, x_3166.x);
      }
      let x_3168 : vec3<f32> = x_3160;
      let x_3169 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3168.x, x_3168.y, x_3168.z, x_3169.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3175 : vec4<f32> = u_xlat11;
    let x_3177 : u32 = u_xlatu2;
    let x_3180 : vec4<f32> = x_2664.x_AdditionalLightsColor[bitcast<i32>(x_3177)];
    let x_3182 : vec3<f32> = (vec3<f32>(x_3175.x, x_3175.y, x_3175.z) * vec3<f32>(x_3180.x, x_3180.y, x_3180.z));
    let x_3183 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3182.x, x_3182.y, x_3182.z, x_3183.w);
    let x_3185 : f32 = u_xlat67;
    let x_3187 : vec4<f32> = u_xlat11;
    let x_3189 : vec3<f32> = (vec3<f32>(x_3185, x_3185, x_3185) * vec3<f32>(x_3187.x, x_3187.y, x_3187.z));
    let x_3190 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3189.x, x_3189.y, x_3189.z, x_3190.w);
    let x_3192 : vec4<f32> = u_xlat1;
    let x_3194 : vec4<f32> = u_xlat10;
    u_xlat2.x = dot(vec3<f32>(x_3192.x, x_3192.y, x_3192.z), vec3<f32>(x_3194.x, x_3194.y, x_3194.z));
    let x_3199 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_3199, 0.0f, 1.0f);
    let x_3203 : f32 = u_xlat2.x;
    let x_3204 : f32 = u_xlat66;
    u_xlat2.x = (x_3203 * x_3204);
    let x_3207 : vec4<f32> = u_xlat2;
    let x_3209 : vec4<f32> = u_xlat11;
    let x_3211 : vec3<f32> = (vec3<f32>(x_3207.x, x_3207.x, x_3207.x) * vec3<f32>(x_3209.x, x_3209.y, x_3209.z));
    let x_3212 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3211.x, x_3211.y, x_3211.z, x_3212.w);
    let x_3214 : vec4<f32> = u_xlat9;
    let x_3216 : f32 = u_xlat68;
    let x_3219 : vec3<f32> = u_xlat4;
    let x_3220 : vec3<f32> = ((vec3<f32>(x_3214.x, x_3214.y, x_3214.z) * vec3<f32>(x_3216, x_3216, x_3216)) + x_3219);
    let x_3221 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3220.x, x_3220.y, x_3220.z, x_3221.w);
    let x_3223 : vec4<f32> = u_xlat9;
    let x_3225 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_3223.x, x_3223.y, x_3223.z), vec3<f32>(x_3225.x, x_3225.y, x_3225.z));
    let x_3230 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_3230, 1.17549435e-37f);
    let x_3234 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_3234);
    let x_3237 : vec4<f32> = u_xlat2;
    let x_3239 : vec4<f32> = u_xlat9;
    let x_3241 : vec3<f32> = (vec3<f32>(x_3237.x, x_3237.x, x_3237.x) * vec3<f32>(x_3239.x, x_3239.y, x_3239.z));
    let x_3242 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3241.x, x_3241.y, x_3241.z, x_3242.w);
    let x_3244 : vec4<f32> = u_xlat1;
    let x_3246 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_3244.x, x_3244.y, x_3244.z), vec3<f32>(x_3246.x, x_3246.y, x_3246.z));
    let x_3251 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_3251, 0.0f, 1.0f);
    let x_3254 : vec4<f32> = u_xlat10;
    let x_3256 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3254.x, x_3254.y, x_3254.z), vec3<f32>(x_3256.x, x_3256.y, x_3256.z));
    let x_3259 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3259, 0.0f, 1.0f);
    let x_3262 : f32 = u_xlat2.x;
    let x_3264 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3262 * x_3264);
    let x_3268 : f32 = u_xlat2.x;
    let x_3270 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_3268 * x_3270) + 1.000010014f);
    let x_3274 : f32 = u_xlat66;
    let x_3275 : f32 = u_xlat66;
    u_xlat66 = (x_3274 * x_3275);
    let x_3278 : f32 = u_xlat2.x;
    let x_3280 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3278 * x_3280);
    let x_3283 : f32 = u_xlat66;
    u_xlat66 = max(x_3283, 0.100000001f);
    let x_3286 : f32 = u_xlat2.x;
    let x_3287 : f32 = u_xlat66;
    u_xlat2.x = (x_3286 * x_3287);
    let x_3290 : f32 = u_xlat23;
    let x_3292 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3290 * x_3292);
    let x_3295 : f32 = u_xlat65;
    let x_3297 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3295 / x_3297);
    let x_3300 : vec4<f32> = u_xlat0;
    let x_3302 : vec4<f32> = u_xlat2;
    let x_3305 : vec3<f32> = u_xlat7;
    let x_3306 : vec3<f32> = ((vec3<f32>(x_3300.x, x_3300.y, x_3300.z) * vec3<f32>(x_3302.x, x_3302.x, x_3302.x)) + x_3305);
    let x_3307 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3306.x, x_3306.y, x_3306.z, x_3307.w);
    let x_3309 : vec4<f32> = u_xlat9;
    let x_3311 : vec4<f32> = u_xlat11;
    let x_3314 : vec3<f32> = u_xlat29;
    u_xlat29 = ((vec3<f32>(x_3309.x, x_3309.y, x_3309.z) * vec3<f32>(x_3311.x, x_3311.y, x_3311.z)) + x_3314);

    continuing {
      let x_3316 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3316 + bitcast<u32>(1i));
    }
  }
  let x_3318 : vec4<f32> = u_xlat5;
  let x_3320 : f32 = u_xlat44;
  let x_3323 : vec4<f32> = u_xlat3;
  let x_3325 : vec3<f32> = ((vec3<f32>(x_3318.x, x_3318.y, x_3318.z) * vec3<f32>(x_3320, x_3320, x_3320)) + vec3<f32>(x_3323.x, x_3323.y, x_3323.z));
  let x_3326 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3325.x, x_3325.y, x_3325.z, x_3326.w);
  let x_3330 : vec3<f32> = u_xlat29;
  let x_3331 : vec4<f32> = u_xlat0;
  let x_3333 : vec3<f32> = (x_3330 + vec3<f32>(x_3331.x, x_3331.y, x_3331.z));
  let x_3334 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3333.x, x_3333.y, x_3333.z, x_3334.w);
  let x_3339 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3341 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_3339 & bitcast<u32>(x_3341));
  let x_3344 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3344);
  let x_3349 : f32 = u_xlat0.x;
  let x_3351 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3349 * x_3351);
  let x_3356 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3356, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3360 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3360.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

