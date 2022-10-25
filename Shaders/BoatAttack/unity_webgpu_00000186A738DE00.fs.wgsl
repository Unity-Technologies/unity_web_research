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
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_168 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_380 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1702 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2142 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2247 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb63 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat65 : f32;
  var u_xlat4 : vec3<f32>;
  var x_114 : f32;
  var x_128 : f32;
  var x_140 : f32;
  var u_xlat63 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat27 : f32;
  var u_xlatb48 : vec2<bool>;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlatb69 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat69 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat28 : f32;
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
  var u_xlatb7 : bool;
  var u_xlatb8 : vec2<bool>;
  var x_1785 : f32;
  var x_1796 : vec3<f32>;
  var u_xlat70 : f32;
  var u_xlatu63 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu66 : u32;
  var u_xlati70 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat71 : f32;
  var u_xlat73 : f32;
  var u_xlatu73 : u32;
  var u_xlati11 : i32;
  var u_xlati73 : i32;
  var u_xlati32 : i32;
  var u_xlatb73 : bool;
  var u_xlatb32 : vec3<bool>;
  var u_xlat32 : vec3<f32>;
  var x_2562 : f32;
  var x_2575 : f32;
  var x_2637 : f32;
  var x_2648 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2803 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_44.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_EmissionMap, sampler_EmissionMap, x_71, x_73);
  u_xlat2 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_81 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb63 = (x_81 == 0.0f);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_92 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_93 : vec3<f32> = (-(x_87) + x_92);
  let x_94 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_98 : vec4<f32> = u_xlat3;
  let x_100 : vec4<f32> = u_xlat3;
  u_xlat65 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_103);
  let x_105 : f32 = u_xlat65;
  let x_107 : vec4<f32> = u_xlat3;
  let x_109 : vec3<f32> = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_110 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_113 : bool = u_xlatb63;
  if (x_113) {
    let x_118 : f32 = u_xlat3.x;
    x_114 = x_118;
  } else {
    let x_124 : f32 = x_44.unity_MatrixV[0i].z;
    x_114 = x_124;
  }
  let x_125 : f32 = x_114;
  u_xlat4.x = x_125;
  let x_127 : bool = u_xlatb63;
  if (x_127) {
    let x_133 : f32 = u_xlat3.y;
    x_128 = x_133;
  } else {
    let x_136 : f32 = x_44.unity_MatrixV[1i].z;
    x_128 = x_136;
  }
  let x_137 : f32 = x_128;
  u_xlat4.y = x_137;
  let x_139 : bool = u_xlatb63;
  if (x_139) {
    let x_144 : f32 = u_xlat3.z;
    x_140 = x_144;
  } else {
    let x_147 : f32 = x_44.unity_MatrixV[2i].z;
    x_140 = x_147;
  }
  let x_148 : f32 = x_140;
  u_xlat4.z = x_148;
  let x_152 : vec3<f32> = vs_TEXCOORD2;
  let x_153 : vec3<f32> = vs_TEXCOORD2;
  u_xlat63 = dot(x_152, x_153);
  let x_155 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_155);
  let x_157 : f32 = u_xlat63;
  let x_159 : vec3<f32> = vs_TEXCOORD2;
  let x_160 : vec3<f32> = (vec3<f32>(x_157, x_157, x_157) * x_159);
  let x_161 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  u_xlat3.w = 1.0f;
  let x_171 : vec4<f32> = x_168.unity_SHAr;
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_171, x_172);
  let x_177 : vec4<f32> = x_168.unity_SHAg;
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_177, x_178);
  let x_183 : vec4<f32> = x_168.unity_SHAb;
  let x_184 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_183, x_184);
  let x_188 : vec4<f32> = u_xlat3;
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_188.y, x_188.z, x_188.z, x_188.x) * vec4<f32>(x_190.x, x_190.y, x_190.z, x_190.z));
  let x_196 : vec4<f32> = x_168.unity_SHBr;
  let x_197 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_196, x_197);
  let x_202 : vec4<f32> = x_168.unity_SHBg;
  let x_203 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_202, x_203);
  let x_208 : vec4<f32> = x_168.unity_SHBb;
  let x_209 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_208, x_209);
  let x_213 : f32 = u_xlat3.y;
  let x_215 : f32 = u_xlat3.y;
  u_xlat63 = (x_213 * x_215);
  let x_218 : f32 = u_xlat3.x;
  let x_220 : f32 = u_xlat3.x;
  let x_222 : f32 = u_xlat63;
  u_xlat63 = ((x_218 * x_220) + -(x_222));
  let x_227 : vec4<f32> = x_168.unity_SHC;
  let x_229 : f32 = u_xlat63;
  let x_232 : vec4<f32> = u_xlat7;
  let x_234 : vec3<f32> = ((vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(x_229, x_229, x_229)) + vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_237 : vec3<f32> = u_xlat5;
  let x_238 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_237 + vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_241, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_246 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_247 : vec2<f32> = vec2<f32>(x_246.x, x_246.y);
  let x_251 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_247.x, x_247.y));
  let x_252 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_251.x, x_251.y, x_252.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat6;
  let x_256 : vec4<f32> = hlslcc_FragCoord;
  let x_258 : vec2<f32> = (vec2<f32>(x_254.x, x_254.y) * vec2<f32>(x_256.x, x_256.y));
  let x_259 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_258.x, x_258.y, x_259.z, x_259.w);
  let x_262 : f32 = u_xlat6.y;
  let x_265 : f32 = x_44.x_ScaleBiasRt.x;
  let x_268 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat63 = ((x_262 * x_265) + x_268);
  let x_270 : f32 = u_xlat63;
  u_xlat6.z = (-(x_270) + 1.0f);
  let x_275 : f32 = x_57.x_Metallic;
  u_xlat63 = ((-(x_275) * 0.959999979f) + 0.959999979f);
  let x_280 : f32 = u_xlat63;
  let x_283 : f32 = x_57.x_Smoothness;
  u_xlat65 = (-(x_280) + x_283);
  let x_286 : f32 = u_xlat63;
  let x_288 : vec4<f32> = u_xlat1;
  u_xlat22 = (vec3<f32>(x_286, x_286, x_286) * vec3<f32>(x_288.y, x_288.z, x_288.w));
  let x_291 : vec4<f32> = u_xlat0;
  let x_294 : vec4<f32> = x_57.x_BaseColor;
  let x_299 : vec3<f32> = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_294.x, x_294.y, x_294.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_300 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_303 : f32 = x_57.x_Metallic;
  let x_305 : f32 = x_57.x_Metallic;
  let x_307 : f32 = x_57.x_Metallic;
  let x_308 : vec3<f32> = vec3<f32>(x_303, x_305, x_307);
  let x_313 : vec4<f32> = u_xlat0;
  let x_318 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_313.x, x_313.y, x_313.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_319 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_322 : f32 = x_57.x_Smoothness;
  u_xlat63 = (-(x_322) + 1.0f);
  let x_326 : f32 = u_xlat63;
  let x_327 : f32 = u_xlat63;
  u_xlat66 = (x_326 * x_327);
  let x_329 : f32 = u_xlat66;
  u_xlat66 = max(x_329, 0.0078125f);
  let x_333 : f32 = u_xlat66;
  let x_334 : f32 = u_xlat66;
  u_xlat67 = (x_333 * x_334);
  let x_336 : f32 = u_xlat65;
  u_xlat65 = (x_336 + 1.0f);
  let x_338 : f32 = u_xlat65;
  u_xlat65 = clamp(x_338, 0.0f, 1.0f);
  let x_341 : f32 = u_xlat66;
  u_xlat68 = ((x_341 * 4.0f) + 2.0f);
  let x_351 : vec4<f32> = u_xlat6;
  let x_354 : f32 = x_44.x_GlobalMipBias.x;
  let x_355 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_351.x, x_351.z), x_354);
  u_xlat6.x = x_355.x;
  let x_360 : f32 = u_xlat6.x;
  u_xlat27 = (x_360 + -1.0f);
  let x_365 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_366 : f32 = u_xlat27;
  u_xlat27 = ((x_365 * x_366) + 1.0f);
  let x_370 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_370, 1.0f);
  let x_382 : f32 = x_380.x_MainLightShadowParams.y;
  u_xlatb48.x = (0.0f < x_382);
  let x_386 : bool = u_xlatb48.x;
  if (x_386) {
    let x_390 : f32 = x_380.x_MainLightShadowParams.y;
    u_xlatb48.x = (x_390 == 1.0f);
    let x_394 : bool = u_xlatb48.x;
    if (x_394) {
      let x_398 : vec4<f32> = vs_TEXCOORD6;
      let x_401 : vec4<f32> = x_380.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_398.x, x_398.y, x_398.x, x_398.y) + x_401);
      let x_404 : vec4<f32> = u_xlat7;
      let x_405 : vec2<f32> = vec2<f32>(x_404.x, x_404.y);
      let x_407 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_405.x, x_405.y, x_407);
      let x_420 : vec3<f32> = txVec0;
      let x_422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_420.xy, x_420.z);
      u_xlat8.x = x_422;
      let x_425 : vec4<f32> = u_xlat7;
      let x_426 : vec2<f32> = vec2<f32>(x_425.z, x_425.w);
      let x_428 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_426.x, x_426.y, x_428);
      let x_435 : vec3<f32> = txVec1;
      let x_437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_435.xy, x_435.z);
      u_xlat8.y = x_437;
      let x_439 : vec4<f32> = vs_TEXCOORD6;
      let x_442 : vec4<f32> = x_380.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_439.x, x_439.y, x_439.x, x_439.y) + x_442);
      let x_445 : vec4<f32> = u_xlat7;
      let x_446 : vec2<f32> = vec2<f32>(x_445.x, x_445.y);
      let x_448 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_446.x, x_446.y, x_448);
      let x_455 : vec3<f32> = txVec2;
      let x_457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_455.xy, x_455.z);
      u_xlat8.z = x_457;
      let x_460 : vec4<f32> = u_xlat7;
      let x_461 : vec2<f32> = vec2<f32>(x_460.z, x_460.w);
      let x_463 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_461.x, x_461.y, x_463);
      let x_470 : vec3<f32> = txVec3;
      let x_472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_470.xy, x_470.z);
      u_xlat8.w = x_472;
      let x_475 : vec4<f32> = u_xlat8;
      u_xlat48 = dot(x_475, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_482 : f32 = x_380.x_MainLightShadowParams.y;
      u_xlatb69 = (x_482 == 2.0f);
      let x_484 : bool = u_xlatb69;
      if (x_484) {
        let x_487 : vec4<f32> = vs_TEXCOORD6;
        let x_490 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_495 : vec2<f32> = ((vec2<f32>(x_487.x, x_487.y) * vec2<f32>(x_490.z, x_490.w)) + vec2<f32>(0.5f, 0.5f));
        let x_496 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
        let x_498 : vec4<f32> = u_xlat7;
        let x_500 : vec2<f32> = floor(vec2<f32>(x_498.x, x_498.y));
        let x_501 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
        let x_505 : vec4<f32> = vs_TEXCOORD6;
        let x_508 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_511 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_505.x, x_505.y) * vec2<f32>(x_508.z, x_508.w)) + -(vec2<f32>(x_511.x, x_511.y)));
        let x_515 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_515.x, x_515.x, x_515.y, x_515.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_520 : vec4<f32> = u_xlat8;
        let x_522 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_520.x, x_520.x, x_520.z, x_520.z) * vec4<f32>(x_522.x, x_522.x, x_522.z, x_522.z));
        let x_525 : vec4<f32> = u_xlat9;
        let x_529 : vec2<f32> = (vec2<f32>(x_525.y, x_525.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_530 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_529.x, x_530.y, x_529.y, x_530.w);
        let x_532 : vec4<f32> = u_xlat9;
        let x_535 : vec2<f32> = u_xlat49;
        let x_537 : vec2<f32> = ((vec2<f32>(x_532.x, x_532.z) * vec2<f32>(0.5f, 0.5f)) + -(x_535));
        let x_538 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
        let x_541 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_541) + vec2<f32>(1.0f, 1.0f));
        let x_545 : vec2<f32> = u_xlat49;
        let x_547 : vec2<f32> = min(x_545, vec2<f32>(0.0f, 0.0f));
        let x_548 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_547.x, x_547.y, x_548.z, x_548.w);
        let x_550 : vec4<f32> = u_xlat10;
        let x_553 : vec4<f32> = u_xlat10;
        let x_556 : vec2<f32> = u_xlat51;
        let x_557 : vec2<f32> = ((-(vec2<f32>(x_550.x, x_550.y)) * vec2<f32>(x_553.x, x_553.y)) + x_556);
        let x_558 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
        let x_560 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_560, vec2<f32>(0.0f, 0.0f));
        let x_562 : vec2<f32> = u_xlat49;
        let x_564 : vec2<f32> = u_xlat49;
        let x_566 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_562) * x_564) + vec2<f32>(x_566.y, x_566.w));
        let x_569 : vec4<f32> = u_xlat10;
        let x_571 : vec2<f32> = (vec2<f32>(x_569.x, x_569.y) + vec2<f32>(1.0f, 1.0f));
        let x_572 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
        let x_574 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_574 + vec2<f32>(1.0f, 1.0f));
        let x_577 : vec4<f32> = u_xlat9;
        let x_581 : vec2<f32> = (vec2<f32>(x_577.x, x_577.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_582 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
        let x_584 : vec2<f32> = u_xlat51;
        let x_585 : vec2<f32> = (x_584 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_586 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
        let x_588 : vec4<f32> = u_xlat10;
        let x_590 : vec2<f32> = (vec2<f32>(x_588.x, x_588.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_591 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_590.x, x_590.y, x_591.z, x_591.w);
        let x_594 : vec2<f32> = u_xlat49;
        let x_595 : vec2<f32> = (x_594 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_596 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_598.y, x_598.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_602 : f32 = u_xlat10.x;
        u_xlat11.z = x_602;
        let x_605 : f32 = u_xlat49.x;
        u_xlat11.w = x_605;
        let x_608 : f32 = u_xlat12.x;
        u_xlat9.z = x_608;
        let x_611 : f32 = u_xlat8.x;
        u_xlat9.w = x_611;
        let x_614 : vec4<f32> = u_xlat9;
        let x_616 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_614.z, x_614.w, x_614.x, x_614.z) + vec4<f32>(x_616.z, x_616.w, x_616.x, x_616.z));
        let x_620 : f32 = u_xlat11.y;
        u_xlat10.z = x_620;
        let x_623 : f32 = u_xlat49.y;
        u_xlat10.w = x_623;
        let x_626 : f32 = u_xlat9.y;
        u_xlat12.z = x_626;
        let x_629 : f32 = u_xlat8.z;
        u_xlat12.w = x_629;
        let x_631 : vec4<f32> = u_xlat10;
        let x_633 : vec4<f32> = u_xlat12;
        let x_635 : vec3<f32> = (vec3<f32>(x_631.z, x_631.y, x_631.w) + vec3<f32>(x_633.z, x_633.y, x_633.w));
        let x_636 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
        let x_638 : vec4<f32> = u_xlat9;
        let x_640 : vec4<f32> = u_xlat13;
        let x_642 : vec3<f32> = (vec3<f32>(x_638.x, x_638.z, x_638.w) / vec3<f32>(x_640.z, x_640.w, x_640.y));
        let x_643 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
        let x_645 : vec4<f32> = u_xlat9;
        let x_651 : vec3<f32> = (vec3<f32>(x_645.x, x_645.y, x_645.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_652 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
        let x_654 : vec4<f32> = u_xlat12;
        let x_656 : vec4<f32> = u_xlat8;
        let x_658 : vec3<f32> = (vec3<f32>(x_654.z, x_654.y, x_654.w) / vec3<f32>(x_656.x, x_656.y, x_656.z));
        let x_659 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
        let x_661 : vec4<f32> = u_xlat10;
        let x_663 : vec3<f32> = (vec3<f32>(x_661.x, x_661.y, x_661.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_664 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
        let x_666 : vec4<f32> = u_xlat9;
        let x_669 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_671 : vec3<f32> = (vec3<f32>(x_666.y, x_666.x, x_666.z) * vec3<f32>(x_669.x, x_669.x, x_669.x));
        let x_672 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
        let x_674 : vec4<f32> = u_xlat10;
        let x_677 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_679 : vec3<f32> = (vec3<f32>(x_674.x, x_674.y, x_674.z) * vec3<f32>(x_677.y, x_677.y, x_677.y));
        let x_680 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
        let x_683 : f32 = u_xlat10.x;
        u_xlat9.w = x_683;
        let x_685 : vec4<f32> = u_xlat7;
        let x_688 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_691 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_685.x, x_685.y, x_685.x, x_685.y) * vec4<f32>(x_688.x, x_688.y, x_688.x, x_688.y)) + vec4<f32>(x_691.y, x_691.w, x_691.x, x_691.w));
        let x_694 : vec4<f32> = u_xlat7;
        let x_697 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_700 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_694.x, x_694.y) * vec2<f32>(x_697.x, x_697.y)) + vec2<f32>(x_700.z, x_700.w));
        let x_704 : f32 = u_xlat9.y;
        u_xlat10.w = x_704;
        let x_706 : vec4<f32> = u_xlat10;
        let x_707 : vec2<f32> = vec2<f32>(x_706.y, x_706.z);
        let x_708 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_708.x, x_707.x, x_708.z, x_707.y);
        let x_710 : vec4<f32> = u_xlat7;
        let x_713 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_716 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_710.x, x_710.y, x_710.x, x_710.y) * vec4<f32>(x_713.x, x_713.y, x_713.x, x_713.y)) + vec4<f32>(x_716.x, x_716.y, x_716.z, x_716.y));
        let x_719 : vec4<f32> = u_xlat7;
        let x_722 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_725 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_719.x, x_719.y, x_719.x, x_719.y) * vec4<f32>(x_722.x, x_722.y, x_722.x, x_722.y)) + vec4<f32>(x_725.w, x_725.y, x_725.w, x_725.z));
        let x_728 : vec4<f32> = u_xlat7;
        let x_731 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_734 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_728.x, x_728.y, x_728.x, x_728.y) * vec4<f32>(x_731.x, x_731.y, x_731.x, x_731.y)) + vec4<f32>(x_734.x, x_734.w, x_734.z, x_734.w));
        let x_738 : vec4<f32> = u_xlat8;
        let x_740 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_738.x, x_738.x, x_738.x, x_738.y) * vec4<f32>(x_740.z, x_740.w, x_740.y, x_740.z));
        let x_744 : vec4<f32> = u_xlat8;
        let x_746 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_744.y, x_744.y, x_744.z, x_744.z) * x_746);
        let x_750 : f32 = u_xlat8.z;
        let x_752 : f32 = u_xlat13.y;
        u_xlat69 = (x_750 * x_752);
        let x_755 : vec4<f32> = u_xlat11;
        let x_756 : vec2<f32> = vec2<f32>(x_755.x, x_755.y);
        let x_758 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_756.x, x_756.y, x_758);
        let x_765 : vec3<f32> = txVec4;
        let x_767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_765.xy, x_765.z);
        u_xlat7.x = x_767;
        let x_770 : vec4<f32> = u_xlat11;
        let x_771 : vec2<f32> = vec2<f32>(x_770.z, x_770.w);
        let x_773 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_771.x, x_771.y, x_773);
        let x_781 : vec3<f32> = txVec5;
        let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_781.xy, x_781.z);
        u_xlat28 = x_783;
        let x_784 : f32 = u_xlat28;
        let x_786 : f32 = u_xlat14.y;
        u_xlat28 = (x_784 * x_786);
        let x_789 : f32 = u_xlat14.x;
        let x_791 : f32 = u_xlat7.x;
        let x_793 : f32 = u_xlat28;
        u_xlat7.x = ((x_789 * x_791) + x_793);
        let x_797 : vec2<f32> = u_xlat49;
        let x_799 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_797.x, x_797.y, x_799);
        let x_806 : vec3<f32> = txVec6;
        let x_808 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_806.xy, x_806.z);
        u_xlat28 = x_808;
        let x_810 : f32 = u_xlat14.z;
        let x_811 : f32 = u_xlat28;
        let x_814 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_810 * x_811) + x_814);
        let x_818 : vec4<f32> = u_xlat10;
        let x_819 : vec2<f32> = vec2<f32>(x_818.x, x_818.y);
        let x_821 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_819.x, x_819.y, x_821);
        let x_828 : vec3<f32> = txVec7;
        let x_830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_828.xy, x_828.z);
        u_xlat28 = x_830;
        let x_832 : f32 = u_xlat14.w;
        let x_833 : f32 = u_xlat28;
        let x_836 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_832 * x_833) + x_836);
        let x_840 : vec4<f32> = u_xlat12;
        let x_841 : vec2<f32> = vec2<f32>(x_840.x, x_840.y);
        let x_843 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_841.x, x_841.y, x_843);
        let x_850 : vec3<f32> = txVec8;
        let x_852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_850.xy, x_850.z);
        u_xlat28 = x_852;
        let x_854 : f32 = u_xlat15.x;
        let x_855 : f32 = u_xlat28;
        let x_858 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_854 * x_855) + x_858);
        let x_862 : vec4<f32> = u_xlat12;
        let x_863 : vec2<f32> = vec2<f32>(x_862.z, x_862.w);
        let x_865 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_863.x, x_863.y, x_865);
        let x_872 : vec3<f32> = txVec9;
        let x_874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_872.xy, x_872.z);
        u_xlat28 = x_874;
        let x_876 : f32 = u_xlat15.y;
        let x_877 : f32 = u_xlat28;
        let x_880 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_876 * x_877) + x_880);
        let x_884 : vec4<f32> = u_xlat10;
        let x_885 : vec2<f32> = vec2<f32>(x_884.z, x_884.w);
        let x_887 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_885.x, x_885.y, x_887);
        let x_894 : vec3<f32> = txVec10;
        let x_896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_894.xy, x_894.z);
        u_xlat28 = x_896;
        let x_898 : f32 = u_xlat15.z;
        let x_899 : f32 = u_xlat28;
        let x_902 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_898 * x_899) + x_902);
        let x_906 : vec4<f32> = u_xlat9;
        let x_907 : vec2<f32> = vec2<f32>(x_906.x, x_906.y);
        let x_909 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_907.x, x_907.y, x_909);
        let x_916 : vec3<f32> = txVec11;
        let x_918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_916.xy, x_916.z);
        u_xlat28 = x_918;
        let x_920 : f32 = u_xlat15.w;
        let x_921 : f32 = u_xlat28;
        let x_924 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_920 * x_921) + x_924);
        let x_928 : vec4<f32> = u_xlat9;
        let x_929 : vec2<f32> = vec2<f32>(x_928.z, x_928.w);
        let x_931 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_929.x, x_929.y, x_931);
        let x_938 : vec3<f32> = txVec12;
        let x_940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_938.xy, x_938.z);
        u_xlat28 = x_940;
        let x_941 : f32 = u_xlat69;
        let x_942 : f32 = u_xlat28;
        let x_945 : f32 = u_xlat7.x;
        u_xlat48 = ((x_941 * x_942) + x_945);
      } else {
        let x_948 : vec4<f32> = vs_TEXCOORD6;
        let x_951 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_954 : vec2<f32> = ((vec2<f32>(x_948.x, x_948.y) * vec2<f32>(x_951.z, x_951.w)) + vec2<f32>(0.5f, 0.5f));
        let x_955 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec4<f32> = u_xlat7;
        let x_959 : vec2<f32> = floor(vec2<f32>(x_957.x, x_957.y));
        let x_960 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_962 : vec4<f32> = vs_TEXCOORD6;
        let x_965 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_968 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_962.x, x_962.y) * vec2<f32>(x_965.z, x_965.w)) + -(vec2<f32>(x_968.x, x_968.y)));
        let x_972 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_972.x, x_972.x, x_972.y, x_972.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_975 : vec4<f32> = u_xlat8;
        let x_977 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_975.x, x_975.x, x_975.z, x_975.z) * vec4<f32>(x_977.x, x_977.x, x_977.z, x_977.z));
        let x_980 : vec4<f32> = u_xlat9;
        let x_984 : vec2<f32> = (vec2<f32>(x_980.y, x_980.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_985 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_985.x, x_984.x, x_985.z, x_984.y);
        let x_987 : vec4<f32> = u_xlat9;
        let x_990 : vec2<f32> = u_xlat49;
        let x_992 : vec2<f32> = ((vec2<f32>(x_987.x, x_987.z) * vec2<f32>(0.5f, 0.5f)) + -(x_990));
        let x_993 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_992.x, x_993.y, x_992.y, x_993.w);
        let x_995 : vec2<f32> = u_xlat49;
        let x_997 : vec2<f32> = (-(x_995) + vec2<f32>(1.0f, 1.0f));
        let x_998 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_997.x, x_997.y, x_998.z, x_998.w);
        let x_1000 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1000, vec2<f32>(0.0f, 0.0f));
        let x_1002 : vec2<f32> = u_xlat51;
        let x_1004 : vec2<f32> = u_xlat51;
        let x_1006 : vec4<f32> = u_xlat9;
        let x_1008 : vec2<f32> = ((-(x_1002) * x_1004) + vec2<f32>(x_1006.x, x_1006.y));
        let x_1009 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1008.x, x_1008.y, x_1009.z, x_1009.w);
        let x_1011 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1011, vec2<f32>(0.0f, 0.0f));
        let x_1014 : vec2<f32> = u_xlat51;
        let x_1016 : vec2<f32> = u_xlat51;
        let x_1018 : vec4<f32> = u_xlat8;
        let x_1020 : vec2<f32> = ((-(x_1014) * x_1016) + vec2<f32>(x_1018.y, x_1018.w));
        let x_1021 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1020.x, x_1021.y, x_1020.y);
        let x_1023 : vec4<f32> = u_xlat9;
        let x_1026 : vec2<f32> = (vec2<f32>(x_1023.x, x_1023.y) + vec2<f32>(2.0f, 2.0f));
        let x_1027 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1026.x, x_1026.y, x_1027.z, x_1027.w);
        let x_1029 : vec3<f32> = u_xlat29;
        let x_1031 : vec2<f32> = (vec2<f32>(x_1029.x, x_1029.z) + vec2<f32>(2.0f, 2.0f));
        let x_1032 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1032.x, x_1031.x, x_1032.z, x_1031.y);
        let x_1035 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1035 * 0.081632003f);
        let x_1039 : vec4<f32> = u_xlat8;
        let x_1042 : vec3<f32> = (vec3<f32>(x_1039.z, x_1039.x, x_1039.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1043 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
        let x_1045 : vec4<f32> = u_xlat9;
        let x_1048 : vec2<f32> = (vec2<f32>(x_1045.x, x_1045.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1049 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1048.x, x_1048.y, x_1049.z, x_1049.w);
        let x_1052 : f32 = u_xlat12.y;
        u_xlat11.x = x_1052;
        let x_1054 : vec2<f32> = u_xlat49;
        let x_1061 : vec2<f32> = ((vec2<f32>(x_1054.x, x_1054.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1062 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1062.x, x_1061.x, x_1062.z, x_1061.y);
        let x_1064 : vec2<f32> = u_xlat49;
        let x_1068 : vec2<f32> = ((vec2<f32>(x_1064.x, x_1064.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1069 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1068.x, x_1069.y, x_1068.y, x_1069.w);
        let x_1072 : f32 = u_xlat8.x;
        u_xlat9.y = x_1072;
        let x_1075 : f32 = u_xlat10.y;
        u_xlat9.w = x_1075;
        let x_1077 : vec4<f32> = u_xlat9;
        let x_1078 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1077 + x_1078);
        let x_1080 : vec2<f32> = u_xlat49;
        let x_1083 : vec2<f32> = ((vec2<f32>(x_1080.y, x_1080.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1084 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1084.x, x_1083.x, x_1084.z, x_1083.y);
        let x_1086 : vec2<f32> = u_xlat49;
        let x_1089 : vec2<f32> = ((vec2<f32>(x_1086.y, x_1086.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1090 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1089.x, x_1090.y, x_1089.y, x_1090.w);
        let x_1093 : f32 = u_xlat8.y;
        u_xlat10.y = x_1093;
        let x_1095 : vec4<f32> = u_xlat10;
        let x_1096 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1095 + x_1096);
        let x_1098 : vec4<f32> = u_xlat9;
        let x_1099 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1098 / x_1099);
        let x_1101 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1101 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1107 : vec4<f32> = u_xlat10;
        let x_1108 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1107 / x_1108);
        let x_1110 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1110 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1112 : vec4<f32> = u_xlat9;
        let x_1115 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1112.w, x_1112.x, x_1112.y, x_1112.z) * vec4<f32>(x_1115.x, x_1115.x, x_1115.x, x_1115.x));
        let x_1118 : vec4<f32> = u_xlat10;
        let x_1121 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1118.x, x_1118.w, x_1118.y, x_1118.z) * vec4<f32>(x_1121.y, x_1121.y, x_1121.y, x_1121.y));
        let x_1124 : vec4<f32> = u_xlat9;
        let x_1125 : vec3<f32> = vec3<f32>(x_1124.y, x_1124.z, x_1124.w);
        let x_1126 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1125.x, x_1126.y, x_1125.y, x_1125.z);
        let x_1129 : f32 = u_xlat10.x;
        u_xlat12.y = x_1129;
        let x_1131 : vec4<f32> = u_xlat7;
        let x_1134 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_1137 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.y) * vec4<f32>(x_1134.x, x_1134.y, x_1134.x, x_1134.y)) + vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1137.y));
        let x_1140 : vec4<f32> = u_xlat7;
        let x_1143 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_1146 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(x_1143.x, x_1143.y)) + vec2<f32>(x_1146.w, x_1146.y));
        let x_1150 : f32 = u_xlat12.y;
        u_xlat9.y = x_1150;
        let x_1153 : f32 = u_xlat10.z;
        u_xlat12.y = x_1153;
        let x_1155 : vec4<f32> = u_xlat7;
        let x_1158 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1155.x, x_1155.y, x_1155.x, x_1155.y) * vec4<f32>(x_1158.x, x_1158.y, x_1158.x, x_1158.y)) + vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1161.y));
        let x_1164 : vec4<f32> = u_xlat7;
        let x_1167 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat12;
        let x_1172 : vec2<f32> = ((vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(x_1167.x, x_1167.y)) + vec2<f32>(x_1170.w, x_1170.y));
        let x_1173 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
        let x_1176 : f32 = u_xlat12.y;
        u_xlat9.z = x_1176;
        let x_1179 : vec4<f32> = u_xlat7;
        let x_1182 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_1185 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1179.x, x_1179.y, x_1179.x, x_1179.y) * vec4<f32>(x_1182.x, x_1182.y, x_1182.x, x_1182.y)) + vec4<f32>(x_1185.x, x_1185.y, x_1185.x, x_1185.z));
        let x_1189 : f32 = u_xlat10.w;
        u_xlat12.y = x_1189;
        let x_1192 : vec4<f32> = u_xlat7;
        let x_1195 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_1198 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1192.x, x_1192.y, x_1192.x, x_1192.y) * vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y)) + vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1198.y));
        let x_1202 : vec4<f32> = u_xlat7;
        let x_1205 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_1208 : vec4<f32> = u_xlat12;
        let x_1210 : vec2<f32> = ((vec2<f32>(x_1202.x, x_1202.y) * vec2<f32>(x_1205.x, x_1205.y)) + vec2<f32>(x_1208.w, x_1208.y));
        let x_1211 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1210.x, x_1210.y, x_1211.z);
        let x_1214 : f32 = u_xlat12.y;
        u_xlat9.w = x_1214;
        let x_1217 : vec4<f32> = u_xlat7;
        let x_1220 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_1223 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1217.x, x_1217.y) * vec2<f32>(x_1220.x, x_1220.y)) + vec2<f32>(x_1223.x, x_1223.w));
        let x_1226 : vec4<f32> = u_xlat12;
        let x_1227 : vec3<f32> = vec3<f32>(x_1226.x, x_1226.z, x_1226.w);
        let x_1228 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1227.x, x_1228.y, x_1227.y, x_1227.z);
        let x_1230 : vec4<f32> = u_xlat7;
        let x_1233 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1230.x, x_1230.y, x_1230.x, x_1230.y) * vec4<f32>(x_1233.x, x_1233.y, x_1233.x, x_1233.y)) + vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1236.y));
        let x_1240 : vec4<f32> = u_xlat7;
        let x_1243 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_1246 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1240.x, x_1240.y) * vec2<f32>(x_1243.x, x_1243.y)) + vec2<f32>(x_1246.w, x_1246.y));
        let x_1250 : f32 = u_xlat9.x;
        u_xlat10.x = x_1250;
        let x_1252 : vec4<f32> = u_xlat7;
        let x_1255 : vec4<f32> = x_380.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat10;
        let x_1260 : vec2<f32> = ((vec2<f32>(x_1252.x, x_1252.y) * vec2<f32>(x_1255.x, x_1255.y)) + vec2<f32>(x_1258.x, x_1258.y));
        let x_1261 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1260.x, x_1260.y, x_1261.z, x_1261.w);
        let x_1264 : vec4<f32> = u_xlat8;
        let x_1266 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1264.x, x_1264.x, x_1264.x, x_1264.x) * x_1266);
        let x_1269 : vec4<f32> = u_xlat8;
        let x_1271 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1269.y, x_1269.y, x_1269.y, x_1269.y) * x_1271);
        let x_1274 : vec4<f32> = u_xlat8;
        let x_1276 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1274.z, x_1274.z, x_1274.z, x_1274.z) * x_1276);
        let x_1278 : vec4<f32> = u_xlat8;
        let x_1280 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1278.w, x_1278.w, x_1278.w, x_1278.w) * x_1280);
        let x_1283 : vec4<f32> = u_xlat13;
        let x_1284 : vec2<f32> = vec2<f32>(x_1283.x, x_1283.y);
        let x_1286 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1284.x, x_1284.y, x_1286);
        let x_1293 : vec3<f32> = txVec13;
        let x_1295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1293.xy, x_1293.z);
        u_xlat69 = x_1295;
        let x_1297 : vec4<f32> = u_xlat13;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.z, x_1297.w);
        let x_1300 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec14;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1307.xy, x_1307.z);
        u_xlat9.x = x_1309;
        let x_1312 : f32 = u_xlat9.x;
        let x_1314 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1312 * x_1314);
        let x_1318 : f32 = u_xlat18.x;
        let x_1319 : f32 = u_xlat69;
        let x_1322 : f32 = u_xlat9.x;
        u_xlat69 = ((x_1318 * x_1319) + x_1322);
        let x_1325 : vec2<f32> = u_xlat49;
        let x_1327 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec15;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1334.xy, x_1334.z);
        u_xlat49.x = x_1336;
        let x_1339 : f32 = u_xlat18.z;
        let x_1341 : f32 = u_xlat49.x;
        let x_1343 : f32 = u_xlat69;
        u_xlat69 = ((x_1339 * x_1341) + x_1343);
        let x_1346 : vec4<f32> = u_xlat16;
        let x_1347 : vec2<f32> = vec2<f32>(x_1346.x, x_1346.y);
        let x_1349 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1347.x, x_1347.y, x_1349);
        let x_1356 : vec3<f32> = txVec16;
        let x_1358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1356.xy, x_1356.z);
        u_xlat49.x = x_1358;
        let x_1361 : f32 = u_xlat18.w;
        let x_1363 : f32 = u_xlat49.x;
        let x_1365 : f32 = u_xlat69;
        u_xlat69 = ((x_1361 * x_1363) + x_1365);
        let x_1368 : vec4<f32> = u_xlat14;
        let x_1369 : vec2<f32> = vec2<f32>(x_1368.x, x_1368.y);
        let x_1371 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec17;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1378.xy, x_1378.z);
        u_xlat49.x = x_1380;
        let x_1383 : f32 = u_xlat19.x;
        let x_1385 : f32 = u_xlat49.x;
        let x_1387 : f32 = u_xlat69;
        u_xlat69 = ((x_1383 * x_1385) + x_1387);
        let x_1390 : vec4<f32> = u_xlat14;
        let x_1391 : vec2<f32> = vec2<f32>(x_1390.z, x_1390.w);
        let x_1393 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec18;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1400.xy, x_1400.z);
        u_xlat49.x = x_1402;
        let x_1405 : f32 = u_xlat19.y;
        let x_1407 : f32 = u_xlat49.x;
        let x_1409 : f32 = u_xlat69;
        u_xlat69 = ((x_1405 * x_1407) + x_1409);
        let x_1412 : vec4<f32> = u_xlat15;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.x, x_1412.y);
        let x_1415 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec19;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1422.xy, x_1422.z);
        u_xlat49.x = x_1424;
        let x_1427 : f32 = u_xlat19.z;
        let x_1429 : f32 = u_xlat49.x;
        let x_1431 : f32 = u_xlat69;
        u_xlat69 = ((x_1427 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat16;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.z, x_1434.w);
        let x_1437 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec20;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat49.x = x_1446;
        let x_1449 : f32 = u_xlat19.w;
        let x_1451 : f32 = u_xlat49.x;
        let x_1453 : f32 = u_xlat69;
        u_xlat69 = ((x_1449 * x_1451) + x_1453);
        let x_1456 : vec4<f32> = u_xlat17;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
        let x_1459 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec21;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
        u_xlat49.x = x_1468;
        let x_1471 : f32 = u_xlat20.x;
        let x_1473 : f32 = u_xlat49.x;
        let x_1475 : f32 = u_xlat69;
        u_xlat69 = ((x_1471 * x_1473) + x_1475);
        let x_1478 : vec4<f32> = u_xlat17;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.z, x_1478.w);
        let x_1481 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec22;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1488.xy, x_1488.z);
        u_xlat49.x = x_1490;
        let x_1493 : f32 = u_xlat20.y;
        let x_1495 : f32 = u_xlat49.x;
        let x_1497 : f32 = u_xlat69;
        u_xlat69 = ((x_1493 * x_1495) + x_1497);
        let x_1500 : vec3<f32> = u_xlat30;
        let x_1501 : vec2<f32> = vec2<f32>(x_1500.x, x_1500.y);
        let x_1503 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec23;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1510.xy, x_1510.z);
        u_xlat49.x = x_1512;
        let x_1515 : f32 = u_xlat20.z;
        let x_1517 : f32 = u_xlat49.x;
        let x_1519 : f32 = u_xlat69;
        u_xlat69 = ((x_1515 * x_1517) + x_1519);
        let x_1522 : vec2<f32> = u_xlat57;
        let x_1524 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec24;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1531.xy, x_1531.z);
        u_xlat49.x = x_1533;
        let x_1536 : f32 = u_xlat20.w;
        let x_1538 : f32 = u_xlat49.x;
        let x_1540 : f32 = u_xlat69;
        u_xlat69 = ((x_1536 * x_1538) + x_1540);
        let x_1543 : vec4<f32> = u_xlat12;
        let x_1544 : vec2<f32> = vec2<f32>(x_1543.x, x_1543.y);
        let x_1546 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
        let x_1553 : vec3<f32> = txVec25;
        let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1553.xy, x_1553.z);
        u_xlat49.x = x_1555;
        let x_1558 : f32 = u_xlat8.x;
        let x_1560 : f32 = u_xlat49.x;
        let x_1562 : f32 = u_xlat69;
        u_xlat69 = ((x_1558 * x_1560) + x_1562);
        let x_1565 : vec4<f32> = u_xlat12;
        let x_1566 : vec2<f32> = vec2<f32>(x_1565.z, x_1565.w);
        let x_1568 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1566.x, x_1566.y, x_1568);
        let x_1575 : vec3<f32> = txVec26;
        let x_1577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1575.xy, x_1575.z);
        u_xlat49.x = x_1577;
        let x_1580 : f32 = u_xlat8.y;
        let x_1582 : f32 = u_xlat49.x;
        let x_1584 : f32 = u_xlat69;
        u_xlat69 = ((x_1580 * x_1582) + x_1584);
        let x_1587 : vec2<f32> = u_xlat52;
        let x_1589 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec27;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1596.xy, x_1596.z);
        u_xlat49.x = x_1598;
        let x_1601 : f32 = u_xlat8.z;
        let x_1603 : f32 = u_xlat49.x;
        let x_1605 : f32 = u_xlat69;
        u_xlat69 = ((x_1601 * x_1603) + x_1605);
        let x_1608 : vec4<f32> = u_xlat7;
        let x_1609 : vec2<f32> = vec2<f32>(x_1608.x, x_1608.y);
        let x_1611 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec28;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1618.xy, x_1618.z);
        u_xlat7.x = x_1620;
        let x_1623 : f32 = u_xlat8.w;
        let x_1625 : f32 = u_xlat7.x;
        let x_1627 : f32 = u_xlat69;
        u_xlat48 = ((x_1623 * x_1625) + x_1627);
      }
    }
  } else {
    let x_1631 : vec4<f32> = vs_TEXCOORD6;
    let x_1632 : vec2<f32> = vec2<f32>(x_1631.x, x_1631.y);
    let x_1634 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1632.x, x_1632.y, x_1634);
    let x_1641 : vec3<f32> = txVec29;
    let x_1643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1641.xy, x_1641.z);
    u_xlat48 = x_1643;
  }
  let x_1645 : f32 = x_380.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1645) + 1.0f);
  let x_1648 : f32 = u_xlat48;
  let x_1650 : f32 = x_380.x_MainLightShadowParams.x;
  let x_1652 : f32 = u_xlat69;
  u_xlat48 = ((x_1648 * x_1650) + x_1652);
  let x_1655 : f32 = vs_TEXCOORD6.z;
  u_xlatb69 = (0.0f >= x_1655);
  let x_1659 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (x_1659 >= 1.0f);
  let x_1661 : bool = u_xlatb69;
  let x_1662 : bool = u_xlatb7;
  u_xlatb69 = (x_1661 | x_1662);
  let x_1664 : bool = u_xlatb69;
  let x_1665 : f32 = u_xlat48;
  u_xlat48 = select(x_1665, 1.0f, x_1664);
  let x_1667 : vec3<f32> = vs_TEXCOORD1;
  let x_1669 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1671 : vec3<f32> = (x_1667 + -(x_1669));
  let x_1672 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1671.x, x_1671.y, x_1671.z, x_1672.w);
  let x_1674 : vec4<f32> = u_xlat7;
  let x_1676 : vec4<f32> = u_xlat7;
  u_xlat69 = dot(vec3<f32>(x_1674.x, x_1674.y, x_1674.z), vec3<f32>(x_1676.x, x_1676.y, x_1676.z));
  let x_1679 : f32 = u_xlat69;
  let x_1681 : f32 = x_380.x_MainLightShadowParams.z;
  let x_1684 : f32 = x_380.x_MainLightShadowParams.w;
  u_xlat69 = ((x_1679 * x_1681) + x_1684);
  let x_1686 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1686, 0.0f, 1.0f);
  let x_1688 : f32 = u_xlat48;
  u_xlat7.x = (-(x_1688) + 1.0f);
  let x_1692 : f32 = u_xlat69;
  let x_1694 : f32 = u_xlat7.x;
  let x_1696 : f32 = u_xlat48;
  u_xlat48 = ((x_1692 * x_1694) + x_1696);
  let x_1704 : f32 = x_1702.x_MainLightCookieTextureFormat;
  u_xlatb69 = !((x_1704 == -1.0f));
  let x_1706 : bool = u_xlatb69;
  if (x_1706) {
    let x_1709 : vec3<f32> = vs_TEXCOORD1;
    let x_1712 : vec4<f32> = x_1702.x_MainLightWorldToLight[1i];
    let x_1714 : vec2<f32> = (vec2<f32>(x_1709.y, x_1709.y) * vec2<f32>(x_1712.x, x_1712.y));
    let x_1715 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1714.x, x_1714.y, x_1715.z, x_1715.w);
    let x_1718 : vec4<f32> = x_1702.x_MainLightWorldToLight[0i];
    let x_1720 : vec3<f32> = vs_TEXCOORD1;
    let x_1723 : vec4<f32> = u_xlat7;
    let x_1725 : vec2<f32> = ((vec2<f32>(x_1718.x, x_1718.y) * vec2<f32>(x_1720.x, x_1720.x)) + vec2<f32>(x_1723.x, x_1723.y));
    let x_1726 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1725.x, x_1725.y, x_1726.z, x_1726.w);
    let x_1729 : vec4<f32> = x_1702.x_MainLightWorldToLight[2i];
    let x_1731 : vec3<f32> = vs_TEXCOORD1;
    let x_1734 : vec4<f32> = u_xlat7;
    let x_1736 : vec2<f32> = ((vec2<f32>(x_1729.x, x_1729.y) * vec2<f32>(x_1731.z, x_1731.z)) + vec2<f32>(x_1734.x, x_1734.y));
    let x_1737 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1736.x, x_1736.y, x_1737.z, x_1737.w);
    let x_1739 : vec4<f32> = u_xlat7;
    let x_1743 : vec4<f32> = x_1702.x_MainLightWorldToLight[3i];
    let x_1745 : vec2<f32> = (vec2<f32>(x_1739.x, x_1739.y) + vec2<f32>(x_1743.x, x_1743.y));
    let x_1746 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1745.x, x_1745.y, x_1746.z, x_1746.w);
    let x_1748 : vec4<f32> = u_xlat7;
    let x_1751 : vec2<f32> = ((vec2<f32>(x_1748.x, x_1748.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1752 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1751.x, x_1751.y, x_1752.z, x_1752.w);
    let x_1759 : vec4<f32> = u_xlat7;
    let x_1762 : f32 = x_44.x_GlobalMipBias.x;
    let x_1763 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1759.x, x_1759.y), x_1762);
    u_xlat7 = x_1763;
    let x_1766 : f32 = x_1702.x_MainLightCookieTextureFormat;
    let x_1768 : f32 = x_1702.x_MainLightCookieTextureFormat;
    let x_1770 : f32 = x_1702.x_MainLightCookieTextureFormat;
    let x_1772 : f32 = x_1702.x_MainLightCookieTextureFormat;
    let x_1773 : vec4<f32> = vec4<f32>(x_1766, x_1768, x_1770, x_1772);
    let x_1781 : vec4<bool> = (vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1773.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1781.x, x_1781.y);
    let x_1784 : bool = u_xlatb8.y;
    if (x_1784) {
      let x_1789 : f32 = u_xlat7.w;
      x_1785 = x_1789;
    } else {
      let x_1792 : f32 = u_xlat7.x;
      x_1785 = x_1792;
    }
    let x_1793 : f32 = x_1785;
    u_xlat69 = x_1793;
    let x_1795 : bool = u_xlatb8.x;
    if (x_1795) {
      let x_1799 : vec4<f32> = u_xlat7;
      x_1796 = vec3<f32>(x_1799.x, x_1799.y, x_1799.z);
    } else {
      let x_1802 : f32 = u_xlat69;
      x_1796 = vec3<f32>(x_1802, x_1802, x_1802);
    }
    let x_1804 : vec3<f32> = x_1796;
    let x_1805 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1805.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1811 : vec4<f32> = u_xlat7;
  let x_1814 : vec4<f32> = x_44.x_MainLightColor;
  let x_1816 : vec3<f32> = (vec3<f32>(x_1811.x, x_1811.y, x_1811.z) * vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
  let x_1817 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1817.w);
  let x_1819 : f32 = u_xlat27;
  let x_1821 : vec4<f32> = u_xlat7;
  let x_1823 : vec3<f32> = (vec3<f32>(x_1819, x_1819, x_1819) * vec3<f32>(x_1821.x, x_1821.y, x_1821.z));
  let x_1824 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1823.x, x_1823.y, x_1823.z, x_1824.w);
  let x_1826 : vec3<f32> = u_xlat4;
  let x_1828 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(-(x_1826), vec3<f32>(x_1828.x, x_1828.y, x_1828.z));
  let x_1831 : f32 = u_xlat69;
  let x_1832 : f32 = u_xlat69;
  u_xlat69 = (x_1831 + x_1832);
  let x_1834 : vec4<f32> = u_xlat3;
  let x_1836 : f32 = u_xlat69;
  let x_1840 : vec3<f32> = u_xlat4;
  let x_1842 : vec3<f32> = ((vec3<f32>(x_1834.x, x_1834.y, x_1834.z) * -(vec3<f32>(x_1836, x_1836, x_1836))) + -(x_1840));
  let x_1843 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1842.x, x_1842.y, x_1842.z, x_1843.w);
  let x_1845 : vec4<f32> = u_xlat3;
  let x_1847 : vec3<f32> = u_xlat4;
  u_xlat69 = dot(vec3<f32>(x_1845.x, x_1845.y, x_1845.z), x_1847);
  let x_1849 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1849, 0.0f, 1.0f);
  let x_1851 : f32 = u_xlat69;
  u_xlat69 = (-(x_1851) + 1.0f);
  let x_1854 : f32 = u_xlat69;
  let x_1855 : f32 = u_xlat69;
  u_xlat69 = (x_1854 * x_1855);
  let x_1857 : f32 = u_xlat69;
  let x_1858 : f32 = u_xlat69;
  u_xlat69 = (x_1857 * x_1858);
  let x_1861 : f32 = u_xlat63;
  u_xlat70 = ((-(x_1861) * 0.699999988f) + 1.700000048f);
  let x_1867 : f32 = u_xlat63;
  let x_1868 : f32 = u_xlat70;
  u_xlat63 = (x_1867 * x_1868);
  let x_1870 : f32 = u_xlat63;
  u_xlat63 = (x_1870 * 6.0f);
  let x_1881 : vec4<f32> = u_xlat8;
  let x_1883 : f32 = u_xlat63;
  let x_1884 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1881.x, x_1881.y, x_1881.z), x_1883);
  u_xlat8 = x_1884;
  let x_1886 : f32 = u_xlat8.w;
  u_xlat63 = (x_1886 + -1.0f);
  let x_1889 : f32 = x_168.unity_SpecCube0_HDR.w;
  let x_1890 : f32 = u_xlat63;
  u_xlat63 = ((x_1889 * x_1890) + 1.0f);
  let x_1893 : f32 = u_xlat63;
  u_xlat63 = max(x_1893, 0.0f);
  let x_1895 : f32 = u_xlat63;
  u_xlat63 = log2(x_1895);
  let x_1897 : f32 = u_xlat63;
  let x_1899 : f32 = x_168.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_1897 * x_1899);
  let x_1901 : f32 = u_xlat63;
  u_xlat63 = exp2(x_1901);
  let x_1903 : f32 = u_xlat63;
  let x_1905 : f32 = x_168.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_1903 * x_1905);
  let x_1907 : vec4<f32> = u_xlat8;
  let x_1909 : f32 = u_xlat63;
  let x_1911 : vec3<f32> = (vec3<f32>(x_1907.x, x_1907.y, x_1907.z) * vec3<f32>(x_1909, x_1909, x_1909));
  let x_1912 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1911.x, x_1911.y, x_1911.z, x_1912.w);
  let x_1914 : f32 = u_xlat66;
  let x_1916 : f32 = u_xlat66;
  let x_1920 : vec2<f32> = ((vec2<f32>(x_1914, x_1914) * vec2<f32>(x_1916, x_1916)) + vec2<f32>(-1.0f, 1.0f));
  let x_1921 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1920.x, x_1920.y, x_1921.z, x_1921.w);
  let x_1924 : f32 = u_xlat9.y;
  u_xlat63 = (1.0f / x_1924);
  let x_1926 : vec4<f32> = u_xlat0;
  let x_1929 : f32 = u_xlat65;
  u_xlat30 = (-(vec3<f32>(x_1926.x, x_1926.y, x_1926.z)) + vec3<f32>(x_1929, x_1929, x_1929));
  let x_1932 : f32 = u_xlat69;
  let x_1934 : vec3<f32> = u_xlat30;
  let x_1936 : vec4<f32> = u_xlat0;
  u_xlat30 = ((vec3<f32>(x_1932, x_1932, x_1932) * x_1934) + vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
  let x_1939 : f32 = u_xlat63;
  let x_1941 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1939, x_1939, x_1939) * x_1941);
  let x_1943 : vec4<f32> = u_xlat8;
  let x_1945 : vec3<f32> = u_xlat30;
  let x_1946 : vec3<f32> = (vec3<f32>(x_1943.x, x_1943.y, x_1943.z) * x_1945);
  let x_1947 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1946.x, x_1946.y, x_1946.z, x_1947.w);
  let x_1949 : vec3<f32> = u_xlat5;
  let x_1950 : vec3<f32> = u_xlat22;
  let x_1952 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_1949 * x_1950) + vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
  let x_1955 : f32 = u_xlat48;
  let x_1958 : f32 = x_168.unity_LightData.z;
  u_xlat63 = (x_1955 * x_1958);
  let x_1960 : vec4<f32> = u_xlat3;
  let x_1963 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_1960.x, x_1960.y, x_1960.z), vec3<f32>(x_1963.x, x_1963.y, x_1963.z));
  let x_1966 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1966, 0.0f, 1.0f);
  let x_1968 : f32 = u_xlat63;
  let x_1969 : f32 = u_xlat65;
  u_xlat63 = (x_1968 * x_1969);
  let x_1971 : f32 = u_xlat63;
  let x_1973 : vec4<f32> = u_xlat7;
  let x_1975 : vec3<f32> = (vec3<f32>(x_1971, x_1971, x_1971) * vec3<f32>(x_1973.x, x_1973.y, x_1973.z));
  let x_1976 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1975.x, x_1975.y, x_1975.z, x_1976.w);
  let x_1978 : vec3<f32> = u_xlat4;
  let x_1980 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1982 : vec3<f32> = (x_1978 + vec3<f32>(x_1980.x, x_1980.y, x_1980.z));
  let x_1983 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
  let x_1985 : vec4<f32> = u_xlat8;
  let x_1987 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(vec3<f32>(x_1985.x, x_1985.y, x_1985.z), vec3<f32>(x_1987.x, x_1987.y, x_1987.z));
  let x_1990 : f32 = u_xlat63;
  u_xlat63 = max(x_1990, 1.17549435e-37f);
  let x_1993 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_1993);
  let x_1995 : f32 = u_xlat63;
  let x_1997 : vec4<f32> = u_xlat8;
  let x_1999 : vec3<f32> = (vec3<f32>(x_1995, x_1995, x_1995) * vec3<f32>(x_1997.x, x_1997.y, x_1997.z));
  let x_2000 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
  let x_2002 : vec4<f32> = u_xlat3;
  let x_2004 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(vec3<f32>(x_2002.x, x_2002.y, x_2002.z), vec3<f32>(x_2004.x, x_2004.y, x_2004.z));
  let x_2007 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2007, 0.0f, 1.0f);
  let x_2010 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2012 : vec4<f32> = u_xlat8;
  u_xlat65 = dot(vec3<f32>(x_2010.x, x_2010.y, x_2010.z), vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
  let x_2015 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2015, 0.0f, 1.0f);
  let x_2017 : f32 = u_xlat63;
  let x_2018 : f32 = u_xlat63;
  u_xlat63 = (x_2017 * x_2018);
  let x_2020 : f32 = u_xlat63;
  let x_2022 : f32 = u_xlat9.x;
  u_xlat63 = ((x_2020 * x_2022) + 1.000010014f);
  let x_2026 : f32 = u_xlat65;
  let x_2027 : f32 = u_xlat65;
  u_xlat65 = (x_2026 * x_2027);
  let x_2029 : f32 = u_xlat63;
  let x_2030 : f32 = u_xlat63;
  u_xlat63 = (x_2029 * x_2030);
  let x_2032 : f32 = u_xlat65;
  u_xlat65 = max(x_2032, 0.100000001f);
  let x_2035 : f32 = u_xlat63;
  let x_2036 : f32 = u_xlat65;
  u_xlat63 = (x_2035 * x_2036);
  let x_2038 : f32 = u_xlat68;
  let x_2039 : f32 = u_xlat63;
  u_xlat63 = (x_2038 * x_2039);
  let x_2041 : f32 = u_xlat67;
  let x_2042 : f32 = u_xlat63;
  u_xlat63 = (x_2041 / x_2042);
  let x_2044 : vec4<f32> = u_xlat0;
  let x_2046 : f32 = u_xlat63;
  let x_2049 : vec3<f32> = u_xlat22;
  let x_2050 : vec3<f32> = ((vec3<f32>(x_2044.x, x_2044.y, x_2044.z) * vec3<f32>(x_2046, x_2046, x_2046)) + x_2049);
  let x_2051 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2050.x, x_2050.y, x_2050.z, x_2051.w);
  let x_2053 : vec4<f32> = u_xlat7;
  let x_2055 : vec4<f32> = u_xlat8;
  let x_2057 : vec3<f32> = (vec3<f32>(x_2053.x, x_2053.y, x_2053.z) * vec3<f32>(x_2055.x, x_2055.y, x_2055.z));
  let x_2058 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2058.w);
  let x_2061 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2063 : f32 = x_168.unity_LightData.y;
  u_xlat63 = min(x_2061, x_2063);
  let x_2067 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2067));
  let x_2071 : f32 = x_1702.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2073 : f32 = x_1702.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2075 : f32 = x_1702.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2077 : f32 = x_1702.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2078 : vec4<f32> = vec4<f32>(x_2071, x_2073, x_2075, x_2077);
  let x_2085 : vec4<bool> = (vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2078.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb48 = vec2<bool>(x_2085.x, x_2085.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2096 : u32 = u_xlatu_loop_1;
    let x_2097 : u32 = u_xlatu63;
    if ((x_2096 < x_2097)) {
    } else {
      break;
    }
    let x_2100 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2100 >> 2u);
    let x_2104 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2104 & 3u));
    let x_2107 : u32 = u_xlatu66;
    let x_2110 : vec4<f32> = x_168.unity_LightIndices[bitcast<i32>(x_2107)];
    let x_2120 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2125 : vec4<u32> = indexable[x_2120];
    u_xlat66 = dot(x_2110, bitcast<vec4<f32>>(x_2125));
    let x_2128 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2128));
    let x_2131 : vec3<f32> = vs_TEXCOORD1;
    let x_2143 : u32 = u_xlatu66;
    let x_2146 : vec4<f32> = x_2142.x_AdditionalLightsPosition[bitcast<i32>(x_2143)];
    let x_2149 : u32 = u_xlatu66;
    let x_2152 : vec4<f32> = x_2142.x_AdditionalLightsPosition[bitcast<i32>(x_2149)];
    u_xlat30 = ((-(x_2131) * vec3<f32>(x_2146.w, x_2146.w, x_2146.w)) + vec3<f32>(x_2152.x, x_2152.y, x_2152.z));
    let x_2155 : vec3<f32> = u_xlat30;
    let x_2156 : vec3<f32> = u_xlat30;
    u_xlat70 = dot(x_2155, x_2156);
    let x_2158 : f32 = u_xlat70;
    u_xlat70 = max(x_2158, 6.10351562e-05f);
    let x_2162 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_2162);
    let x_2164 : f32 = u_xlat71;
    let x_2166 : vec3<f32> = u_xlat30;
    let x_2167 : vec3<f32> = (vec3<f32>(x_2164, x_2164, x_2164) * x_2166);
    let x_2168 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2167.x, x_2167.y, x_2167.z, x_2168.w);
    let x_2171 : f32 = u_xlat70;
    u_xlat73 = (1.0f / x_2171);
    let x_2173 : f32 = u_xlat70;
    let x_2174 : u32 = u_xlatu66;
    let x_2177 : f32 = x_2142.x_AdditionalLightsAttenuation[bitcast<i32>(x_2174)].x;
    u_xlat70 = (x_2173 * x_2177);
    let x_2179 : f32 = u_xlat70;
    let x_2181 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2179) * x_2181) + 1.0f);
    let x_2184 : f32 = u_xlat70;
    u_xlat70 = max(x_2184, 0.0f);
    let x_2186 : f32 = u_xlat70;
    let x_2187 : f32 = u_xlat70;
    u_xlat70 = (x_2186 * x_2187);
    let x_2189 : f32 = u_xlat70;
    let x_2190 : f32 = u_xlat73;
    u_xlat70 = (x_2189 * x_2190);
    let x_2192 : u32 = u_xlatu66;
    let x_2195 : vec4<f32> = x_2142.x_AdditionalLightsSpotDir[bitcast<i32>(x_2192)];
    let x_2197 : vec4<f32> = u_xlat10;
    u_xlat73 = dot(vec3<f32>(x_2195.x, x_2195.y, x_2195.z), vec3<f32>(x_2197.x, x_2197.y, x_2197.z));
    let x_2200 : f32 = u_xlat73;
    let x_2201 : u32 = u_xlatu66;
    let x_2204 : f32 = x_2142.x_AdditionalLightsAttenuation[bitcast<i32>(x_2201)].z;
    let x_2206 : u32 = u_xlatu66;
    let x_2209 : f32 = x_2142.x_AdditionalLightsAttenuation[bitcast<i32>(x_2206)].w;
    u_xlat73 = ((x_2200 * x_2204) + x_2209);
    let x_2211 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2211, 0.0f, 1.0f);
    let x_2213 : f32 = u_xlat73;
    let x_2214 : f32 = u_xlat73;
    u_xlat73 = (x_2213 * x_2214);
    let x_2216 : f32 = u_xlat70;
    let x_2217 : f32 = u_xlat73;
    u_xlat70 = (x_2216 * x_2217);
    let x_2220 : u32 = u_xlatu66;
    u_xlatu73 = (x_2220 >> 5u);
    let x_2223 : u32 = u_xlatu66;
    u_xlati11 = (1i << bitcast<u32>((bitcast<i32>(x_2223) & 31i)));
    let x_2229 : i32 = u_xlati11;
    let x_2231 : u32 = u_xlatu73;
    let x_2234 : f32 = x_1702.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2231)].el;
    u_xlati73 = bitcast<i32>((bitcast<u32>(x_2229) & bitcast<u32>(x_2234)));
    let x_2238 : i32 = u_xlati73;
    if ((x_2238 != 0i)) {
      let x_2248 : u32 = u_xlatu66;
      let x_2251 : f32 = x_2247.x_AdditionalLightsLightTypes[bitcast<i32>(x_2248)].el;
      u_xlati73 = i32(x_2251);
      let x_2253 : i32 = u_xlati73;
      u_xlati11 = select(1i, 0i, (x_2253 != 0i));
      let x_2257 : u32 = u_xlatu66;
      u_xlati32 = (bitcast<i32>(x_2257) << bitcast<u32>(2i));
      let x_2260 : i32 = u_xlati11;
      if ((x_2260 != 0i)) {
        let x_2264 : vec3<f32> = vs_TEXCOORD1;
        let x_2266 : i32 = u_xlati32;
        let x_2269 : i32 = u_xlati32;
        let x_2273 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2266 + 1i) / 4i)][((x_2269 + 1i) % 4i)];
        let x_2275 : vec3<f32> = (vec3<f32>(x_2264.y, x_2264.y, x_2264.y) * vec3<f32>(x_2273.x, x_2273.y, x_2273.w));
        let x_2276 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2275.x, x_2276.y, x_2275.y, x_2275.z);
        let x_2278 : i32 = u_xlati32;
        let x_2280 : i32 = u_xlati32;
        let x_2283 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[(x_2278 / 4i)][(x_2280 % 4i)];
        let x_2285 : vec3<f32> = vs_TEXCOORD1;
        let x_2288 : vec4<f32> = u_xlat11;
        let x_2290 : vec3<f32> = ((vec3<f32>(x_2283.x, x_2283.y, x_2283.w) * vec3<f32>(x_2285.x, x_2285.x, x_2285.x)) + vec3<f32>(x_2288.x, x_2288.z, x_2288.w));
        let x_2291 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2290.x, x_2291.y, x_2290.y, x_2290.z);
        let x_2293 : i32 = u_xlati32;
        let x_2296 : i32 = u_xlati32;
        let x_2300 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2293 + 2i) / 4i)][((x_2296 + 2i) % 4i)];
        let x_2302 : vec3<f32> = vs_TEXCOORD1;
        let x_2305 : vec4<f32> = u_xlat11;
        let x_2307 : vec3<f32> = ((vec3<f32>(x_2300.x, x_2300.y, x_2300.w) * vec3<f32>(x_2302.z, x_2302.z, x_2302.z)) + vec3<f32>(x_2305.x, x_2305.z, x_2305.w));
        let x_2308 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2307.x, x_2308.y, x_2307.y, x_2307.z);
        let x_2310 : vec4<f32> = u_xlat11;
        let x_2312 : i32 = u_xlati32;
        let x_2315 : i32 = u_xlati32;
        let x_2319 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2312 + 3i) / 4i)][((x_2315 + 3i) % 4i)];
        let x_2321 : vec3<f32> = (vec3<f32>(x_2310.x, x_2310.z, x_2310.w) + vec3<f32>(x_2319.x, x_2319.y, x_2319.w));
        let x_2322 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2321.x, x_2322.y, x_2321.y, x_2321.z);
        let x_2324 : vec4<f32> = u_xlat11;
        let x_2326 : vec4<f32> = u_xlat11;
        let x_2328 : vec2<f32> = (vec2<f32>(x_2324.x, x_2324.z) / vec2<f32>(x_2326.w, x_2326.w));
        let x_2329 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2328.x, x_2329.y, x_2328.y, x_2329.w);
        let x_2331 : vec4<f32> = u_xlat11;
        let x_2334 : vec2<f32> = ((vec2<f32>(x_2331.x, x_2331.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2335 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2334.x, x_2335.y, x_2334.y, x_2335.w);
        let x_2337 : vec4<f32> = u_xlat11;
        let x_2341 : vec2<f32> = clamp(vec2<f32>(x_2337.x, x_2337.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2342 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2341.x, x_2342.y, x_2341.y, x_2342.w);
        let x_2344 : u32 = u_xlatu66;
        let x_2347 : vec4<f32> = x_2247.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2344)];
        let x_2349 : vec4<f32> = u_xlat11;
        let x_2352 : u32 = u_xlatu66;
        let x_2355 : vec4<f32> = x_2247.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2352)];
        let x_2357 : vec2<f32> = ((vec2<f32>(x_2347.x, x_2347.y) * vec2<f32>(x_2349.x, x_2349.z)) + vec2<f32>(x_2355.z, x_2355.w));
        let x_2358 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2357.x, x_2358.y, x_2357.y, x_2358.w);
      } else {
        let x_2362 : i32 = u_xlati73;
        u_xlatb73 = (x_2362 == 1i);
        let x_2364 : bool = u_xlatb73;
        u_xlati73 = select(0i, 1i, x_2364);
        let x_2366 : i32 = u_xlati73;
        if ((x_2366 != 0i)) {
          let x_2370 : vec3<f32> = vs_TEXCOORD1;
          let x_2372 : i32 = u_xlati32;
          let x_2375 : i32 = u_xlati32;
          let x_2379 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2372 + 1i) / 4i)][((x_2375 + 1i) % 4i)];
          let x_2381 : vec2<f32> = (vec2<f32>(x_2370.y, x_2370.y) * vec2<f32>(x_2379.x, x_2379.y));
          let x_2382 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2381.x, x_2381.y, x_2382.z, x_2382.w);
          let x_2384 : i32 = u_xlati32;
          let x_2386 : i32 = u_xlati32;
          let x_2389 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[(x_2384 / 4i)][(x_2386 % 4i)];
          let x_2391 : vec3<f32> = vs_TEXCOORD1;
          let x_2394 : vec4<f32> = u_xlat12;
          let x_2396 : vec2<f32> = ((vec2<f32>(x_2389.x, x_2389.y) * vec2<f32>(x_2391.x, x_2391.x)) + vec2<f32>(x_2394.x, x_2394.y));
          let x_2397 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2396.x, x_2396.y, x_2397.z, x_2397.w);
          let x_2399 : i32 = u_xlati32;
          let x_2402 : i32 = u_xlati32;
          let x_2406 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2399 + 2i) / 4i)][((x_2402 + 2i) % 4i)];
          let x_2408 : vec3<f32> = vs_TEXCOORD1;
          let x_2411 : vec4<f32> = u_xlat12;
          let x_2413 : vec2<f32> = ((vec2<f32>(x_2406.x, x_2406.y) * vec2<f32>(x_2408.z, x_2408.z)) + vec2<f32>(x_2411.x, x_2411.y));
          let x_2414 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2413.x, x_2413.y, x_2414.z, x_2414.w);
          let x_2416 : vec4<f32> = u_xlat12;
          let x_2418 : i32 = u_xlati32;
          let x_2421 : i32 = u_xlati32;
          let x_2425 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2418 + 3i) / 4i)][((x_2421 + 3i) % 4i)];
          let x_2427 : vec2<f32> = (vec2<f32>(x_2416.x, x_2416.y) + vec2<f32>(x_2425.x, x_2425.y));
          let x_2428 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2427.x, x_2427.y, x_2428.z, x_2428.w);
          let x_2430 : vec4<f32> = u_xlat12;
          let x_2433 : vec2<f32> = ((vec2<f32>(x_2430.x, x_2430.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2434 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2433.x, x_2433.y, x_2434.z, x_2434.w);
          let x_2436 : vec4<f32> = u_xlat12;
          let x_2438 : vec2<f32> = fract(vec2<f32>(x_2436.x, x_2436.y));
          let x_2439 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2438.x, x_2438.y, x_2439.z, x_2439.w);
          let x_2441 : u32 = u_xlatu66;
          let x_2444 : vec4<f32> = x_2247.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2441)];
          let x_2446 : vec4<f32> = u_xlat12;
          let x_2449 : u32 = u_xlatu66;
          let x_2452 : vec4<f32> = x_2247.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2449)];
          let x_2454 : vec2<f32> = ((vec2<f32>(x_2444.x, x_2444.y) * vec2<f32>(x_2446.x, x_2446.y)) + vec2<f32>(x_2452.z, x_2452.w));
          let x_2455 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2454.x, x_2455.y, x_2454.y, x_2455.w);
        } else {
          let x_2458 : vec3<f32> = vs_TEXCOORD1;
          let x_2460 : i32 = u_xlati32;
          let x_2463 : i32 = u_xlati32;
          let x_2467 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2460 + 1i) / 4i)][((x_2463 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2458.y, x_2458.y, x_2458.y, x_2458.y) * x_2467);
          let x_2469 : i32 = u_xlati32;
          let x_2471 : i32 = u_xlati32;
          let x_2474 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[(x_2469 / 4i)][(x_2471 % 4i)];
          let x_2475 : vec3<f32> = vs_TEXCOORD1;
          let x_2478 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2474 * vec4<f32>(x_2475.x, x_2475.x, x_2475.x, x_2475.x)) + x_2478);
          let x_2480 : i32 = u_xlati32;
          let x_2483 : i32 = u_xlati32;
          let x_2487 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2480 + 2i) / 4i)][((x_2483 + 2i) % 4i)];
          let x_2488 : vec3<f32> = vs_TEXCOORD1;
          let x_2491 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2487 * vec4<f32>(x_2488.z, x_2488.z, x_2488.z, x_2488.z)) + x_2491);
          let x_2493 : vec4<f32> = u_xlat12;
          let x_2494 : i32 = u_xlati32;
          let x_2497 : i32 = u_xlati32;
          let x_2501 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2494 + 3i) / 4i)][((x_2497 + 3i) % 4i)];
          u_xlat12 = (x_2493 + x_2501);
          let x_2503 : vec4<f32> = u_xlat12;
          let x_2505 : vec4<f32> = u_xlat12;
          let x_2507 : vec3<f32> = (vec3<f32>(x_2503.x, x_2503.y, x_2503.z) / vec3<f32>(x_2505.w, x_2505.w, x_2505.w));
          let x_2508 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2507.x, x_2507.y, x_2507.z, x_2508.w);
          let x_2510 : vec4<f32> = u_xlat12;
          let x_2512 : vec4<f32> = u_xlat12;
          u_xlat73 = dot(vec3<f32>(x_2510.x, x_2510.y, x_2510.z), vec3<f32>(x_2512.x, x_2512.y, x_2512.z));
          let x_2515 : f32 = u_xlat73;
          u_xlat73 = inverseSqrt(x_2515);
          let x_2517 : f32 = u_xlat73;
          let x_2519 : vec4<f32> = u_xlat12;
          let x_2521 : vec3<f32> = (vec3<f32>(x_2517, x_2517, x_2517) * vec3<f32>(x_2519.x, x_2519.y, x_2519.z));
          let x_2522 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2521.x, x_2521.y, x_2521.z, x_2522.w);
          let x_2524 : vec4<f32> = u_xlat12;
          u_xlat73 = dot(abs(vec3<f32>(x_2524.x, x_2524.y, x_2524.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2529 : f32 = u_xlat73;
          u_xlat73 = max(x_2529, 0.000001f);
          let x_2532 : f32 = u_xlat73;
          u_xlat73 = (1.0f / x_2532);
          let x_2534 : f32 = u_xlat73;
          let x_2536 : vec4<f32> = u_xlat12;
          let x_2538 : vec3<f32> = (vec3<f32>(x_2534, x_2534, x_2534) * vec3<f32>(x_2536.z, x_2536.x, x_2536.y));
          let x_2539 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2538.x, x_2538.y, x_2538.z, x_2539.w);
          let x_2542 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2542);
          let x_2546 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2546, 0.0f, 1.0f);
          let x_2552 : vec4<f32> = u_xlat13;
          let x_2555 : vec4<bool> = (vec4<f32>(x_2552.y, x_2552.y, x_2552.z, x_2552.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2556 : vec2<bool> = vec2<bool>(x_2555.x, x_2555.z);
          let x_2557 : vec3<bool> = u_xlatb32;
          u_xlatb32 = vec3<bool>(x_2556.x, x_2557.y, x_2556.y);
          let x_2561 : bool = u_xlatb32.x;
          if (x_2561) {
            let x_2566 : f32 = u_xlat13.x;
            x_2562 = x_2566;
          } else {
            let x_2569 : f32 = u_xlat13.x;
            x_2562 = -(x_2569);
          }
          let x_2571 : f32 = x_2562;
          u_xlat32.x = x_2571;
          let x_2574 : bool = u_xlatb32.z;
          if (x_2574) {
            let x_2579 : f32 = u_xlat13.x;
            x_2575 = x_2579;
          } else {
            let x_2582 : f32 = u_xlat13.x;
            x_2575 = -(x_2582);
          }
          let x_2584 : f32 = x_2575;
          u_xlat32.z = x_2584;
          let x_2586 : vec4<f32> = u_xlat12;
          let x_2588 : f32 = u_xlat73;
          let x_2591 : vec3<f32> = u_xlat32;
          let x_2593 : vec2<f32> = ((vec2<f32>(x_2586.x, x_2586.y) * vec2<f32>(x_2588, x_2588)) + vec2<f32>(x_2591.x, x_2591.z));
          let x_2594 : vec3<f32> = u_xlat32;
          u_xlat32 = vec3<f32>(x_2593.x, x_2594.y, x_2593.y);
          let x_2596 : vec3<f32> = u_xlat32;
          let x_2599 : vec2<f32> = ((vec2<f32>(x_2596.x, x_2596.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2600 : vec3<f32> = u_xlat32;
          u_xlat32 = vec3<f32>(x_2599.x, x_2600.y, x_2599.y);
          let x_2602 : vec3<f32> = u_xlat32;
          let x_2606 : vec2<f32> = clamp(vec2<f32>(x_2602.x, x_2602.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2607 : vec3<f32> = u_xlat32;
          u_xlat32 = vec3<f32>(x_2606.x, x_2607.y, x_2606.y);
          let x_2609 : u32 = u_xlatu66;
          let x_2612 : vec4<f32> = x_2247.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2609)];
          let x_2614 : vec3<f32> = u_xlat32;
          let x_2617 : u32 = u_xlatu66;
          let x_2620 : vec4<f32> = x_2247.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2617)];
          let x_2622 : vec2<f32> = ((vec2<f32>(x_2612.x, x_2612.y) * vec2<f32>(x_2614.x, x_2614.z)) + vec2<f32>(x_2620.z, x_2620.w));
          let x_2623 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2622.x, x_2623.y, x_2622.y, x_2623.w);
        }
      }
      let x_2630 : vec4<f32> = u_xlat11;
      let x_2633 : f32 = x_44.x_GlobalMipBias.x;
      let x_2634 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2630.x, x_2630.z), x_2633);
      u_xlat11 = x_2634;
      let x_2636 : bool = u_xlatb48.y;
      if (x_2636) {
        let x_2641 : f32 = u_xlat11.w;
        x_2637 = x_2641;
      } else {
        let x_2644 : f32 = u_xlat11.x;
        x_2637 = x_2644;
      }
      let x_2645 : f32 = x_2637;
      u_xlat73 = x_2645;
      let x_2647 : bool = u_xlatb48.x;
      if (x_2647) {
        let x_2651 : vec4<f32> = u_xlat11;
        x_2648 = vec3<f32>(x_2651.x, x_2651.y, x_2651.z);
      } else {
        let x_2654 : f32 = u_xlat73;
        x_2648 = vec3<f32>(x_2654, x_2654, x_2654);
      }
      let x_2656 : vec3<f32> = x_2648;
      let x_2657 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2656.x, x_2656.y, x_2656.z, x_2657.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2663 : vec4<f32> = u_xlat11;
    let x_2665 : u32 = u_xlatu66;
    let x_2668 : vec4<f32> = x_2142.x_AdditionalLightsColor[bitcast<i32>(x_2665)];
    let x_2670 : vec3<f32> = (vec3<f32>(x_2663.x, x_2663.y, x_2663.z) * vec3<f32>(x_2668.x, x_2668.y, x_2668.z));
    let x_2671 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2670.x, x_2670.y, x_2670.z, x_2671.w);
    let x_2673 : f32 = u_xlat27;
    let x_2675 : vec4<f32> = u_xlat11;
    let x_2677 : vec3<f32> = (vec3<f32>(x_2673, x_2673, x_2673) * vec3<f32>(x_2675.x, x_2675.y, x_2675.z));
    let x_2678 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2677.x, x_2677.y, x_2677.z, x_2678.w);
    let x_2680 : vec4<f32> = u_xlat3;
    let x_2682 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_2680.x, x_2680.y, x_2680.z), vec3<f32>(x_2682.x, x_2682.y, x_2682.z));
    let x_2685 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2685, 0.0f, 1.0f);
    let x_2687 : f32 = u_xlat66;
    let x_2688 : f32 = u_xlat70;
    u_xlat66 = (x_2687 * x_2688);
    let x_2690 : f32 = u_xlat66;
    let x_2692 : vec4<f32> = u_xlat11;
    let x_2694 : vec3<f32> = (vec3<f32>(x_2690, x_2690, x_2690) * vec3<f32>(x_2692.x, x_2692.y, x_2692.z));
    let x_2695 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2694.x, x_2694.y, x_2694.z, x_2695.w);
    let x_2697 : vec3<f32> = u_xlat30;
    let x_2698 : f32 = u_xlat71;
    let x_2701 : vec3<f32> = u_xlat4;
    u_xlat30 = ((x_2697 * vec3<f32>(x_2698, x_2698, x_2698)) + x_2701);
    let x_2703 : vec3<f32> = u_xlat30;
    let x_2704 : vec3<f32> = u_xlat30;
    u_xlat66 = dot(x_2703, x_2704);
    let x_2706 : f32 = u_xlat66;
    u_xlat66 = max(x_2706, 1.17549435e-37f);
    let x_2708 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_2708);
    let x_2710 : f32 = u_xlat66;
    let x_2712 : vec3<f32> = u_xlat30;
    u_xlat30 = (vec3<f32>(x_2710, x_2710, x_2710) * x_2712);
    let x_2714 : vec4<f32> = u_xlat3;
    let x_2716 : vec3<f32> = u_xlat30;
    u_xlat66 = dot(vec3<f32>(x_2714.x, x_2714.y, x_2714.z), x_2716);
    let x_2718 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2718, 0.0f, 1.0f);
    let x_2720 : vec4<f32> = u_xlat10;
    let x_2722 : vec3<f32> = u_xlat30;
    u_xlat70 = dot(vec3<f32>(x_2720.x, x_2720.y, x_2720.z), x_2722);
    let x_2724 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2724, 0.0f, 1.0f);
    let x_2726 : f32 = u_xlat66;
    let x_2727 : f32 = u_xlat66;
    u_xlat66 = (x_2726 * x_2727);
    let x_2729 : f32 = u_xlat66;
    let x_2731 : f32 = u_xlat9.x;
    u_xlat66 = ((x_2729 * x_2731) + 1.000010014f);
    let x_2734 : f32 = u_xlat70;
    let x_2735 : f32 = u_xlat70;
    u_xlat70 = (x_2734 * x_2735);
    let x_2737 : f32 = u_xlat66;
    let x_2738 : f32 = u_xlat66;
    u_xlat66 = (x_2737 * x_2738);
    let x_2740 : f32 = u_xlat70;
    u_xlat70 = max(x_2740, 0.100000001f);
    let x_2742 : f32 = u_xlat66;
    let x_2743 : f32 = u_xlat70;
    u_xlat66 = (x_2742 * x_2743);
    let x_2745 : f32 = u_xlat68;
    let x_2746 : f32 = u_xlat66;
    u_xlat66 = (x_2745 * x_2746);
    let x_2748 : f32 = u_xlat67;
    let x_2749 : f32 = u_xlat66;
    u_xlat66 = (x_2748 / x_2749);
    let x_2751 : vec4<f32> = u_xlat0;
    let x_2753 : f32 = u_xlat66;
    let x_2756 : vec3<f32> = u_xlat22;
    u_xlat30 = ((vec3<f32>(x_2751.x, x_2751.y, x_2751.z) * vec3<f32>(x_2753, x_2753, x_2753)) + x_2756);
    let x_2758 : vec3<f32> = u_xlat30;
    let x_2759 : vec4<f32> = u_xlat11;
    let x_2762 : vec4<f32> = u_xlat8;
    let x_2764 : vec3<f32> = ((x_2758 * vec3<f32>(x_2759.x, x_2759.y, x_2759.z)) + vec3<f32>(x_2762.x, x_2762.y, x_2762.z));
    let x_2765 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2765.w);

    continuing {
      let x_2767 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2767 + bitcast<u32>(1i));
    }
  }
  let x_2769 : vec3<f32> = u_xlat5;
  let x_2770 : vec4<f32> = u_xlat6;
  let x_2773 : vec4<f32> = u_xlat7;
  let x_2775 : vec3<f32> = ((x_2769 * vec3<f32>(x_2770.x, x_2770.x, x_2770.x)) + vec3<f32>(x_2773.x, x_2773.y, x_2773.z));
  let x_2776 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2775.x, x_2775.y, x_2775.z, x_2776.w);
  let x_2778 : vec4<f32> = u_xlat8;
  let x_2780 : vec4<f32> = u_xlat0;
  let x_2782 : vec3<f32> = (vec3<f32>(x_2778.x, x_2778.y, x_2778.z) + vec3<f32>(x_2780.x, x_2780.y, x_2780.z));
  let x_2783 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2782.x, x_2782.y, x_2782.z, x_2783.w);
  let x_2787 : vec3<f32> = u_xlat2;
  let x_2789 : vec4<f32> = x_57.x_EmissionColor;
  let x_2792 : vec4<f32> = u_xlat0;
  let x_2794 : vec3<f32> = ((x_2787 * vec3<f32>(x_2789.x, x_2789.y, x_2789.z)) + vec3<f32>(x_2792.x, x_2792.y, x_2792.z));
  let x_2795 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2794.x, x_2794.y, x_2794.z, x_2795.w);
  let x_2800 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2800 == 1.0f);
  let x_2802 : bool = u_xlatb0;
  if (x_2802) {
    let x_2807 : f32 = u_xlat1.x;
    x_2803 = x_2807;
  } else {
    x_2803 = 1.0f;
  }
  let x_2809 : f32 = x_2803;
  SV_Target0.w = x_2809;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

