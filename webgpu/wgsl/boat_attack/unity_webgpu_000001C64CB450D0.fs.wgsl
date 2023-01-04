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

@group(0) @binding(6) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(6) var<uniform> x_190 : UnityPerMaterial;

@group(0) @binding(8) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_E9EC22CC : sampler;

@group(0) @binding(7) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_6EEDD32E : sampler;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_359 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_515 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2169 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2600 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2719 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat64 : f32;
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
  var u_xlat23 : f32;
  var u_xlat65 : f32;
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
  var x_2121 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlat45 : f32;
  var x_2251 : f32;
  var x_2262 : vec3<f32>;
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
  var x_3019 : f32;
  var x_3032 : f32;
  var x_3084 : f32;
  var x_3096 : vec3<f32>;
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
  u_xlat64 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat64;
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
  let x_706 : vec2<f32> = vs_INTERP4;
  let x_708 : f32 = x_44.x_GlobalMipBias.x;
  let x_709 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_706, x_708);
  let x_710 : vec3<f32> = vec3<f32>(x_709.x, x_709.y, x_709.z);
  let x_711 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_715 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_716 : vec2<f32> = vec2<f32>(x_715.x, x_715.y);
  let x_720 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_716.x, x_716.y));
  let x_721 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
  let x_723 : vec4<f32> = u_xlat6;
  let x_725 : vec4<f32> = hlslcc_FragCoord;
  let x_727 : vec2<f32> = (vec2<f32>(x_723.x, x_723.y) * vec2<f32>(x_725.x, x_725.y));
  let x_728 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_727.x, x_727.y, x_728.z, x_728.w);
  let x_731 : f32 = u_xlat6.y;
  let x_734 : f32 = x_44.x_ScaleBiasRt.x;
  let x_737 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat63 = ((x_731 * x_734) + x_737);
  let x_739 : f32 = u_xlat63;
  u_xlat6.z = (-(x_739) + 1.0f);
  let x_743 : vec4<f32> = u_xlat2;
  let x_744 : vec2<f32> = vec2<f32>(x_743.x, x_743.y);
  let x_745 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
  let x_747 : vec4<f32> = u_xlat2;
  let x_751 : vec2<f32> = clamp(vec2<f32>(x_747.x, x_747.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_752 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_751.x, x_751.y, x_752.z, x_752.w);
  let x_755 : f32 = u_xlat2.x;
  u_xlat63 = ((-(x_755) * 0.959999979f) + 0.959999979f);
  let x_760 : f32 = u_xlat63;
  let x_763 : f32 = u_xlat2.y;
  u_xlat64 = (-(x_760) + x_763);
  let x_765 : f32 = u_xlat63;
  let x_767 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_765, x_765, x_765) * vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat0;
  let x_774 : vec3<f32> = (vec3<f32>(x_770.x, x_770.y, x_770.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_775 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_777 : vec4<f32> = u_xlat2;
  let x_779 : vec4<f32> = u_xlat0;
  let x_784 : vec3<f32> = ((vec3<f32>(x_777.x, x_777.x, x_777.x) * vec3<f32>(x_779.x, x_779.y, x_779.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_785 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_788 : f32 = u_xlat2.y;
  u_xlat63 = (-(x_788) + 1.0f);
  let x_791 : f32 = u_xlat63;
  let x_792 : f32 = u_xlat63;
  u_xlat2.x = (x_791 * x_792);
  let x_796 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_796, 0.0078125f);
  let x_802 : f32 = u_xlat2.x;
  let x_804 : f32 = u_xlat2.x;
  u_xlat23 = (x_802 * x_804);
  let x_806 : f32 = u_xlat64;
  u_xlat64 = (x_806 + 1.0f);
  let x_808 : f32 = u_xlat64;
  u_xlat64 = min(x_808, 1.0f);
  let x_812 : f32 = u_xlat2.x;
  u_xlat65 = ((x_812 * 4.0f) + 2.0f);
  let x_821 : vec4<f32> = u_xlat6;
  let x_824 : f32 = x_44.x_GlobalMipBias.x;
  let x_825 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_821.x, x_821.z), x_824);
  u_xlat66 = x_825.x;
  let x_828 : f32 = u_xlat66;
  u_xlat67 = (x_828 + -1.0f);
  let x_831 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_832 : f32 = u_xlat67;
  u_xlat67 = ((x_831 * x_832) + 1.0f);
  let x_837 : f32 = u_xlat2.z;
  let x_838 : f32 = u_xlat66;
  u_xlat44 = min(x_837, x_838);
  let x_842 : f32 = x_515.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_842);
  let x_844 : bool = u_xlatb66;
  if (x_844) {
    let x_848 : f32 = x_515.x_MainLightShadowParams.y;
    u_xlatb66 = (x_848 == 1.0f);
    let x_850 : bool = u_xlatb66;
    if (x_850) {
      let x_853 : vec4<f32> = u_xlat3;
      let x_857 : vec4<f32> = x_515.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_853.x, x_853.y, x_853.x, x_853.y) + x_857);
      let x_860 : vec4<f32> = u_xlat6;
      let x_861 : vec2<f32> = vec2<f32>(x_860.x, x_860.y);
      let x_863 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_861.x, x_861.y, x_863);
      let x_876 : vec3<f32> = txVec0;
      let x_878 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_876.xy, x_876.z);
      u_xlat8.x = x_878;
      let x_881 : vec4<f32> = u_xlat6;
      let x_882 : vec2<f32> = vec2<f32>(x_881.z, x_881.w);
      let x_884 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_882.x, x_882.y, x_884);
      let x_891 : vec3<f32> = txVec1;
      let x_893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_891.xy, x_891.z);
      u_xlat8.y = x_893;
      let x_895 : vec4<f32> = u_xlat3;
      let x_899 : vec4<f32> = x_515.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_895.x, x_895.y, x_895.x, x_895.y) + x_899);
      let x_902 : vec4<f32> = u_xlat6;
      let x_903 : vec2<f32> = vec2<f32>(x_902.x, x_902.y);
      let x_905 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_903.x, x_903.y, x_905);
      let x_912 : vec3<f32> = txVec2;
      let x_914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_912.xy, x_912.z);
      u_xlat8.z = x_914;
      let x_917 : vec4<f32> = u_xlat6;
      let x_918 : vec2<f32> = vec2<f32>(x_917.z, x_917.w);
      let x_920 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_918.x, x_918.y, x_920);
      let x_927 : vec3<f32> = txVec3;
      let x_929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_927.xy, x_927.z);
      u_xlat8.w = x_929;
      let x_931 : vec4<f32> = u_xlat8;
      u_xlat66 = dot(x_931, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_938 : f32 = x_515.x_MainLightShadowParams.y;
      u_xlatb68 = (x_938 == 2.0f);
      let x_940 : bool = u_xlatb68;
      if (x_940) {
        let x_943 : vec4<f32> = u_xlat3;
        let x_946 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_951 : vec2<f32> = ((vec2<f32>(x_943.x, x_943.y) * vec2<f32>(x_946.z, x_946.w)) + vec2<f32>(0.5f, 0.5f));
        let x_952 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
        let x_954 : vec4<f32> = u_xlat6;
        let x_956 : vec2<f32> = floor(vec2<f32>(x_954.x, x_954.y));
        let x_957 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_956.x, x_956.y, x_957.z, x_957.w);
        let x_960 : vec4<f32> = u_xlat3;
        let x_963 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_966 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_960.x, x_960.y) * vec2<f32>(x_963.z, x_963.w)) + -(vec2<f32>(x_966.x, x_966.y)));
        let x_970 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_970.x, x_970.x, x_970.y, x_970.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_975 : vec4<f32> = u_xlat8;
        let x_977 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_975.x, x_975.x, x_975.z, x_975.z) * vec4<f32>(x_977.x, x_977.x, x_977.z, x_977.z));
        let x_980 : vec4<f32> = u_xlat9;
        let x_984 : vec2<f32> = (vec2<f32>(x_980.y, x_980.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_985 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_984.x, x_985.y, x_984.y, x_985.w);
        let x_987 : vec4<f32> = u_xlat9;
        let x_990 : vec2<f32> = u_xlat48;
        let x_992 : vec2<f32> = ((vec2<f32>(x_987.x, x_987.z) * vec2<f32>(0.5f, 0.5f)) + -(x_990));
        let x_993 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_992.x, x_992.y, x_993.z, x_993.w);
        let x_996 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_996) + vec2<f32>(1.0f, 1.0f));
        let x_1000 : vec2<f32> = u_xlat48;
        let x_1002 : vec2<f32> = min(x_1000, vec2<f32>(0.0f, 0.0f));
        let x_1003 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1002.x, x_1002.y, x_1003.z, x_1003.w);
        let x_1005 : vec4<f32> = u_xlat10;
        let x_1008 : vec4<f32> = u_xlat10;
        let x_1011 : vec2<f32> = u_xlat51;
        let x_1012 : vec2<f32> = ((-(vec2<f32>(x_1005.x, x_1005.y)) * vec2<f32>(x_1008.x, x_1008.y)) + x_1011);
        let x_1013 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1012.x, x_1012.y, x_1013.z, x_1013.w);
        let x_1015 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1015, vec2<f32>(0.0f, 0.0f));
        let x_1017 : vec2<f32> = u_xlat48;
        let x_1019 : vec2<f32> = u_xlat48;
        let x_1021 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1017) * x_1019) + vec2<f32>(x_1021.y, x_1021.w));
        let x_1024 : vec4<f32> = u_xlat10;
        let x_1026 : vec2<f32> = (vec2<f32>(x_1024.x, x_1024.y) + vec2<f32>(1.0f, 1.0f));
        let x_1027 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1026.x, x_1026.y, x_1027.z, x_1027.w);
        let x_1029 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1029 + vec2<f32>(1.0f, 1.0f));
        let x_1032 : vec4<f32> = u_xlat9;
        let x_1036 : vec2<f32> = (vec2<f32>(x_1032.x, x_1032.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1037 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1036.x, x_1036.y, x_1037.z, x_1037.w);
        let x_1039 : vec2<f32> = u_xlat51;
        let x_1040 : vec2<f32> = (x_1039 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1041 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1040.x, x_1040.y, x_1041.z, x_1041.w);
        let x_1043 : vec4<f32> = u_xlat10;
        let x_1045 : vec2<f32> = (vec2<f32>(x_1043.x, x_1043.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1046 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1045.x, x_1045.y, x_1046.z, x_1046.w);
        let x_1049 : vec2<f32> = u_xlat48;
        let x_1050 : vec2<f32> = (x_1049 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1051 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1050.x, x_1050.y, x_1051.z, x_1051.w);
        let x_1053 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1053.y, x_1053.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1057 : f32 = u_xlat10.x;
        u_xlat11.z = x_1057;
        let x_1060 : f32 = u_xlat48.x;
        u_xlat11.w = x_1060;
        let x_1063 : f32 = u_xlat12.x;
        u_xlat9.z = x_1063;
        let x_1066 : f32 = u_xlat8.x;
        u_xlat9.w = x_1066;
        let x_1069 : vec4<f32> = u_xlat9;
        let x_1071 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1069.z, x_1069.w, x_1069.x, x_1069.z) + vec4<f32>(x_1071.z, x_1071.w, x_1071.x, x_1071.z));
        let x_1075 : f32 = u_xlat11.y;
        u_xlat10.z = x_1075;
        let x_1078 : f32 = u_xlat48.y;
        u_xlat10.w = x_1078;
        let x_1081 : f32 = u_xlat9.y;
        u_xlat12.z = x_1081;
        let x_1084 : f32 = u_xlat8.z;
        u_xlat12.w = x_1084;
        let x_1086 : vec4<f32> = u_xlat10;
        let x_1088 : vec4<f32> = u_xlat12;
        let x_1090 : vec3<f32> = (vec3<f32>(x_1086.z, x_1086.y, x_1086.w) + vec3<f32>(x_1088.z, x_1088.y, x_1088.w));
        let x_1091 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
        let x_1093 : vec4<f32> = u_xlat9;
        let x_1095 : vec4<f32> = u_xlat13;
        let x_1097 : vec3<f32> = (vec3<f32>(x_1093.x, x_1093.z, x_1093.w) / vec3<f32>(x_1095.z, x_1095.w, x_1095.y));
        let x_1098 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
        let x_1100 : vec4<f32> = u_xlat9;
        let x_1106 : vec3<f32> = (vec3<f32>(x_1100.x, x_1100.y, x_1100.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1107 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
        let x_1109 : vec4<f32> = u_xlat12;
        let x_1111 : vec4<f32> = u_xlat8;
        let x_1113 : vec3<f32> = (vec3<f32>(x_1109.z, x_1109.y, x_1109.w) / vec3<f32>(x_1111.x, x_1111.y, x_1111.z));
        let x_1114 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
        let x_1116 : vec4<f32> = u_xlat10;
        let x_1118 : vec3<f32> = (vec3<f32>(x_1116.x, x_1116.y, x_1116.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1119 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat9;
        let x_1124 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1126 : vec3<f32> = (vec3<f32>(x_1121.y, x_1121.x, x_1121.z) * vec3<f32>(x_1124.x, x_1124.x, x_1124.x));
        let x_1127 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
        let x_1129 : vec4<f32> = u_xlat10;
        let x_1132 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1134 : vec3<f32> = (vec3<f32>(x_1129.x, x_1129.y, x_1129.z) * vec3<f32>(x_1132.y, x_1132.y, x_1132.y));
        let x_1135 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
        let x_1138 : f32 = u_xlat10.x;
        u_xlat9.w = x_1138;
        let x_1140 : vec4<f32> = u_xlat6;
        let x_1143 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1146 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1140.x, x_1140.y, x_1140.x, x_1140.y) * vec4<f32>(x_1143.x, x_1143.y, x_1143.x, x_1143.y)) + vec4<f32>(x_1146.y, x_1146.w, x_1146.x, x_1146.w));
        let x_1149 : vec4<f32> = u_xlat6;
        let x_1152 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1155 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1149.x, x_1149.y) * vec2<f32>(x_1152.x, x_1152.y)) + vec2<f32>(x_1155.z, x_1155.w));
        let x_1159 : f32 = u_xlat9.y;
        u_xlat10.w = x_1159;
        let x_1161 : vec4<f32> = u_xlat10;
        let x_1162 : vec2<f32> = vec2<f32>(x_1161.y, x_1161.z);
        let x_1163 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1163.x, x_1162.x, x_1163.z, x_1162.y);
        let x_1165 : vec4<f32> = u_xlat6;
        let x_1168 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1171 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1165.x, x_1165.y, x_1165.x, x_1165.y) * vec4<f32>(x_1168.x, x_1168.y, x_1168.x, x_1168.y)) + vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1171.y));
        let x_1174 : vec4<f32> = u_xlat6;
        let x_1177 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1180 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y) * vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y)) + vec4<f32>(x_1180.w, x_1180.y, x_1180.w, x_1180.z));
        let x_1183 : vec4<f32> = u_xlat6;
        let x_1186 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1189 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1183.x, x_1183.y, x_1183.x, x_1183.y) * vec4<f32>(x_1186.x, x_1186.y, x_1186.x, x_1186.y)) + vec4<f32>(x_1189.x, x_1189.w, x_1189.z, x_1189.w));
        let x_1193 : vec4<f32> = u_xlat8;
        let x_1195 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1193.x, x_1193.x, x_1193.x, x_1193.y) * vec4<f32>(x_1195.z, x_1195.w, x_1195.y, x_1195.z));
        let x_1199 : vec4<f32> = u_xlat8;
        let x_1201 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1199.y, x_1199.y, x_1199.z, x_1199.z) * x_1201);
        let x_1205 : f32 = u_xlat8.z;
        let x_1207 : f32 = u_xlat13.y;
        u_xlat68 = (x_1205 * x_1207);
        let x_1210 : vec4<f32> = u_xlat11;
        let x_1211 : vec2<f32> = vec2<f32>(x_1210.x, x_1210.y);
        let x_1213 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1211.x, x_1211.y, x_1213);
        let x_1220 : vec3<f32> = txVec4;
        let x_1222 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1220.xy, x_1220.z);
        u_xlat6.x = x_1222;
        let x_1225 : vec4<f32> = u_xlat11;
        let x_1226 : vec2<f32> = vec2<f32>(x_1225.z, x_1225.w);
        let x_1228 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1226.x, x_1226.y, x_1228);
        let x_1236 : vec3<f32> = txVec5;
        let x_1238 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1236.xy, x_1236.z);
        u_xlat27 = x_1238;
        let x_1239 : f32 = u_xlat27;
        let x_1241 : f32 = u_xlat14.y;
        u_xlat27 = (x_1239 * x_1241);
        let x_1244 : f32 = u_xlat14.x;
        let x_1246 : f32 = u_xlat6.x;
        let x_1248 : f32 = u_xlat27;
        u_xlat6.x = ((x_1244 * x_1246) + x_1248);
        let x_1252 : vec2<f32> = u_xlat48;
        let x_1254 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1252.x, x_1252.y, x_1254);
        let x_1261 : vec3<f32> = txVec6;
        let x_1263 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1261.xy, x_1261.z);
        u_xlat27 = x_1263;
        let x_1265 : f32 = u_xlat14.z;
        let x_1266 : f32 = u_xlat27;
        let x_1269 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1265 * x_1266) + x_1269);
        let x_1273 : vec4<f32> = u_xlat10;
        let x_1274 : vec2<f32> = vec2<f32>(x_1273.x, x_1273.y);
        let x_1276 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1274.x, x_1274.y, x_1276);
        let x_1283 : vec3<f32> = txVec7;
        let x_1285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1283.xy, x_1283.z);
        u_xlat27 = x_1285;
        let x_1287 : f32 = u_xlat14.w;
        let x_1288 : f32 = u_xlat27;
        let x_1291 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1287 * x_1288) + x_1291);
        let x_1295 : vec4<f32> = u_xlat12;
        let x_1296 : vec2<f32> = vec2<f32>(x_1295.x, x_1295.y);
        let x_1298 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1296.x, x_1296.y, x_1298);
        let x_1305 : vec3<f32> = txVec8;
        let x_1307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1305.xy, x_1305.z);
        u_xlat27 = x_1307;
        let x_1309 : f32 = u_xlat15.x;
        let x_1310 : f32 = u_xlat27;
        let x_1313 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1309 * x_1310) + x_1313);
        let x_1317 : vec4<f32> = u_xlat12;
        let x_1318 : vec2<f32> = vec2<f32>(x_1317.z, x_1317.w);
        let x_1320 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1318.x, x_1318.y, x_1320);
        let x_1327 : vec3<f32> = txVec9;
        let x_1329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1327.xy, x_1327.z);
        u_xlat27 = x_1329;
        let x_1331 : f32 = u_xlat15.y;
        let x_1332 : f32 = u_xlat27;
        let x_1335 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1331 * x_1332) + x_1335);
        let x_1339 : vec4<f32> = u_xlat10;
        let x_1340 : vec2<f32> = vec2<f32>(x_1339.z, x_1339.w);
        let x_1342 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1340.x, x_1340.y, x_1342);
        let x_1349 : vec3<f32> = txVec10;
        let x_1351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1349.xy, x_1349.z);
        u_xlat27 = x_1351;
        let x_1353 : f32 = u_xlat15.z;
        let x_1354 : f32 = u_xlat27;
        let x_1357 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1353 * x_1354) + x_1357);
        let x_1361 : vec4<f32> = u_xlat9;
        let x_1362 : vec2<f32> = vec2<f32>(x_1361.x, x_1361.y);
        let x_1364 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec11;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1371.xy, x_1371.z);
        u_xlat27 = x_1373;
        let x_1375 : f32 = u_xlat15.w;
        let x_1376 : f32 = u_xlat27;
        let x_1379 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1375 * x_1376) + x_1379);
        let x_1383 : vec4<f32> = u_xlat9;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.z, x_1383.w);
        let x_1386 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec12;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1393.xy, x_1393.z);
        u_xlat27 = x_1395;
        let x_1396 : f32 = u_xlat68;
        let x_1397 : f32 = u_xlat27;
        let x_1400 : f32 = u_xlat6.x;
        u_xlat66 = ((x_1396 * x_1397) + x_1400);
      } else {
        let x_1403 : vec4<f32> = u_xlat3;
        let x_1406 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1409 : vec2<f32> = ((vec2<f32>(x_1403.x, x_1403.y) * vec2<f32>(x_1406.z, x_1406.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1410 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1409.x, x_1409.y, x_1410.z, x_1410.w);
        let x_1412 : vec4<f32> = u_xlat6;
        let x_1414 : vec2<f32> = floor(vec2<f32>(x_1412.x, x_1412.y));
        let x_1415 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1414.x, x_1414.y, x_1415.z, x_1415.w);
        let x_1417 : vec4<f32> = u_xlat3;
        let x_1420 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1423 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(x_1420.z, x_1420.w)) + -(vec2<f32>(x_1423.x, x_1423.y)));
        let x_1427 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1427.x, x_1427.x, x_1427.y, x_1427.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1430 : vec4<f32> = u_xlat8;
        let x_1432 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1430.x, x_1430.x, x_1430.z, x_1430.z) * vec4<f32>(x_1432.x, x_1432.x, x_1432.z, x_1432.z));
        let x_1435 : vec4<f32> = u_xlat9;
        let x_1439 : vec2<f32> = (vec2<f32>(x_1435.y, x_1435.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1440 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1440.x, x_1439.x, x_1440.z, x_1439.y);
        let x_1442 : vec4<f32> = u_xlat9;
        let x_1445 : vec2<f32> = u_xlat48;
        let x_1447 : vec2<f32> = ((vec2<f32>(x_1442.x, x_1442.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1445));
        let x_1448 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1447.x, x_1448.y, x_1447.y, x_1448.w);
        let x_1450 : vec2<f32> = u_xlat48;
        let x_1452 : vec2<f32> = (-(x_1450) + vec2<f32>(1.0f, 1.0f));
        let x_1453 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1452.x, x_1452.y, x_1453.z, x_1453.w);
        let x_1455 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1455, vec2<f32>(0.0f, 0.0f));
        let x_1457 : vec2<f32> = u_xlat51;
        let x_1459 : vec2<f32> = u_xlat51;
        let x_1461 : vec4<f32> = u_xlat9;
        let x_1463 : vec2<f32> = ((-(x_1457) * x_1459) + vec2<f32>(x_1461.x, x_1461.y));
        let x_1464 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1463.x, x_1463.y, x_1464.z, x_1464.w);
        let x_1466 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1466, vec2<f32>(0.0f, 0.0f));
        let x_1469 : vec2<f32> = u_xlat51;
        let x_1471 : vec2<f32> = u_xlat51;
        let x_1473 : vec4<f32> = u_xlat8;
        let x_1475 : vec2<f32> = ((-(x_1469) * x_1471) + vec2<f32>(x_1473.y, x_1473.w));
        let x_1476 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1475.x, x_1476.y, x_1475.y);
        let x_1478 : vec4<f32> = u_xlat9;
        let x_1480 : vec2<f32> = (vec2<f32>(x_1478.x, x_1478.y) + vec2<f32>(2.0f, 2.0f));
        let x_1481 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1480.x, x_1480.y, x_1481.z, x_1481.w);
        let x_1483 : vec3<f32> = u_xlat29;
        let x_1485 : vec2<f32> = (vec2<f32>(x_1483.x, x_1483.z) + vec2<f32>(2.0f, 2.0f));
        let x_1486 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1486.x, x_1485.x, x_1486.z, x_1485.y);
        let x_1489 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1489 * 0.081632003f);
        let x_1493 : vec4<f32> = u_xlat8;
        let x_1496 : vec3<f32> = (vec3<f32>(x_1493.z, x_1493.x, x_1493.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1497 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1496.x, x_1496.y, x_1496.z, x_1497.w);
        let x_1499 : vec4<f32> = u_xlat9;
        let x_1502 : vec2<f32> = (vec2<f32>(x_1499.x, x_1499.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1503 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1502.x, x_1502.y, x_1503.z, x_1503.w);
        let x_1506 : f32 = u_xlat12.y;
        u_xlat11.x = x_1506;
        let x_1508 : vec2<f32> = u_xlat48;
        let x_1515 : vec2<f32> = ((vec2<f32>(x_1508.x, x_1508.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1516 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1516.x, x_1515.x, x_1516.z, x_1515.y);
        let x_1518 : vec2<f32> = u_xlat48;
        let x_1522 : vec2<f32> = ((vec2<f32>(x_1518.x, x_1518.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1523 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1522.x, x_1523.y, x_1522.y, x_1523.w);
        let x_1526 : f32 = u_xlat8.x;
        u_xlat9.y = x_1526;
        let x_1529 : f32 = u_xlat10.y;
        u_xlat9.w = x_1529;
        let x_1531 : vec4<f32> = u_xlat9;
        let x_1532 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1531 + x_1532);
        let x_1534 : vec2<f32> = u_xlat48;
        let x_1537 : vec2<f32> = ((vec2<f32>(x_1534.y, x_1534.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1538 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1538.x, x_1537.x, x_1538.z, x_1537.y);
        let x_1540 : vec2<f32> = u_xlat48;
        let x_1543 : vec2<f32> = ((vec2<f32>(x_1540.y, x_1540.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1544 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1543.x, x_1544.y, x_1543.y, x_1544.w);
        let x_1547 : f32 = u_xlat8.y;
        u_xlat10.y = x_1547;
        let x_1549 : vec4<f32> = u_xlat10;
        let x_1550 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1549 + x_1550);
        let x_1552 : vec4<f32> = u_xlat9;
        let x_1553 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1552 / x_1553);
        let x_1555 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1555 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1561 : vec4<f32> = u_xlat10;
        let x_1562 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1561 / x_1562);
        let x_1564 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1564 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1566 : vec4<f32> = u_xlat9;
        let x_1569 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1566.w, x_1566.x, x_1566.y, x_1566.z) * vec4<f32>(x_1569.x, x_1569.x, x_1569.x, x_1569.x));
        let x_1572 : vec4<f32> = u_xlat10;
        let x_1575 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1572.x, x_1572.w, x_1572.y, x_1572.z) * vec4<f32>(x_1575.y, x_1575.y, x_1575.y, x_1575.y));
        let x_1578 : vec4<f32> = u_xlat9;
        let x_1579 : vec3<f32> = vec3<f32>(x_1578.y, x_1578.z, x_1578.w);
        let x_1580 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1579.x, x_1580.y, x_1579.y, x_1579.z);
        let x_1583 : f32 = u_xlat10.x;
        u_xlat12.y = x_1583;
        let x_1585 : vec4<f32> = u_xlat6;
        let x_1588 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1591 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1585.x, x_1585.y, x_1585.x, x_1585.y) * vec4<f32>(x_1588.x, x_1588.y, x_1588.x, x_1588.y)) + vec4<f32>(x_1591.x, x_1591.y, x_1591.z, x_1591.y));
        let x_1594 : vec4<f32> = u_xlat6;
        let x_1597 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1600 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1594.x, x_1594.y) * vec2<f32>(x_1597.x, x_1597.y)) + vec2<f32>(x_1600.w, x_1600.y));
        let x_1604 : f32 = u_xlat12.y;
        u_xlat9.y = x_1604;
        let x_1607 : f32 = u_xlat10.z;
        u_xlat12.y = x_1607;
        let x_1609 : vec4<f32> = u_xlat6;
        let x_1612 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1615 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1609.x, x_1609.y, x_1609.x, x_1609.y) * vec4<f32>(x_1612.x, x_1612.y, x_1612.x, x_1612.y)) + vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1615.y));
        let x_1618 : vec4<f32> = u_xlat6;
        let x_1621 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1624 : vec4<f32> = u_xlat12;
        let x_1626 : vec2<f32> = ((vec2<f32>(x_1618.x, x_1618.y) * vec2<f32>(x_1621.x, x_1621.y)) + vec2<f32>(x_1624.w, x_1624.y));
        let x_1627 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1626.x, x_1626.y, x_1627.z, x_1627.w);
        let x_1630 : f32 = u_xlat12.y;
        u_xlat9.z = x_1630;
        let x_1633 : vec4<f32> = u_xlat6;
        let x_1636 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1639 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1633.x, x_1633.y, x_1633.x, x_1633.y) * vec4<f32>(x_1636.x, x_1636.y, x_1636.x, x_1636.y)) + vec4<f32>(x_1639.x, x_1639.y, x_1639.x, x_1639.z));
        let x_1643 : f32 = u_xlat10.w;
        u_xlat12.y = x_1643;
        let x_1646 : vec4<f32> = u_xlat6;
        let x_1649 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1652 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1646.x, x_1646.y, x_1646.x, x_1646.y) * vec4<f32>(x_1649.x, x_1649.y, x_1649.x, x_1649.y)) + vec4<f32>(x_1652.x, x_1652.y, x_1652.z, x_1652.y));
        let x_1656 : vec4<f32> = u_xlat6;
        let x_1659 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1662 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1656.x, x_1656.y) * vec2<f32>(x_1659.x, x_1659.y)) + vec2<f32>(x_1662.w, x_1662.y));
        let x_1666 : f32 = u_xlat12.y;
        u_xlat9.w = x_1666;
        let x_1669 : vec4<f32> = u_xlat6;
        let x_1672 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1675 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1669.x, x_1669.y) * vec2<f32>(x_1672.x, x_1672.y)) + vec2<f32>(x_1675.x, x_1675.w));
        let x_1678 : vec4<f32> = u_xlat12;
        let x_1679 : vec3<f32> = vec3<f32>(x_1678.x, x_1678.z, x_1678.w);
        let x_1680 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1679.x, x_1680.y, x_1679.y, x_1679.z);
        let x_1682 : vec4<f32> = u_xlat6;
        let x_1685 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1688 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1682.x, x_1682.y, x_1682.x, x_1682.y) * vec4<f32>(x_1685.x, x_1685.y, x_1685.x, x_1685.y)) + vec4<f32>(x_1688.x, x_1688.y, x_1688.z, x_1688.y));
        let x_1692 : vec4<f32> = u_xlat6;
        let x_1695 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1698 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1692.x, x_1692.y) * vec2<f32>(x_1695.x, x_1695.y)) + vec2<f32>(x_1698.w, x_1698.y));
        let x_1702 : f32 = u_xlat9.x;
        u_xlat10.x = x_1702;
        let x_1704 : vec4<f32> = u_xlat6;
        let x_1707 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1710 : vec4<f32> = u_xlat10;
        let x_1712 : vec2<f32> = ((vec2<f32>(x_1704.x, x_1704.y) * vec2<f32>(x_1707.x, x_1707.y)) + vec2<f32>(x_1710.x, x_1710.y));
        let x_1713 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1712.x, x_1712.y, x_1713.z, x_1713.w);
        let x_1716 : vec4<f32> = u_xlat8;
        let x_1718 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1716.x, x_1716.x, x_1716.x, x_1716.x) * x_1718);
        let x_1721 : vec4<f32> = u_xlat8;
        let x_1723 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1721.y, x_1721.y, x_1721.y, x_1721.y) * x_1723);
        let x_1726 : vec4<f32> = u_xlat8;
        let x_1728 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1726.z, x_1726.z, x_1726.z, x_1726.z) * x_1728);
        let x_1730 : vec4<f32> = u_xlat8;
        let x_1732 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1730.w, x_1730.w, x_1730.w, x_1730.w) * x_1732);
        let x_1735 : vec4<f32> = u_xlat13;
        let x_1736 : vec2<f32> = vec2<f32>(x_1735.x, x_1735.y);
        let x_1738 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1736.x, x_1736.y, x_1738);
        let x_1745 : vec3<f32> = txVec13;
        let x_1747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1745.xy, x_1745.z);
        u_xlat68 = x_1747;
        let x_1749 : vec4<f32> = u_xlat13;
        let x_1750 : vec2<f32> = vec2<f32>(x_1749.z, x_1749.w);
        let x_1752 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
        let x_1760 : vec3<f32> = txVec14;
        let x_1762 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1760.xy, x_1760.z);
        u_xlat70 = x_1762;
        let x_1763 : f32 = u_xlat70;
        let x_1765 : f32 = u_xlat18.y;
        u_xlat70 = (x_1763 * x_1765);
        let x_1768 : f32 = u_xlat18.x;
        let x_1769 : f32 = u_xlat68;
        let x_1771 : f32 = u_xlat70;
        u_xlat68 = ((x_1768 * x_1769) + x_1771);
        let x_1774 : vec2<f32> = u_xlat48;
        let x_1776 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1774.x, x_1774.y, x_1776);
        let x_1783 : vec3<f32> = txVec15;
        let x_1785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1783.xy, x_1783.z);
        u_xlat48.x = x_1785;
        let x_1788 : f32 = u_xlat18.z;
        let x_1790 : f32 = u_xlat48.x;
        let x_1792 : f32 = u_xlat68;
        u_xlat68 = ((x_1788 * x_1790) + x_1792);
        let x_1795 : vec4<f32> = u_xlat16;
        let x_1796 : vec2<f32> = vec2<f32>(x_1795.x, x_1795.y);
        let x_1798 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1796.x, x_1796.y, x_1798);
        let x_1805 : vec3<f32> = txVec16;
        let x_1807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1805.xy, x_1805.z);
        u_xlat48.x = x_1807;
        let x_1810 : f32 = u_xlat18.w;
        let x_1812 : f32 = u_xlat48.x;
        let x_1814 : f32 = u_xlat68;
        u_xlat68 = ((x_1810 * x_1812) + x_1814);
        let x_1817 : vec4<f32> = u_xlat14;
        let x_1818 : vec2<f32> = vec2<f32>(x_1817.x, x_1817.y);
        let x_1820 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1818.x, x_1818.y, x_1820);
        let x_1827 : vec3<f32> = txVec17;
        let x_1829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1827.xy, x_1827.z);
        u_xlat48.x = x_1829;
        let x_1832 : f32 = u_xlat19.x;
        let x_1834 : f32 = u_xlat48.x;
        let x_1836 : f32 = u_xlat68;
        u_xlat68 = ((x_1832 * x_1834) + x_1836);
        let x_1839 : vec4<f32> = u_xlat14;
        let x_1840 : vec2<f32> = vec2<f32>(x_1839.z, x_1839.w);
        let x_1842 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1840.x, x_1840.y, x_1842);
        let x_1849 : vec3<f32> = txVec18;
        let x_1851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1849.xy, x_1849.z);
        u_xlat48.x = x_1851;
        let x_1854 : f32 = u_xlat19.y;
        let x_1856 : f32 = u_xlat48.x;
        let x_1858 : f32 = u_xlat68;
        u_xlat68 = ((x_1854 * x_1856) + x_1858);
        let x_1861 : vec4<f32> = u_xlat15;
        let x_1862 : vec2<f32> = vec2<f32>(x_1861.x, x_1861.y);
        let x_1864 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1862.x, x_1862.y, x_1864);
        let x_1871 : vec3<f32> = txVec19;
        let x_1873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1871.xy, x_1871.z);
        u_xlat48.x = x_1873;
        let x_1876 : f32 = u_xlat19.z;
        let x_1878 : f32 = u_xlat48.x;
        let x_1880 : f32 = u_xlat68;
        u_xlat68 = ((x_1876 * x_1878) + x_1880);
        let x_1883 : vec4<f32> = u_xlat16;
        let x_1884 : vec2<f32> = vec2<f32>(x_1883.z, x_1883.w);
        let x_1886 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1884.x, x_1884.y, x_1886);
        let x_1893 : vec3<f32> = txVec20;
        let x_1895 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1893.xy, x_1893.z);
        u_xlat48.x = x_1895;
        let x_1898 : f32 = u_xlat19.w;
        let x_1900 : f32 = u_xlat48.x;
        let x_1902 : f32 = u_xlat68;
        u_xlat68 = ((x_1898 * x_1900) + x_1902);
        let x_1905 : vec4<f32> = u_xlat17;
        let x_1906 : vec2<f32> = vec2<f32>(x_1905.x, x_1905.y);
        let x_1908 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1906.x, x_1906.y, x_1908);
        let x_1915 : vec3<f32> = txVec21;
        let x_1917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1915.xy, x_1915.z);
        u_xlat48.x = x_1917;
        let x_1920 : f32 = u_xlat20.x;
        let x_1922 : f32 = u_xlat48.x;
        let x_1924 : f32 = u_xlat68;
        u_xlat68 = ((x_1920 * x_1922) + x_1924);
        let x_1927 : vec4<f32> = u_xlat17;
        let x_1928 : vec2<f32> = vec2<f32>(x_1927.z, x_1927.w);
        let x_1930 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1928.x, x_1928.y, x_1930);
        let x_1937 : vec3<f32> = txVec22;
        let x_1939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1937.xy, x_1937.z);
        u_xlat48.x = x_1939;
        let x_1942 : f32 = u_xlat20.y;
        let x_1944 : f32 = u_xlat48.x;
        let x_1946 : f32 = u_xlat68;
        u_xlat68 = ((x_1942 * x_1944) + x_1946);
        let x_1949 : vec2<f32> = u_xlat30;
        let x_1951 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1949.x, x_1949.y, x_1951);
        let x_1958 : vec3<f32> = txVec23;
        let x_1960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1958.xy, x_1958.z);
        u_xlat48.x = x_1960;
        let x_1963 : f32 = u_xlat20.z;
        let x_1965 : f32 = u_xlat48.x;
        let x_1967 : f32 = u_xlat68;
        u_xlat68 = ((x_1963 * x_1965) + x_1967);
        let x_1970 : vec2<f32> = u_xlat57;
        let x_1972 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1970.x, x_1970.y, x_1972);
        let x_1979 : vec3<f32> = txVec24;
        let x_1981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1979.xy, x_1979.z);
        u_xlat48.x = x_1981;
        let x_1984 : f32 = u_xlat20.w;
        let x_1986 : f32 = u_xlat48.x;
        let x_1988 : f32 = u_xlat68;
        u_xlat68 = ((x_1984 * x_1986) + x_1988);
        let x_1991 : vec4<f32> = u_xlat12;
        let x_1992 : vec2<f32> = vec2<f32>(x_1991.x, x_1991.y);
        let x_1994 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1992.x, x_1992.y, x_1994);
        let x_2001 : vec3<f32> = txVec25;
        let x_2003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2001.xy, x_2001.z);
        u_xlat48.x = x_2003;
        let x_2006 : f32 = u_xlat8.x;
        let x_2008 : f32 = u_xlat48.x;
        let x_2010 : f32 = u_xlat68;
        u_xlat68 = ((x_2006 * x_2008) + x_2010);
        let x_2013 : vec4<f32> = u_xlat12;
        let x_2014 : vec2<f32> = vec2<f32>(x_2013.z, x_2013.w);
        let x_2016 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2014.x, x_2014.y, x_2016);
        let x_2023 : vec3<f32> = txVec26;
        let x_2025 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2023.xy, x_2023.z);
        u_xlat48.x = x_2025;
        let x_2028 : f32 = u_xlat8.y;
        let x_2030 : f32 = u_xlat48.x;
        let x_2032 : f32 = u_xlat68;
        u_xlat68 = ((x_2028 * x_2030) + x_2032);
        let x_2035 : vec2<f32> = u_xlat52;
        let x_2037 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2035.x, x_2035.y, x_2037);
        let x_2044 : vec3<f32> = txVec27;
        let x_2046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2044.xy, x_2044.z);
        u_xlat48.x = x_2046;
        let x_2049 : f32 = u_xlat8.z;
        let x_2051 : f32 = u_xlat48.x;
        let x_2053 : f32 = u_xlat68;
        u_xlat68 = ((x_2049 * x_2051) + x_2053);
        let x_2056 : vec4<f32> = u_xlat6;
        let x_2057 : vec2<f32> = vec2<f32>(x_2056.x, x_2056.y);
        let x_2059 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2057.x, x_2057.y, x_2059);
        let x_2066 : vec3<f32> = txVec28;
        let x_2068 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2066.xy, x_2066.z);
        u_xlat6.x = x_2068;
        let x_2071 : f32 = u_xlat8.w;
        let x_2073 : f32 = u_xlat6.x;
        let x_2075 : f32 = u_xlat68;
        u_xlat66 = ((x_2071 * x_2073) + x_2075);
      }
    }
  } else {
    let x_2079 : vec4<f32> = u_xlat3;
    let x_2080 : vec2<f32> = vec2<f32>(x_2079.x, x_2079.y);
    let x_2082 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2080.x, x_2080.y, x_2082);
    let x_2089 : vec3<f32> = txVec29;
    let x_2091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2089.xy, x_2089.z);
    u_xlat66 = x_2091;
  }
  let x_2093 : f32 = x_515.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2093) + 1.0f);
  let x_2097 : f32 = u_xlat66;
  let x_2099 : f32 = x_515.x_MainLightShadowParams.x;
  let x_2102 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2097 * x_2099) + x_2102);
  let x_2107 : f32 = u_xlat3.z;
  u_xlatb24.x = (0.0f >= x_2107);
  let x_2112 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2112 >= 1.0f);
  let x_2114 : bool = u_xlatb45;
  let x_2116 : bool = u_xlatb24.x;
  u_xlatb24.x = (x_2114 | x_2116);
  let x_2120 : bool = u_xlatb24.x;
  if (x_2120) {
    x_2121 = 1.0f;
  } else {
    let x_2126 : f32 = u_xlat3.x;
    x_2121 = x_2126;
  }
  let x_2127 : f32 = x_2121;
  u_xlat3.x = x_2127;
  let x_2130 : vec3<f32> = vs_INTERP0;
  let x_2132 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat24 = (x_2130 + -(x_2132));
  let x_2135 : vec3<f32> = u_xlat24;
  let x_2136 : vec3<f32> = u_xlat24;
  u_xlat24.x = dot(x_2135, x_2136);
  let x_2140 : f32 = u_xlat24.x;
  let x_2142 : f32 = x_515.x_MainLightShadowParams.z;
  let x_2145 : f32 = x_515.x_MainLightShadowParams.w;
  u_xlat24.x = ((x_2140 * x_2142) + x_2145);
  let x_2149 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_2149, 0.0f, 1.0f);
  let x_2154 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2154) + 1.0f);
  let x_2158 : f32 = u_xlat24.x;
  let x_2159 : f32 = u_xlat45;
  let x_2162 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2158 * x_2159) + x_2162);
  let x_2171 : f32 = x_2169.x_MainLightCookieTextureFormat;
  u_xlatb24.x = !((x_2171 == -1.0f));
  let x_2175 : bool = u_xlatb24.x;
  if (x_2175) {
    let x_2178 : vec3<f32> = vs_INTERP0;
    let x_2181 : vec4<f32> = x_2169.x_MainLightWorldToLight[1i];
    let x_2183 : vec2<f32> = (vec2<f32>(x_2178.y, x_2178.y) * vec2<f32>(x_2181.x, x_2181.y));
    let x_2184 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2183.x, x_2183.y, x_2184.z);
    let x_2187 : vec4<f32> = x_2169.x_MainLightWorldToLight[0i];
    let x_2189 : vec3<f32> = vs_INTERP0;
    let x_2192 : vec3<f32> = u_xlat24;
    let x_2194 : vec2<f32> = ((vec2<f32>(x_2187.x, x_2187.y) * vec2<f32>(x_2189.x, x_2189.x)) + vec2<f32>(x_2192.x, x_2192.y));
    let x_2195 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2194.x, x_2194.y, x_2195.z);
    let x_2198 : vec4<f32> = x_2169.x_MainLightWorldToLight[2i];
    let x_2200 : vec3<f32> = vs_INTERP0;
    let x_2203 : vec3<f32> = u_xlat24;
    let x_2205 : vec2<f32> = ((vec2<f32>(x_2198.x, x_2198.y) * vec2<f32>(x_2200.z, x_2200.z)) + vec2<f32>(x_2203.x, x_2203.y));
    let x_2206 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2205.x, x_2205.y, x_2206.z);
    let x_2208 : vec3<f32> = u_xlat24;
    let x_2211 : vec4<f32> = x_2169.x_MainLightWorldToLight[3i];
    let x_2213 : vec2<f32> = (vec2<f32>(x_2208.x, x_2208.y) + vec2<f32>(x_2211.x, x_2211.y));
    let x_2214 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2213.x, x_2213.y, x_2214.z);
    let x_2216 : vec3<f32> = u_xlat24;
    let x_2219 : vec2<f32> = ((vec2<f32>(x_2216.x, x_2216.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2220 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2219.x, x_2219.y, x_2220.z);
    let x_2227 : vec3<f32> = u_xlat24;
    let x_2230 : f32 = x_44.x_GlobalMipBias.x;
    let x_2231 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2227.x, x_2227.y), x_2230);
    u_xlat6 = x_2231;
    let x_2233 : f32 = x_2169.x_MainLightCookieTextureFormat;
    let x_2235 : f32 = x_2169.x_MainLightCookieTextureFormat;
    let x_2237 : f32 = x_2169.x_MainLightCookieTextureFormat;
    let x_2239 : f32 = x_2169.x_MainLightCookieTextureFormat;
    let x_2240 : vec4<f32> = vec4<f32>(x_2233, x_2235, x_2237, x_2239);
    let x_2247 : vec4<bool> = (vec4<f32>(x_2240.x, x_2240.y, x_2240.z, x_2240.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb24 = vec2<bool>(x_2247.x, x_2247.y);
    let x_2250 : bool = u_xlatb24.y;
    if (x_2250) {
      let x_2255 : f32 = u_xlat6.w;
      x_2251 = x_2255;
    } else {
      let x_2258 : f32 = u_xlat6.x;
      x_2251 = x_2258;
    }
    let x_2259 : f32 = x_2251;
    u_xlat45 = x_2259;
    let x_2261 : bool = u_xlatb24.x;
    if (x_2261) {
      let x_2265 : vec4<f32> = u_xlat6;
      x_2262 = vec3<f32>(x_2265.x, x_2265.y, x_2265.z);
    } else {
      let x_2268 : f32 = u_xlat45;
      x_2262 = vec3<f32>(x_2268, x_2268, x_2268);
    }
    let x_2270 : vec3<f32> = x_2262;
    u_xlat24 = x_2270;
  } else {
    u_xlat24.x = 1.0f;
    u_xlat24.y = 1.0f;
    u_xlat24.z = 1.0f;
  }
  let x_2275 : vec3<f32> = u_xlat24;
  let x_2277 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat24 = (x_2275 * vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
  let x_2280 : f32 = u_xlat67;
  let x_2282 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_2280, x_2280, x_2280) * x_2282);
  let x_2284 : vec3<f32> = u_xlat4;
  let x_2286 : vec4<f32> = u_xlat1;
  u_xlat68 = dot(-(x_2284), vec3<f32>(x_2286.x, x_2286.y, x_2286.z));
  let x_2289 : f32 = u_xlat68;
  let x_2290 : f32 = u_xlat68;
  u_xlat68 = (x_2289 + x_2290);
  let x_2292 : vec4<f32> = u_xlat1;
  let x_2294 : f32 = u_xlat68;
  let x_2298 : vec3<f32> = u_xlat4;
  let x_2300 : vec3<f32> = ((vec3<f32>(x_2292.x, x_2292.y, x_2292.z) * -(vec3<f32>(x_2294, x_2294, x_2294))) + -(x_2298));
  let x_2301 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
  let x_2303 : vec4<f32> = u_xlat1;
  let x_2305 : vec3<f32> = u_xlat4;
  u_xlat68 = dot(vec3<f32>(x_2303.x, x_2303.y, x_2303.z), x_2305);
  let x_2307 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2307, 0.0f, 1.0f);
  let x_2309 : f32 = u_xlat68;
  u_xlat68 = (-(x_2309) + 1.0f);
  let x_2312 : f32 = u_xlat68;
  let x_2313 : f32 = u_xlat68;
  u_xlat68 = (x_2312 * x_2313);
  let x_2315 : f32 = u_xlat68;
  let x_2316 : f32 = u_xlat68;
  u_xlat68 = (x_2315 * x_2316);
  let x_2319 : f32 = u_xlat63;
  u_xlat69 = ((-(x_2319) * 0.699999988f) + 1.700000048f);
  let x_2325 : f32 = u_xlat63;
  let x_2326 : f32 = u_xlat69;
  u_xlat63 = (x_2325 * x_2326);
  let x_2328 : f32 = u_xlat63;
  u_xlat63 = (x_2328 * 6.0f);
  let x_2338 : vec4<f32> = u_xlat6;
  let x_2340 : f32 = u_xlat63;
  let x_2341 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2338.x, x_2338.y, x_2338.z), x_2340);
  u_xlat6 = x_2341;
  let x_2343 : f32 = u_xlat6.w;
  u_xlat63 = (x_2343 + -1.0f);
  let x_2346 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2347 : f32 = u_xlat63;
  u_xlat63 = ((x_2346 * x_2347) + 1.0f);
  let x_2350 : f32 = u_xlat63;
  u_xlat63 = max(x_2350, 0.0f);
  let x_2352 : f32 = u_xlat63;
  u_xlat63 = log2(x_2352);
  let x_2354 : f32 = u_xlat63;
  let x_2356 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_2354 * x_2356);
  let x_2358 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2358);
  let x_2360 : f32 = u_xlat63;
  let x_2362 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_2360 * x_2362);
  let x_2364 : vec4<f32> = u_xlat6;
  let x_2366 : f32 = u_xlat63;
  let x_2368 : vec3<f32> = (vec3<f32>(x_2364.x, x_2364.y, x_2364.z) * vec3<f32>(x_2366, x_2366, x_2366));
  let x_2369 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2369.w);
  let x_2371 : vec4<f32> = u_xlat2;
  let x_2373 : vec4<f32> = u_xlat2;
  let x_2377 : vec2<f32> = ((vec2<f32>(x_2371.x, x_2371.x) * vec2<f32>(x_2373.x, x_2373.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2378 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2377.x, x_2377.y, x_2378.z, x_2378.w);
  let x_2381 : f32 = u_xlat8.y;
  u_xlat63 = (1.0f / x_2381);
  let x_2383 : vec4<f32> = u_xlat0;
  let x_2386 : f32 = u_xlat64;
  u_xlat29 = (-(vec3<f32>(x_2383.x, x_2383.y, x_2383.z)) + vec3<f32>(x_2386, x_2386, x_2386));
  let x_2389 : f32 = u_xlat68;
  let x_2391 : vec3<f32> = u_xlat29;
  let x_2393 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2389, x_2389, x_2389) * x_2391) + vec3<f32>(x_2393.x, x_2393.y, x_2393.z));
  let x_2396 : f32 = u_xlat63;
  let x_2398 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2396, x_2396, x_2396) * x_2398);
  let x_2400 : vec4<f32> = u_xlat6;
  let x_2402 : vec3<f32> = u_xlat29;
  let x_2403 : vec3<f32> = (vec3<f32>(x_2400.x, x_2400.y, x_2400.z) * x_2402);
  let x_2404 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2403.x, x_2403.y, x_2403.z, x_2404.w);
  let x_2406 : vec4<f32> = u_xlat5;
  let x_2408 : vec3<f32> = u_xlat7;
  let x_2410 : vec4<f32> = u_xlat6;
  let x_2412 : vec3<f32> = ((vec3<f32>(x_2406.x, x_2406.y, x_2406.z) * x_2408) + vec3<f32>(x_2410.x, x_2410.y, x_2410.z));
  let x_2413 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2412.x, x_2412.y, x_2412.z, x_2413.w);
  let x_2416 : f32 = u_xlat3.x;
  let x_2418 : f32 = x_359.unity_LightData.z;
  u_xlat63 = (x_2416 * x_2418);
  let x_2420 : vec4<f32> = u_xlat1;
  let x_2423 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat64 = dot(vec3<f32>(x_2420.x, x_2420.y, x_2420.z), vec3<f32>(x_2423.x, x_2423.y, x_2423.z));
  let x_2426 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2426, 0.0f, 1.0f);
  let x_2428 : f32 = u_xlat63;
  let x_2429 : f32 = u_xlat64;
  u_xlat63 = (x_2428 * x_2429);
  let x_2431 : f32 = u_xlat63;
  let x_2433 : vec3<f32> = u_xlat24;
  let x_2434 : vec3<f32> = (vec3<f32>(x_2431, x_2431, x_2431) * x_2433);
  let x_2435 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2434.x, x_2434.y, x_2434.z, x_2435.w);
  let x_2437 : vec3<f32> = u_xlat4;
  let x_2439 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2441 : vec3<f32> = (x_2437 + vec3<f32>(x_2439.x, x_2439.y, x_2439.z));
  let x_2442 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2441.x, x_2441.y, x_2441.z, x_2442.w);
  let x_2444 : vec4<f32> = u_xlat6;
  let x_2446 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2444.x, x_2444.y, x_2444.z), vec3<f32>(x_2446.x, x_2446.y, x_2446.z));
  let x_2449 : f32 = u_xlat63;
  u_xlat63 = max(x_2449, 1.17549435e-37f);
  let x_2452 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2452);
  let x_2454 : f32 = u_xlat63;
  let x_2456 : vec4<f32> = u_xlat6;
  let x_2458 : vec3<f32> = (vec3<f32>(x_2454, x_2454, x_2454) * vec3<f32>(x_2456.x, x_2456.y, x_2456.z));
  let x_2459 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2458.x, x_2458.y, x_2458.z, x_2459.w);
  let x_2461 : vec4<f32> = u_xlat1;
  let x_2463 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2461.x, x_2461.y, x_2461.z), vec3<f32>(x_2463.x, x_2463.y, x_2463.z));
  let x_2466 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2466, 0.0f, 1.0f);
  let x_2469 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2471 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2469.x, x_2469.y, x_2469.z), vec3<f32>(x_2471.x, x_2471.y, x_2471.z));
  let x_2474 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2474, 0.0f, 1.0f);
  let x_2476 : f32 = u_xlat63;
  let x_2477 : f32 = u_xlat63;
  u_xlat63 = (x_2476 * x_2477);
  let x_2479 : f32 = u_xlat63;
  let x_2481 : f32 = u_xlat8.x;
  u_xlat63 = ((x_2479 * x_2481) + 1.000010014f);
  let x_2485 : f32 = u_xlat64;
  let x_2486 : f32 = u_xlat64;
  u_xlat64 = (x_2485 * x_2486);
  let x_2488 : f32 = u_xlat63;
  let x_2489 : f32 = u_xlat63;
  u_xlat63 = (x_2488 * x_2489);
  let x_2491 : f32 = u_xlat64;
  u_xlat64 = max(x_2491, 0.100000001f);
  let x_2494 : f32 = u_xlat63;
  let x_2495 : f32 = u_xlat64;
  u_xlat63 = (x_2494 * x_2495);
  let x_2497 : f32 = u_xlat65;
  let x_2498 : f32 = u_xlat63;
  u_xlat63 = (x_2497 * x_2498);
  let x_2500 : f32 = u_xlat23;
  let x_2501 : f32 = u_xlat63;
  u_xlat63 = (x_2500 / x_2501);
  let x_2503 : vec4<f32> = u_xlat0;
  let x_2505 : f32 = u_xlat63;
  let x_2508 : vec3<f32> = u_xlat7;
  let x_2509 : vec3<f32> = ((vec3<f32>(x_2503.x, x_2503.y, x_2503.z) * vec3<f32>(x_2505, x_2505, x_2505)) + x_2508);
  let x_2510 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2509.x, x_2509.y, x_2509.z, x_2510.w);
  let x_2512 : vec4<f32> = u_xlat3;
  let x_2514 : vec4<f32> = u_xlat6;
  let x_2516 : vec3<f32> = (vec3<f32>(x_2512.x, x_2512.y, x_2512.z) * vec3<f32>(x_2514.x, x_2514.y, x_2514.z));
  let x_2517 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2516.x, x_2516.y, x_2516.z, x_2517.w);
  let x_2520 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2522 : f32 = x_359.unity_LightData.y;
  u_xlat63 = min(x_2520, x_2522);
  let x_2524 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2524));
  let x_2529 : f32 = x_2169.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2531 : f32 = x_2169.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2533 : f32 = x_2169.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2535 : f32 = x_2169.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2536 : vec4<f32> = vec4<f32>(x_2529, x_2531, x_2533, x_2535);
  let x_2542 : vec4<bool> = (vec4<f32>(x_2536.x, x_2536.y, x_2536.z, x_2536.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2542.x, x_2542.y);
  u_xlat29.x = 0.0f;
  u_xlat29.y = 0.0f;
  u_xlat29.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2553 : u32 = u_xlatu_loop_1;
    let x_2554 : u32 = u_xlatu63;
    if ((x_2553 < x_2554)) {
    } else {
      break;
    }
    let x_2557 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_2557 >> 2u);
    let x_2560 : u32 = u_xlatu_loop_1;
    u_xlati66 = bitcast<i32>((x_2560 & 3u));
    let x_2563 : u32 = u_xlatu2;
    let x_2566 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2563)];
    let x_2576 : i32 = u_xlati66;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2581 : vec4<u32> = indexable[x_2576];
    u_xlat2.x = dot(x_2566, bitcast<vec4<f32>>(x_2581));
    let x_2586 : f32 = u_xlat2.x;
    u_xlatu2 = bitcast<u32>(i32(x_2586));
    let x_2589 : vec3<f32> = vs_INTERP0;
    let x_2601 : u32 = u_xlatu2;
    let x_2604 : vec4<f32> = x_2600.x_AdditionalLightsPosition[bitcast<i32>(x_2601)];
    let x_2607 : u32 = u_xlatu2;
    let x_2610 : vec4<f32> = x_2600.x_AdditionalLightsPosition[bitcast<i32>(x_2607)];
    let x_2612 : vec3<f32> = ((-(x_2589) * vec3<f32>(x_2604.w, x_2604.w, x_2604.w)) + vec3<f32>(x_2610.x, x_2610.y, x_2610.z));
    let x_2613 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2613.w);
    let x_2615 : vec4<f32> = u_xlat9;
    let x_2617 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_2615.x, x_2615.y, x_2615.z), vec3<f32>(x_2617.x, x_2617.y, x_2617.z));
    let x_2620 : f32 = u_xlat66;
    u_xlat66 = max(x_2620, 6.10351562e-05f);
    let x_2623 : f32 = u_xlat66;
    u_xlat68 = inverseSqrt(x_2623);
    let x_2625 : f32 = u_xlat68;
    let x_2627 : vec4<f32> = u_xlat9;
    let x_2629 : vec3<f32> = (vec3<f32>(x_2625, x_2625, x_2625) * vec3<f32>(x_2627.x, x_2627.y, x_2627.z));
    let x_2630 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2629.x, x_2629.y, x_2629.z, x_2630.w);
    let x_2632 : f32 = u_xlat66;
    u_xlat48.x = (1.0f / x_2632);
    let x_2635 : f32 = u_xlat66;
    let x_2636 : u32 = u_xlatu2;
    let x_2639 : f32 = x_2600.x_AdditionalLightsAttenuation[bitcast<i32>(x_2636)].x;
    u_xlat66 = (x_2635 * x_2639);
    let x_2641 : f32 = u_xlat66;
    let x_2643 : f32 = u_xlat66;
    u_xlat66 = ((-(x_2641) * x_2643) + 1.0f);
    let x_2646 : f32 = u_xlat66;
    u_xlat66 = max(x_2646, 0.0f);
    let x_2648 : f32 = u_xlat66;
    let x_2649 : f32 = u_xlat66;
    u_xlat66 = (x_2648 * x_2649);
    let x_2651 : f32 = u_xlat66;
    let x_2653 : f32 = u_xlat48.x;
    u_xlat66 = (x_2651 * x_2653);
    let x_2655 : u32 = u_xlatu2;
    let x_2658 : vec4<f32> = x_2600.x_AdditionalLightsSpotDir[bitcast<i32>(x_2655)];
    let x_2660 : vec4<f32> = u_xlat10;
    u_xlat48.x = dot(vec3<f32>(x_2658.x, x_2658.y, x_2658.z), vec3<f32>(x_2660.x, x_2660.y, x_2660.z));
    let x_2665 : f32 = u_xlat48.x;
    let x_2666 : u32 = u_xlatu2;
    let x_2669 : f32 = x_2600.x_AdditionalLightsAttenuation[bitcast<i32>(x_2666)].z;
    let x_2671 : u32 = u_xlatu2;
    let x_2674 : f32 = x_2600.x_AdditionalLightsAttenuation[bitcast<i32>(x_2671)].w;
    u_xlat48.x = ((x_2665 * x_2669) + x_2674);
    let x_2678 : f32 = u_xlat48.x;
    u_xlat48.x = clamp(x_2678, 0.0f, 1.0f);
    let x_2682 : f32 = u_xlat48.x;
    let x_2684 : f32 = u_xlat48.x;
    u_xlat48.x = (x_2682 * x_2684);
    let x_2687 : f32 = u_xlat66;
    let x_2689 : f32 = u_xlat48.x;
    u_xlat66 = (x_2687 * x_2689);
    let x_2692 : u32 = u_xlatu2;
    u_xlatu48 = (x_2692 >> 5u);
    let x_2695 : u32 = u_xlatu2;
    u_xlati69 = (1i << bitcast<u32>((bitcast<i32>(x_2695) & 31i)));
    let x_2701 : i32 = u_xlati69;
    let x_2703 : u32 = u_xlatu48;
    let x_2706 : f32 = x_2169.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2703)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_2701) & bitcast<u32>(x_2706)));
    let x_2710 : i32 = u_xlati48;
    if ((x_2710 != 0i)) {
      let x_2720 : u32 = u_xlatu2;
      let x_2723 : f32 = x_2719.x_AdditionalLightsLightTypes[bitcast<i32>(x_2720)].el;
      u_xlati48 = i32(x_2723);
      let x_2725 : i32 = u_xlati48;
      u_xlati69 = select(1i, 0i, (x_2725 != 0i));
      let x_2729 : u32 = u_xlatu2;
      u_xlati70 = (bitcast<i32>(x_2729) << bitcast<u32>(2i));
      let x_2732 : i32 = u_xlati69;
      if ((x_2732 != 0i)) {
        let x_2736 : vec3<f32> = vs_INTERP0;
        let x_2738 : i32 = u_xlati70;
        let x_2741 : i32 = u_xlati70;
        let x_2745 : vec4<f32> = x_2719.x_AdditionalLightsWorldToLights[((x_2738 + 1i) / 4i)][((x_2741 + 1i) % 4i)];
        let x_2747 : vec3<f32> = (vec3<f32>(x_2736.y, x_2736.y, x_2736.y) * vec3<f32>(x_2745.x, x_2745.y, x_2745.w));
        let x_2748 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2747.x, x_2747.y, x_2747.z, x_2748.w);
        let x_2750 : i32 = u_xlati70;
        let x_2752 : i32 = u_xlati70;
        let x_2755 : vec4<f32> = x_2719.x_AdditionalLightsWorldToLights[(x_2750 / 4i)][(x_2752 % 4i)];
        let x_2757 : vec3<f32> = vs_INTERP0;
        let x_2760 : vec4<f32> = u_xlat11;
        let x_2762 : vec3<f32> = ((vec3<f32>(x_2755.x, x_2755.y, x_2755.w) * vec3<f32>(x_2757.x, x_2757.x, x_2757.x)) + vec3<f32>(x_2760.x, x_2760.y, x_2760.z));
        let x_2763 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2762.x, x_2762.y, x_2762.z, x_2763.w);
        let x_2765 : i32 = u_xlati70;
        let x_2768 : i32 = u_xlati70;
        let x_2772 : vec4<f32> = x_2719.x_AdditionalLightsWorldToLights[((x_2765 + 2i) / 4i)][((x_2768 + 2i) % 4i)];
        let x_2774 : vec3<f32> = vs_INTERP0;
        let x_2777 : vec4<f32> = u_xlat11;
        let x_2779 : vec3<f32> = ((vec3<f32>(x_2772.x, x_2772.y, x_2772.w) * vec3<f32>(x_2774.z, x_2774.z, x_2774.z)) + vec3<f32>(x_2777.x, x_2777.y, x_2777.z));
        let x_2780 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2779.x, x_2779.y, x_2779.z, x_2780.w);
        let x_2782 : vec4<f32> = u_xlat11;
        let x_2784 : i32 = u_xlati70;
        let x_2787 : i32 = u_xlati70;
        let x_2791 : vec4<f32> = x_2719.x_AdditionalLightsWorldToLights[((x_2784 + 3i) / 4i)][((x_2787 + 3i) % 4i)];
        let x_2793 : vec3<f32> = (vec3<f32>(x_2782.x, x_2782.y, x_2782.z) + vec3<f32>(x_2791.x, x_2791.y, x_2791.w));
        let x_2794 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2793.x, x_2793.y, x_2793.z, x_2794.w);
        let x_2796 : vec4<f32> = u_xlat11;
        let x_2798 : vec4<f32> = u_xlat11;
        let x_2800 : vec2<f32> = (vec2<f32>(x_2796.x, x_2796.y) / vec2<f32>(x_2798.z, x_2798.z));
        let x_2801 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2800.x, x_2800.y, x_2801.z, x_2801.w);
        let x_2803 : vec4<f32> = u_xlat11;
        let x_2806 : vec2<f32> = ((vec2<f32>(x_2803.x, x_2803.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2807 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2806.x, x_2806.y, x_2807.z, x_2807.w);
        let x_2809 : vec4<f32> = u_xlat11;
        let x_2813 : vec2<f32> = clamp(vec2<f32>(x_2809.x, x_2809.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2814 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2813.x, x_2813.y, x_2814.z, x_2814.w);
        let x_2816 : u32 = u_xlatu2;
        let x_2819 : vec4<f32> = x_2719.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2816)];
        let x_2821 : vec4<f32> = u_xlat11;
        let x_2824 : u32 = u_xlatu2;
        let x_2827 : vec4<f32> = x_2719.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2824)];
        let x_2829 : vec2<f32> = ((vec2<f32>(x_2819.x, x_2819.y) * vec2<f32>(x_2821.x, x_2821.y)) + vec2<f32>(x_2827.z, x_2827.w));
        let x_2830 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2829.x, x_2829.y, x_2830.z, x_2830.w);
      } else {
        let x_2834 : i32 = u_xlati48;
        u_xlatb48 = (x_2834 == 1i);
        let x_2836 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_2836);
        let x_2838 : i32 = u_xlati48;
        if ((x_2838 != 0i)) {
          let x_2842 : vec3<f32> = vs_INTERP0;
          let x_2844 : i32 = u_xlati70;
          let x_2847 : i32 = u_xlati70;
          let x_2851 : vec4<f32> = x_2719.x_AdditionalLightsWorldToLights[((x_2844 + 1i) / 4i)][((x_2847 + 1i) % 4i)];
          u_xlat48 = (vec2<f32>(x_2842.y, x_2842.y) * vec2<f32>(x_2851.x, x_2851.y));
          let x_2854 : i32 = u_xlati70;
          let x_2856 : i32 = u_xlati70;
          let x_2859 : vec4<f32> = x_2719.x_AdditionalLightsWorldToLights[(x_2854 / 4i)][(x_2856 % 4i)];
          let x_2861 : vec3<f32> = vs_INTERP0;
          let x_2864 : vec2<f32> = u_xlat48;
          u_xlat48 = ((vec2<f32>(x_2859.x, x_2859.y) * vec2<f32>(x_2861.x, x_2861.x)) + x_2864);
          let x_2866 : i32 = u_xlati70;
          let x_2869 : i32 = u_xlati70;
          let x_2873 : vec4<f32> = x_2719.x_AdditionalLightsWorldToLights[((x_2866 + 2i) / 4i)][((x_2869 + 2i) % 4i)];
          let x_2875 : vec3<f32> = vs_INTERP0;
          let x_2878 : vec2<f32> = u_xlat48;
          u_xlat48 = ((vec2<f32>(x_2873.x, x_2873.y) * vec2<f32>(x_2875.z, x_2875.z)) + x_2878);
          let x_2880 : vec2<f32> = u_xlat48;
          let x_2881 : i32 = u_xlati70;
          let x_2884 : i32 = u_xlati70;
          let x_2888 : vec4<f32> = x_2719.x_AdditionalLightsWorldToLights[((x_2881 + 3i) / 4i)][((x_2884 + 3i) % 4i)];
          u_xlat48 = (x_2880 + vec2<f32>(x_2888.x, x_2888.y));
          let x_2891 : vec2<f32> = u_xlat48;
          u_xlat48 = ((x_2891 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2894 : vec2<f32> = u_xlat48;
          u_xlat48 = fract(x_2894);
          let x_2896 : u32 = u_xlatu2;
          let x_2899 : vec4<f32> = x_2719.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2896)];
          let x_2901 : vec2<f32> = u_xlat48;
          let x_2903 : u32 = u_xlatu2;
          let x_2906 : vec4<f32> = x_2719.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2903)];
          let x_2908 : vec2<f32> = ((vec2<f32>(x_2899.x, x_2899.y) * x_2901) + vec2<f32>(x_2906.z, x_2906.w));
          let x_2909 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2908.x, x_2908.y, x_2909.z, x_2909.w);
        } else {
          let x_2912 : vec3<f32> = vs_INTERP0;
          let x_2914 : i32 = u_xlati70;
          let x_2917 : i32 = u_xlati70;
          let x_2921 : vec4<f32> = x_2719.x_AdditionalLightsWorldToLights[((x_2914 + 1i) / 4i)][((x_2917 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2912.y, x_2912.y, x_2912.y, x_2912.y) * x_2921);
          let x_2923 : i32 = u_xlati70;
          let x_2925 : i32 = u_xlati70;
          let x_2928 : vec4<f32> = x_2719.x_AdditionalLightsWorldToLights[(x_2923 / 4i)][(x_2925 % 4i)];
          let x_2929 : vec3<f32> = vs_INTERP0;
          let x_2932 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2928 * vec4<f32>(x_2929.x, x_2929.x, x_2929.x, x_2929.x)) + x_2932);
          let x_2934 : i32 = u_xlati70;
          let x_2937 : i32 = u_xlati70;
          let x_2941 : vec4<f32> = x_2719.x_AdditionalLightsWorldToLights[((x_2934 + 2i) / 4i)][((x_2937 + 2i) % 4i)];
          let x_2942 : vec3<f32> = vs_INTERP0;
          let x_2945 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2941 * vec4<f32>(x_2942.z, x_2942.z, x_2942.z, x_2942.z)) + x_2945);
          let x_2947 : vec4<f32> = u_xlat12;
          let x_2948 : i32 = u_xlati70;
          let x_2951 : i32 = u_xlati70;
          let x_2955 : vec4<f32> = x_2719.x_AdditionalLightsWorldToLights[((x_2948 + 3i) / 4i)][((x_2951 + 3i) % 4i)];
          u_xlat12 = (x_2947 + x_2955);
          let x_2957 : vec4<f32> = u_xlat12;
          let x_2959 : vec4<f32> = u_xlat12;
          let x_2961 : vec3<f32> = (vec3<f32>(x_2957.x, x_2957.y, x_2957.z) / vec3<f32>(x_2959.w, x_2959.w, x_2959.w));
          let x_2962 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2961.x, x_2961.y, x_2961.z, x_2962.w);
          let x_2964 : vec4<f32> = u_xlat12;
          let x_2966 : vec4<f32> = u_xlat12;
          u_xlat48.x = dot(vec3<f32>(x_2964.x, x_2964.y, x_2964.z), vec3<f32>(x_2966.x, x_2966.y, x_2966.z));
          let x_2971 : f32 = u_xlat48.x;
          u_xlat48.x = inverseSqrt(x_2971);
          let x_2974 : vec2<f32> = u_xlat48;
          let x_2976 : vec4<f32> = u_xlat12;
          let x_2978 : vec3<f32> = (vec3<f32>(x_2974.x, x_2974.x, x_2974.x) * vec3<f32>(x_2976.x, x_2976.y, x_2976.z));
          let x_2979 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2978.x, x_2978.y, x_2978.z, x_2979.w);
          let x_2981 : vec4<f32> = u_xlat12;
          u_xlat48.x = dot(abs(vec3<f32>(x_2981.x, x_2981.y, x_2981.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2987 : f32 = u_xlat48.x;
          u_xlat48.x = max(x_2987, 0.000001f);
          let x_2992 : f32 = u_xlat48.x;
          u_xlat48.x = (1.0f / x_2992);
          let x_2995 : vec2<f32> = u_xlat48;
          let x_2997 : vec4<f32> = u_xlat12;
          let x_2999 : vec3<f32> = (vec3<f32>(x_2995.x, x_2995.x, x_2995.x) * vec3<f32>(x_2997.z, x_2997.x, x_2997.y));
          let x_3000 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2999.x, x_2999.y, x_2999.z, x_3000.w);
          let x_3003 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3003);
          let x_3007 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3007, 0.0f, 1.0f);
          let x_3011 : vec4<f32> = u_xlat13;
          let x_3014 : vec4<bool> = (vec4<f32>(x_3011.y, x_3011.z, x_3011.y, x_3011.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3014.x, x_3014.y);
          let x_3018 : bool = u_xlatb53.x;
          if (x_3018) {
            let x_3023 : f32 = u_xlat13.x;
            x_3019 = x_3023;
          } else {
            let x_3026 : f32 = u_xlat13.x;
            x_3019 = -(x_3026);
          }
          let x_3028 : f32 = x_3019;
          u_xlat53.x = x_3028;
          let x_3031 : bool = u_xlatb53.y;
          if (x_3031) {
            let x_3036 : f32 = u_xlat13.x;
            x_3032 = x_3036;
          } else {
            let x_3039 : f32 = u_xlat13.x;
            x_3032 = -(x_3039);
          }
          let x_3041 : f32 = x_3032;
          u_xlat53.y = x_3041;
          let x_3043 : vec4<f32> = u_xlat12;
          let x_3045 : vec2<f32> = u_xlat48;
          let x_3048 : vec2<f32> = u_xlat53;
          u_xlat48 = ((vec2<f32>(x_3043.x, x_3043.y) * vec2<f32>(x_3045.x, x_3045.x)) + x_3048);
          let x_3050 : vec2<f32> = u_xlat48;
          u_xlat48 = ((x_3050 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3053 : vec2<f32> = u_xlat48;
          u_xlat48 = clamp(x_3053, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3057 : u32 = u_xlatu2;
          let x_3060 : vec4<f32> = x_2719.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3057)];
          let x_3062 : vec2<f32> = u_xlat48;
          let x_3064 : u32 = u_xlatu2;
          let x_3067 : vec4<f32> = x_2719.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3064)];
          let x_3069 : vec2<f32> = ((vec2<f32>(x_3060.x, x_3060.y) * x_3062) + vec2<f32>(x_3067.z, x_3067.w));
          let x_3070 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3069.x, x_3069.y, x_3070.z, x_3070.w);
        }
      }
      let x_3077 : vec4<f32> = u_xlat11;
      let x_3080 : f32 = x_44.x_GlobalMipBias.x;
      let x_3081 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3077.x, x_3077.y), x_3080);
      u_xlat11 = x_3081;
      let x_3083 : bool = u_xlatb6.y;
      if (x_3083) {
        let x_3088 : f32 = u_xlat11.w;
        x_3084 = x_3088;
      } else {
        let x_3091 : f32 = u_xlat11.x;
        x_3084 = x_3091;
      }
      let x_3092 : f32 = x_3084;
      u_xlat48.x = x_3092;
      let x_3095 : bool = u_xlatb6.x;
      if (x_3095) {
        let x_3099 : vec4<f32> = u_xlat11;
        x_3096 = vec3<f32>(x_3099.x, x_3099.y, x_3099.z);
      } else {
        let x_3102 : vec2<f32> = u_xlat48;
        x_3096 = vec3<f32>(x_3102.x, x_3102.x, x_3102.x);
      }
      let x_3104 : vec3<f32> = x_3096;
      let x_3105 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3104.x, x_3104.y, x_3104.z, x_3105.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3111 : vec4<f32> = u_xlat11;
    let x_3113 : u32 = u_xlatu2;
    let x_3116 : vec4<f32> = x_2600.x_AdditionalLightsColor[bitcast<i32>(x_3113)];
    let x_3118 : vec3<f32> = (vec3<f32>(x_3111.x, x_3111.y, x_3111.z) * vec3<f32>(x_3116.x, x_3116.y, x_3116.z));
    let x_3119 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3118.x, x_3118.y, x_3118.z, x_3119.w);
    let x_3121 : f32 = u_xlat67;
    let x_3123 : vec4<f32> = u_xlat11;
    let x_3125 : vec3<f32> = (vec3<f32>(x_3121, x_3121, x_3121) * vec3<f32>(x_3123.x, x_3123.y, x_3123.z));
    let x_3126 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3125.x, x_3125.y, x_3125.z, x_3126.w);
    let x_3128 : vec4<f32> = u_xlat1;
    let x_3130 : vec4<f32> = u_xlat10;
    u_xlat2.x = dot(vec3<f32>(x_3128.x, x_3128.y, x_3128.z), vec3<f32>(x_3130.x, x_3130.y, x_3130.z));
    let x_3135 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_3135, 0.0f, 1.0f);
    let x_3139 : f32 = u_xlat2.x;
    let x_3140 : f32 = u_xlat66;
    u_xlat2.x = (x_3139 * x_3140);
    let x_3143 : vec4<f32> = u_xlat2;
    let x_3145 : vec4<f32> = u_xlat11;
    let x_3147 : vec3<f32> = (vec3<f32>(x_3143.x, x_3143.x, x_3143.x) * vec3<f32>(x_3145.x, x_3145.y, x_3145.z));
    let x_3148 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3147.x, x_3147.y, x_3147.z, x_3148.w);
    let x_3150 : vec4<f32> = u_xlat9;
    let x_3152 : f32 = u_xlat68;
    let x_3155 : vec3<f32> = u_xlat4;
    let x_3156 : vec3<f32> = ((vec3<f32>(x_3150.x, x_3150.y, x_3150.z) * vec3<f32>(x_3152, x_3152, x_3152)) + x_3155);
    let x_3157 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3156.x, x_3156.y, x_3156.z, x_3157.w);
    let x_3159 : vec4<f32> = u_xlat9;
    let x_3161 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_3159.x, x_3159.y, x_3159.z), vec3<f32>(x_3161.x, x_3161.y, x_3161.z));
    let x_3166 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_3166, 1.17549435e-37f);
    let x_3170 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_3170);
    let x_3173 : vec4<f32> = u_xlat2;
    let x_3175 : vec4<f32> = u_xlat9;
    let x_3177 : vec3<f32> = (vec3<f32>(x_3173.x, x_3173.x, x_3173.x) * vec3<f32>(x_3175.x, x_3175.y, x_3175.z));
    let x_3178 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3177.x, x_3177.y, x_3177.z, x_3178.w);
    let x_3180 : vec4<f32> = u_xlat1;
    let x_3182 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_3180.x, x_3180.y, x_3180.z), vec3<f32>(x_3182.x, x_3182.y, x_3182.z));
    let x_3187 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_3187, 0.0f, 1.0f);
    let x_3190 : vec4<f32> = u_xlat10;
    let x_3192 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3190.x, x_3190.y, x_3190.z), vec3<f32>(x_3192.x, x_3192.y, x_3192.z));
    let x_3195 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3195, 0.0f, 1.0f);
    let x_3198 : f32 = u_xlat2.x;
    let x_3200 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3198 * x_3200);
    let x_3204 : f32 = u_xlat2.x;
    let x_3206 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_3204 * x_3206) + 1.000010014f);
    let x_3210 : f32 = u_xlat66;
    let x_3211 : f32 = u_xlat66;
    u_xlat66 = (x_3210 * x_3211);
    let x_3214 : f32 = u_xlat2.x;
    let x_3216 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3214 * x_3216);
    let x_3219 : f32 = u_xlat66;
    u_xlat66 = max(x_3219, 0.100000001f);
    let x_3222 : f32 = u_xlat2.x;
    let x_3223 : f32 = u_xlat66;
    u_xlat2.x = (x_3222 * x_3223);
    let x_3226 : f32 = u_xlat65;
    let x_3228 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3226 * x_3228);
    let x_3231 : f32 = u_xlat23;
    let x_3233 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3231 / x_3233);
    let x_3236 : vec4<f32> = u_xlat0;
    let x_3238 : vec4<f32> = u_xlat2;
    let x_3241 : vec3<f32> = u_xlat7;
    let x_3242 : vec3<f32> = ((vec3<f32>(x_3236.x, x_3236.y, x_3236.z) * vec3<f32>(x_3238.x, x_3238.x, x_3238.x)) + x_3241);
    let x_3243 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3242.x, x_3242.y, x_3242.z, x_3243.w);
    let x_3245 : vec4<f32> = u_xlat9;
    let x_3247 : vec4<f32> = u_xlat11;
    let x_3250 : vec3<f32> = u_xlat29;
    u_xlat29 = ((vec3<f32>(x_3245.x, x_3245.y, x_3245.z) * vec3<f32>(x_3247.x, x_3247.y, x_3247.z)) + x_3250);

    continuing {
      let x_3252 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3252 + bitcast<u32>(1i));
    }
  }
  let x_3254 : vec4<f32> = u_xlat5;
  let x_3256 : f32 = u_xlat44;
  let x_3259 : vec4<f32> = u_xlat3;
  let x_3261 : vec3<f32> = ((vec3<f32>(x_3254.x, x_3254.y, x_3254.z) * vec3<f32>(x_3256, x_3256, x_3256)) + vec3<f32>(x_3259.x, x_3259.y, x_3259.z));
  let x_3262 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3261.x, x_3261.y, x_3261.z, x_3262.w);
  let x_3266 : vec3<f32> = u_xlat29;
  let x_3267 : vec4<f32> = u_xlat0;
  let x_3269 : vec3<f32> = (x_3266 + vec3<f32>(x_3267.x, x_3267.y, x_3267.z));
  let x_3270 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3269.x, x_3269.y, x_3269.z, x_3270.w);
  let x_3275 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3277 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_3275 & bitcast<u32>(x_3277));
  let x_3280 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3280);
  let x_3285 : f32 = u_xlat0.x;
  let x_3287 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3285 * x_3287);
  let x_3292 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3292, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3296 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3296.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

