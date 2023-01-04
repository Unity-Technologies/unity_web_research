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

@group(1) @binding(4) var<uniform> x_2167 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2598 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2717 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

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
  var x_2119 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlat45 : f32;
  var x_2249 : f32;
  var x_2260 : vec3<f32>;
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
  var x_3017 : f32;
  var x_3030 : f32;
  var x_3082 : f32;
  var x_3094 : vec3<f32>;
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
      let x_856 : vec4<f32> = x_515.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_853.x, x_853.y, x_853.x, x_853.y) + x_856);
      let x_859 : vec4<f32> = u_xlat6;
      let x_860 : vec2<f32> = vec2<f32>(x_859.x, x_859.y);
      let x_862 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_860.x, x_860.y, x_862);
      let x_875 : vec3<f32> = txVec0;
      let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_875.xy, x_875.z);
      u_xlat8.x = x_877;
      let x_880 : vec4<f32> = u_xlat6;
      let x_881 : vec2<f32> = vec2<f32>(x_880.z, x_880.w);
      let x_883 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_881.x, x_881.y, x_883);
      let x_890 : vec3<f32> = txVec1;
      let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_890.xy, x_890.z);
      u_xlat8.y = x_892;
      let x_894 : vec4<f32> = u_xlat3;
      let x_897 : vec4<f32> = x_515.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_894.x, x_894.y, x_894.x, x_894.y) + x_897);
      let x_900 : vec4<f32> = u_xlat6;
      let x_901 : vec2<f32> = vec2<f32>(x_900.x, x_900.y);
      let x_903 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_901.x, x_901.y, x_903);
      let x_910 : vec3<f32> = txVec2;
      let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_910.xy, x_910.z);
      u_xlat8.z = x_912;
      let x_915 : vec4<f32> = u_xlat6;
      let x_916 : vec2<f32> = vec2<f32>(x_915.z, x_915.w);
      let x_918 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_916.x, x_916.y, x_918);
      let x_925 : vec3<f32> = txVec3;
      let x_927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_925.xy, x_925.z);
      u_xlat8.w = x_927;
      let x_929 : vec4<f32> = u_xlat8;
      u_xlat66 = dot(x_929, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_936 : f32 = x_515.x_MainLightShadowParams.y;
      u_xlatb68 = (x_936 == 2.0f);
      let x_938 : bool = u_xlatb68;
      if (x_938) {
        let x_941 : vec4<f32> = u_xlat3;
        let x_944 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_949 : vec2<f32> = ((vec2<f32>(x_941.x, x_941.y) * vec2<f32>(x_944.z, x_944.w)) + vec2<f32>(0.5f, 0.5f));
        let x_950 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
        let x_952 : vec4<f32> = u_xlat6;
        let x_954 : vec2<f32> = floor(vec2<f32>(x_952.x, x_952.y));
        let x_955 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_958 : vec4<f32> = u_xlat3;
        let x_961 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_964 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_958.x, x_958.y) * vec2<f32>(x_961.z, x_961.w)) + -(vec2<f32>(x_964.x, x_964.y)));
        let x_968 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_968.x, x_968.x, x_968.y, x_968.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_973 : vec4<f32> = u_xlat8;
        let x_975 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_973.x, x_973.x, x_973.z, x_973.z) * vec4<f32>(x_975.x, x_975.x, x_975.z, x_975.z));
        let x_978 : vec4<f32> = u_xlat9;
        let x_982 : vec2<f32> = (vec2<f32>(x_978.y, x_978.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_983 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_982.x, x_983.y, x_982.y, x_983.w);
        let x_985 : vec4<f32> = u_xlat9;
        let x_988 : vec2<f32> = u_xlat48;
        let x_990 : vec2<f32> = ((vec2<f32>(x_985.x, x_985.z) * vec2<f32>(0.5f, 0.5f)) + -(x_988));
        let x_991 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_990.x, x_990.y, x_991.z, x_991.w);
        let x_994 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_994) + vec2<f32>(1.0f, 1.0f));
        let x_998 : vec2<f32> = u_xlat48;
        let x_1000 : vec2<f32> = min(x_998, vec2<f32>(0.0f, 0.0f));
        let x_1001 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1000.x, x_1000.y, x_1001.z, x_1001.w);
        let x_1003 : vec4<f32> = u_xlat10;
        let x_1006 : vec4<f32> = u_xlat10;
        let x_1009 : vec2<f32> = u_xlat51;
        let x_1010 : vec2<f32> = ((-(vec2<f32>(x_1003.x, x_1003.y)) * vec2<f32>(x_1006.x, x_1006.y)) + x_1009);
        let x_1011 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
        let x_1013 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1013, vec2<f32>(0.0f, 0.0f));
        let x_1015 : vec2<f32> = u_xlat48;
        let x_1017 : vec2<f32> = u_xlat48;
        let x_1019 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1015) * x_1017) + vec2<f32>(x_1019.y, x_1019.w));
        let x_1022 : vec4<f32> = u_xlat10;
        let x_1024 : vec2<f32> = (vec2<f32>(x_1022.x, x_1022.y) + vec2<f32>(1.0f, 1.0f));
        let x_1025 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1024.x, x_1024.y, x_1025.z, x_1025.w);
        let x_1027 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1027 + vec2<f32>(1.0f, 1.0f));
        let x_1030 : vec4<f32> = u_xlat9;
        let x_1034 : vec2<f32> = (vec2<f32>(x_1030.x, x_1030.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1035 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1034.x, x_1034.y, x_1035.z, x_1035.w);
        let x_1037 : vec2<f32> = u_xlat51;
        let x_1038 : vec2<f32> = (x_1037 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1039 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1038.x, x_1038.y, x_1039.z, x_1039.w);
        let x_1041 : vec4<f32> = u_xlat10;
        let x_1043 : vec2<f32> = (vec2<f32>(x_1041.x, x_1041.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1044 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1043.x, x_1043.y, x_1044.z, x_1044.w);
        let x_1047 : vec2<f32> = u_xlat48;
        let x_1048 : vec2<f32> = (x_1047 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1049 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1048.x, x_1048.y, x_1049.z, x_1049.w);
        let x_1051 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1051.y, x_1051.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1055 : f32 = u_xlat10.x;
        u_xlat11.z = x_1055;
        let x_1058 : f32 = u_xlat48.x;
        u_xlat11.w = x_1058;
        let x_1061 : f32 = u_xlat12.x;
        u_xlat9.z = x_1061;
        let x_1064 : f32 = u_xlat8.x;
        u_xlat9.w = x_1064;
        let x_1067 : vec4<f32> = u_xlat9;
        let x_1069 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1067.z, x_1067.w, x_1067.x, x_1067.z) + vec4<f32>(x_1069.z, x_1069.w, x_1069.x, x_1069.z));
        let x_1073 : f32 = u_xlat11.y;
        u_xlat10.z = x_1073;
        let x_1076 : f32 = u_xlat48.y;
        u_xlat10.w = x_1076;
        let x_1079 : f32 = u_xlat9.y;
        u_xlat12.z = x_1079;
        let x_1082 : f32 = u_xlat8.z;
        u_xlat12.w = x_1082;
        let x_1084 : vec4<f32> = u_xlat10;
        let x_1086 : vec4<f32> = u_xlat12;
        let x_1088 : vec3<f32> = (vec3<f32>(x_1084.z, x_1084.y, x_1084.w) + vec3<f32>(x_1086.z, x_1086.y, x_1086.w));
        let x_1089 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
        let x_1091 : vec4<f32> = u_xlat9;
        let x_1093 : vec4<f32> = u_xlat13;
        let x_1095 : vec3<f32> = (vec3<f32>(x_1091.x, x_1091.z, x_1091.w) / vec3<f32>(x_1093.z, x_1093.w, x_1093.y));
        let x_1096 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
        let x_1098 : vec4<f32> = u_xlat9;
        let x_1104 : vec3<f32> = (vec3<f32>(x_1098.x, x_1098.y, x_1098.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1105 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
        let x_1107 : vec4<f32> = u_xlat12;
        let x_1109 : vec4<f32> = u_xlat8;
        let x_1111 : vec3<f32> = (vec3<f32>(x_1107.z, x_1107.y, x_1107.w) / vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
        let x_1112 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
        let x_1114 : vec4<f32> = u_xlat10;
        let x_1116 : vec3<f32> = (vec3<f32>(x_1114.x, x_1114.y, x_1114.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1117 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1122 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1124 : vec3<f32> = (vec3<f32>(x_1119.y, x_1119.x, x_1119.z) * vec3<f32>(x_1122.x, x_1122.x, x_1122.x));
        let x_1125 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
        let x_1127 : vec4<f32> = u_xlat10;
        let x_1130 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1132 : vec3<f32> = (vec3<f32>(x_1127.x, x_1127.y, x_1127.z) * vec3<f32>(x_1130.y, x_1130.y, x_1130.y));
        let x_1133 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
        let x_1136 : f32 = u_xlat10.x;
        u_xlat9.w = x_1136;
        let x_1138 : vec4<f32> = u_xlat6;
        let x_1141 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y) * vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y)) + vec4<f32>(x_1144.y, x_1144.w, x_1144.x, x_1144.w));
        let x_1147 : vec4<f32> = u_xlat6;
        let x_1150 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1153 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1147.x, x_1147.y) * vec2<f32>(x_1150.x, x_1150.y)) + vec2<f32>(x_1153.z, x_1153.w));
        let x_1157 : f32 = u_xlat9.y;
        u_xlat10.w = x_1157;
        let x_1159 : vec4<f32> = u_xlat10;
        let x_1160 : vec2<f32> = vec2<f32>(x_1159.y, x_1159.z);
        let x_1161 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1161.x, x_1160.x, x_1161.z, x_1160.y);
        let x_1163 : vec4<f32> = u_xlat6;
        let x_1166 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1169 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1163.x, x_1163.y, x_1163.x, x_1163.y) * vec4<f32>(x_1166.x, x_1166.y, x_1166.x, x_1166.y)) + vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1169.y));
        let x_1172 : vec4<f32> = u_xlat6;
        let x_1175 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1178 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y) * vec4<f32>(x_1175.x, x_1175.y, x_1175.x, x_1175.y)) + vec4<f32>(x_1178.w, x_1178.y, x_1178.w, x_1178.z));
        let x_1181 : vec4<f32> = u_xlat6;
        let x_1184 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1187 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y) * vec4<f32>(x_1184.x, x_1184.y, x_1184.x, x_1184.y)) + vec4<f32>(x_1187.x, x_1187.w, x_1187.z, x_1187.w));
        let x_1191 : vec4<f32> = u_xlat8;
        let x_1193 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1191.x, x_1191.x, x_1191.x, x_1191.y) * vec4<f32>(x_1193.z, x_1193.w, x_1193.y, x_1193.z));
        let x_1197 : vec4<f32> = u_xlat8;
        let x_1199 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1197.y, x_1197.y, x_1197.z, x_1197.z) * x_1199);
        let x_1203 : f32 = u_xlat8.z;
        let x_1205 : f32 = u_xlat13.y;
        u_xlat68 = (x_1203 * x_1205);
        let x_1208 : vec4<f32> = u_xlat11;
        let x_1209 : vec2<f32> = vec2<f32>(x_1208.x, x_1208.y);
        let x_1211 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1209.x, x_1209.y, x_1211);
        let x_1218 : vec3<f32> = txVec4;
        let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1218.xy, x_1218.z);
        u_xlat6.x = x_1220;
        let x_1223 : vec4<f32> = u_xlat11;
        let x_1224 : vec2<f32> = vec2<f32>(x_1223.z, x_1223.w);
        let x_1226 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1224.x, x_1224.y, x_1226);
        let x_1234 : vec3<f32> = txVec5;
        let x_1236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1234.xy, x_1234.z);
        u_xlat27 = x_1236;
        let x_1237 : f32 = u_xlat27;
        let x_1239 : f32 = u_xlat14.y;
        u_xlat27 = (x_1237 * x_1239);
        let x_1242 : f32 = u_xlat14.x;
        let x_1244 : f32 = u_xlat6.x;
        let x_1246 : f32 = u_xlat27;
        u_xlat6.x = ((x_1242 * x_1244) + x_1246);
        let x_1250 : vec2<f32> = u_xlat48;
        let x_1252 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1259 : vec3<f32> = txVec6;
        let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1259.xy, x_1259.z);
        u_xlat27 = x_1261;
        let x_1263 : f32 = u_xlat14.z;
        let x_1264 : f32 = u_xlat27;
        let x_1267 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1263 * x_1264) + x_1267);
        let x_1271 : vec4<f32> = u_xlat10;
        let x_1272 : vec2<f32> = vec2<f32>(x_1271.x, x_1271.y);
        let x_1274 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1272.x, x_1272.y, x_1274);
        let x_1281 : vec3<f32> = txVec7;
        let x_1283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1281.xy, x_1281.z);
        u_xlat27 = x_1283;
        let x_1285 : f32 = u_xlat14.w;
        let x_1286 : f32 = u_xlat27;
        let x_1289 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1285 * x_1286) + x_1289);
        let x_1293 : vec4<f32> = u_xlat12;
        let x_1294 : vec2<f32> = vec2<f32>(x_1293.x, x_1293.y);
        let x_1296 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1294.x, x_1294.y, x_1296);
        let x_1303 : vec3<f32> = txVec8;
        let x_1305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1303.xy, x_1303.z);
        u_xlat27 = x_1305;
        let x_1307 : f32 = u_xlat15.x;
        let x_1308 : f32 = u_xlat27;
        let x_1311 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1307 * x_1308) + x_1311);
        let x_1315 : vec4<f32> = u_xlat12;
        let x_1316 : vec2<f32> = vec2<f32>(x_1315.z, x_1315.w);
        let x_1318 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1316.x, x_1316.y, x_1318);
        let x_1325 : vec3<f32> = txVec9;
        let x_1327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1325.xy, x_1325.z);
        u_xlat27 = x_1327;
        let x_1329 : f32 = u_xlat15.y;
        let x_1330 : f32 = u_xlat27;
        let x_1333 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1329 * x_1330) + x_1333);
        let x_1337 : vec4<f32> = u_xlat10;
        let x_1338 : vec2<f32> = vec2<f32>(x_1337.z, x_1337.w);
        let x_1340 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1338.x, x_1338.y, x_1340);
        let x_1347 : vec3<f32> = txVec10;
        let x_1349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1347.xy, x_1347.z);
        u_xlat27 = x_1349;
        let x_1351 : f32 = u_xlat15.z;
        let x_1352 : f32 = u_xlat27;
        let x_1355 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1351 * x_1352) + x_1355);
        let x_1359 : vec4<f32> = u_xlat9;
        let x_1360 : vec2<f32> = vec2<f32>(x_1359.x, x_1359.y);
        let x_1362 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1360.x, x_1360.y, x_1362);
        let x_1369 : vec3<f32> = txVec11;
        let x_1371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1369.xy, x_1369.z);
        u_xlat27 = x_1371;
        let x_1373 : f32 = u_xlat15.w;
        let x_1374 : f32 = u_xlat27;
        let x_1377 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1373 * x_1374) + x_1377);
        let x_1381 : vec4<f32> = u_xlat9;
        let x_1382 : vec2<f32> = vec2<f32>(x_1381.z, x_1381.w);
        let x_1384 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec12;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1391.xy, x_1391.z);
        u_xlat27 = x_1393;
        let x_1394 : f32 = u_xlat68;
        let x_1395 : f32 = u_xlat27;
        let x_1398 : f32 = u_xlat6.x;
        u_xlat66 = ((x_1394 * x_1395) + x_1398);
      } else {
        let x_1401 : vec4<f32> = u_xlat3;
        let x_1404 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1407 : vec2<f32> = ((vec2<f32>(x_1401.x, x_1401.y) * vec2<f32>(x_1404.z, x_1404.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1408 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1407.x, x_1407.y, x_1408.z, x_1408.w);
        let x_1410 : vec4<f32> = u_xlat6;
        let x_1412 : vec2<f32> = floor(vec2<f32>(x_1410.x, x_1410.y));
        let x_1413 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1412.x, x_1412.y, x_1413.z, x_1413.w);
        let x_1415 : vec4<f32> = u_xlat3;
        let x_1418 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1421 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1415.x, x_1415.y) * vec2<f32>(x_1418.z, x_1418.w)) + -(vec2<f32>(x_1421.x, x_1421.y)));
        let x_1425 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1425.x, x_1425.x, x_1425.y, x_1425.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1428 : vec4<f32> = u_xlat8;
        let x_1430 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1428.x, x_1428.x, x_1428.z, x_1428.z) * vec4<f32>(x_1430.x, x_1430.x, x_1430.z, x_1430.z));
        let x_1433 : vec4<f32> = u_xlat9;
        let x_1437 : vec2<f32> = (vec2<f32>(x_1433.y, x_1433.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1438 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1438.x, x_1437.x, x_1438.z, x_1437.y);
        let x_1440 : vec4<f32> = u_xlat9;
        let x_1443 : vec2<f32> = u_xlat48;
        let x_1445 : vec2<f32> = ((vec2<f32>(x_1440.x, x_1440.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1443));
        let x_1446 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1445.x, x_1446.y, x_1445.y, x_1446.w);
        let x_1448 : vec2<f32> = u_xlat48;
        let x_1450 : vec2<f32> = (-(x_1448) + vec2<f32>(1.0f, 1.0f));
        let x_1451 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1450.x, x_1450.y, x_1451.z, x_1451.w);
        let x_1453 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1453, vec2<f32>(0.0f, 0.0f));
        let x_1455 : vec2<f32> = u_xlat51;
        let x_1457 : vec2<f32> = u_xlat51;
        let x_1459 : vec4<f32> = u_xlat9;
        let x_1461 : vec2<f32> = ((-(x_1455) * x_1457) + vec2<f32>(x_1459.x, x_1459.y));
        let x_1462 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1461.x, x_1461.y, x_1462.z, x_1462.w);
        let x_1464 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1464, vec2<f32>(0.0f, 0.0f));
        let x_1467 : vec2<f32> = u_xlat51;
        let x_1469 : vec2<f32> = u_xlat51;
        let x_1471 : vec4<f32> = u_xlat8;
        let x_1473 : vec2<f32> = ((-(x_1467) * x_1469) + vec2<f32>(x_1471.y, x_1471.w));
        let x_1474 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1473.x, x_1474.y, x_1473.y);
        let x_1476 : vec4<f32> = u_xlat9;
        let x_1478 : vec2<f32> = (vec2<f32>(x_1476.x, x_1476.y) + vec2<f32>(2.0f, 2.0f));
        let x_1479 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1478.x, x_1478.y, x_1479.z, x_1479.w);
        let x_1481 : vec3<f32> = u_xlat29;
        let x_1483 : vec2<f32> = (vec2<f32>(x_1481.x, x_1481.z) + vec2<f32>(2.0f, 2.0f));
        let x_1484 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1484.x, x_1483.x, x_1484.z, x_1483.y);
        let x_1487 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1487 * 0.081632003f);
        let x_1491 : vec4<f32> = u_xlat8;
        let x_1494 : vec3<f32> = (vec3<f32>(x_1491.z, x_1491.x, x_1491.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1495 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1494.x, x_1494.y, x_1494.z, x_1495.w);
        let x_1497 : vec4<f32> = u_xlat9;
        let x_1500 : vec2<f32> = (vec2<f32>(x_1497.x, x_1497.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1501 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1500.x, x_1500.y, x_1501.z, x_1501.w);
        let x_1504 : f32 = u_xlat12.y;
        u_xlat11.x = x_1504;
        let x_1506 : vec2<f32> = u_xlat48;
        let x_1513 : vec2<f32> = ((vec2<f32>(x_1506.x, x_1506.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1514 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1514.x, x_1513.x, x_1514.z, x_1513.y);
        let x_1516 : vec2<f32> = u_xlat48;
        let x_1520 : vec2<f32> = ((vec2<f32>(x_1516.x, x_1516.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1521 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1520.x, x_1521.y, x_1520.y, x_1521.w);
        let x_1524 : f32 = u_xlat8.x;
        u_xlat9.y = x_1524;
        let x_1527 : f32 = u_xlat10.y;
        u_xlat9.w = x_1527;
        let x_1529 : vec4<f32> = u_xlat9;
        let x_1530 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1529 + x_1530);
        let x_1532 : vec2<f32> = u_xlat48;
        let x_1535 : vec2<f32> = ((vec2<f32>(x_1532.y, x_1532.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1536 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1536.x, x_1535.x, x_1536.z, x_1535.y);
        let x_1538 : vec2<f32> = u_xlat48;
        let x_1541 : vec2<f32> = ((vec2<f32>(x_1538.y, x_1538.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1542 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1541.x, x_1542.y, x_1541.y, x_1542.w);
        let x_1545 : f32 = u_xlat8.y;
        u_xlat10.y = x_1545;
        let x_1547 : vec4<f32> = u_xlat10;
        let x_1548 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1547 + x_1548);
        let x_1550 : vec4<f32> = u_xlat9;
        let x_1551 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1550 / x_1551);
        let x_1553 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1553 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1559 : vec4<f32> = u_xlat10;
        let x_1560 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1559 / x_1560);
        let x_1562 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1562 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1564 : vec4<f32> = u_xlat9;
        let x_1567 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1564.w, x_1564.x, x_1564.y, x_1564.z) * vec4<f32>(x_1567.x, x_1567.x, x_1567.x, x_1567.x));
        let x_1570 : vec4<f32> = u_xlat10;
        let x_1573 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1570.x, x_1570.w, x_1570.y, x_1570.z) * vec4<f32>(x_1573.y, x_1573.y, x_1573.y, x_1573.y));
        let x_1576 : vec4<f32> = u_xlat9;
        let x_1577 : vec3<f32> = vec3<f32>(x_1576.y, x_1576.z, x_1576.w);
        let x_1578 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1577.x, x_1578.y, x_1577.y, x_1577.z);
        let x_1581 : f32 = u_xlat10.x;
        u_xlat12.y = x_1581;
        let x_1583 : vec4<f32> = u_xlat6;
        let x_1586 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1589 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1583.x, x_1583.y, x_1583.x, x_1583.y) * vec4<f32>(x_1586.x, x_1586.y, x_1586.x, x_1586.y)) + vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1589.y));
        let x_1592 : vec4<f32> = u_xlat6;
        let x_1595 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1598 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1592.x, x_1592.y) * vec2<f32>(x_1595.x, x_1595.y)) + vec2<f32>(x_1598.w, x_1598.y));
        let x_1602 : f32 = u_xlat12.y;
        u_xlat9.y = x_1602;
        let x_1605 : f32 = u_xlat10.z;
        u_xlat12.y = x_1605;
        let x_1607 : vec4<f32> = u_xlat6;
        let x_1610 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1613 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1607.x, x_1607.y, x_1607.x, x_1607.y) * vec4<f32>(x_1610.x, x_1610.y, x_1610.x, x_1610.y)) + vec4<f32>(x_1613.x, x_1613.y, x_1613.z, x_1613.y));
        let x_1616 : vec4<f32> = u_xlat6;
        let x_1619 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1622 : vec4<f32> = u_xlat12;
        let x_1624 : vec2<f32> = ((vec2<f32>(x_1616.x, x_1616.y) * vec2<f32>(x_1619.x, x_1619.y)) + vec2<f32>(x_1622.w, x_1622.y));
        let x_1625 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1624.x, x_1624.y, x_1625.z, x_1625.w);
        let x_1628 : f32 = u_xlat12.y;
        u_xlat9.z = x_1628;
        let x_1631 : vec4<f32> = u_xlat6;
        let x_1634 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1637 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1631.x, x_1631.y, x_1631.x, x_1631.y) * vec4<f32>(x_1634.x, x_1634.y, x_1634.x, x_1634.y)) + vec4<f32>(x_1637.x, x_1637.y, x_1637.x, x_1637.z));
        let x_1641 : f32 = u_xlat10.w;
        u_xlat12.y = x_1641;
        let x_1644 : vec4<f32> = u_xlat6;
        let x_1647 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1650 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1644.x, x_1644.y, x_1644.x, x_1644.y) * vec4<f32>(x_1647.x, x_1647.y, x_1647.x, x_1647.y)) + vec4<f32>(x_1650.x, x_1650.y, x_1650.z, x_1650.y));
        let x_1654 : vec4<f32> = u_xlat6;
        let x_1657 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1660 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1654.x, x_1654.y) * vec2<f32>(x_1657.x, x_1657.y)) + vec2<f32>(x_1660.w, x_1660.y));
        let x_1664 : f32 = u_xlat12.y;
        u_xlat9.w = x_1664;
        let x_1667 : vec4<f32> = u_xlat6;
        let x_1670 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1673 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1667.x, x_1667.y) * vec2<f32>(x_1670.x, x_1670.y)) + vec2<f32>(x_1673.x, x_1673.w));
        let x_1676 : vec4<f32> = u_xlat12;
        let x_1677 : vec3<f32> = vec3<f32>(x_1676.x, x_1676.z, x_1676.w);
        let x_1678 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1677.x, x_1678.y, x_1677.y, x_1677.z);
        let x_1680 : vec4<f32> = u_xlat6;
        let x_1683 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1686 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1680.x, x_1680.y, x_1680.x, x_1680.y) * vec4<f32>(x_1683.x, x_1683.y, x_1683.x, x_1683.y)) + vec4<f32>(x_1686.x, x_1686.y, x_1686.z, x_1686.y));
        let x_1690 : vec4<f32> = u_xlat6;
        let x_1693 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1696 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1690.x, x_1690.y) * vec2<f32>(x_1693.x, x_1693.y)) + vec2<f32>(x_1696.w, x_1696.y));
        let x_1700 : f32 = u_xlat9.x;
        u_xlat10.x = x_1700;
        let x_1702 : vec4<f32> = u_xlat6;
        let x_1705 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1708 : vec4<f32> = u_xlat10;
        let x_1710 : vec2<f32> = ((vec2<f32>(x_1702.x, x_1702.y) * vec2<f32>(x_1705.x, x_1705.y)) + vec2<f32>(x_1708.x, x_1708.y));
        let x_1711 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1710.x, x_1710.y, x_1711.z, x_1711.w);
        let x_1714 : vec4<f32> = u_xlat8;
        let x_1716 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1714.x, x_1714.x, x_1714.x, x_1714.x) * x_1716);
        let x_1719 : vec4<f32> = u_xlat8;
        let x_1721 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1719.y, x_1719.y, x_1719.y, x_1719.y) * x_1721);
        let x_1724 : vec4<f32> = u_xlat8;
        let x_1726 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1724.z, x_1724.z, x_1724.z, x_1724.z) * x_1726);
        let x_1728 : vec4<f32> = u_xlat8;
        let x_1730 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1728.w, x_1728.w, x_1728.w, x_1728.w) * x_1730);
        let x_1733 : vec4<f32> = u_xlat13;
        let x_1734 : vec2<f32> = vec2<f32>(x_1733.x, x_1733.y);
        let x_1736 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1734.x, x_1734.y, x_1736);
        let x_1743 : vec3<f32> = txVec13;
        let x_1745 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1743.xy, x_1743.z);
        u_xlat68 = x_1745;
        let x_1747 : vec4<f32> = u_xlat13;
        let x_1748 : vec2<f32> = vec2<f32>(x_1747.z, x_1747.w);
        let x_1750 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1748.x, x_1748.y, x_1750);
        let x_1758 : vec3<f32> = txVec14;
        let x_1760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1758.xy, x_1758.z);
        u_xlat70 = x_1760;
        let x_1761 : f32 = u_xlat70;
        let x_1763 : f32 = u_xlat18.y;
        u_xlat70 = (x_1761 * x_1763);
        let x_1766 : f32 = u_xlat18.x;
        let x_1767 : f32 = u_xlat68;
        let x_1769 : f32 = u_xlat70;
        u_xlat68 = ((x_1766 * x_1767) + x_1769);
        let x_1772 : vec2<f32> = u_xlat48;
        let x_1774 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1772.x, x_1772.y, x_1774);
        let x_1781 : vec3<f32> = txVec15;
        let x_1783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1781.xy, x_1781.z);
        u_xlat48.x = x_1783;
        let x_1786 : f32 = u_xlat18.z;
        let x_1788 : f32 = u_xlat48.x;
        let x_1790 : f32 = u_xlat68;
        u_xlat68 = ((x_1786 * x_1788) + x_1790);
        let x_1793 : vec4<f32> = u_xlat16;
        let x_1794 : vec2<f32> = vec2<f32>(x_1793.x, x_1793.y);
        let x_1796 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1794.x, x_1794.y, x_1796);
        let x_1803 : vec3<f32> = txVec16;
        let x_1805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1803.xy, x_1803.z);
        u_xlat48.x = x_1805;
        let x_1808 : f32 = u_xlat18.w;
        let x_1810 : f32 = u_xlat48.x;
        let x_1812 : f32 = u_xlat68;
        u_xlat68 = ((x_1808 * x_1810) + x_1812);
        let x_1815 : vec4<f32> = u_xlat14;
        let x_1816 : vec2<f32> = vec2<f32>(x_1815.x, x_1815.y);
        let x_1818 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1816.x, x_1816.y, x_1818);
        let x_1825 : vec3<f32> = txVec17;
        let x_1827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1825.xy, x_1825.z);
        u_xlat48.x = x_1827;
        let x_1830 : f32 = u_xlat19.x;
        let x_1832 : f32 = u_xlat48.x;
        let x_1834 : f32 = u_xlat68;
        u_xlat68 = ((x_1830 * x_1832) + x_1834);
        let x_1837 : vec4<f32> = u_xlat14;
        let x_1838 : vec2<f32> = vec2<f32>(x_1837.z, x_1837.w);
        let x_1840 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1838.x, x_1838.y, x_1840);
        let x_1847 : vec3<f32> = txVec18;
        let x_1849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1847.xy, x_1847.z);
        u_xlat48.x = x_1849;
        let x_1852 : f32 = u_xlat19.y;
        let x_1854 : f32 = u_xlat48.x;
        let x_1856 : f32 = u_xlat68;
        u_xlat68 = ((x_1852 * x_1854) + x_1856);
        let x_1859 : vec4<f32> = u_xlat15;
        let x_1860 : vec2<f32> = vec2<f32>(x_1859.x, x_1859.y);
        let x_1862 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1860.x, x_1860.y, x_1862);
        let x_1869 : vec3<f32> = txVec19;
        let x_1871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1869.xy, x_1869.z);
        u_xlat48.x = x_1871;
        let x_1874 : f32 = u_xlat19.z;
        let x_1876 : f32 = u_xlat48.x;
        let x_1878 : f32 = u_xlat68;
        u_xlat68 = ((x_1874 * x_1876) + x_1878);
        let x_1881 : vec4<f32> = u_xlat16;
        let x_1882 : vec2<f32> = vec2<f32>(x_1881.z, x_1881.w);
        let x_1884 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1882.x, x_1882.y, x_1884);
        let x_1891 : vec3<f32> = txVec20;
        let x_1893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1891.xy, x_1891.z);
        u_xlat48.x = x_1893;
        let x_1896 : f32 = u_xlat19.w;
        let x_1898 : f32 = u_xlat48.x;
        let x_1900 : f32 = u_xlat68;
        u_xlat68 = ((x_1896 * x_1898) + x_1900);
        let x_1903 : vec4<f32> = u_xlat17;
        let x_1904 : vec2<f32> = vec2<f32>(x_1903.x, x_1903.y);
        let x_1906 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1904.x, x_1904.y, x_1906);
        let x_1913 : vec3<f32> = txVec21;
        let x_1915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1913.xy, x_1913.z);
        u_xlat48.x = x_1915;
        let x_1918 : f32 = u_xlat20.x;
        let x_1920 : f32 = u_xlat48.x;
        let x_1922 : f32 = u_xlat68;
        u_xlat68 = ((x_1918 * x_1920) + x_1922);
        let x_1925 : vec4<f32> = u_xlat17;
        let x_1926 : vec2<f32> = vec2<f32>(x_1925.z, x_1925.w);
        let x_1928 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1926.x, x_1926.y, x_1928);
        let x_1935 : vec3<f32> = txVec22;
        let x_1937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1935.xy, x_1935.z);
        u_xlat48.x = x_1937;
        let x_1940 : f32 = u_xlat20.y;
        let x_1942 : f32 = u_xlat48.x;
        let x_1944 : f32 = u_xlat68;
        u_xlat68 = ((x_1940 * x_1942) + x_1944);
        let x_1947 : vec2<f32> = u_xlat30;
        let x_1949 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1947.x, x_1947.y, x_1949);
        let x_1956 : vec3<f32> = txVec23;
        let x_1958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1956.xy, x_1956.z);
        u_xlat48.x = x_1958;
        let x_1961 : f32 = u_xlat20.z;
        let x_1963 : f32 = u_xlat48.x;
        let x_1965 : f32 = u_xlat68;
        u_xlat68 = ((x_1961 * x_1963) + x_1965);
        let x_1968 : vec2<f32> = u_xlat57;
        let x_1970 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1968.x, x_1968.y, x_1970);
        let x_1977 : vec3<f32> = txVec24;
        let x_1979 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1977.xy, x_1977.z);
        u_xlat48.x = x_1979;
        let x_1982 : f32 = u_xlat20.w;
        let x_1984 : f32 = u_xlat48.x;
        let x_1986 : f32 = u_xlat68;
        u_xlat68 = ((x_1982 * x_1984) + x_1986);
        let x_1989 : vec4<f32> = u_xlat12;
        let x_1990 : vec2<f32> = vec2<f32>(x_1989.x, x_1989.y);
        let x_1992 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1990.x, x_1990.y, x_1992);
        let x_1999 : vec3<f32> = txVec25;
        let x_2001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1999.xy, x_1999.z);
        u_xlat48.x = x_2001;
        let x_2004 : f32 = u_xlat8.x;
        let x_2006 : f32 = u_xlat48.x;
        let x_2008 : f32 = u_xlat68;
        u_xlat68 = ((x_2004 * x_2006) + x_2008);
        let x_2011 : vec4<f32> = u_xlat12;
        let x_2012 : vec2<f32> = vec2<f32>(x_2011.z, x_2011.w);
        let x_2014 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2012.x, x_2012.y, x_2014);
        let x_2021 : vec3<f32> = txVec26;
        let x_2023 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2021.xy, x_2021.z);
        u_xlat48.x = x_2023;
        let x_2026 : f32 = u_xlat8.y;
        let x_2028 : f32 = u_xlat48.x;
        let x_2030 : f32 = u_xlat68;
        u_xlat68 = ((x_2026 * x_2028) + x_2030);
        let x_2033 : vec2<f32> = u_xlat52;
        let x_2035 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2033.x, x_2033.y, x_2035);
        let x_2042 : vec3<f32> = txVec27;
        let x_2044 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2042.xy, x_2042.z);
        u_xlat48.x = x_2044;
        let x_2047 : f32 = u_xlat8.z;
        let x_2049 : f32 = u_xlat48.x;
        let x_2051 : f32 = u_xlat68;
        u_xlat68 = ((x_2047 * x_2049) + x_2051);
        let x_2054 : vec4<f32> = u_xlat6;
        let x_2055 : vec2<f32> = vec2<f32>(x_2054.x, x_2054.y);
        let x_2057 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2055.x, x_2055.y, x_2057);
        let x_2064 : vec3<f32> = txVec28;
        let x_2066 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2064.xy, x_2064.z);
        u_xlat6.x = x_2066;
        let x_2069 : f32 = u_xlat8.w;
        let x_2071 : f32 = u_xlat6.x;
        let x_2073 : f32 = u_xlat68;
        u_xlat66 = ((x_2069 * x_2071) + x_2073);
      }
    }
  } else {
    let x_2077 : vec4<f32> = u_xlat3;
    let x_2078 : vec2<f32> = vec2<f32>(x_2077.x, x_2077.y);
    let x_2080 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2078.x, x_2078.y, x_2080);
    let x_2087 : vec3<f32> = txVec29;
    let x_2089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2087.xy, x_2087.z);
    u_xlat66 = x_2089;
  }
  let x_2091 : f32 = x_515.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2091) + 1.0f);
  let x_2095 : f32 = u_xlat66;
  let x_2097 : f32 = x_515.x_MainLightShadowParams.x;
  let x_2100 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2095 * x_2097) + x_2100);
  let x_2105 : f32 = u_xlat3.z;
  u_xlatb24.x = (0.0f >= x_2105);
  let x_2110 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2110 >= 1.0f);
  let x_2112 : bool = u_xlatb45;
  let x_2114 : bool = u_xlatb24.x;
  u_xlatb24.x = (x_2112 | x_2114);
  let x_2118 : bool = u_xlatb24.x;
  if (x_2118) {
    x_2119 = 1.0f;
  } else {
    let x_2124 : f32 = u_xlat3.x;
    x_2119 = x_2124;
  }
  let x_2125 : f32 = x_2119;
  u_xlat3.x = x_2125;
  let x_2128 : vec3<f32> = vs_INTERP0;
  let x_2130 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat24 = (x_2128 + -(x_2130));
  let x_2133 : vec3<f32> = u_xlat24;
  let x_2134 : vec3<f32> = u_xlat24;
  u_xlat24.x = dot(x_2133, x_2134);
  let x_2138 : f32 = u_xlat24.x;
  let x_2140 : f32 = x_515.x_MainLightShadowParams.z;
  let x_2143 : f32 = x_515.x_MainLightShadowParams.w;
  u_xlat24.x = ((x_2138 * x_2140) + x_2143);
  let x_2147 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_2147, 0.0f, 1.0f);
  let x_2152 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2152) + 1.0f);
  let x_2156 : f32 = u_xlat24.x;
  let x_2157 : f32 = u_xlat45;
  let x_2160 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2156 * x_2157) + x_2160);
  let x_2169 : f32 = x_2167.x_MainLightCookieTextureFormat;
  u_xlatb24.x = !((x_2169 == -1.0f));
  let x_2173 : bool = u_xlatb24.x;
  if (x_2173) {
    let x_2176 : vec3<f32> = vs_INTERP0;
    let x_2179 : vec4<f32> = x_2167.x_MainLightWorldToLight[1i];
    let x_2181 : vec2<f32> = (vec2<f32>(x_2176.y, x_2176.y) * vec2<f32>(x_2179.x, x_2179.y));
    let x_2182 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2181.x, x_2181.y, x_2182.z);
    let x_2185 : vec4<f32> = x_2167.x_MainLightWorldToLight[0i];
    let x_2187 : vec3<f32> = vs_INTERP0;
    let x_2190 : vec3<f32> = u_xlat24;
    let x_2192 : vec2<f32> = ((vec2<f32>(x_2185.x, x_2185.y) * vec2<f32>(x_2187.x, x_2187.x)) + vec2<f32>(x_2190.x, x_2190.y));
    let x_2193 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2192.x, x_2192.y, x_2193.z);
    let x_2196 : vec4<f32> = x_2167.x_MainLightWorldToLight[2i];
    let x_2198 : vec3<f32> = vs_INTERP0;
    let x_2201 : vec3<f32> = u_xlat24;
    let x_2203 : vec2<f32> = ((vec2<f32>(x_2196.x, x_2196.y) * vec2<f32>(x_2198.z, x_2198.z)) + vec2<f32>(x_2201.x, x_2201.y));
    let x_2204 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2203.x, x_2203.y, x_2204.z);
    let x_2206 : vec3<f32> = u_xlat24;
    let x_2209 : vec4<f32> = x_2167.x_MainLightWorldToLight[3i];
    let x_2211 : vec2<f32> = (vec2<f32>(x_2206.x, x_2206.y) + vec2<f32>(x_2209.x, x_2209.y));
    let x_2212 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2211.x, x_2211.y, x_2212.z);
    let x_2214 : vec3<f32> = u_xlat24;
    let x_2217 : vec2<f32> = ((vec2<f32>(x_2214.x, x_2214.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2218 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2217.x, x_2217.y, x_2218.z);
    let x_2225 : vec3<f32> = u_xlat24;
    let x_2228 : f32 = x_44.x_GlobalMipBias.x;
    let x_2229 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2225.x, x_2225.y), x_2228);
    u_xlat6 = x_2229;
    let x_2231 : f32 = x_2167.x_MainLightCookieTextureFormat;
    let x_2233 : f32 = x_2167.x_MainLightCookieTextureFormat;
    let x_2235 : f32 = x_2167.x_MainLightCookieTextureFormat;
    let x_2237 : f32 = x_2167.x_MainLightCookieTextureFormat;
    let x_2238 : vec4<f32> = vec4<f32>(x_2231, x_2233, x_2235, x_2237);
    let x_2245 : vec4<bool> = (vec4<f32>(x_2238.x, x_2238.y, x_2238.z, x_2238.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb24 = vec2<bool>(x_2245.x, x_2245.y);
    let x_2248 : bool = u_xlatb24.y;
    if (x_2248) {
      let x_2253 : f32 = u_xlat6.w;
      x_2249 = x_2253;
    } else {
      let x_2256 : f32 = u_xlat6.x;
      x_2249 = x_2256;
    }
    let x_2257 : f32 = x_2249;
    u_xlat45 = x_2257;
    let x_2259 : bool = u_xlatb24.x;
    if (x_2259) {
      let x_2263 : vec4<f32> = u_xlat6;
      x_2260 = vec3<f32>(x_2263.x, x_2263.y, x_2263.z);
    } else {
      let x_2266 : f32 = u_xlat45;
      x_2260 = vec3<f32>(x_2266, x_2266, x_2266);
    }
    let x_2268 : vec3<f32> = x_2260;
    u_xlat24 = x_2268;
  } else {
    u_xlat24.x = 1.0f;
    u_xlat24.y = 1.0f;
    u_xlat24.z = 1.0f;
  }
  let x_2273 : vec3<f32> = u_xlat24;
  let x_2275 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat24 = (x_2273 * vec3<f32>(x_2275.x, x_2275.y, x_2275.z));
  let x_2278 : f32 = u_xlat67;
  let x_2280 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_2278, x_2278, x_2278) * x_2280);
  let x_2282 : vec3<f32> = u_xlat4;
  let x_2284 : vec4<f32> = u_xlat1;
  u_xlat68 = dot(-(x_2282), vec3<f32>(x_2284.x, x_2284.y, x_2284.z));
  let x_2287 : f32 = u_xlat68;
  let x_2288 : f32 = u_xlat68;
  u_xlat68 = (x_2287 + x_2288);
  let x_2290 : vec4<f32> = u_xlat1;
  let x_2292 : f32 = u_xlat68;
  let x_2296 : vec3<f32> = u_xlat4;
  let x_2298 : vec3<f32> = ((vec3<f32>(x_2290.x, x_2290.y, x_2290.z) * -(vec3<f32>(x_2292, x_2292, x_2292))) + -(x_2296));
  let x_2299 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
  let x_2301 : vec4<f32> = u_xlat1;
  let x_2303 : vec3<f32> = u_xlat4;
  u_xlat68 = dot(vec3<f32>(x_2301.x, x_2301.y, x_2301.z), x_2303);
  let x_2305 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2305, 0.0f, 1.0f);
  let x_2307 : f32 = u_xlat68;
  u_xlat68 = (-(x_2307) + 1.0f);
  let x_2310 : f32 = u_xlat68;
  let x_2311 : f32 = u_xlat68;
  u_xlat68 = (x_2310 * x_2311);
  let x_2313 : f32 = u_xlat68;
  let x_2314 : f32 = u_xlat68;
  u_xlat68 = (x_2313 * x_2314);
  let x_2317 : f32 = u_xlat63;
  u_xlat69 = ((-(x_2317) * 0.699999988f) + 1.700000048f);
  let x_2323 : f32 = u_xlat63;
  let x_2324 : f32 = u_xlat69;
  u_xlat63 = (x_2323 * x_2324);
  let x_2326 : f32 = u_xlat63;
  u_xlat63 = (x_2326 * 6.0f);
  let x_2336 : vec4<f32> = u_xlat6;
  let x_2338 : f32 = u_xlat63;
  let x_2339 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2336.x, x_2336.y, x_2336.z), x_2338);
  u_xlat6 = x_2339;
  let x_2341 : f32 = u_xlat6.w;
  u_xlat63 = (x_2341 + -1.0f);
  let x_2344 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2345 : f32 = u_xlat63;
  u_xlat63 = ((x_2344 * x_2345) + 1.0f);
  let x_2348 : f32 = u_xlat63;
  u_xlat63 = max(x_2348, 0.0f);
  let x_2350 : f32 = u_xlat63;
  u_xlat63 = log2(x_2350);
  let x_2352 : f32 = u_xlat63;
  let x_2354 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_2352 * x_2354);
  let x_2356 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2356);
  let x_2358 : f32 = u_xlat63;
  let x_2360 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_2358 * x_2360);
  let x_2362 : vec4<f32> = u_xlat6;
  let x_2364 : f32 = u_xlat63;
  let x_2366 : vec3<f32> = (vec3<f32>(x_2362.x, x_2362.y, x_2362.z) * vec3<f32>(x_2364, x_2364, x_2364));
  let x_2367 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2366.x, x_2366.y, x_2366.z, x_2367.w);
  let x_2369 : vec4<f32> = u_xlat2;
  let x_2371 : vec4<f32> = u_xlat2;
  let x_2375 : vec2<f32> = ((vec2<f32>(x_2369.x, x_2369.x) * vec2<f32>(x_2371.x, x_2371.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2376 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2375.x, x_2375.y, x_2376.z, x_2376.w);
  let x_2379 : f32 = u_xlat8.y;
  u_xlat63 = (1.0f / x_2379);
  let x_2381 : vec4<f32> = u_xlat0;
  let x_2384 : f32 = u_xlat64;
  u_xlat29 = (-(vec3<f32>(x_2381.x, x_2381.y, x_2381.z)) + vec3<f32>(x_2384, x_2384, x_2384));
  let x_2387 : f32 = u_xlat68;
  let x_2389 : vec3<f32> = u_xlat29;
  let x_2391 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2387, x_2387, x_2387) * x_2389) + vec3<f32>(x_2391.x, x_2391.y, x_2391.z));
  let x_2394 : f32 = u_xlat63;
  let x_2396 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2394, x_2394, x_2394) * x_2396);
  let x_2398 : vec4<f32> = u_xlat6;
  let x_2400 : vec3<f32> = u_xlat29;
  let x_2401 : vec3<f32> = (vec3<f32>(x_2398.x, x_2398.y, x_2398.z) * x_2400);
  let x_2402 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2401.x, x_2401.y, x_2401.z, x_2402.w);
  let x_2404 : vec4<f32> = u_xlat5;
  let x_2406 : vec3<f32> = u_xlat7;
  let x_2408 : vec4<f32> = u_xlat6;
  let x_2410 : vec3<f32> = ((vec3<f32>(x_2404.x, x_2404.y, x_2404.z) * x_2406) + vec3<f32>(x_2408.x, x_2408.y, x_2408.z));
  let x_2411 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2411.w);
  let x_2414 : f32 = u_xlat3.x;
  let x_2416 : f32 = x_359.unity_LightData.z;
  u_xlat63 = (x_2414 * x_2416);
  let x_2418 : vec4<f32> = u_xlat1;
  let x_2421 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat64 = dot(vec3<f32>(x_2418.x, x_2418.y, x_2418.z), vec3<f32>(x_2421.x, x_2421.y, x_2421.z));
  let x_2424 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2424, 0.0f, 1.0f);
  let x_2426 : f32 = u_xlat63;
  let x_2427 : f32 = u_xlat64;
  u_xlat63 = (x_2426 * x_2427);
  let x_2429 : f32 = u_xlat63;
  let x_2431 : vec3<f32> = u_xlat24;
  let x_2432 : vec3<f32> = (vec3<f32>(x_2429, x_2429, x_2429) * x_2431);
  let x_2433 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2432.x, x_2432.y, x_2432.z, x_2433.w);
  let x_2435 : vec3<f32> = u_xlat4;
  let x_2437 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2439 : vec3<f32> = (x_2435 + vec3<f32>(x_2437.x, x_2437.y, x_2437.z));
  let x_2440 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2439.x, x_2439.y, x_2439.z, x_2440.w);
  let x_2442 : vec4<f32> = u_xlat6;
  let x_2444 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2442.x, x_2442.y, x_2442.z), vec3<f32>(x_2444.x, x_2444.y, x_2444.z));
  let x_2447 : f32 = u_xlat63;
  u_xlat63 = max(x_2447, 1.17549435e-37f);
  let x_2450 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2450);
  let x_2452 : f32 = u_xlat63;
  let x_2454 : vec4<f32> = u_xlat6;
  let x_2456 : vec3<f32> = (vec3<f32>(x_2452, x_2452, x_2452) * vec3<f32>(x_2454.x, x_2454.y, x_2454.z));
  let x_2457 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2456.x, x_2456.y, x_2456.z, x_2457.w);
  let x_2459 : vec4<f32> = u_xlat1;
  let x_2461 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2459.x, x_2459.y, x_2459.z), vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
  let x_2464 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2464, 0.0f, 1.0f);
  let x_2467 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2469 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2467.x, x_2467.y, x_2467.z), vec3<f32>(x_2469.x, x_2469.y, x_2469.z));
  let x_2472 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2472, 0.0f, 1.0f);
  let x_2474 : f32 = u_xlat63;
  let x_2475 : f32 = u_xlat63;
  u_xlat63 = (x_2474 * x_2475);
  let x_2477 : f32 = u_xlat63;
  let x_2479 : f32 = u_xlat8.x;
  u_xlat63 = ((x_2477 * x_2479) + 1.000010014f);
  let x_2483 : f32 = u_xlat64;
  let x_2484 : f32 = u_xlat64;
  u_xlat64 = (x_2483 * x_2484);
  let x_2486 : f32 = u_xlat63;
  let x_2487 : f32 = u_xlat63;
  u_xlat63 = (x_2486 * x_2487);
  let x_2489 : f32 = u_xlat64;
  u_xlat64 = max(x_2489, 0.100000001f);
  let x_2492 : f32 = u_xlat63;
  let x_2493 : f32 = u_xlat64;
  u_xlat63 = (x_2492 * x_2493);
  let x_2495 : f32 = u_xlat65;
  let x_2496 : f32 = u_xlat63;
  u_xlat63 = (x_2495 * x_2496);
  let x_2498 : f32 = u_xlat23;
  let x_2499 : f32 = u_xlat63;
  u_xlat63 = (x_2498 / x_2499);
  let x_2501 : vec4<f32> = u_xlat0;
  let x_2503 : f32 = u_xlat63;
  let x_2506 : vec3<f32> = u_xlat7;
  let x_2507 : vec3<f32> = ((vec3<f32>(x_2501.x, x_2501.y, x_2501.z) * vec3<f32>(x_2503, x_2503, x_2503)) + x_2506);
  let x_2508 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2507.x, x_2507.y, x_2507.z, x_2508.w);
  let x_2510 : vec4<f32> = u_xlat3;
  let x_2512 : vec4<f32> = u_xlat6;
  let x_2514 : vec3<f32> = (vec3<f32>(x_2510.x, x_2510.y, x_2510.z) * vec3<f32>(x_2512.x, x_2512.y, x_2512.z));
  let x_2515 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2514.x, x_2514.y, x_2514.z, x_2515.w);
  let x_2518 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2520 : f32 = x_359.unity_LightData.y;
  u_xlat63 = min(x_2518, x_2520);
  let x_2522 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2522));
  let x_2527 : f32 = x_2167.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2529 : f32 = x_2167.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2531 : f32 = x_2167.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2533 : f32 = x_2167.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2534 : vec4<f32> = vec4<f32>(x_2527, x_2529, x_2531, x_2533);
  let x_2540 : vec4<bool> = (vec4<f32>(x_2534.x, x_2534.y, x_2534.z, x_2534.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2540.x, x_2540.y);
  u_xlat29.x = 0.0f;
  u_xlat29.y = 0.0f;
  u_xlat29.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2551 : u32 = u_xlatu_loop_1;
    let x_2552 : u32 = u_xlatu63;
    if ((x_2551 < x_2552)) {
    } else {
      break;
    }
    let x_2555 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_2555 >> 2u);
    let x_2558 : u32 = u_xlatu_loop_1;
    u_xlati66 = bitcast<i32>((x_2558 & 3u));
    let x_2561 : u32 = u_xlatu2;
    let x_2564 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2561)];
    let x_2574 : i32 = u_xlati66;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2579 : vec4<u32> = indexable[x_2574];
    u_xlat2.x = dot(x_2564, bitcast<vec4<f32>>(x_2579));
    let x_2584 : f32 = u_xlat2.x;
    u_xlatu2 = bitcast<u32>(i32(x_2584));
    let x_2587 : vec3<f32> = vs_INTERP0;
    let x_2599 : u32 = u_xlatu2;
    let x_2602 : vec4<f32> = x_2598.x_AdditionalLightsPosition[bitcast<i32>(x_2599)];
    let x_2605 : u32 = u_xlatu2;
    let x_2608 : vec4<f32> = x_2598.x_AdditionalLightsPosition[bitcast<i32>(x_2605)];
    let x_2610 : vec3<f32> = ((-(x_2587) * vec3<f32>(x_2602.w, x_2602.w, x_2602.w)) + vec3<f32>(x_2608.x, x_2608.y, x_2608.z));
    let x_2611 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2611.w);
    let x_2613 : vec4<f32> = u_xlat9;
    let x_2615 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_2613.x, x_2613.y, x_2613.z), vec3<f32>(x_2615.x, x_2615.y, x_2615.z));
    let x_2618 : f32 = u_xlat66;
    u_xlat66 = max(x_2618, 6.10351562e-05f);
    let x_2621 : f32 = u_xlat66;
    u_xlat68 = inverseSqrt(x_2621);
    let x_2623 : f32 = u_xlat68;
    let x_2625 : vec4<f32> = u_xlat9;
    let x_2627 : vec3<f32> = (vec3<f32>(x_2623, x_2623, x_2623) * vec3<f32>(x_2625.x, x_2625.y, x_2625.z));
    let x_2628 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2627.x, x_2627.y, x_2627.z, x_2628.w);
    let x_2630 : f32 = u_xlat66;
    u_xlat48.x = (1.0f / x_2630);
    let x_2633 : f32 = u_xlat66;
    let x_2634 : u32 = u_xlatu2;
    let x_2637 : f32 = x_2598.x_AdditionalLightsAttenuation[bitcast<i32>(x_2634)].x;
    u_xlat66 = (x_2633 * x_2637);
    let x_2639 : f32 = u_xlat66;
    let x_2641 : f32 = u_xlat66;
    u_xlat66 = ((-(x_2639) * x_2641) + 1.0f);
    let x_2644 : f32 = u_xlat66;
    u_xlat66 = max(x_2644, 0.0f);
    let x_2646 : f32 = u_xlat66;
    let x_2647 : f32 = u_xlat66;
    u_xlat66 = (x_2646 * x_2647);
    let x_2649 : f32 = u_xlat66;
    let x_2651 : f32 = u_xlat48.x;
    u_xlat66 = (x_2649 * x_2651);
    let x_2653 : u32 = u_xlatu2;
    let x_2656 : vec4<f32> = x_2598.x_AdditionalLightsSpotDir[bitcast<i32>(x_2653)];
    let x_2658 : vec4<f32> = u_xlat10;
    u_xlat48.x = dot(vec3<f32>(x_2656.x, x_2656.y, x_2656.z), vec3<f32>(x_2658.x, x_2658.y, x_2658.z));
    let x_2663 : f32 = u_xlat48.x;
    let x_2664 : u32 = u_xlatu2;
    let x_2667 : f32 = x_2598.x_AdditionalLightsAttenuation[bitcast<i32>(x_2664)].z;
    let x_2669 : u32 = u_xlatu2;
    let x_2672 : f32 = x_2598.x_AdditionalLightsAttenuation[bitcast<i32>(x_2669)].w;
    u_xlat48.x = ((x_2663 * x_2667) + x_2672);
    let x_2676 : f32 = u_xlat48.x;
    u_xlat48.x = clamp(x_2676, 0.0f, 1.0f);
    let x_2680 : f32 = u_xlat48.x;
    let x_2682 : f32 = u_xlat48.x;
    u_xlat48.x = (x_2680 * x_2682);
    let x_2685 : f32 = u_xlat66;
    let x_2687 : f32 = u_xlat48.x;
    u_xlat66 = (x_2685 * x_2687);
    let x_2690 : u32 = u_xlatu2;
    u_xlatu48 = (x_2690 >> 5u);
    let x_2693 : u32 = u_xlatu2;
    u_xlati69 = (1i << bitcast<u32>((bitcast<i32>(x_2693) & 31i)));
    let x_2699 : i32 = u_xlati69;
    let x_2701 : u32 = u_xlatu48;
    let x_2704 : f32 = x_2167.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2701)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_2699) & bitcast<u32>(x_2704)));
    let x_2708 : i32 = u_xlati48;
    if ((x_2708 != 0i)) {
      let x_2718 : u32 = u_xlatu2;
      let x_2721 : f32 = x_2717.x_AdditionalLightsLightTypes[bitcast<i32>(x_2718)].el;
      u_xlati48 = i32(x_2721);
      let x_2723 : i32 = u_xlati48;
      u_xlati69 = select(1i, 0i, (x_2723 != 0i));
      let x_2727 : u32 = u_xlatu2;
      u_xlati70 = (bitcast<i32>(x_2727) << bitcast<u32>(2i));
      let x_2730 : i32 = u_xlati69;
      if ((x_2730 != 0i)) {
        let x_2734 : vec3<f32> = vs_INTERP0;
        let x_2736 : i32 = u_xlati70;
        let x_2739 : i32 = u_xlati70;
        let x_2743 : vec4<f32> = x_2717.x_AdditionalLightsWorldToLights[((x_2736 + 1i) / 4i)][((x_2739 + 1i) % 4i)];
        let x_2745 : vec3<f32> = (vec3<f32>(x_2734.y, x_2734.y, x_2734.y) * vec3<f32>(x_2743.x, x_2743.y, x_2743.w));
        let x_2746 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2745.x, x_2745.y, x_2745.z, x_2746.w);
        let x_2748 : i32 = u_xlati70;
        let x_2750 : i32 = u_xlati70;
        let x_2753 : vec4<f32> = x_2717.x_AdditionalLightsWorldToLights[(x_2748 / 4i)][(x_2750 % 4i)];
        let x_2755 : vec3<f32> = vs_INTERP0;
        let x_2758 : vec4<f32> = u_xlat11;
        let x_2760 : vec3<f32> = ((vec3<f32>(x_2753.x, x_2753.y, x_2753.w) * vec3<f32>(x_2755.x, x_2755.x, x_2755.x)) + vec3<f32>(x_2758.x, x_2758.y, x_2758.z));
        let x_2761 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2760.x, x_2760.y, x_2760.z, x_2761.w);
        let x_2763 : i32 = u_xlati70;
        let x_2766 : i32 = u_xlati70;
        let x_2770 : vec4<f32> = x_2717.x_AdditionalLightsWorldToLights[((x_2763 + 2i) / 4i)][((x_2766 + 2i) % 4i)];
        let x_2772 : vec3<f32> = vs_INTERP0;
        let x_2775 : vec4<f32> = u_xlat11;
        let x_2777 : vec3<f32> = ((vec3<f32>(x_2770.x, x_2770.y, x_2770.w) * vec3<f32>(x_2772.z, x_2772.z, x_2772.z)) + vec3<f32>(x_2775.x, x_2775.y, x_2775.z));
        let x_2778 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2777.x, x_2777.y, x_2777.z, x_2778.w);
        let x_2780 : vec4<f32> = u_xlat11;
        let x_2782 : i32 = u_xlati70;
        let x_2785 : i32 = u_xlati70;
        let x_2789 : vec4<f32> = x_2717.x_AdditionalLightsWorldToLights[((x_2782 + 3i) / 4i)][((x_2785 + 3i) % 4i)];
        let x_2791 : vec3<f32> = (vec3<f32>(x_2780.x, x_2780.y, x_2780.z) + vec3<f32>(x_2789.x, x_2789.y, x_2789.w));
        let x_2792 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2791.x, x_2791.y, x_2791.z, x_2792.w);
        let x_2794 : vec4<f32> = u_xlat11;
        let x_2796 : vec4<f32> = u_xlat11;
        let x_2798 : vec2<f32> = (vec2<f32>(x_2794.x, x_2794.y) / vec2<f32>(x_2796.z, x_2796.z));
        let x_2799 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2798.x, x_2798.y, x_2799.z, x_2799.w);
        let x_2801 : vec4<f32> = u_xlat11;
        let x_2804 : vec2<f32> = ((vec2<f32>(x_2801.x, x_2801.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2805 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2804.x, x_2804.y, x_2805.z, x_2805.w);
        let x_2807 : vec4<f32> = u_xlat11;
        let x_2811 : vec2<f32> = clamp(vec2<f32>(x_2807.x, x_2807.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2812 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2811.x, x_2811.y, x_2812.z, x_2812.w);
        let x_2814 : u32 = u_xlatu2;
        let x_2817 : vec4<f32> = x_2717.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2814)];
        let x_2819 : vec4<f32> = u_xlat11;
        let x_2822 : u32 = u_xlatu2;
        let x_2825 : vec4<f32> = x_2717.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2822)];
        let x_2827 : vec2<f32> = ((vec2<f32>(x_2817.x, x_2817.y) * vec2<f32>(x_2819.x, x_2819.y)) + vec2<f32>(x_2825.z, x_2825.w));
        let x_2828 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2827.x, x_2827.y, x_2828.z, x_2828.w);
      } else {
        let x_2832 : i32 = u_xlati48;
        u_xlatb48 = (x_2832 == 1i);
        let x_2834 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_2834);
        let x_2836 : i32 = u_xlati48;
        if ((x_2836 != 0i)) {
          let x_2840 : vec3<f32> = vs_INTERP0;
          let x_2842 : i32 = u_xlati70;
          let x_2845 : i32 = u_xlati70;
          let x_2849 : vec4<f32> = x_2717.x_AdditionalLightsWorldToLights[((x_2842 + 1i) / 4i)][((x_2845 + 1i) % 4i)];
          u_xlat48 = (vec2<f32>(x_2840.y, x_2840.y) * vec2<f32>(x_2849.x, x_2849.y));
          let x_2852 : i32 = u_xlati70;
          let x_2854 : i32 = u_xlati70;
          let x_2857 : vec4<f32> = x_2717.x_AdditionalLightsWorldToLights[(x_2852 / 4i)][(x_2854 % 4i)];
          let x_2859 : vec3<f32> = vs_INTERP0;
          let x_2862 : vec2<f32> = u_xlat48;
          u_xlat48 = ((vec2<f32>(x_2857.x, x_2857.y) * vec2<f32>(x_2859.x, x_2859.x)) + x_2862);
          let x_2864 : i32 = u_xlati70;
          let x_2867 : i32 = u_xlati70;
          let x_2871 : vec4<f32> = x_2717.x_AdditionalLightsWorldToLights[((x_2864 + 2i) / 4i)][((x_2867 + 2i) % 4i)];
          let x_2873 : vec3<f32> = vs_INTERP0;
          let x_2876 : vec2<f32> = u_xlat48;
          u_xlat48 = ((vec2<f32>(x_2871.x, x_2871.y) * vec2<f32>(x_2873.z, x_2873.z)) + x_2876);
          let x_2878 : vec2<f32> = u_xlat48;
          let x_2879 : i32 = u_xlati70;
          let x_2882 : i32 = u_xlati70;
          let x_2886 : vec4<f32> = x_2717.x_AdditionalLightsWorldToLights[((x_2879 + 3i) / 4i)][((x_2882 + 3i) % 4i)];
          u_xlat48 = (x_2878 + vec2<f32>(x_2886.x, x_2886.y));
          let x_2889 : vec2<f32> = u_xlat48;
          u_xlat48 = ((x_2889 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2892 : vec2<f32> = u_xlat48;
          u_xlat48 = fract(x_2892);
          let x_2894 : u32 = u_xlatu2;
          let x_2897 : vec4<f32> = x_2717.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2894)];
          let x_2899 : vec2<f32> = u_xlat48;
          let x_2901 : u32 = u_xlatu2;
          let x_2904 : vec4<f32> = x_2717.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2901)];
          let x_2906 : vec2<f32> = ((vec2<f32>(x_2897.x, x_2897.y) * x_2899) + vec2<f32>(x_2904.z, x_2904.w));
          let x_2907 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2906.x, x_2906.y, x_2907.z, x_2907.w);
        } else {
          let x_2910 : vec3<f32> = vs_INTERP0;
          let x_2912 : i32 = u_xlati70;
          let x_2915 : i32 = u_xlati70;
          let x_2919 : vec4<f32> = x_2717.x_AdditionalLightsWorldToLights[((x_2912 + 1i) / 4i)][((x_2915 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2910.y, x_2910.y, x_2910.y, x_2910.y) * x_2919);
          let x_2921 : i32 = u_xlati70;
          let x_2923 : i32 = u_xlati70;
          let x_2926 : vec4<f32> = x_2717.x_AdditionalLightsWorldToLights[(x_2921 / 4i)][(x_2923 % 4i)];
          let x_2927 : vec3<f32> = vs_INTERP0;
          let x_2930 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2926 * vec4<f32>(x_2927.x, x_2927.x, x_2927.x, x_2927.x)) + x_2930);
          let x_2932 : i32 = u_xlati70;
          let x_2935 : i32 = u_xlati70;
          let x_2939 : vec4<f32> = x_2717.x_AdditionalLightsWorldToLights[((x_2932 + 2i) / 4i)][((x_2935 + 2i) % 4i)];
          let x_2940 : vec3<f32> = vs_INTERP0;
          let x_2943 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2939 * vec4<f32>(x_2940.z, x_2940.z, x_2940.z, x_2940.z)) + x_2943);
          let x_2945 : vec4<f32> = u_xlat12;
          let x_2946 : i32 = u_xlati70;
          let x_2949 : i32 = u_xlati70;
          let x_2953 : vec4<f32> = x_2717.x_AdditionalLightsWorldToLights[((x_2946 + 3i) / 4i)][((x_2949 + 3i) % 4i)];
          u_xlat12 = (x_2945 + x_2953);
          let x_2955 : vec4<f32> = u_xlat12;
          let x_2957 : vec4<f32> = u_xlat12;
          let x_2959 : vec3<f32> = (vec3<f32>(x_2955.x, x_2955.y, x_2955.z) / vec3<f32>(x_2957.w, x_2957.w, x_2957.w));
          let x_2960 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2959.x, x_2959.y, x_2959.z, x_2960.w);
          let x_2962 : vec4<f32> = u_xlat12;
          let x_2964 : vec4<f32> = u_xlat12;
          u_xlat48.x = dot(vec3<f32>(x_2962.x, x_2962.y, x_2962.z), vec3<f32>(x_2964.x, x_2964.y, x_2964.z));
          let x_2969 : f32 = u_xlat48.x;
          u_xlat48.x = inverseSqrt(x_2969);
          let x_2972 : vec2<f32> = u_xlat48;
          let x_2974 : vec4<f32> = u_xlat12;
          let x_2976 : vec3<f32> = (vec3<f32>(x_2972.x, x_2972.x, x_2972.x) * vec3<f32>(x_2974.x, x_2974.y, x_2974.z));
          let x_2977 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2976.x, x_2976.y, x_2976.z, x_2977.w);
          let x_2979 : vec4<f32> = u_xlat12;
          u_xlat48.x = dot(abs(vec3<f32>(x_2979.x, x_2979.y, x_2979.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2985 : f32 = u_xlat48.x;
          u_xlat48.x = max(x_2985, 0.000001f);
          let x_2990 : f32 = u_xlat48.x;
          u_xlat48.x = (1.0f / x_2990);
          let x_2993 : vec2<f32> = u_xlat48;
          let x_2995 : vec4<f32> = u_xlat12;
          let x_2997 : vec3<f32> = (vec3<f32>(x_2993.x, x_2993.x, x_2993.x) * vec3<f32>(x_2995.z, x_2995.x, x_2995.y));
          let x_2998 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2997.x, x_2997.y, x_2997.z, x_2998.w);
          let x_3001 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3001);
          let x_3005 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3005, 0.0f, 1.0f);
          let x_3009 : vec4<f32> = u_xlat13;
          let x_3012 : vec4<bool> = (vec4<f32>(x_3009.y, x_3009.z, x_3009.y, x_3009.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3012.x, x_3012.y);
          let x_3016 : bool = u_xlatb53.x;
          if (x_3016) {
            let x_3021 : f32 = u_xlat13.x;
            x_3017 = x_3021;
          } else {
            let x_3024 : f32 = u_xlat13.x;
            x_3017 = -(x_3024);
          }
          let x_3026 : f32 = x_3017;
          u_xlat53.x = x_3026;
          let x_3029 : bool = u_xlatb53.y;
          if (x_3029) {
            let x_3034 : f32 = u_xlat13.x;
            x_3030 = x_3034;
          } else {
            let x_3037 : f32 = u_xlat13.x;
            x_3030 = -(x_3037);
          }
          let x_3039 : f32 = x_3030;
          u_xlat53.y = x_3039;
          let x_3041 : vec4<f32> = u_xlat12;
          let x_3043 : vec2<f32> = u_xlat48;
          let x_3046 : vec2<f32> = u_xlat53;
          u_xlat48 = ((vec2<f32>(x_3041.x, x_3041.y) * vec2<f32>(x_3043.x, x_3043.x)) + x_3046);
          let x_3048 : vec2<f32> = u_xlat48;
          u_xlat48 = ((x_3048 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3051 : vec2<f32> = u_xlat48;
          u_xlat48 = clamp(x_3051, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3055 : u32 = u_xlatu2;
          let x_3058 : vec4<f32> = x_2717.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3055)];
          let x_3060 : vec2<f32> = u_xlat48;
          let x_3062 : u32 = u_xlatu2;
          let x_3065 : vec4<f32> = x_2717.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3062)];
          let x_3067 : vec2<f32> = ((vec2<f32>(x_3058.x, x_3058.y) * x_3060) + vec2<f32>(x_3065.z, x_3065.w));
          let x_3068 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3067.x, x_3067.y, x_3068.z, x_3068.w);
        }
      }
      let x_3075 : vec4<f32> = u_xlat11;
      let x_3078 : f32 = x_44.x_GlobalMipBias.x;
      let x_3079 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3075.x, x_3075.y), x_3078);
      u_xlat11 = x_3079;
      let x_3081 : bool = u_xlatb6.y;
      if (x_3081) {
        let x_3086 : f32 = u_xlat11.w;
        x_3082 = x_3086;
      } else {
        let x_3089 : f32 = u_xlat11.x;
        x_3082 = x_3089;
      }
      let x_3090 : f32 = x_3082;
      u_xlat48.x = x_3090;
      let x_3093 : bool = u_xlatb6.x;
      if (x_3093) {
        let x_3097 : vec4<f32> = u_xlat11;
        x_3094 = vec3<f32>(x_3097.x, x_3097.y, x_3097.z);
      } else {
        let x_3100 : vec2<f32> = u_xlat48;
        x_3094 = vec3<f32>(x_3100.x, x_3100.x, x_3100.x);
      }
      let x_3102 : vec3<f32> = x_3094;
      let x_3103 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3102.x, x_3102.y, x_3102.z, x_3103.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3109 : vec4<f32> = u_xlat11;
    let x_3111 : u32 = u_xlatu2;
    let x_3114 : vec4<f32> = x_2598.x_AdditionalLightsColor[bitcast<i32>(x_3111)];
    let x_3116 : vec3<f32> = (vec3<f32>(x_3109.x, x_3109.y, x_3109.z) * vec3<f32>(x_3114.x, x_3114.y, x_3114.z));
    let x_3117 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3116.x, x_3116.y, x_3116.z, x_3117.w);
    let x_3119 : f32 = u_xlat67;
    let x_3121 : vec4<f32> = u_xlat11;
    let x_3123 : vec3<f32> = (vec3<f32>(x_3119, x_3119, x_3119) * vec3<f32>(x_3121.x, x_3121.y, x_3121.z));
    let x_3124 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3123.x, x_3123.y, x_3123.z, x_3124.w);
    let x_3126 : vec4<f32> = u_xlat1;
    let x_3128 : vec4<f32> = u_xlat10;
    u_xlat2.x = dot(vec3<f32>(x_3126.x, x_3126.y, x_3126.z), vec3<f32>(x_3128.x, x_3128.y, x_3128.z));
    let x_3133 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_3133, 0.0f, 1.0f);
    let x_3137 : f32 = u_xlat2.x;
    let x_3138 : f32 = u_xlat66;
    u_xlat2.x = (x_3137 * x_3138);
    let x_3141 : vec4<f32> = u_xlat2;
    let x_3143 : vec4<f32> = u_xlat11;
    let x_3145 : vec3<f32> = (vec3<f32>(x_3141.x, x_3141.x, x_3141.x) * vec3<f32>(x_3143.x, x_3143.y, x_3143.z));
    let x_3146 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3145.x, x_3145.y, x_3145.z, x_3146.w);
    let x_3148 : vec4<f32> = u_xlat9;
    let x_3150 : f32 = u_xlat68;
    let x_3153 : vec3<f32> = u_xlat4;
    let x_3154 : vec3<f32> = ((vec3<f32>(x_3148.x, x_3148.y, x_3148.z) * vec3<f32>(x_3150, x_3150, x_3150)) + x_3153);
    let x_3155 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3154.x, x_3154.y, x_3154.z, x_3155.w);
    let x_3157 : vec4<f32> = u_xlat9;
    let x_3159 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_3157.x, x_3157.y, x_3157.z), vec3<f32>(x_3159.x, x_3159.y, x_3159.z));
    let x_3164 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_3164, 1.17549435e-37f);
    let x_3168 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_3168);
    let x_3171 : vec4<f32> = u_xlat2;
    let x_3173 : vec4<f32> = u_xlat9;
    let x_3175 : vec3<f32> = (vec3<f32>(x_3171.x, x_3171.x, x_3171.x) * vec3<f32>(x_3173.x, x_3173.y, x_3173.z));
    let x_3176 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3175.x, x_3175.y, x_3175.z, x_3176.w);
    let x_3178 : vec4<f32> = u_xlat1;
    let x_3180 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_3178.x, x_3178.y, x_3178.z), vec3<f32>(x_3180.x, x_3180.y, x_3180.z));
    let x_3185 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_3185, 0.0f, 1.0f);
    let x_3188 : vec4<f32> = u_xlat10;
    let x_3190 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3188.x, x_3188.y, x_3188.z), vec3<f32>(x_3190.x, x_3190.y, x_3190.z));
    let x_3193 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3193, 0.0f, 1.0f);
    let x_3196 : f32 = u_xlat2.x;
    let x_3198 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3196 * x_3198);
    let x_3202 : f32 = u_xlat2.x;
    let x_3204 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_3202 * x_3204) + 1.000010014f);
    let x_3208 : f32 = u_xlat66;
    let x_3209 : f32 = u_xlat66;
    u_xlat66 = (x_3208 * x_3209);
    let x_3212 : f32 = u_xlat2.x;
    let x_3214 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3212 * x_3214);
    let x_3217 : f32 = u_xlat66;
    u_xlat66 = max(x_3217, 0.100000001f);
    let x_3220 : f32 = u_xlat2.x;
    let x_3221 : f32 = u_xlat66;
    u_xlat2.x = (x_3220 * x_3221);
    let x_3224 : f32 = u_xlat65;
    let x_3226 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3224 * x_3226);
    let x_3229 : f32 = u_xlat23;
    let x_3231 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3229 / x_3231);
    let x_3234 : vec4<f32> = u_xlat0;
    let x_3236 : vec4<f32> = u_xlat2;
    let x_3239 : vec3<f32> = u_xlat7;
    let x_3240 : vec3<f32> = ((vec3<f32>(x_3234.x, x_3234.y, x_3234.z) * vec3<f32>(x_3236.x, x_3236.x, x_3236.x)) + x_3239);
    let x_3241 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3240.x, x_3240.y, x_3240.z, x_3241.w);
    let x_3243 : vec4<f32> = u_xlat9;
    let x_3245 : vec4<f32> = u_xlat11;
    let x_3248 : vec3<f32> = u_xlat29;
    u_xlat29 = ((vec3<f32>(x_3243.x, x_3243.y, x_3243.z) * vec3<f32>(x_3245.x, x_3245.y, x_3245.z)) + x_3248);

    continuing {
      let x_3250 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3250 + bitcast<u32>(1i));
    }
  }
  let x_3252 : vec4<f32> = u_xlat5;
  let x_3254 : f32 = u_xlat44;
  let x_3257 : vec4<f32> = u_xlat3;
  let x_3259 : vec3<f32> = ((vec3<f32>(x_3252.x, x_3252.y, x_3252.z) * vec3<f32>(x_3254, x_3254, x_3254)) + vec3<f32>(x_3257.x, x_3257.y, x_3257.z));
  let x_3260 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3259.x, x_3259.y, x_3259.z, x_3260.w);
  let x_3264 : vec3<f32> = u_xlat29;
  let x_3265 : vec4<f32> = u_xlat0;
  let x_3267 : vec3<f32> = (x_3264 + vec3<f32>(x_3265.x, x_3265.y, x_3265.z));
  let x_3268 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3267.x, x_3267.y, x_3267.z, x_3268.w);
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

