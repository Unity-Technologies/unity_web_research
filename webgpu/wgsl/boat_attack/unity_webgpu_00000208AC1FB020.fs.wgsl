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

@group(1) @binding(3) var<uniform> x_503 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2202 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2655 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2767 : AdditionalLightsCookies;

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
  var u_xlat4 : vec4<f32>;
  var x_487 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu63 : u32;
  var u_xlati63 : i32;
  var u_xlat65 : f32;
  var u_xlat23 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat44 : f32;
  var u_xlatb67 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat27 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat70 : f32;
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
  var u_xlat30 : vec3<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat69 : f32;
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
  var u_xlatb25 : vec2<bool>;
  var u_xlatb46 : bool;
  var x_2154 : f32;
  var u_xlat25 : vec3<f32>;
  var u_xlat46 : f32;
  var x_2284 : f32;
  var x_2295 : vec3<f32>;
  var u_xlatu64 : u32;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu69 : u32;
  var u_xlati70 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu10 : u32;
  var u_xlati31 : i32;
  var u_xlati10 : i32;
  var u_xlati52 : i32;
  var u_xlat31 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlatb53 : vec2<bool>;
  var u_xlat53 : vec2<f32>;
  var x_3086 : f32;
  var x_3099 : f32;
  var u_xlat73 : f32;
  var x_3161 : f32;
  var x_3172 : vec3<f32>;
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
  let x_477 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_477;
  let x_480 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_480;
  let x_484 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_484;
  let x_486 : bool = u_xlatb63;
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
  let x_527 : vec3<f32> = (x_522 + -(vec3<f32>(x_524.x, x_524.y, x_524.z)));
  let x_528 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_531 : vec3<f32> = vs_INTERP0;
  let x_534 : vec4<f32> = x_503.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_531 + -(vec3<f32>(x_534.x, x_534.y, x_534.z)));
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_538.x, x_538.y, x_538.z), vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_544 : vec4<f32> = u_xlat5;
  let x_546 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_544.x, x_544.y, x_544.z), vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_550 : vec4<f32> = u_xlat6;
  let x_552 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_556 : vec3<f32> = u_xlat7;
  let x_557 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_556, x_557);
  let x_563 : vec4<f32> = u_xlat4;
  let x_566 : vec4<f32> = x_503.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_563 < x_566);
  let x_569 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_569);
  let x_573 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_573);
  let x_577 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_577);
  let x_581 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_581);
  let x_585 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_585);
  let x_590 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_590);
  let x_594 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_594);
  let x_597 : vec4<f32> = u_xlat4;
  let x_599 : vec4<f32> = u_xlat5;
  let x_601 : vec3<f32> = (vec3<f32>(x_597.x, x_597.y, x_597.z) + vec3<f32>(x_599.y, x_599.z, x_599.w));
  let x_602 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat4;
  let x_607 : vec3<f32> = max(vec3<f32>(x_604.x, x_604.y, x_604.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_608 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_608.x, x_607.x, x_607.y, x_607.z);
  let x_610 : vec4<f32> = u_xlat5;
  u_xlat63 = dot(x_610, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_615 : f32 = u_xlat63;
  u_xlat63 = (-(x_615) + 4.0f);
  let x_620 : f32 = u_xlat63;
  u_xlatu63 = u32(x_620);
  let x_624 : u32 = u_xlatu63;
  u_xlati63 = (bitcast<i32>(x_624) << bitcast<u32>(2i));
  let x_627 : vec3<f32> = vs_INTERP0;
  let x_629 : i32 = u_xlati63;
  let x_632 : i32 = u_xlati63;
  let x_636 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_629 + 1i) / 4i)][((x_632 + 1i) % 4i)];
  let x_638 : vec3<f32> = (vec3<f32>(x_627.y, x_627.y, x_627.y) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : i32 = u_xlati63;
  let x_643 : i32 = u_xlati63;
  let x_646 : vec4<f32> = x_503.x_MainLightWorldToShadow[(x_641 / 4i)][(x_643 % 4i)];
  let x_648 : vec3<f32> = vs_INTERP0;
  let x_651 : vec4<f32> = u_xlat4;
  let x_653 : vec3<f32> = ((vec3<f32>(x_646.x, x_646.y, x_646.z) * vec3<f32>(x_648.x, x_648.x, x_648.x)) + vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_654 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_656 : i32 = u_xlati63;
  let x_659 : i32 = u_xlati63;
  let x_663 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_656 + 2i) / 4i)][((x_659 + 2i) % 4i)];
  let x_665 : vec3<f32> = vs_INTERP0;
  let x_668 : vec4<f32> = u_xlat4;
  let x_670 : vec3<f32> = ((vec3<f32>(x_663.x, x_663.y, x_663.z) * vec3<f32>(x_665.z, x_665.z, x_665.z)) + vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_673 : vec4<f32> = u_xlat4;
  let x_675 : i32 = u_xlati63;
  let x_678 : i32 = u_xlati63;
  let x_682 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_675 + 3i) / 4i)][((x_678 + 3i) % 4i)];
  let x_684 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) + vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_688 : f32 = vs_INTERP0.y;
  let x_690 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_688 * x_690);
  let x_693 : f32 = x_44.unity_MatrixV[0i].z;
  let x_695 : f32 = vs_INTERP0.x;
  let x_697 : f32 = u_xlat63;
  u_xlat63 = ((x_693 * x_695) + x_697);
  let x_700 : f32 = x_44.unity_MatrixV[2i].z;
  let x_702 : f32 = vs_INTERP0.z;
  let x_704 : f32 = u_xlat63;
  u_xlat63 = ((x_700 * x_702) + x_704);
  let x_706 : f32 = u_xlat63;
  let x_708 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_706 + x_708);
  let x_710 : f32 = u_xlat63;
  let x_714 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_710) + -(x_714));
  let x_717 : f32 = u_xlat63;
  u_xlat63 = max(x_717, 0.0f);
  let x_719 : f32 = u_xlat63;
  let x_722 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_719 * x_722);
  let x_731 : vec2<f32> = vs_INTERP4;
  let x_733 : f32 = x_44.x_GlobalMipBias.x;
  let x_734 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_731, x_733);
  let x_735 : vec3<f32> = vec3<f32>(x_734.x, x_734.y, x_734.z);
  let x_736 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_740 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_741 : vec2<f32> = vec2<f32>(x_740.x, x_740.y);
  let x_745 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_741.x, x_741.y));
  let x_746 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_745.x, x_745.y, x_746.z, x_746.w);
  let x_748 : vec4<f32> = u_xlat6;
  let x_750 : vec4<f32> = hlslcc_FragCoord;
  let x_752 : vec2<f32> = (vec2<f32>(x_748.x, x_748.y) * vec2<f32>(x_750.x, x_750.y));
  let x_753 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_752.x, x_752.y, x_753.z, x_753.w);
  let x_756 : f32 = u_xlat6.y;
  let x_759 : f32 = x_44.x_ScaleBiasRt.x;
  let x_762 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat64 = ((x_756 * x_759) + x_762);
  let x_764 : f32 = u_xlat64;
  u_xlat6.z = (-(x_764) + 1.0f);
  let x_768 : vec4<f32> = u_xlat2;
  let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
  let x_770 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat2;
  let x_776 : vec2<f32> = clamp(vec2<f32>(x_772.x, x_772.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_777 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
  let x_780 : f32 = u_xlat2.x;
  u_xlat64 = ((-(x_780) * 0.959999979f) + 0.959999979f);
  let x_786 : f32 = u_xlat64;
  let x_789 : f32 = u_xlat2.y;
  u_xlat65 = (-(x_786) + x_789);
  let x_791 : vec4<f32> = u_xlat0;
  let x_793 : f32 = u_xlat64;
  u_xlat7 = (vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_793, x_793, x_793));
  let x_796 : vec4<f32> = u_xlat0;
  let x_800 : vec3<f32> = (vec3<f32>(x_796.x, x_796.y, x_796.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_801 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat2;
  let x_805 : vec4<f32> = u_xlat0;
  let x_810 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.x, x_803.x) * vec3<f32>(x_805.x, x_805.y, x_805.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_811 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_814 : f32 = u_xlat2.y;
  u_xlat64 = (-(x_814) + 1.0f);
  let x_817 : f32 = u_xlat64;
  let x_818 : f32 = u_xlat64;
  u_xlat2.x = (x_817 * x_818);
  let x_822 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_822, 0.0078125f);
  let x_828 : f32 = u_xlat2.x;
  let x_830 : f32 = u_xlat2.x;
  u_xlat23 = (x_828 * x_830);
  let x_832 : f32 = u_xlat65;
  u_xlat65 = (x_832 + 1.0f);
  let x_834 : f32 = u_xlat65;
  u_xlat65 = min(x_834, 1.0f);
  let x_838 : f32 = u_xlat2.x;
  u_xlat66 = ((x_838 * 4.0f) + 2.0f);
  let x_847 : vec4<f32> = u_xlat6;
  let x_850 : f32 = x_44.x_GlobalMipBias.x;
  let x_851 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_847.x, x_847.z), x_850);
  u_xlat67 = x_851.x;
  let x_854 : f32 = u_xlat67;
  u_xlat68 = (x_854 + -1.0f);
  let x_857 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_858 : f32 = u_xlat68;
  u_xlat68 = ((x_857 * x_858) + 1.0f);
  let x_863 : f32 = u_xlat2.z;
  let x_864 : f32 = u_xlat67;
  u_xlat44 = min(x_863, x_864);
  let x_868 : f32 = x_503.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_868);
  let x_870 : bool = u_xlatb67;
  if (x_870) {
    let x_874 : f32 = x_503.x_MainLightShadowParams.y;
    u_xlatb67 = (x_874 == 1.0f);
    let x_876 : bool = u_xlatb67;
    if (x_876) {
      let x_879 : vec4<f32> = u_xlat4;
      let x_882 : vec4<f32> = x_503.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_879.x, x_879.y, x_879.x, x_879.y) + x_882);
      let x_885 : vec4<f32> = u_xlat6;
      let x_886 : vec2<f32> = vec2<f32>(x_885.x, x_885.y);
      let x_888 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_886.x, x_886.y, x_888);
      let x_901 : vec3<f32> = txVec0;
      let x_903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_901.xy, x_901.z);
      u_xlat8.x = x_903;
      let x_906 : vec4<f32> = u_xlat6;
      let x_907 : vec2<f32> = vec2<f32>(x_906.z, x_906.w);
      let x_909 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_907.x, x_907.y, x_909);
      let x_916 : vec3<f32> = txVec1;
      let x_918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_916.xy, x_916.z);
      u_xlat8.y = x_918;
      let x_920 : vec4<f32> = u_xlat4;
      let x_923 : vec4<f32> = x_503.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_920.x, x_920.y, x_920.x, x_920.y) + x_923);
      let x_926 : vec4<f32> = u_xlat6;
      let x_927 : vec2<f32> = vec2<f32>(x_926.x, x_926.y);
      let x_929 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_927.x, x_927.y, x_929);
      let x_936 : vec3<f32> = txVec2;
      let x_938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_936.xy, x_936.z);
      u_xlat8.z = x_938;
      let x_941 : vec4<f32> = u_xlat6;
      let x_942 : vec2<f32> = vec2<f32>(x_941.z, x_941.w);
      let x_944 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_942.x, x_942.y, x_944);
      let x_951 : vec3<f32> = txVec3;
      let x_953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_951.xy, x_951.z);
      u_xlat8.w = x_953;
      let x_955 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_955, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_962 : f32 = x_503.x_MainLightShadowParams.y;
      u_xlatb6 = (x_962 == 2.0f);
      let x_964 : bool = u_xlatb6;
      if (x_964) {
        let x_967 : vec4<f32> = u_xlat4;
        let x_970 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_975 : vec2<f32> = ((vec2<f32>(x_967.x, x_967.y) * vec2<f32>(x_970.z, x_970.w)) + vec2<f32>(0.5f, 0.5f));
        let x_976 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat6;
        let x_980 : vec2<f32> = floor(vec2<f32>(x_978.x, x_978.y));
        let x_981 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
        let x_984 : vec4<f32> = u_xlat4;
        let x_987 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_990 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_984.x, x_984.y) * vec2<f32>(x_987.z, x_987.w)) + -(vec2<f32>(x_990.x, x_990.y)));
        let x_994 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_994.x, x_994.x, x_994.y, x_994.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_999 : vec4<f32> = u_xlat8;
        let x_1001 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_999.x, x_999.x, x_999.z, x_999.z) * vec4<f32>(x_1001.x, x_1001.x, x_1001.z, x_1001.z));
        let x_1004 : vec4<f32> = u_xlat9;
        let x_1008 : vec2<f32> = (vec2<f32>(x_1004.y, x_1004.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1009 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1008.x, x_1009.y, x_1008.y, x_1009.w);
        let x_1011 : vec4<f32> = u_xlat9;
        let x_1014 : vec2<f32> = u_xlat48;
        let x_1016 : vec2<f32> = ((vec2<f32>(x_1011.x, x_1011.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1014));
        let x_1017 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1016.x, x_1016.y, x_1017.z, x_1017.w);
        let x_1020 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_1020) + vec2<f32>(1.0f, 1.0f));
        let x_1024 : vec2<f32> = u_xlat48;
        let x_1026 : vec2<f32> = min(x_1024, vec2<f32>(0.0f, 0.0f));
        let x_1027 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1026.x, x_1026.y, x_1027.z, x_1027.w);
        let x_1029 : vec4<f32> = u_xlat10;
        let x_1032 : vec4<f32> = u_xlat10;
        let x_1035 : vec2<f32> = u_xlat51;
        let x_1036 : vec2<f32> = ((-(vec2<f32>(x_1029.x, x_1029.y)) * vec2<f32>(x_1032.x, x_1032.y)) + x_1035);
        let x_1037 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1036.x, x_1036.y, x_1037.z, x_1037.w);
        let x_1039 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1039, vec2<f32>(0.0f, 0.0f));
        let x_1041 : vec2<f32> = u_xlat48;
        let x_1043 : vec2<f32> = u_xlat48;
        let x_1045 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1041) * x_1043) + vec2<f32>(x_1045.y, x_1045.w));
        let x_1048 : vec4<f32> = u_xlat10;
        let x_1050 : vec2<f32> = (vec2<f32>(x_1048.x, x_1048.y) + vec2<f32>(1.0f, 1.0f));
        let x_1051 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1050.x, x_1050.y, x_1051.z, x_1051.w);
        let x_1053 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1053 + vec2<f32>(1.0f, 1.0f));
        let x_1056 : vec4<f32> = u_xlat9;
        let x_1060 : vec2<f32> = (vec2<f32>(x_1056.x, x_1056.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1061 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1063 : vec2<f32> = u_xlat51;
        let x_1064 : vec2<f32> = (x_1063 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1065 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat10;
        let x_1069 : vec2<f32> = (vec2<f32>(x_1067.x, x_1067.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1070 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1069.x, x_1069.y, x_1070.z, x_1070.w);
        let x_1073 : vec2<f32> = u_xlat48;
        let x_1074 : vec2<f32> = (x_1073 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1075 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1074.x, x_1074.y, x_1075.z, x_1075.w);
        let x_1077 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1077.y, x_1077.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1081 : f32 = u_xlat10.x;
        u_xlat11.z = x_1081;
        let x_1084 : f32 = u_xlat48.x;
        u_xlat11.w = x_1084;
        let x_1087 : f32 = u_xlat12.x;
        u_xlat9.z = x_1087;
        let x_1090 : f32 = u_xlat8.x;
        u_xlat9.w = x_1090;
        let x_1093 : vec4<f32> = u_xlat9;
        let x_1095 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1093.z, x_1093.w, x_1093.x, x_1093.z) + vec4<f32>(x_1095.z, x_1095.w, x_1095.x, x_1095.z));
        let x_1099 : f32 = u_xlat11.y;
        u_xlat10.z = x_1099;
        let x_1102 : f32 = u_xlat48.y;
        u_xlat10.w = x_1102;
        let x_1105 : f32 = u_xlat9.y;
        u_xlat12.z = x_1105;
        let x_1108 : f32 = u_xlat8.z;
        u_xlat12.w = x_1108;
        let x_1110 : vec4<f32> = u_xlat10;
        let x_1112 : vec4<f32> = u_xlat12;
        let x_1114 : vec3<f32> = (vec3<f32>(x_1110.z, x_1110.y, x_1110.w) + vec3<f32>(x_1112.z, x_1112.y, x_1112.w));
        let x_1115 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat9;
        let x_1119 : vec4<f32> = u_xlat13;
        let x_1121 : vec3<f32> = (vec3<f32>(x_1117.x, x_1117.z, x_1117.w) / vec3<f32>(x_1119.z, x_1119.w, x_1119.y));
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
        let x_1124 : vec4<f32> = u_xlat9;
        let x_1130 : vec3<f32> = (vec3<f32>(x_1124.x, x_1124.y, x_1124.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
        let x_1133 : vec4<f32> = u_xlat12;
        let x_1135 : vec4<f32> = u_xlat8;
        let x_1137 : vec3<f32> = (vec3<f32>(x_1133.z, x_1133.y, x_1133.w) / vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
        let x_1138 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat10;
        let x_1142 : vec3<f32> = (vec3<f32>(x_1140.x, x_1140.y, x_1140.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1143 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
        let x_1145 : vec4<f32> = u_xlat9;
        let x_1148 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1150 : vec3<f32> = (vec3<f32>(x_1145.y, x_1145.x, x_1145.z) * vec3<f32>(x_1148.x, x_1148.x, x_1148.x));
        let x_1151 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
        let x_1153 : vec4<f32> = u_xlat10;
        let x_1156 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1158 : vec3<f32> = (vec3<f32>(x_1153.x, x_1153.y, x_1153.z) * vec3<f32>(x_1156.y, x_1156.y, x_1156.y));
        let x_1159 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
        let x_1162 : f32 = u_xlat10.x;
        u_xlat9.w = x_1162;
        let x_1164 : vec4<f32> = u_xlat6;
        let x_1167 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1164.x, x_1164.y, x_1164.x, x_1164.y) * vec4<f32>(x_1167.x, x_1167.y, x_1167.x, x_1167.y)) + vec4<f32>(x_1170.y, x_1170.w, x_1170.x, x_1170.w));
        let x_1173 : vec4<f32> = u_xlat6;
        let x_1176 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1179 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1173.x, x_1173.y) * vec2<f32>(x_1176.x, x_1176.y)) + vec2<f32>(x_1179.z, x_1179.w));
        let x_1183 : f32 = u_xlat9.y;
        u_xlat10.w = x_1183;
        let x_1185 : vec4<f32> = u_xlat10;
        let x_1186 : vec2<f32> = vec2<f32>(x_1185.y, x_1185.z);
        let x_1187 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1187.x, x_1186.x, x_1187.z, x_1186.y);
        let x_1189 : vec4<f32> = u_xlat6;
        let x_1192 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1195 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1189.x, x_1189.y, x_1189.x, x_1189.y) * vec4<f32>(x_1192.x, x_1192.y, x_1192.x, x_1192.y)) + vec4<f32>(x_1195.x, x_1195.y, x_1195.z, x_1195.y));
        let x_1198 : vec4<f32> = u_xlat6;
        let x_1201 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1204 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y) * vec4<f32>(x_1201.x, x_1201.y, x_1201.x, x_1201.y)) + vec4<f32>(x_1204.w, x_1204.y, x_1204.w, x_1204.z));
        let x_1207 : vec4<f32> = u_xlat6;
        let x_1210 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1213 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y) * vec4<f32>(x_1210.x, x_1210.y, x_1210.x, x_1210.y)) + vec4<f32>(x_1213.x, x_1213.w, x_1213.z, x_1213.w));
        let x_1217 : vec4<f32> = u_xlat8;
        let x_1219 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1217.x, x_1217.x, x_1217.x, x_1217.y) * vec4<f32>(x_1219.z, x_1219.w, x_1219.y, x_1219.z));
        let x_1223 : vec4<f32> = u_xlat8;
        let x_1225 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1223.y, x_1223.y, x_1223.z, x_1223.z) * x_1225);
        let x_1228 : f32 = u_xlat8.z;
        let x_1230 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1228 * x_1230);
        let x_1234 : vec4<f32> = u_xlat11;
        let x_1235 : vec2<f32> = vec2<f32>(x_1234.x, x_1234.y);
        let x_1237 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1235.x, x_1235.y, x_1237);
        let x_1245 : vec3<f32> = txVec4;
        let x_1247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1245.xy, x_1245.z);
        u_xlat27 = x_1247;
        let x_1249 : vec4<f32> = u_xlat11;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.z, x_1249.w);
        let x_1252 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1260 : vec3<f32> = txVec5;
        let x_1262 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1260.xy, x_1260.z);
        u_xlat70 = x_1262;
        let x_1263 : f32 = u_xlat70;
        let x_1265 : f32 = u_xlat14.y;
        u_xlat70 = (x_1263 * x_1265);
        let x_1268 : f32 = u_xlat14.x;
        let x_1269 : f32 = u_xlat27;
        let x_1271 : f32 = u_xlat70;
        u_xlat27 = ((x_1268 * x_1269) + x_1271);
        let x_1274 : vec2<f32> = u_xlat48;
        let x_1276 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1274.x, x_1274.y, x_1276);
        let x_1283 : vec3<f32> = txVec6;
        let x_1285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1283.xy, x_1283.z);
        u_xlat48.x = x_1285;
        let x_1288 : f32 = u_xlat14.z;
        let x_1290 : f32 = u_xlat48.x;
        let x_1292 : f32 = u_xlat27;
        u_xlat27 = ((x_1288 * x_1290) + x_1292);
        let x_1295 : vec4<f32> = u_xlat10;
        let x_1296 : vec2<f32> = vec2<f32>(x_1295.x, x_1295.y);
        let x_1298 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1296.x, x_1296.y, x_1298);
        let x_1305 : vec3<f32> = txVec7;
        let x_1307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1305.xy, x_1305.z);
        u_xlat48.x = x_1307;
        let x_1310 : f32 = u_xlat14.w;
        let x_1312 : f32 = u_xlat48.x;
        let x_1314 : f32 = u_xlat27;
        u_xlat27 = ((x_1310 * x_1312) + x_1314);
        let x_1317 : vec4<f32> = u_xlat12;
        let x_1318 : vec2<f32> = vec2<f32>(x_1317.x, x_1317.y);
        let x_1320 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1318.x, x_1318.y, x_1320);
        let x_1327 : vec3<f32> = txVec8;
        let x_1329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1327.xy, x_1327.z);
        u_xlat48.x = x_1329;
        let x_1332 : f32 = u_xlat15.x;
        let x_1334 : f32 = u_xlat48.x;
        let x_1336 : f32 = u_xlat27;
        u_xlat27 = ((x_1332 * x_1334) + x_1336);
        let x_1339 : vec4<f32> = u_xlat12;
        let x_1340 : vec2<f32> = vec2<f32>(x_1339.z, x_1339.w);
        let x_1342 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1340.x, x_1340.y, x_1342);
        let x_1349 : vec3<f32> = txVec9;
        let x_1351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1349.xy, x_1349.z);
        u_xlat48.x = x_1351;
        let x_1354 : f32 = u_xlat15.y;
        let x_1356 : f32 = u_xlat48.x;
        let x_1358 : f32 = u_xlat27;
        u_xlat27 = ((x_1354 * x_1356) + x_1358);
        let x_1361 : vec4<f32> = u_xlat10;
        let x_1362 : vec2<f32> = vec2<f32>(x_1361.z, x_1361.w);
        let x_1364 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec10;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1371.xy, x_1371.z);
        u_xlat48.x = x_1373;
        let x_1376 : f32 = u_xlat15.z;
        let x_1378 : f32 = u_xlat48.x;
        let x_1380 : f32 = u_xlat27;
        u_xlat27 = ((x_1376 * x_1378) + x_1380);
        let x_1383 : vec4<f32> = u_xlat9;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.x, x_1383.y);
        let x_1386 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec11;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1393.xy, x_1393.z);
        u_xlat48.x = x_1395;
        let x_1398 : f32 = u_xlat15.w;
        let x_1400 : f32 = u_xlat48.x;
        let x_1402 : f32 = u_xlat27;
        u_xlat27 = ((x_1398 * x_1400) + x_1402);
        let x_1405 : vec4<f32> = u_xlat9;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.z, x_1405.w);
        let x_1408 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec12;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1415.xy, x_1415.z);
        u_xlat48.x = x_1417;
        let x_1420 : f32 = u_xlat6.x;
        let x_1422 : f32 = u_xlat48.x;
        let x_1424 : f32 = u_xlat27;
        u_xlat67 = ((x_1420 * x_1422) + x_1424);
      } else {
        let x_1427 : vec4<f32> = u_xlat4;
        let x_1430 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1433 : vec2<f32> = ((vec2<f32>(x_1427.x, x_1427.y) * vec2<f32>(x_1430.z, x_1430.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1434 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1433.x, x_1433.y, x_1434.z, x_1434.w);
        let x_1436 : vec4<f32> = u_xlat6;
        let x_1438 : vec2<f32> = floor(vec2<f32>(x_1436.x, x_1436.y));
        let x_1439 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1438.x, x_1438.y, x_1439.z, x_1439.w);
        let x_1441 : vec4<f32> = u_xlat4;
        let x_1444 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1447 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1441.x, x_1441.y) * vec2<f32>(x_1444.z, x_1444.w)) + -(vec2<f32>(x_1447.x, x_1447.y)));
        let x_1451 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1451.x, x_1451.x, x_1451.y, x_1451.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1454 : vec4<f32> = u_xlat8;
        let x_1456 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1454.x, x_1454.x, x_1454.z, x_1454.z) * vec4<f32>(x_1456.x, x_1456.x, x_1456.z, x_1456.z));
        let x_1459 : vec4<f32> = u_xlat9;
        let x_1463 : vec2<f32> = (vec2<f32>(x_1459.y, x_1459.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1464 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1464.x, x_1463.x, x_1464.z, x_1463.y);
        let x_1466 : vec4<f32> = u_xlat9;
        let x_1469 : vec2<f32> = u_xlat48;
        let x_1471 : vec2<f32> = ((vec2<f32>(x_1466.x, x_1466.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1469));
        let x_1472 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1471.x, x_1472.y, x_1471.y, x_1472.w);
        let x_1474 : vec2<f32> = u_xlat48;
        let x_1476 : vec2<f32> = (-(x_1474) + vec2<f32>(1.0f, 1.0f));
        let x_1477 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1476.x, x_1476.y, x_1477.z, x_1477.w);
        let x_1479 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1479, vec2<f32>(0.0f, 0.0f));
        let x_1481 : vec2<f32> = u_xlat51;
        let x_1483 : vec2<f32> = u_xlat51;
        let x_1485 : vec4<f32> = u_xlat9;
        let x_1487 : vec2<f32> = ((-(x_1481) * x_1483) + vec2<f32>(x_1485.x, x_1485.y));
        let x_1488 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1487.x, x_1487.y, x_1488.z, x_1488.w);
        let x_1490 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1490, vec2<f32>(0.0f, 0.0f));
        let x_1493 : vec2<f32> = u_xlat51;
        let x_1495 : vec2<f32> = u_xlat51;
        let x_1497 : vec4<f32> = u_xlat8;
        let x_1499 : vec2<f32> = ((-(x_1493) * x_1495) + vec2<f32>(x_1497.y, x_1497.w));
        let x_1500 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1499.x, x_1500.y, x_1499.y);
        let x_1502 : vec4<f32> = u_xlat9;
        let x_1504 : vec2<f32> = (vec2<f32>(x_1502.x, x_1502.y) + vec2<f32>(2.0f, 2.0f));
        let x_1505 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1504.x, x_1504.y, x_1505.z, x_1505.w);
        let x_1507 : vec3<f32> = u_xlat29;
        let x_1509 : vec2<f32> = (vec2<f32>(x_1507.x, x_1507.z) + vec2<f32>(2.0f, 2.0f));
        let x_1510 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1510.x, x_1509.x, x_1510.z, x_1509.y);
        let x_1513 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1513 * 0.081632003f);
        let x_1517 : vec4<f32> = u_xlat8;
        let x_1520 : vec3<f32> = (vec3<f32>(x_1517.z, x_1517.x, x_1517.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1521 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1520.x, x_1520.y, x_1520.z, x_1521.w);
        let x_1523 : vec4<f32> = u_xlat9;
        let x_1526 : vec2<f32> = (vec2<f32>(x_1523.x, x_1523.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1527 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1526.x, x_1526.y, x_1527.z, x_1527.w);
        let x_1530 : f32 = u_xlat12.y;
        u_xlat11.x = x_1530;
        let x_1532 : vec2<f32> = u_xlat48;
        let x_1539 : vec2<f32> = ((vec2<f32>(x_1532.x, x_1532.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1540 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1540.x, x_1539.x, x_1540.z, x_1539.y);
        let x_1542 : vec2<f32> = u_xlat48;
        let x_1546 : vec2<f32> = ((vec2<f32>(x_1542.x, x_1542.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1547 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1546.x, x_1547.y, x_1546.y, x_1547.w);
        let x_1550 : f32 = u_xlat8.x;
        u_xlat9.y = x_1550;
        let x_1553 : f32 = u_xlat10.y;
        u_xlat9.w = x_1553;
        let x_1555 : vec4<f32> = u_xlat9;
        let x_1556 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1555 + x_1556);
        let x_1558 : vec2<f32> = u_xlat48;
        let x_1561 : vec2<f32> = ((vec2<f32>(x_1558.y, x_1558.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1562 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1562.x, x_1561.x, x_1562.z, x_1561.y);
        let x_1564 : vec2<f32> = u_xlat48;
        let x_1567 : vec2<f32> = ((vec2<f32>(x_1564.y, x_1564.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1568 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1567.x, x_1568.y, x_1567.y, x_1568.w);
        let x_1571 : f32 = u_xlat8.y;
        u_xlat10.y = x_1571;
        let x_1573 : vec4<f32> = u_xlat10;
        let x_1574 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1573 + x_1574);
        let x_1576 : vec4<f32> = u_xlat9;
        let x_1577 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1576 / x_1577);
        let x_1579 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1579 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1585 : vec4<f32> = u_xlat10;
        let x_1586 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1585 / x_1586);
        let x_1588 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1588 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1590 : vec4<f32> = u_xlat9;
        let x_1593 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1590.w, x_1590.x, x_1590.y, x_1590.z) * vec4<f32>(x_1593.x, x_1593.x, x_1593.x, x_1593.x));
        let x_1596 : vec4<f32> = u_xlat10;
        let x_1599 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1596.x, x_1596.w, x_1596.y, x_1596.z) * vec4<f32>(x_1599.y, x_1599.y, x_1599.y, x_1599.y));
        let x_1602 : vec4<f32> = u_xlat9;
        let x_1603 : vec3<f32> = vec3<f32>(x_1602.y, x_1602.z, x_1602.w);
        let x_1604 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1603.x, x_1604.y, x_1603.y, x_1603.z);
        let x_1607 : f32 = u_xlat10.x;
        u_xlat12.y = x_1607;
        let x_1609 : vec4<f32> = u_xlat6;
        let x_1612 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1615 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1609.x, x_1609.y, x_1609.x, x_1609.y) * vec4<f32>(x_1612.x, x_1612.y, x_1612.x, x_1612.y)) + vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1615.y));
        let x_1618 : vec4<f32> = u_xlat6;
        let x_1621 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1624 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1618.x, x_1618.y) * vec2<f32>(x_1621.x, x_1621.y)) + vec2<f32>(x_1624.w, x_1624.y));
        let x_1628 : f32 = u_xlat12.y;
        u_xlat9.y = x_1628;
        let x_1631 : f32 = u_xlat10.z;
        u_xlat12.y = x_1631;
        let x_1633 : vec4<f32> = u_xlat6;
        let x_1636 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1639 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1633.x, x_1633.y, x_1633.x, x_1633.y) * vec4<f32>(x_1636.x, x_1636.y, x_1636.x, x_1636.y)) + vec4<f32>(x_1639.x, x_1639.y, x_1639.z, x_1639.y));
        let x_1642 : vec4<f32> = u_xlat6;
        let x_1645 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1648 : vec4<f32> = u_xlat12;
        let x_1650 : vec2<f32> = ((vec2<f32>(x_1642.x, x_1642.y) * vec2<f32>(x_1645.x, x_1645.y)) + vec2<f32>(x_1648.w, x_1648.y));
        let x_1651 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1650.x, x_1650.y, x_1651.z, x_1651.w);
        let x_1654 : f32 = u_xlat12.y;
        u_xlat9.z = x_1654;
        let x_1657 : vec4<f32> = u_xlat6;
        let x_1660 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1663 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1657.x, x_1657.y, x_1657.x, x_1657.y) * vec4<f32>(x_1660.x, x_1660.y, x_1660.x, x_1660.y)) + vec4<f32>(x_1663.x, x_1663.y, x_1663.x, x_1663.z));
        let x_1667 : f32 = u_xlat10.w;
        u_xlat12.y = x_1667;
        let x_1670 : vec4<f32> = u_xlat6;
        let x_1673 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1676 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1670.x, x_1670.y, x_1670.x, x_1670.y) * vec4<f32>(x_1673.x, x_1673.y, x_1673.x, x_1673.y)) + vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1676.y));
        let x_1680 : vec4<f32> = u_xlat6;
        let x_1683 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1686 : vec4<f32> = u_xlat12;
        let x_1688 : vec2<f32> = ((vec2<f32>(x_1680.x, x_1680.y) * vec2<f32>(x_1683.x, x_1683.y)) + vec2<f32>(x_1686.w, x_1686.y));
        let x_1689 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1688.x, x_1688.y, x_1689.z);
        let x_1692 : f32 = u_xlat12.y;
        u_xlat9.w = x_1692;
        let x_1695 : vec4<f32> = u_xlat6;
        let x_1698 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1701 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1695.x, x_1695.y) * vec2<f32>(x_1698.x, x_1698.y)) + vec2<f32>(x_1701.x, x_1701.w));
        let x_1704 : vec4<f32> = u_xlat12;
        let x_1705 : vec3<f32> = vec3<f32>(x_1704.x, x_1704.z, x_1704.w);
        let x_1706 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1705.x, x_1706.y, x_1705.y, x_1705.z);
        let x_1708 : vec4<f32> = u_xlat6;
        let x_1711 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1714 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1708.x, x_1708.y, x_1708.x, x_1708.y) * vec4<f32>(x_1711.x, x_1711.y, x_1711.x, x_1711.y)) + vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1714.y));
        let x_1718 : vec4<f32> = u_xlat6;
        let x_1721 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1724 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1718.x, x_1718.y) * vec2<f32>(x_1721.x, x_1721.y)) + vec2<f32>(x_1724.w, x_1724.y));
        let x_1728 : f32 = u_xlat9.x;
        u_xlat10.x = x_1728;
        let x_1730 : vec4<f32> = u_xlat6;
        let x_1733 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1736 : vec4<f32> = u_xlat10;
        let x_1738 : vec2<f32> = ((vec2<f32>(x_1730.x, x_1730.y) * vec2<f32>(x_1733.x, x_1733.y)) + vec2<f32>(x_1736.x, x_1736.y));
        let x_1739 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1738.x, x_1738.y, x_1739.z, x_1739.w);
        let x_1742 : vec4<f32> = u_xlat8;
        let x_1744 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1742.x, x_1742.x, x_1742.x, x_1742.x) * x_1744);
        let x_1747 : vec4<f32> = u_xlat8;
        let x_1749 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1747.y, x_1747.y, x_1747.y, x_1747.y) * x_1749);
        let x_1752 : vec4<f32> = u_xlat8;
        let x_1754 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1752.z, x_1752.z, x_1752.z, x_1752.z) * x_1754);
        let x_1756 : vec4<f32> = u_xlat8;
        let x_1758 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1756.w, x_1756.w, x_1756.w, x_1756.w) * x_1758);
        let x_1761 : vec4<f32> = u_xlat13;
        let x_1762 : vec2<f32> = vec2<f32>(x_1761.x, x_1761.y);
        let x_1764 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1762.x, x_1762.y, x_1764);
        let x_1771 : vec3<f32> = txVec13;
        let x_1773 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1771.xy, x_1771.z);
        u_xlat70 = x_1773;
        let x_1775 : vec4<f32> = u_xlat13;
        let x_1776 : vec2<f32> = vec2<f32>(x_1775.z, x_1775.w);
        let x_1778 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1776.x, x_1776.y, x_1778);
        let x_1785 : vec3<f32> = txVec14;
        let x_1787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1785.xy, x_1785.z);
        u_xlat9.x = x_1787;
        let x_1790 : f32 = u_xlat9.x;
        let x_1792 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1790 * x_1792);
        let x_1796 : f32 = u_xlat18.x;
        let x_1797 : f32 = u_xlat70;
        let x_1800 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1796 * x_1797) + x_1800);
        let x_1803 : vec2<f32> = u_xlat48;
        let x_1805 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1803.x, x_1803.y, x_1805);
        let x_1812 : vec3<f32> = txVec15;
        let x_1814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1812.xy, x_1812.z);
        u_xlat48.x = x_1814;
        let x_1817 : f32 = u_xlat18.z;
        let x_1819 : f32 = u_xlat48.x;
        let x_1821 : f32 = u_xlat70;
        u_xlat48.x = ((x_1817 * x_1819) + x_1821);
        let x_1825 : vec4<f32> = u_xlat16;
        let x_1826 : vec2<f32> = vec2<f32>(x_1825.x, x_1825.y);
        let x_1828 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1826.x, x_1826.y, x_1828);
        let x_1836 : vec3<f32> = txVec16;
        let x_1838 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1836.xy, x_1836.z);
        u_xlat69 = x_1838;
        let x_1840 : f32 = u_xlat18.w;
        let x_1841 : f32 = u_xlat69;
        let x_1844 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1840 * x_1841) + x_1844);
        let x_1848 : vec4<f32> = u_xlat14;
        let x_1849 : vec2<f32> = vec2<f32>(x_1848.x, x_1848.y);
        let x_1851 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
        let x_1858 : vec3<f32> = txVec17;
        let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1858.xy, x_1858.z);
        u_xlat69 = x_1860;
        let x_1862 : f32 = u_xlat19.x;
        let x_1863 : f32 = u_xlat69;
        let x_1866 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1862 * x_1863) + x_1866);
        let x_1870 : vec4<f32> = u_xlat14;
        let x_1871 : vec2<f32> = vec2<f32>(x_1870.z, x_1870.w);
        let x_1873 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1871.x, x_1871.y, x_1873);
        let x_1880 : vec3<f32> = txVec18;
        let x_1882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1880.xy, x_1880.z);
        u_xlat69 = x_1882;
        let x_1884 : f32 = u_xlat19.y;
        let x_1885 : f32 = u_xlat69;
        let x_1888 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1884 * x_1885) + x_1888);
        let x_1892 : vec4<f32> = u_xlat15;
        let x_1893 : vec2<f32> = vec2<f32>(x_1892.x, x_1892.y);
        let x_1895 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1893.x, x_1893.y, x_1895);
        let x_1902 : vec3<f32> = txVec19;
        let x_1904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1902.xy, x_1902.z);
        u_xlat69 = x_1904;
        let x_1906 : f32 = u_xlat19.z;
        let x_1907 : f32 = u_xlat69;
        let x_1910 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1906 * x_1907) + x_1910);
        let x_1914 : vec4<f32> = u_xlat16;
        let x_1915 : vec2<f32> = vec2<f32>(x_1914.z, x_1914.w);
        let x_1917 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1915.x, x_1915.y, x_1917);
        let x_1924 : vec3<f32> = txVec20;
        let x_1926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1924.xy, x_1924.z);
        u_xlat69 = x_1926;
        let x_1928 : f32 = u_xlat19.w;
        let x_1929 : f32 = u_xlat69;
        let x_1932 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1928 * x_1929) + x_1932);
        let x_1936 : vec4<f32> = u_xlat17;
        let x_1937 : vec2<f32> = vec2<f32>(x_1936.x, x_1936.y);
        let x_1939 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1937.x, x_1937.y, x_1939);
        let x_1946 : vec3<f32> = txVec21;
        let x_1948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1946.xy, x_1946.z);
        u_xlat69 = x_1948;
        let x_1950 : f32 = u_xlat20.x;
        let x_1951 : f32 = u_xlat69;
        let x_1954 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1950 * x_1951) + x_1954);
        let x_1958 : vec4<f32> = u_xlat17;
        let x_1959 : vec2<f32> = vec2<f32>(x_1958.z, x_1958.w);
        let x_1961 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1959.x, x_1959.y, x_1961);
        let x_1968 : vec3<f32> = txVec22;
        let x_1970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1968.xy, x_1968.z);
        u_xlat69 = x_1970;
        let x_1972 : f32 = u_xlat20.y;
        let x_1973 : f32 = u_xlat69;
        let x_1976 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1972 * x_1973) + x_1976);
        let x_1980 : vec3<f32> = u_xlat30;
        let x_1981 : vec2<f32> = vec2<f32>(x_1980.x, x_1980.y);
        let x_1983 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1981.x, x_1981.y, x_1983);
        let x_1990 : vec3<f32> = txVec23;
        let x_1992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1990.xy, x_1990.z);
        u_xlat69 = x_1992;
        let x_1994 : f32 = u_xlat20.z;
        let x_1995 : f32 = u_xlat69;
        let x_1998 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1994 * x_1995) + x_1998);
        let x_2002 : vec2<f32> = u_xlat57;
        let x_2004 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_2002.x, x_2002.y, x_2004);
        let x_2011 : vec3<f32> = txVec24;
        let x_2013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2011.xy, x_2011.z);
        u_xlat69 = x_2013;
        let x_2015 : f32 = u_xlat20.w;
        let x_2016 : f32 = u_xlat69;
        let x_2019 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2015 * x_2016) + x_2019);
        let x_2023 : vec4<f32> = u_xlat12;
        let x_2024 : vec2<f32> = vec2<f32>(x_2023.x, x_2023.y);
        let x_2026 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_2024.x, x_2024.y, x_2026);
        let x_2033 : vec3<f32> = txVec25;
        let x_2035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2033.xy, x_2033.z);
        u_xlat69 = x_2035;
        let x_2037 : f32 = u_xlat8.x;
        let x_2038 : f32 = u_xlat69;
        let x_2041 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2037 * x_2038) + x_2041);
        let x_2045 : vec4<f32> = u_xlat12;
        let x_2046 : vec2<f32> = vec2<f32>(x_2045.z, x_2045.w);
        let x_2048 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_2046.x, x_2046.y, x_2048);
        let x_2055 : vec3<f32> = txVec26;
        let x_2057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2055.xy, x_2055.z);
        u_xlat69 = x_2057;
        let x_2059 : f32 = u_xlat8.y;
        let x_2060 : f32 = u_xlat69;
        let x_2063 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2059 * x_2060) + x_2063);
        let x_2067 : vec2<f32> = u_xlat52;
        let x_2069 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_2067.x, x_2067.y, x_2069);
        let x_2076 : vec3<f32> = txVec27;
        let x_2078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2076.xy, x_2076.z);
        u_xlat69 = x_2078;
        let x_2080 : f32 = u_xlat8.z;
        let x_2081 : f32 = u_xlat69;
        let x_2084 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2080 * x_2081) + x_2084);
        let x_2088 : vec4<f32> = u_xlat6;
        let x_2089 : vec2<f32> = vec2<f32>(x_2088.x, x_2088.y);
        let x_2091 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_2089.x, x_2089.y, x_2091);
        let x_2098 : vec3<f32> = txVec28;
        let x_2100 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2098.xy, x_2098.z);
        u_xlat6.x = x_2100;
        let x_2103 : f32 = u_xlat8.w;
        let x_2105 : f32 = u_xlat6.x;
        let x_2108 : f32 = u_xlat48.x;
        u_xlat67 = ((x_2103 * x_2105) + x_2108);
      }
    }
  } else {
    let x_2112 : vec4<f32> = u_xlat4;
    let x_2113 : vec2<f32> = vec2<f32>(x_2112.x, x_2112.y);
    let x_2115 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_2113.x, x_2113.y, x_2115);
    let x_2122 : vec3<f32> = txVec29;
    let x_2124 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2122.xy, x_2122.z);
    u_xlat67 = x_2124;
  }
  let x_2126 : f32 = x_503.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_2126) + 1.0f);
  let x_2130 : f32 = u_xlat67;
  let x_2132 : f32 = x_503.x_MainLightShadowParams.x;
  let x_2135 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2130 * x_2132) + x_2135);
  let x_2140 : f32 = u_xlat4.z;
  u_xlatb25.x = (0.0f >= x_2140);
  let x_2145 : f32 = u_xlat4.z;
  u_xlatb46 = (x_2145 >= 1.0f);
  let x_2147 : bool = u_xlatb46;
  let x_2149 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_2147 | x_2149);
  let x_2153 : bool = u_xlatb25.x;
  if (x_2153) {
    x_2154 = 1.0f;
  } else {
    let x_2159 : f32 = u_xlat4.x;
    x_2154 = x_2159;
  }
  let x_2160 : f32 = x_2154;
  u_xlat4.x = x_2160;
  let x_2163 : vec3<f32> = vs_INTERP0;
  let x_2165 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat25 = (x_2163 + -(x_2165));
  let x_2168 : vec3<f32> = u_xlat25;
  let x_2169 : vec3<f32> = u_xlat25;
  u_xlat25.x = dot(x_2168, x_2169);
  let x_2173 : f32 = u_xlat25.x;
  let x_2175 : f32 = x_503.x_MainLightShadowParams.z;
  let x_2178 : f32 = x_503.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2173 * x_2175) + x_2178);
  let x_2182 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2182, 0.0f, 1.0f);
  let x_2187 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_2187) + 1.0f);
  let x_2191 : f32 = u_xlat25.x;
  let x_2192 : f32 = u_xlat46;
  let x_2195 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2191 * x_2192) + x_2195);
  let x_2204 : f32 = x_2202.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_2204 == -1.0f));
  let x_2208 : bool = u_xlatb25.x;
  if (x_2208) {
    let x_2211 : vec3<f32> = vs_INTERP0;
    let x_2214 : vec4<f32> = x_2202.x_MainLightWorldToLight[1i];
    let x_2216 : vec2<f32> = (vec2<f32>(x_2211.y, x_2211.y) * vec2<f32>(x_2214.x, x_2214.y));
    let x_2217 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2216.x, x_2216.y, x_2217.z);
    let x_2220 : vec4<f32> = x_2202.x_MainLightWorldToLight[0i];
    let x_2222 : vec3<f32> = vs_INTERP0;
    let x_2225 : vec3<f32> = u_xlat25;
    let x_2227 : vec2<f32> = ((vec2<f32>(x_2220.x, x_2220.y) * vec2<f32>(x_2222.x, x_2222.x)) + vec2<f32>(x_2225.x, x_2225.y));
    let x_2228 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2227.x, x_2227.y, x_2228.z);
    let x_2231 : vec4<f32> = x_2202.x_MainLightWorldToLight[2i];
    let x_2233 : vec3<f32> = vs_INTERP0;
    let x_2236 : vec3<f32> = u_xlat25;
    let x_2238 : vec2<f32> = ((vec2<f32>(x_2231.x, x_2231.y) * vec2<f32>(x_2233.z, x_2233.z)) + vec2<f32>(x_2236.x, x_2236.y));
    let x_2239 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2238.x, x_2238.y, x_2239.z);
    let x_2241 : vec3<f32> = u_xlat25;
    let x_2244 : vec4<f32> = x_2202.x_MainLightWorldToLight[3i];
    let x_2246 : vec2<f32> = (vec2<f32>(x_2241.x, x_2241.y) + vec2<f32>(x_2244.x, x_2244.y));
    let x_2247 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2246.x, x_2246.y, x_2247.z);
    let x_2249 : vec3<f32> = u_xlat25;
    let x_2252 : vec2<f32> = ((vec2<f32>(x_2249.x, x_2249.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2253 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2252.x, x_2252.y, x_2253.z);
    let x_2260 : vec3<f32> = u_xlat25;
    let x_2263 : f32 = x_44.x_GlobalMipBias.x;
    let x_2264 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2260.x, x_2260.y), x_2263);
    u_xlat6 = x_2264;
    let x_2266 : f32 = x_2202.x_MainLightCookieTextureFormat;
    let x_2268 : f32 = x_2202.x_MainLightCookieTextureFormat;
    let x_2270 : f32 = x_2202.x_MainLightCookieTextureFormat;
    let x_2272 : f32 = x_2202.x_MainLightCookieTextureFormat;
    let x_2273 : vec4<f32> = vec4<f32>(x_2266, x_2268, x_2270, x_2272);
    let x_2280 : vec4<bool> = (vec4<f32>(x_2273.x, x_2273.y, x_2273.z, x_2273.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2280.x, x_2280.y);
    let x_2283 : bool = u_xlatb25.y;
    if (x_2283) {
      let x_2288 : f32 = u_xlat6.w;
      x_2284 = x_2288;
    } else {
      let x_2291 : f32 = u_xlat6.x;
      x_2284 = x_2291;
    }
    let x_2292 : f32 = x_2284;
    u_xlat46 = x_2292;
    let x_2294 : bool = u_xlatb25.x;
    if (x_2294) {
      let x_2298 : vec4<f32> = u_xlat6;
      x_2295 = vec3<f32>(x_2298.x, x_2298.y, x_2298.z);
    } else {
      let x_2301 : f32 = u_xlat46;
      x_2295 = vec3<f32>(x_2301, x_2301, x_2301);
    }
    let x_2303 : vec3<f32> = x_2295;
    u_xlat25 = x_2303;
  } else {
    u_xlat25.x = 1.0f;
    u_xlat25.y = 1.0f;
    u_xlat25.z = 1.0f;
  }
  let x_2308 : vec3<f32> = u_xlat25;
  let x_2310 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat25 = (x_2308 * vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
  let x_2313 : f32 = u_xlat68;
  let x_2315 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_2313, x_2313, x_2313) * x_2315);
  let x_2317 : vec4<f32> = u_xlat3;
  let x_2320 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(vec3<f32>(x_2317.x, x_2317.y, x_2317.z)), vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
  let x_2325 : f32 = u_xlat6.x;
  let x_2327 : f32 = u_xlat6.x;
  u_xlat6.x = (x_2325 + x_2327);
  let x_2330 : vec4<f32> = u_xlat1;
  let x_2332 : vec4<f32> = u_xlat6;
  let x_2336 : vec4<f32> = u_xlat3;
  let x_2339 : vec3<f32> = ((vec3<f32>(x_2330.x, x_2330.y, x_2330.z) * -(vec3<f32>(x_2332.x, x_2332.x, x_2332.x))) + -(vec3<f32>(x_2336.x, x_2336.y, x_2336.z)));
  let x_2340 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2339.x, x_2339.y, x_2339.z, x_2340.w);
  let x_2342 : vec4<f32> = u_xlat1;
  let x_2344 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(vec3<f32>(x_2342.x, x_2342.y, x_2342.z), vec3<f32>(x_2344.x, x_2344.y, x_2344.z));
  let x_2347 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2347, 0.0f, 1.0f);
  let x_2349 : f32 = u_xlat69;
  u_xlat69 = (-(x_2349) + 1.0f);
  let x_2352 : f32 = u_xlat69;
  let x_2353 : f32 = u_xlat69;
  u_xlat69 = (x_2352 * x_2353);
  let x_2355 : f32 = u_xlat69;
  let x_2356 : f32 = u_xlat69;
  u_xlat69 = (x_2355 * x_2356);
  let x_2358 : f32 = u_xlat64;
  u_xlat70 = ((-(x_2358) * 0.699999988f) + 1.700000048f);
  let x_2364 : f32 = u_xlat64;
  let x_2365 : f32 = u_xlat70;
  u_xlat64 = (x_2364 * x_2365);
  let x_2367 : f32 = u_xlat64;
  u_xlat64 = (x_2367 * 6.0f);
  let x_2377 : vec4<f32> = u_xlat6;
  let x_2379 : f32 = u_xlat64;
  let x_2380 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2377.x, x_2377.y, x_2377.z), x_2379);
  u_xlat8 = x_2380;
  let x_2382 : f32 = u_xlat8.w;
  u_xlat64 = (x_2382 + -1.0f);
  let x_2385 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2386 : f32 = u_xlat64;
  u_xlat64 = ((x_2385 * x_2386) + 1.0f);
  let x_2389 : f32 = u_xlat64;
  u_xlat64 = max(x_2389, 0.0f);
  let x_2391 : f32 = u_xlat64;
  u_xlat64 = log2(x_2391);
  let x_2393 : f32 = u_xlat64;
  let x_2395 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat64 = (x_2393 * x_2395);
  let x_2397 : f32 = u_xlat64;
  u_xlat64 = exp2(x_2397);
  let x_2399 : f32 = u_xlat64;
  let x_2401 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat64 = (x_2399 * x_2401);
  let x_2403 : vec4<f32> = u_xlat8;
  let x_2405 : f32 = u_xlat64;
  let x_2407 : vec3<f32> = (vec3<f32>(x_2403.x, x_2403.y, x_2403.z) * vec3<f32>(x_2405, x_2405, x_2405));
  let x_2408 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2407.x, x_2407.y, x_2407.z, x_2408.w);
  let x_2410 : vec4<f32> = u_xlat2;
  let x_2412 : vec4<f32> = u_xlat2;
  let x_2416 : vec2<f32> = ((vec2<f32>(x_2410.x, x_2410.x) * vec2<f32>(x_2412.x, x_2412.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2417 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2416.x, x_2416.y, x_2417.z, x_2417.w);
  let x_2420 : f32 = u_xlat8.y;
  u_xlat64 = (1.0f / x_2420);
  let x_2422 : vec4<f32> = u_xlat0;
  let x_2425 : f32 = u_xlat65;
  u_xlat29 = (-(vec3<f32>(x_2422.x, x_2422.y, x_2422.z)) + vec3<f32>(x_2425, x_2425, x_2425));
  let x_2428 : f32 = u_xlat69;
  let x_2430 : vec3<f32> = u_xlat29;
  let x_2432 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2428, x_2428, x_2428) * x_2430) + vec3<f32>(x_2432.x, x_2432.y, x_2432.z));
  let x_2435 : f32 = u_xlat64;
  let x_2437 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2435, x_2435, x_2435) * x_2437);
  let x_2439 : vec4<f32> = u_xlat6;
  let x_2441 : vec3<f32> = u_xlat29;
  let x_2442 : vec3<f32> = (vec3<f32>(x_2439.x, x_2439.y, x_2439.z) * x_2441);
  let x_2443 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2442.x, x_2442.y, x_2442.z, x_2443.w);
  let x_2445 : vec4<f32> = u_xlat5;
  let x_2447 : vec3<f32> = u_xlat7;
  let x_2449 : vec4<f32> = u_xlat6;
  let x_2451 : vec3<f32> = ((vec3<f32>(x_2445.x, x_2445.y, x_2445.z) * x_2447) + vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
  let x_2452 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);
  let x_2455 : f32 = u_xlat4.x;
  let x_2457 : f32 = x_359.unity_LightData.z;
  u_xlat64 = (x_2455 * x_2457);
  let x_2459 : vec4<f32> = u_xlat1;
  let x_2462 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2459.x, x_2459.y, x_2459.z), vec3<f32>(x_2462.x, x_2462.y, x_2462.z));
  let x_2467 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2467, 0.0f, 1.0f);
  let x_2470 : f32 = u_xlat64;
  let x_2472 : f32 = u_xlat2.x;
  u_xlat64 = (x_2470 * x_2472);
  let x_2474 : f32 = u_xlat64;
  let x_2476 : vec3<f32> = u_xlat25;
  let x_2477 : vec3<f32> = (vec3<f32>(x_2474, x_2474, x_2474) * x_2476);
  let x_2478 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
  let x_2480 : vec4<f32> = u_xlat3;
  let x_2483 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2485 : vec3<f32> = (vec3<f32>(x_2480.x, x_2480.y, x_2480.z) + vec3<f32>(x_2483.x, x_2483.y, x_2483.z));
  let x_2486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2485.x, x_2485.y, x_2485.z, x_2486.w);
  let x_2488 : vec4<f32> = u_xlat6;
  let x_2490 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2488.x, x_2488.y, x_2488.z), vec3<f32>(x_2490.x, x_2490.y, x_2490.z));
  let x_2493 : f32 = u_xlat64;
  u_xlat64 = max(x_2493, 1.17549435e-37f);
  let x_2496 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_2496);
  let x_2498 : f32 = u_xlat64;
  let x_2500 : vec4<f32> = u_xlat6;
  let x_2502 : vec3<f32> = (vec3<f32>(x_2498, x_2498, x_2498) * vec3<f32>(x_2500.x, x_2500.y, x_2500.z));
  let x_2503 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2502.x, x_2502.y, x_2502.z, x_2503.w);
  let x_2505 : vec4<f32> = u_xlat1;
  let x_2507 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2505.x, x_2505.y, x_2505.z), vec3<f32>(x_2507.x, x_2507.y, x_2507.z));
  let x_2510 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2510, 0.0f, 1.0f);
  let x_2513 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2515 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_2513.x, x_2513.y, x_2513.z), vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
  let x_2520 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2520, 0.0f, 1.0f);
  let x_2523 : f32 = u_xlat64;
  let x_2524 : f32 = u_xlat64;
  u_xlat64 = (x_2523 * x_2524);
  let x_2526 : f32 = u_xlat64;
  let x_2528 : f32 = u_xlat8.x;
  u_xlat64 = ((x_2526 * x_2528) + 1.000010014f);
  let x_2533 : f32 = u_xlat2.x;
  let x_2535 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2533 * x_2535);
  let x_2538 : f32 = u_xlat64;
  let x_2539 : f32 = u_xlat64;
  u_xlat64 = (x_2538 * x_2539);
  let x_2542 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2542, 0.100000001f);
  let x_2546 : f32 = u_xlat64;
  let x_2548 : f32 = u_xlat2.x;
  u_xlat64 = (x_2546 * x_2548);
  let x_2550 : f32 = u_xlat66;
  let x_2551 : f32 = u_xlat64;
  u_xlat64 = (x_2550 * x_2551);
  let x_2553 : f32 = u_xlat23;
  let x_2554 : f32 = u_xlat64;
  u_xlat64 = (x_2553 / x_2554);
  let x_2556 : vec4<f32> = u_xlat0;
  let x_2558 : f32 = u_xlat64;
  let x_2561 : vec3<f32> = u_xlat7;
  let x_2562 : vec3<f32> = ((vec3<f32>(x_2556.x, x_2556.y, x_2556.z) * vec3<f32>(x_2558, x_2558, x_2558)) + x_2561);
  let x_2563 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2563.w);
  let x_2565 : vec4<f32> = u_xlat4;
  let x_2567 : vec4<f32> = u_xlat6;
  let x_2569 : vec3<f32> = (vec3<f32>(x_2565.x, x_2565.y, x_2565.z) * vec3<f32>(x_2567.x, x_2567.y, x_2567.z));
  let x_2570 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2569.x, x_2569.y, x_2569.z, x_2570.w);
  let x_2573 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2575 : f32 = x_359.unity_LightData.y;
  u_xlat64 = min(x_2573, x_2575);
  let x_2578 : f32 = u_xlat64;
  u_xlatu64 = bitcast<u32>(i32(x_2578));
  let x_2583 : f32 = x_2202.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2585 : f32 = x_2202.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2587 : f32 = x_2202.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2589 : f32 = x_2202.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2590 : vec4<f32> = vec4<f32>(x_2583, x_2585, x_2587, x_2589);
  let x_2597 : vec4<bool> = (vec4<f32>(x_2590.x, x_2590.y, x_2590.z, x_2590.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2598 : vec2<bool> = vec2<bool>(x_2597.x, x_2597.w);
  let x_2599 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_2598.x, x_2599.y, x_2599.z, x_2598.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2610 : u32 = u_xlatu_loop_1;
    let x_2611 : u32 = u_xlatu64;
    if ((x_2610 < x_2611)) {
    } else {
      break;
    }
    let x_2614 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2614 >> 2u);
    let x_2617 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2617 & 3u));
    let x_2620 : u32 = u_xlatu69;
    let x_2623 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2620)];
    let x_2633 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2638 : vec4<u32> = indexable[x_2633];
    u_xlat69 = dot(x_2623, bitcast<vec4<f32>>(x_2638));
    let x_2641 : f32 = u_xlat69;
    u_xlatu69 = bitcast<u32>(i32(x_2641));
    let x_2644 : vec3<f32> = vs_INTERP0;
    let x_2656 : u32 = u_xlatu69;
    let x_2659 : vec4<f32> = x_2655.x_AdditionalLightsPosition[bitcast<i32>(x_2656)];
    let x_2662 : u32 = u_xlatu69;
    let x_2665 : vec4<f32> = x_2655.x_AdditionalLightsPosition[bitcast<i32>(x_2662)];
    u_xlat29 = ((-(x_2644) * vec3<f32>(x_2659.w, x_2659.w, x_2659.w)) + vec3<f32>(x_2665.x, x_2665.y, x_2665.z));
    let x_2668 : vec3<f32> = u_xlat29;
    let x_2669 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_2668, x_2669);
    let x_2671 : f32 = u_xlat70;
    u_xlat70 = max(x_2671, 6.10351562e-05f);
    let x_2674 : f32 = u_xlat70;
    u_xlat9.x = inverseSqrt(x_2674);
    let x_2677 : vec3<f32> = u_xlat29;
    let x_2678 : vec4<f32> = u_xlat9;
    u_xlat30 = (x_2677 * vec3<f32>(x_2678.x, x_2678.x, x_2678.x));
    let x_2681 : f32 = u_xlat70;
    u_xlat10.x = (1.0f / x_2681);
    let x_2684 : f32 = u_xlat70;
    let x_2685 : u32 = u_xlatu69;
    let x_2688 : f32 = x_2655.x_AdditionalLightsAttenuation[bitcast<i32>(x_2685)].x;
    u_xlat70 = (x_2684 * x_2688);
    let x_2690 : f32 = u_xlat70;
    let x_2692 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2690) * x_2692) + 1.0f);
    let x_2695 : f32 = u_xlat70;
    u_xlat70 = max(x_2695, 0.0f);
    let x_2697 : f32 = u_xlat70;
    let x_2698 : f32 = u_xlat70;
    u_xlat70 = (x_2697 * x_2698);
    let x_2700 : f32 = u_xlat70;
    let x_2702 : f32 = u_xlat10.x;
    u_xlat70 = (x_2700 * x_2702);
    let x_2704 : u32 = u_xlatu69;
    let x_2707 : vec4<f32> = x_2655.x_AdditionalLightsSpotDir[bitcast<i32>(x_2704)];
    let x_2709 : vec3<f32> = u_xlat30;
    u_xlat10.x = dot(vec3<f32>(x_2707.x, x_2707.y, x_2707.z), x_2709);
    let x_2713 : f32 = u_xlat10.x;
    let x_2714 : u32 = u_xlatu69;
    let x_2717 : f32 = x_2655.x_AdditionalLightsAttenuation[bitcast<i32>(x_2714)].z;
    let x_2719 : u32 = u_xlatu69;
    let x_2722 : f32 = x_2655.x_AdditionalLightsAttenuation[bitcast<i32>(x_2719)].w;
    u_xlat10.x = ((x_2713 * x_2717) + x_2722);
    let x_2726 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2726, 0.0f, 1.0f);
    let x_2730 : f32 = u_xlat10.x;
    let x_2732 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2730 * x_2732);
    let x_2735 : f32 = u_xlat70;
    let x_2737 : f32 = u_xlat10.x;
    u_xlat70 = (x_2735 * x_2737);
    let x_2740 : u32 = u_xlatu69;
    u_xlatu10 = (x_2740 >> 5u);
    let x_2743 : u32 = u_xlatu69;
    u_xlati31 = (1i << bitcast<u32>((bitcast<i32>(x_2743) & 31i)));
    let x_2749 : i32 = u_xlati31;
    let x_2751 : u32 = u_xlatu10;
    let x_2754 : f32 = x_2202.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2751)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_2749) & bitcast<u32>(x_2754)));
    let x_2758 : i32 = u_xlati10;
    if ((x_2758 != 0i)) {
      let x_2768 : u32 = u_xlatu69;
      let x_2771 : f32 = x_2767.x_AdditionalLightsLightTypes[bitcast<i32>(x_2768)].el;
      u_xlati10 = i32(x_2771);
      let x_2773 : i32 = u_xlati10;
      u_xlati31 = select(1i, 0i, (x_2773 != 0i));
      let x_2777 : u32 = u_xlatu69;
      u_xlati52 = (bitcast<i32>(x_2777) << bitcast<u32>(2i));
      let x_2780 : i32 = u_xlati31;
      if ((x_2780 != 0i)) {
        let x_2784 : vec3<f32> = vs_INTERP0;
        let x_2786 : i32 = u_xlati52;
        let x_2789 : i32 = u_xlati52;
        let x_2793 : vec4<f32> = x_2767.x_AdditionalLightsWorldToLights[((x_2786 + 1i) / 4i)][((x_2789 + 1i) % 4i)];
        let x_2795 : vec3<f32> = (vec3<f32>(x_2784.y, x_2784.y, x_2784.y) * vec3<f32>(x_2793.x, x_2793.y, x_2793.w));
        let x_2796 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2795.x, x_2795.y, x_2795.z, x_2796.w);
        let x_2798 : i32 = u_xlati52;
        let x_2800 : i32 = u_xlati52;
        let x_2803 : vec4<f32> = x_2767.x_AdditionalLightsWorldToLights[(x_2798 / 4i)][(x_2800 % 4i)];
        let x_2805 : vec3<f32> = vs_INTERP0;
        let x_2808 : vec4<f32> = u_xlat11;
        let x_2810 : vec3<f32> = ((vec3<f32>(x_2803.x, x_2803.y, x_2803.w) * vec3<f32>(x_2805.x, x_2805.x, x_2805.x)) + vec3<f32>(x_2808.x, x_2808.y, x_2808.z));
        let x_2811 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2810.x, x_2810.y, x_2810.z, x_2811.w);
        let x_2813 : i32 = u_xlati52;
        let x_2816 : i32 = u_xlati52;
        let x_2820 : vec4<f32> = x_2767.x_AdditionalLightsWorldToLights[((x_2813 + 2i) / 4i)][((x_2816 + 2i) % 4i)];
        let x_2822 : vec3<f32> = vs_INTERP0;
        let x_2825 : vec4<f32> = u_xlat11;
        let x_2827 : vec3<f32> = ((vec3<f32>(x_2820.x, x_2820.y, x_2820.w) * vec3<f32>(x_2822.z, x_2822.z, x_2822.z)) + vec3<f32>(x_2825.x, x_2825.y, x_2825.z));
        let x_2828 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2827.x, x_2827.y, x_2827.z, x_2828.w);
        let x_2830 : vec4<f32> = u_xlat11;
        let x_2832 : i32 = u_xlati52;
        let x_2835 : i32 = u_xlati52;
        let x_2839 : vec4<f32> = x_2767.x_AdditionalLightsWorldToLights[((x_2832 + 3i) / 4i)][((x_2835 + 3i) % 4i)];
        let x_2841 : vec3<f32> = (vec3<f32>(x_2830.x, x_2830.y, x_2830.z) + vec3<f32>(x_2839.x, x_2839.y, x_2839.w));
        let x_2842 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2841.x, x_2841.y, x_2841.z, x_2842.w);
        let x_2845 : vec4<f32> = u_xlat11;
        let x_2847 : vec4<f32> = u_xlat11;
        let x_2849 : vec2<f32> = (vec2<f32>(x_2845.x, x_2845.y) / vec2<f32>(x_2847.z, x_2847.z));
        let x_2850 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2849.x, x_2850.y, x_2849.y);
        let x_2852 : vec3<f32> = u_xlat31;
        let x_2855 : vec2<f32> = ((vec2<f32>(x_2852.x, x_2852.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2856 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2855.x, x_2856.y, x_2855.y);
        let x_2858 : vec3<f32> = u_xlat31;
        let x_2862 : vec2<f32> = clamp(vec2<f32>(x_2858.x, x_2858.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2863 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2862.x, x_2863.y, x_2862.y);
        let x_2865 : u32 = u_xlatu69;
        let x_2868 : vec4<f32> = x_2767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2865)];
        let x_2870 : vec3<f32> = u_xlat31;
        let x_2873 : u32 = u_xlatu69;
        let x_2876 : vec4<f32> = x_2767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2873)];
        let x_2878 : vec2<f32> = ((vec2<f32>(x_2868.x, x_2868.y) * vec2<f32>(x_2870.x, x_2870.z)) + vec2<f32>(x_2876.z, x_2876.w));
        let x_2879 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2878.x, x_2879.y, x_2878.y);
      } else {
        let x_2883 : i32 = u_xlati10;
        u_xlatb10 = (x_2883 == 1i);
        let x_2885 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_2885);
        let x_2887 : i32 = u_xlati10;
        if ((x_2887 != 0i)) {
          let x_2891 : vec3<f32> = vs_INTERP0;
          let x_2893 : i32 = u_xlati52;
          let x_2896 : i32 = u_xlati52;
          let x_2900 : vec4<f32> = x_2767.x_AdditionalLightsWorldToLights[((x_2893 + 1i) / 4i)][((x_2896 + 1i) % 4i)];
          let x_2902 : vec2<f32> = (vec2<f32>(x_2891.y, x_2891.y) * vec2<f32>(x_2900.x, x_2900.y));
          let x_2903 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2902.x, x_2902.y, x_2903.z, x_2903.w);
          let x_2905 : i32 = u_xlati52;
          let x_2907 : i32 = u_xlati52;
          let x_2910 : vec4<f32> = x_2767.x_AdditionalLightsWorldToLights[(x_2905 / 4i)][(x_2907 % 4i)];
          let x_2912 : vec3<f32> = vs_INTERP0;
          let x_2915 : vec4<f32> = u_xlat11;
          let x_2917 : vec2<f32> = ((vec2<f32>(x_2910.x, x_2910.y) * vec2<f32>(x_2912.x, x_2912.x)) + vec2<f32>(x_2915.x, x_2915.y));
          let x_2918 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2917.x, x_2917.y, x_2918.z, x_2918.w);
          let x_2920 : i32 = u_xlati52;
          let x_2923 : i32 = u_xlati52;
          let x_2927 : vec4<f32> = x_2767.x_AdditionalLightsWorldToLights[((x_2920 + 2i) / 4i)][((x_2923 + 2i) % 4i)];
          let x_2929 : vec3<f32> = vs_INTERP0;
          let x_2932 : vec4<f32> = u_xlat11;
          let x_2934 : vec2<f32> = ((vec2<f32>(x_2927.x, x_2927.y) * vec2<f32>(x_2929.z, x_2929.z)) + vec2<f32>(x_2932.x, x_2932.y));
          let x_2935 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2934.x, x_2934.y, x_2935.z, x_2935.w);
          let x_2937 : vec4<f32> = u_xlat11;
          let x_2939 : i32 = u_xlati52;
          let x_2942 : i32 = u_xlati52;
          let x_2946 : vec4<f32> = x_2767.x_AdditionalLightsWorldToLights[((x_2939 + 3i) / 4i)][((x_2942 + 3i) % 4i)];
          let x_2948 : vec2<f32> = (vec2<f32>(x_2937.x, x_2937.y) + vec2<f32>(x_2946.x, x_2946.y));
          let x_2949 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2948.x, x_2948.y, x_2949.z, x_2949.w);
          let x_2951 : vec4<f32> = u_xlat11;
          let x_2954 : vec2<f32> = ((vec2<f32>(x_2951.x, x_2951.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2955 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2954.x, x_2954.y, x_2955.z, x_2955.w);
          let x_2957 : vec4<f32> = u_xlat11;
          let x_2959 : vec2<f32> = fract(vec2<f32>(x_2957.x, x_2957.y));
          let x_2960 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2959.x, x_2959.y, x_2960.z, x_2960.w);
          let x_2962 : u32 = u_xlatu69;
          let x_2965 : vec4<f32> = x_2767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2962)];
          let x_2967 : vec4<f32> = u_xlat11;
          let x_2970 : u32 = u_xlatu69;
          let x_2973 : vec4<f32> = x_2767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2970)];
          let x_2975 : vec2<f32> = ((vec2<f32>(x_2965.x, x_2965.y) * vec2<f32>(x_2967.x, x_2967.y)) + vec2<f32>(x_2973.z, x_2973.w));
          let x_2976 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_2975.x, x_2976.y, x_2975.y);
        } else {
          let x_2979 : vec3<f32> = vs_INTERP0;
          let x_2981 : i32 = u_xlati52;
          let x_2984 : i32 = u_xlati52;
          let x_2988 : vec4<f32> = x_2767.x_AdditionalLightsWorldToLights[((x_2981 + 1i) / 4i)][((x_2984 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_2979.y, x_2979.y, x_2979.y, x_2979.y) * x_2988);
          let x_2990 : i32 = u_xlati52;
          let x_2992 : i32 = u_xlati52;
          let x_2995 : vec4<f32> = x_2767.x_AdditionalLightsWorldToLights[(x_2990 / 4i)][(x_2992 % 4i)];
          let x_2996 : vec3<f32> = vs_INTERP0;
          let x_2999 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2995 * vec4<f32>(x_2996.x, x_2996.x, x_2996.x, x_2996.x)) + x_2999);
          let x_3001 : i32 = u_xlati52;
          let x_3004 : i32 = u_xlati52;
          let x_3008 : vec4<f32> = x_2767.x_AdditionalLightsWorldToLights[((x_3001 + 2i) / 4i)][((x_3004 + 2i) % 4i)];
          let x_3009 : vec3<f32> = vs_INTERP0;
          let x_3012 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_3008 * vec4<f32>(x_3009.z, x_3009.z, x_3009.z, x_3009.z)) + x_3012);
          let x_3014 : vec4<f32> = u_xlat11;
          let x_3015 : i32 = u_xlati52;
          let x_3018 : i32 = u_xlati52;
          let x_3022 : vec4<f32> = x_2767.x_AdditionalLightsWorldToLights[((x_3015 + 3i) / 4i)][((x_3018 + 3i) % 4i)];
          u_xlat11 = (x_3014 + x_3022);
          let x_3024 : vec4<f32> = u_xlat11;
          let x_3026 : vec4<f32> = u_xlat11;
          let x_3028 : vec3<f32> = (vec3<f32>(x_3024.x, x_3024.y, x_3024.z) / vec3<f32>(x_3026.w, x_3026.w, x_3026.w));
          let x_3029 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3028.x, x_3028.y, x_3028.z, x_3029.w);
          let x_3031 : vec4<f32> = u_xlat11;
          let x_3033 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_3031.x, x_3031.y, x_3031.z), vec3<f32>(x_3033.x, x_3033.y, x_3033.z));
          let x_3038 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_3038);
          let x_3041 : vec4<f32> = u_xlat10;
          let x_3043 : vec4<f32> = u_xlat11;
          let x_3045 : vec3<f32> = (vec3<f32>(x_3041.x, x_3041.x, x_3041.x) * vec3<f32>(x_3043.x, x_3043.y, x_3043.z));
          let x_3046 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3045.x, x_3045.y, x_3045.z, x_3046.w);
          let x_3048 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_3048.x, x_3048.y, x_3048.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3054 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_3054, 0.000001f);
          let x_3059 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_3059);
          let x_3062 : vec4<f32> = u_xlat10;
          let x_3064 : vec4<f32> = u_xlat11;
          let x_3066 : vec3<f32> = (vec3<f32>(x_3062.x, x_3062.x, x_3062.x) * vec3<f32>(x_3064.z, x_3064.x, x_3064.y));
          let x_3067 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3066.x, x_3066.y, x_3066.z, x_3067.w);
          let x_3070 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_3070);
          let x_3074 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_3074, 0.0f, 1.0f);
          let x_3078 : vec4<f32> = u_xlat12;
          let x_3081 : vec4<bool> = (vec4<f32>(x_3078.y, x_3078.z, x_3078.y, x_3078.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3081.x, x_3081.y);
          let x_3085 : bool = u_xlatb53.x;
          if (x_3085) {
            let x_3090 : f32 = u_xlat12.x;
            x_3086 = x_3090;
          } else {
            let x_3093 : f32 = u_xlat12.x;
            x_3086 = -(x_3093);
          }
          let x_3095 : f32 = x_3086;
          u_xlat53.x = x_3095;
          let x_3098 : bool = u_xlatb53.y;
          if (x_3098) {
            let x_3103 : f32 = u_xlat12.x;
            x_3099 = x_3103;
          } else {
            let x_3106 : f32 = u_xlat12.x;
            x_3099 = -(x_3106);
          }
          let x_3108 : f32 = x_3099;
          u_xlat53.y = x_3108;
          let x_3110 : vec4<f32> = u_xlat11;
          let x_3112 : vec4<f32> = u_xlat10;
          let x_3115 : vec2<f32> = u_xlat53;
          let x_3116 : vec2<f32> = ((vec2<f32>(x_3110.x, x_3110.y) * vec2<f32>(x_3112.x, x_3112.x)) + x_3115);
          let x_3117 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3116.x, x_3117.y, x_3116.y, x_3117.w);
          let x_3119 : vec4<f32> = u_xlat10;
          let x_3122 : vec2<f32> = ((vec2<f32>(x_3119.x, x_3119.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3123 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3122.x, x_3123.y, x_3122.y, x_3123.w);
          let x_3125 : vec4<f32> = u_xlat10;
          let x_3129 : vec2<f32> = clamp(vec2<f32>(x_3125.x, x_3125.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3130 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3129.x, x_3130.y, x_3129.y, x_3130.w);
          let x_3132 : u32 = u_xlatu69;
          let x_3135 : vec4<f32> = x_2767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3132)];
          let x_3137 : vec4<f32> = u_xlat10;
          let x_3140 : u32 = u_xlatu69;
          let x_3143 : vec4<f32> = x_2767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3140)];
          let x_3145 : vec2<f32> = ((vec2<f32>(x_3135.x, x_3135.y) * vec2<f32>(x_3137.x, x_3137.z)) + vec2<f32>(x_3143.z, x_3143.w));
          let x_3146 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3145.x, x_3146.y, x_3145.y);
        }
      }
      let x_3153 : vec3<f32> = u_xlat31;
      let x_3156 : f32 = x_44.x_GlobalMipBias.x;
      let x_3157 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3153.x, x_3153.z), x_3156);
      u_xlat10 = x_3157;
      let x_3160 : bool = u_xlatb2.w;
      if (x_3160) {
        let x_3165 : f32 = u_xlat10.w;
        x_3161 = x_3165;
      } else {
        let x_3168 : f32 = u_xlat10.x;
        x_3161 = x_3168;
      }
      let x_3169 : f32 = x_3161;
      u_xlat73 = x_3169;
      let x_3171 : bool = u_xlatb2.x;
      if (x_3171) {
        let x_3175 : vec4<f32> = u_xlat10;
        x_3172 = vec3<f32>(x_3175.x, x_3175.y, x_3175.z);
      } else {
        let x_3178 : f32 = u_xlat73;
        x_3172 = vec3<f32>(x_3178, x_3178, x_3178);
      }
      let x_3180 : vec3<f32> = x_3172;
      let x_3181 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3180.x, x_3180.y, x_3180.z, x_3181.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_3187 : vec4<f32> = u_xlat10;
    let x_3189 : u32 = u_xlatu69;
    let x_3192 : vec4<f32> = x_2655.x_AdditionalLightsColor[bitcast<i32>(x_3189)];
    let x_3194 : vec3<f32> = (vec3<f32>(x_3187.x, x_3187.y, x_3187.z) * vec3<f32>(x_3192.x, x_3192.y, x_3192.z));
    let x_3195 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3194.x, x_3194.y, x_3194.z, x_3195.w);
    let x_3197 : f32 = u_xlat68;
    let x_3199 : vec4<f32> = u_xlat10;
    let x_3201 : vec3<f32> = (vec3<f32>(x_3197, x_3197, x_3197) * vec3<f32>(x_3199.x, x_3199.y, x_3199.z));
    let x_3202 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3201.x, x_3201.y, x_3201.z, x_3202.w);
    let x_3204 : vec4<f32> = u_xlat1;
    let x_3206 : vec3<f32> = u_xlat30;
    u_xlat69 = dot(vec3<f32>(x_3204.x, x_3204.y, x_3204.z), x_3206);
    let x_3208 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3208, 0.0f, 1.0f);
    let x_3210 : f32 = u_xlat69;
    let x_3211 : f32 = u_xlat70;
    u_xlat69 = (x_3210 * x_3211);
    let x_3213 : f32 = u_xlat69;
    let x_3215 : vec4<f32> = u_xlat10;
    let x_3217 : vec3<f32> = (vec3<f32>(x_3213, x_3213, x_3213) * vec3<f32>(x_3215.x, x_3215.y, x_3215.z));
    let x_3218 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3217.x, x_3217.y, x_3217.z, x_3218.w);
    let x_3220 : vec3<f32> = u_xlat29;
    let x_3221 : vec4<f32> = u_xlat9;
    let x_3224 : vec4<f32> = u_xlat3;
    u_xlat29 = ((x_3220 * vec3<f32>(x_3221.x, x_3221.x, x_3221.x)) + vec3<f32>(x_3224.x, x_3224.y, x_3224.z));
    let x_3227 : vec3<f32> = u_xlat29;
    let x_3228 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(x_3227, x_3228);
    let x_3230 : f32 = u_xlat69;
    u_xlat69 = max(x_3230, 1.17549435e-37f);
    let x_3232 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_3232);
    let x_3234 : f32 = u_xlat69;
    let x_3236 : vec3<f32> = u_xlat29;
    u_xlat29 = (vec3<f32>(x_3234, x_3234, x_3234) * x_3236);
    let x_3238 : vec4<f32> = u_xlat1;
    let x_3240 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(vec3<f32>(x_3238.x, x_3238.y, x_3238.z), x_3240);
    let x_3242 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3242, 0.0f, 1.0f);
    let x_3244 : vec3<f32> = u_xlat30;
    let x_3245 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_3244, x_3245);
    let x_3247 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3247, 0.0f, 1.0f);
    let x_3249 : f32 = u_xlat69;
    let x_3250 : f32 = u_xlat69;
    u_xlat69 = (x_3249 * x_3250);
    let x_3252 : f32 = u_xlat69;
    let x_3254 : f32 = u_xlat8.x;
    u_xlat69 = ((x_3252 * x_3254) + 1.000010014f);
    let x_3257 : f32 = u_xlat70;
    let x_3258 : f32 = u_xlat70;
    u_xlat70 = (x_3257 * x_3258);
    let x_3260 : f32 = u_xlat69;
    let x_3261 : f32 = u_xlat69;
    u_xlat69 = (x_3260 * x_3261);
    let x_3263 : f32 = u_xlat70;
    u_xlat70 = max(x_3263, 0.100000001f);
    let x_3265 : f32 = u_xlat69;
    let x_3266 : f32 = u_xlat70;
    u_xlat69 = (x_3265 * x_3266);
    let x_3268 : f32 = u_xlat66;
    let x_3269 : f32 = u_xlat69;
    u_xlat69 = (x_3268 * x_3269);
    let x_3271 : f32 = u_xlat23;
    let x_3272 : f32 = u_xlat69;
    u_xlat69 = (x_3271 / x_3272);
    let x_3274 : vec4<f32> = u_xlat0;
    let x_3276 : f32 = u_xlat69;
    let x_3279 : vec3<f32> = u_xlat7;
    u_xlat29 = ((vec3<f32>(x_3274.x, x_3274.y, x_3274.z) * vec3<f32>(x_3276, x_3276, x_3276)) + x_3279);
    let x_3281 : vec3<f32> = u_xlat29;
    let x_3282 : vec4<f32> = u_xlat10;
    let x_3285 : vec4<f32> = u_xlat6;
    let x_3287 : vec3<f32> = ((x_3281 * vec3<f32>(x_3282.x, x_3282.y, x_3282.z)) + vec3<f32>(x_3285.x, x_3285.y, x_3285.z));
    let x_3288 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3287.x, x_3287.y, x_3287.z, x_3288.w);

    continuing {
      let x_3290 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3290 + bitcast<u32>(1i));
    }
  }
  let x_3292 : vec4<f32> = u_xlat5;
  let x_3294 : f32 = u_xlat44;
  let x_3297 : vec4<f32> = u_xlat4;
  let x_3299 : vec3<f32> = ((vec3<f32>(x_3292.x, x_3292.y, x_3292.z) * vec3<f32>(x_3294, x_3294, x_3294)) + vec3<f32>(x_3297.x, x_3297.y, x_3297.z));
  let x_3300 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3299.x, x_3299.y, x_3299.z, x_3300.w);
  let x_3302 : vec4<f32> = u_xlat6;
  let x_3304 : vec4<f32> = u_xlat0;
  let x_3306 : vec3<f32> = (vec3<f32>(x_3302.x, x_3302.y, x_3302.z) + vec3<f32>(x_3304.x, x_3304.y, x_3304.z));
  let x_3307 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3306.x, x_3306.y, x_3306.z, x_3307.w);
  let x_3309 : f32 = u_xlat63;
  let x_3310 : f32 = u_xlat63;
  u_xlat63 = (x_3309 * -(x_3310));
  let x_3313 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3313);
  let x_3315 : vec4<f32> = u_xlat0;
  let x_3319 : vec4<f32> = x_44.unity_FogColor;
  let x_3322 : vec3<f32> = (vec3<f32>(x_3315.x, x_3315.y, x_3315.z) + -(vec3<f32>(x_3319.x, x_3319.y, x_3319.z)));
  let x_3323 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3322.x, x_3322.y, x_3322.z, x_3323.w);
  let x_3327 : f32 = u_xlat63;
  let x_3329 : vec4<f32> = u_xlat0;
  let x_3333 : vec4<f32> = x_44.unity_FogColor;
  let x_3335 : vec3<f32> = ((vec3<f32>(x_3327, x_3327, x_3327) * vec3<f32>(x_3329.x, x_3329.y, x_3329.z)) + vec3<f32>(x_3333.x, x_3333.y, x_3333.z));
  let x_3336 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3335.x, x_3335.y, x_3335.z, x_3336.w);
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

