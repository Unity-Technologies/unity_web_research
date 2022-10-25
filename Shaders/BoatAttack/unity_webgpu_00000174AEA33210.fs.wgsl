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
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_86 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1718 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1851 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1968 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2078 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlat58 : f32;
  var u_xlatu58 : u32;
  var u_xlati58 : i32;
  var u_xlat59 : f32;
  var u_xlat60 : f32;
  var u_xlatb4 : vec2<bool>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb23 : bool;
  var u_xlat23 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat42 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat61 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat25 : vec2<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
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
  var u_xlatb21 : vec2<bool>;
  var u_xlatb40 : bool;
  var x_1665 : f32;
  var u_xlat21 : vec3<f32>;
  var u_xlat40 : f32;
  var x_1800 : f32;
  var x_1811 : vec3<f32>;
  var u_xlatu2 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu61 : u32;
  var u_xlati62 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat62 : f32;
  var u_xlat63 : f32;
  var u_xlatu63 : u32;
  var u_xlati7 : i32;
  var u_xlati63 : i32;
  var u_xlati26 : i32;
  var u_xlatb63 : bool;
  var u_xlatb26 : vec3<bool>;
  var u_xlat26 : vec3<f32>;
  var x_2393 : f32;
  var x_2406 : f32;
  var x_2468 : f32;
  var x_2479 : vec3<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : bool;
  var x_2588 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  let x_67 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_66, x_67);
  let x_72 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_72);
  let x_75 : vec3<f32> = u_xlat1;
  let x_77 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_75.x, x_75.x, x_75.x) * x_77);
  let x_81 : vec3<f32> = vs_TEXCOORD1;
  let x_88 : vec4<f32> = x_86.x_CascadeShadowSplitSpheres0;
  let x_91 : vec3<f32> = (x_81 + -(vec3<f32>(x_88.x, x_88.y, x_88.z)));
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_95 : vec3<f32> = vs_TEXCOORD1;
  let x_98 : vec4<f32> = x_86.x_CascadeShadowSplitSpheres1;
  let x_101 : vec3<f32> = (x_95 + -(vec3<f32>(x_98.x, x_98.y, x_98.z)));
  let x_102 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_105 : vec3<f32> = vs_TEXCOORD1;
  let x_108 : vec4<f32> = x_86.x_CascadeShadowSplitSpheres2;
  let x_111 : vec3<f32> = (x_105 + -(vec3<f32>(x_108.x, x_108.y, x_108.z)));
  let x_112 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_115 : vec3<f32> = vs_TEXCOORD1;
  let x_118 : vec4<f32> = x_86.x_CascadeShadowSplitSpheres3;
  let x_121 : vec3<f32> = (x_115 + -(vec3<f32>(x_118.x, x_118.y, x_118.z)));
  let x_122 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat2;
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_124.x, x_124.y, x_124.z), vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_130 : vec4<f32> = u_xlat3;
  let x_132 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_130.x, x_130.y, x_130.z), vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_137 : vec4<f32> = u_xlat4;
  let x_139 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_144 : vec4<f32> = u_xlat5;
  let x_146 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_144.x, x_144.y, x_144.z), vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_154 : vec4<f32> = u_xlat2;
  let x_157 : vec4<f32> = x_86.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_154 < x_157);
  let x_161 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_161);
  let x_166 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_166);
  let x_170 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_170);
  let x_174 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_174);
  let x_178 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_178);
  let x_184 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_184);
  let x_188 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_188);
  let x_191 : vec4<f32> = u_xlat2;
  let x_193 : vec4<f32> = u_xlat3;
  let x_195 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) + vec3<f32>(x_193.y, x_193.z, x_193.w));
  let x_196 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_198 : vec4<f32> = u_xlat2;
  let x_201 : vec3<f32> = max(vec3<f32>(x_198.x, x_198.y, x_198.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_202.x, x_201.x, x_201.y, x_201.z);
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat58 = dot(x_205, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_211 : f32 = u_xlat58;
  u_xlat58 = (-(x_211) + 4.0f);
  let x_216 : f32 = u_xlat58;
  u_xlatu58 = u32(x_216);
  let x_220 : u32 = u_xlatu58;
  u_xlati58 = (bitcast<i32>(x_220) << bitcast<u32>(2i));
  let x_223 : vec3<f32> = vs_TEXCOORD1;
  let x_226 : i32 = u_xlati58;
  let x_229 : i32 = u_xlati58;
  let x_233 : vec4<f32> = x_86.x_MainLightWorldToShadow[((x_226 + 1i) / 4i)][((x_229 + 1i) % 4i)];
  let x_235 : vec3<f32> = (vec3<f32>(x_223.y, x_223.y, x_223.y) * vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : i32 = u_xlati58;
  let x_240 : i32 = u_xlati58;
  let x_243 : vec4<f32> = x_86.x_MainLightWorldToShadow[(x_238 / 4i)][(x_240 % 4i)];
  let x_245 : vec3<f32> = vs_TEXCOORD1;
  let x_248 : vec4<f32> = u_xlat2;
  let x_250 : vec3<f32> = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_245.x, x_245.x, x_245.x)) + vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_251 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : i32 = u_xlati58;
  let x_256 : i32 = u_xlati58;
  let x_260 : vec4<f32> = x_86.x_MainLightWorldToShadow[((x_253 + 2i) / 4i)][((x_256 + 2i) % 4i)];
  let x_262 : vec3<f32> = vs_TEXCOORD1;
  let x_265 : vec4<f32> = u_xlat2;
  let x_267 : vec3<f32> = ((vec3<f32>(x_260.x, x_260.y, x_260.z) * vec3<f32>(x_262.z, x_262.z, x_262.z)) + vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : vec4<f32> = u_xlat2;
  let x_272 : i32 = u_xlati58;
  let x_275 : i32 = u_xlati58;
  let x_279 : vec4<f32> = x_86.x_MainLightWorldToShadow[((x_272 + 3i) / 4i)][((x_275 + 3i) % 4i)];
  let x_281 : vec3<f32> = (vec3<f32>(x_270.x, x_270.y, x_270.z) + vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_285 : f32 = vs_TEXCOORD1.y;
  let x_288 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat58 = (x_285 * x_288);
  let x_291 : f32 = x_44.unity_MatrixV[0i].z;
  let x_293 : f32 = vs_TEXCOORD1.x;
  let x_295 : f32 = u_xlat58;
  u_xlat58 = ((x_291 * x_293) + x_295);
  let x_298 : f32 = x_44.unity_MatrixV[2i].z;
  let x_300 : f32 = vs_TEXCOORD1.z;
  let x_302 : f32 = u_xlat58;
  u_xlat58 = ((x_298 * x_300) + x_302);
  let x_304 : f32 = u_xlat58;
  let x_306 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat58 = (x_304 + x_306);
  let x_308 : f32 = u_xlat58;
  let x_312 : f32 = x_44.x_ProjectionParams.y;
  u_xlat58 = (-(x_308) + -(x_312));
  let x_315 : f32 = u_xlat58;
  u_xlat58 = max(x_315, 0.0f);
  let x_317 : f32 = u_xlat58;
  let x_320 : f32 = x_44.unity_FogParams.x;
  u_xlat58 = (x_317 * x_320);
  let x_328 : vec2<f32> = vs_TEXCOORD7;
  let x_330 : f32 = x_44.x_GlobalMipBias.x;
  let x_331 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_328, x_330);
  let x_332 : vec3<f32> = vec3<f32>(x_331.x, x_331.y, x_331.z);
  let x_333 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_337 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_338 : vec2<f32> = vec2<f32>(x_337.x, x_337.y);
  let x_342 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_338.x, x_338.y));
  let x_343 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_342.x, x_342.y, x_343.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat4;
  let x_347 : vec4<f32> = hlslcc_FragCoord;
  let x_349 : vec2<f32> = (vec2<f32>(x_345.x, x_345.y) * vec2<f32>(x_347.x, x_347.y));
  let x_350 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_349.x, x_349.y, x_350.z, x_350.w);
  let x_354 : f32 = u_xlat4.y;
  let x_357 : f32 = x_44.x_ScaleBiasRt.x;
  let x_360 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat59 = ((x_354 * x_357) + x_360);
  let x_362 : f32 = u_xlat59;
  u_xlat4.z = (-(x_362) + 1.0f);
  let x_371 : vec4<f32> = u_xlat4;
  let x_374 : f32 = x_44.x_GlobalMipBias.x;
  let x_375 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_371.x, x_371.z), x_374);
  u_xlat59 = x_375.x;
  let x_378 : f32 = u_xlat59;
  u_xlat60 = (x_378 + -1.0f);
  let x_381 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_382 : f32 = u_xlat60;
  u_xlat60 = ((x_381 * x_382) + 1.0f);
  let x_385 : f32 = u_xlat59;
  u_xlat59 = min(x_385, 1.0f);
  let x_391 : f32 = x_86.x_MainLightShadowParams.y;
  u_xlatb4.x = (0.0f < x_391);
  let x_395 : bool = u_xlatb4.x;
  if (x_395) {
    let x_399 : f32 = x_86.x_MainLightShadowParams.y;
    u_xlatb4.x = (x_399 == 1.0f);
    let x_403 : bool = u_xlatb4.x;
    if (x_403) {
      let x_406 : vec4<f32> = u_xlat2;
      let x_410 : vec4<f32> = x_86.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_406.x, x_406.y, x_406.x, x_406.y) + x_410);
      let x_413 : vec4<f32> = u_xlat4;
      let x_414 : vec2<f32> = vec2<f32>(x_413.x, x_413.y);
      let x_416 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_414.x, x_414.y, x_416);
      let x_428 : vec3<f32> = txVec0;
      let x_430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_428.xy, x_428.z);
      u_xlat5.x = x_430;
      let x_433 : vec4<f32> = u_xlat4;
      let x_434 : vec2<f32> = vec2<f32>(x_433.z, x_433.w);
      let x_436 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_434.x, x_434.y, x_436);
      let x_443 : vec3<f32> = txVec1;
      let x_445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_443.xy, x_443.z);
      u_xlat5.y = x_445;
      let x_447 : vec4<f32> = u_xlat2;
      let x_450 : vec4<f32> = x_86.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_447.x, x_447.y, x_447.x, x_447.y) + x_450);
      let x_453 : vec4<f32> = u_xlat4;
      let x_454 : vec2<f32> = vec2<f32>(x_453.x, x_453.y);
      let x_456 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_454.x, x_454.y, x_456);
      let x_463 : vec3<f32> = txVec2;
      let x_465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_463.xy, x_463.z);
      u_xlat5.z = x_465;
      let x_468 : vec4<f32> = u_xlat4;
      let x_469 : vec2<f32> = vec2<f32>(x_468.z, x_468.w);
      let x_471 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_469.x, x_469.y, x_471);
      let x_478 : vec3<f32> = txVec3;
      let x_480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_478.xy, x_478.z);
      u_xlat5.w = x_480;
      let x_482 : vec4<f32> = u_xlat5;
      u_xlat4.x = dot(x_482, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_490 : f32 = x_86.x_MainLightShadowParams.y;
      u_xlatb23 = (x_490 == 2.0f);
      let x_492 : bool = u_xlatb23;
      if (x_492) {
        let x_497 : vec4<f32> = u_xlat2;
        let x_500 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        u_xlat23 = ((vec2<f32>(x_497.x, x_497.y) * vec2<f32>(x_500.z, x_500.w)) + vec2<f32>(0.5f, 0.5f));
        let x_506 : vec2<f32> = u_xlat23;
        u_xlat23 = floor(x_506);
        let x_508 : vec4<f32> = u_xlat2;
        let x_511 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_514 : vec2<f32> = u_xlat23;
        let x_516 : vec2<f32> = ((vec2<f32>(x_508.x, x_508.y) * vec2<f32>(x_511.z, x_511.w)) + -(x_514));
        let x_517 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
        let x_520 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_520.x, x_520.x, x_520.y, x_520.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_525 : vec4<f32> = u_xlat6;
        let x_527 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_525.x, x_525.x, x_525.z, x_525.z) * vec4<f32>(x_527.x, x_527.x, x_527.z, x_527.z));
        let x_531 : vec4<f32> = u_xlat7;
        u_xlat43 = (vec2<f32>(x_531.y, x_531.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_536 : vec4<f32> = u_xlat7;
        let x_539 : vec4<f32> = u_xlat5;
        let x_542 : vec2<f32> = ((vec2<f32>(x_536.x, x_536.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_539.x, x_539.y)));
        let x_543 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_542.x, x_543.y, x_542.y, x_543.w);
        let x_545 : vec4<f32> = u_xlat5;
        let x_548 : vec2<f32> = (-(vec2<f32>(x_545.x, x_545.y)) + vec2<f32>(1.0f, 1.0f));
        let x_549 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
        let x_552 : vec4<f32> = u_xlat5;
        u_xlat45 = min(vec2<f32>(x_552.x, x_552.y), vec2<f32>(0.0f, 0.0f));
        let x_556 : vec2<f32> = u_xlat45;
        let x_558 : vec2<f32> = u_xlat45;
        let x_560 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_556) * x_558) + vec2<f32>(x_560.x, x_560.y));
        let x_563 : vec4<f32> = u_xlat5;
        let x_565 : vec2<f32> = max(vec2<f32>(x_563.x, x_563.y), vec2<f32>(0.0f, 0.0f));
        let x_566 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
        let x_568 : vec4<f32> = u_xlat5;
        let x_571 : vec4<f32> = u_xlat5;
        let x_574 : vec4<f32> = u_xlat6;
        let x_576 : vec2<f32> = ((-(vec2<f32>(x_568.x, x_568.y)) * vec2<f32>(x_571.x, x_571.y)) + vec2<f32>(x_574.y, x_574.w));
        let x_577 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
        let x_579 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_579 + vec2<f32>(1.0f, 1.0f));
        let x_581 : vec4<f32> = u_xlat5;
        let x_583 : vec2<f32> = (vec2<f32>(x_581.x, x_581.y) + vec2<f32>(1.0f, 1.0f));
        let x_584 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
        let x_587 : vec4<f32> = u_xlat6;
        let x_591 : vec2<f32> = (vec2<f32>(x_587.x, x_587.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_592 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
        let x_595 : vec4<f32> = u_xlat7;
        let x_597 : vec2<f32> = (vec2<f32>(x_595.x, x_595.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_598 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
        let x_600 : vec2<f32> = u_xlat45;
        let x_601 : vec2<f32> = (x_600 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_602 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
        let x_605 : vec4<f32> = u_xlat5;
        let x_607 : vec2<f32> = (vec2<f32>(x_605.x, x_605.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_608 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
        let x_610 : vec4<f32> = u_xlat6;
        let x_612 : vec2<f32> = (vec2<f32>(x_610.y, x_610.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_613 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
        let x_616 : f32 = u_xlat7.x;
        u_xlat8.z = x_616;
        let x_619 : f32 = u_xlat5.x;
        u_xlat8.w = x_619;
        let x_622 : f32 = u_xlat10.x;
        u_xlat9.z = x_622;
        let x_625 : f32 = u_xlat43.x;
        u_xlat9.w = x_625;
        let x_627 : vec4<f32> = u_xlat8;
        let x_629 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_627.z, x_627.w, x_627.x, x_627.z) + vec4<f32>(x_629.z, x_629.w, x_629.x, x_629.z));
        let x_633 : f32 = u_xlat8.y;
        u_xlat7.z = x_633;
        let x_636 : f32 = u_xlat5.y;
        u_xlat7.w = x_636;
        let x_639 : f32 = u_xlat9.y;
        u_xlat10.z = x_639;
        let x_642 : f32 = u_xlat43.y;
        u_xlat10.w = x_642;
        let x_644 : vec4<f32> = u_xlat7;
        let x_646 : vec4<f32> = u_xlat10;
        let x_648 : vec3<f32> = (vec3<f32>(x_644.z, x_644.y, x_644.w) + vec3<f32>(x_646.z, x_646.y, x_646.w));
        let x_649 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
        let x_651 : vec4<f32> = u_xlat9;
        let x_653 : vec4<f32> = u_xlat6;
        let x_655 : vec3<f32> = (vec3<f32>(x_651.x, x_651.z, x_651.w) / vec3<f32>(x_653.z, x_653.w, x_653.y));
        let x_656 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
        let x_658 : vec4<f32> = u_xlat7;
        let x_664 : vec3<f32> = (vec3<f32>(x_658.x, x_658.y, x_658.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_665 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
        let x_667 : vec4<f32> = u_xlat10;
        let x_669 : vec4<f32> = u_xlat5;
        let x_671 : vec3<f32> = (vec3<f32>(x_667.z, x_667.y, x_667.w) / vec3<f32>(x_669.x, x_669.y, x_669.z));
        let x_672 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
        let x_674 : vec4<f32> = u_xlat8;
        let x_676 : vec3<f32> = (vec3<f32>(x_674.x, x_674.y, x_674.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_677 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
        let x_679 : vec4<f32> = u_xlat7;
        let x_682 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_684 : vec3<f32> = (vec3<f32>(x_679.y, x_679.x, x_679.z) * vec3<f32>(x_682.x, x_682.x, x_682.x));
        let x_685 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
        let x_687 : vec4<f32> = u_xlat8;
        let x_690 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_692 : vec3<f32> = (vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(x_690.y, x_690.y, x_690.y));
        let x_693 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
        let x_696 : f32 = u_xlat8.x;
        u_xlat7.w = x_696;
        let x_698 : vec2<f32> = u_xlat23;
        let x_701 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_704 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_698.x, x_698.y, x_698.x, x_698.y) * vec4<f32>(x_701.x, x_701.y, x_701.x, x_701.y)) + vec4<f32>(x_704.y, x_704.w, x_704.x, x_704.w));
        let x_707 : vec2<f32> = u_xlat23;
        let x_709 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_712 : vec4<f32> = u_xlat7;
        let x_714 : vec2<f32> = ((x_707 * vec2<f32>(x_709.x, x_709.y)) + vec2<f32>(x_712.z, x_712.w));
        let x_715 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_714.x, x_714.y, x_715.z, x_715.w);
        let x_718 : f32 = u_xlat7.y;
        u_xlat8.w = x_718;
        let x_720 : vec4<f32> = u_xlat8;
        let x_721 : vec2<f32> = vec2<f32>(x_720.y, x_720.z);
        let x_722 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_722.x, x_721.x, x_722.z, x_721.y);
        let x_725 : vec2<f32> = u_xlat23;
        let x_728 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_731 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_725.x, x_725.y, x_725.x, x_725.y) * vec4<f32>(x_728.x, x_728.y, x_728.x, x_728.y)) + vec4<f32>(x_731.x, x_731.y, x_731.z, x_731.y));
        let x_734 : vec2<f32> = u_xlat23;
        let x_737 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_740 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_734.x, x_734.y, x_734.x, x_734.y) * vec4<f32>(x_737.x, x_737.y, x_737.x, x_737.y)) + vec4<f32>(x_740.w, x_740.y, x_740.w, x_740.z));
        let x_743 : vec2<f32> = u_xlat23;
        let x_746 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_749 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_743.x, x_743.y, x_743.x, x_743.y) * vec4<f32>(x_746.x, x_746.y, x_746.x, x_746.y)) + vec4<f32>(x_749.x, x_749.w, x_749.z, x_749.w));
        let x_753 : vec4<f32> = u_xlat5;
        let x_755 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_753.x, x_753.x, x_753.x, x_753.y) * vec4<f32>(x_755.z, x_755.w, x_755.y, x_755.z));
        let x_759 : vec4<f32> = u_xlat5;
        let x_761 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_759.y, x_759.y, x_759.z, x_759.z) * x_761);
        let x_764 : f32 = u_xlat5.z;
        let x_766 : f32 = u_xlat6.y;
        u_xlat23.x = (x_764 * x_766);
        let x_770 : vec4<f32> = u_xlat9;
        let x_771 : vec2<f32> = vec2<f32>(x_770.x, x_770.y);
        let x_773 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_771.x, x_771.y, x_773);
        let x_781 : vec3<f32> = txVec4;
        let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_781.xy, x_781.z);
        u_xlat42 = x_783;
        let x_785 : vec4<f32> = u_xlat9;
        let x_786 : vec2<f32> = vec2<f32>(x_785.z, x_785.w);
        let x_788 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_786.x, x_786.y, x_788);
        let x_796 : vec3<f32> = txVec5;
        let x_798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_796.xy, x_796.z);
        u_xlat61 = x_798;
        let x_799 : f32 = u_xlat61;
        let x_801 : f32 = u_xlat12.y;
        u_xlat61 = (x_799 * x_801);
        let x_804 : f32 = u_xlat12.x;
        let x_805 : f32 = u_xlat42;
        let x_807 : f32 = u_xlat61;
        u_xlat42 = ((x_804 * x_805) + x_807);
        let x_810 : vec4<f32> = u_xlat10;
        let x_811 : vec2<f32> = vec2<f32>(x_810.x, x_810.y);
        let x_813 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_811.x, x_811.y, x_813);
        let x_820 : vec3<f32> = txVec6;
        let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_820.xy, x_820.z);
        u_xlat61 = x_822;
        let x_824 : f32 = u_xlat12.z;
        let x_825 : f32 = u_xlat61;
        let x_827 : f32 = u_xlat42;
        u_xlat42 = ((x_824 * x_825) + x_827);
        let x_830 : vec4<f32> = u_xlat8;
        let x_831 : vec2<f32> = vec2<f32>(x_830.x, x_830.y);
        let x_833 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_831.x, x_831.y, x_833);
        let x_840 : vec3<f32> = txVec7;
        let x_842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_840.xy, x_840.z);
        u_xlat61 = x_842;
        let x_844 : f32 = u_xlat12.w;
        let x_845 : f32 = u_xlat61;
        let x_847 : f32 = u_xlat42;
        u_xlat42 = ((x_844 * x_845) + x_847);
        let x_850 : vec4<f32> = u_xlat11;
        let x_851 : vec2<f32> = vec2<f32>(x_850.x, x_850.y);
        let x_853 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_851.x, x_851.y, x_853);
        let x_860 : vec3<f32> = txVec8;
        let x_862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_860.xy, x_860.z);
        u_xlat61 = x_862;
        let x_864 : f32 = u_xlat13.x;
        let x_865 : f32 = u_xlat61;
        let x_867 : f32 = u_xlat42;
        u_xlat42 = ((x_864 * x_865) + x_867);
        let x_870 : vec4<f32> = u_xlat11;
        let x_871 : vec2<f32> = vec2<f32>(x_870.z, x_870.w);
        let x_873 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_871.x, x_871.y, x_873);
        let x_880 : vec3<f32> = txVec9;
        let x_882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_880.xy, x_880.z);
        u_xlat61 = x_882;
        let x_884 : f32 = u_xlat13.y;
        let x_885 : f32 = u_xlat61;
        let x_887 : f32 = u_xlat42;
        u_xlat42 = ((x_884 * x_885) + x_887);
        let x_890 : vec4<f32> = u_xlat8;
        let x_891 : vec2<f32> = vec2<f32>(x_890.z, x_890.w);
        let x_893 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_891.x, x_891.y, x_893);
        let x_900 : vec3<f32> = txVec10;
        let x_902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_900.xy, x_900.z);
        u_xlat61 = x_902;
        let x_904 : f32 = u_xlat13.z;
        let x_905 : f32 = u_xlat61;
        let x_907 : f32 = u_xlat42;
        u_xlat42 = ((x_904 * x_905) + x_907);
        let x_910 : vec4<f32> = u_xlat7;
        let x_911 : vec2<f32> = vec2<f32>(x_910.x, x_910.y);
        let x_913 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_911.x, x_911.y, x_913);
        let x_920 : vec3<f32> = txVec11;
        let x_922 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_920.xy, x_920.z);
        u_xlat61 = x_922;
        let x_924 : f32 = u_xlat13.w;
        let x_925 : f32 = u_xlat61;
        let x_927 : f32 = u_xlat42;
        u_xlat42 = ((x_924 * x_925) + x_927);
        let x_930 : vec4<f32> = u_xlat7;
        let x_931 : vec2<f32> = vec2<f32>(x_930.z, x_930.w);
        let x_933 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_931.x, x_931.y, x_933);
        let x_940 : vec3<f32> = txVec12;
        let x_942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_940.xy, x_940.z);
        u_xlat61 = x_942;
        let x_944 : f32 = u_xlat23.x;
        let x_945 : f32 = u_xlat61;
        let x_947 : f32 = u_xlat42;
        u_xlat4.x = ((x_944 * x_945) + x_947);
      } else {
        let x_951 : vec4<f32> = u_xlat2;
        let x_954 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        u_xlat23 = ((vec2<f32>(x_951.x, x_951.y) * vec2<f32>(x_954.z, x_954.w)) + vec2<f32>(0.5f, 0.5f));
        let x_958 : vec2<f32> = u_xlat23;
        u_xlat23 = floor(x_958);
        let x_960 : vec4<f32> = u_xlat2;
        let x_963 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_966 : vec2<f32> = u_xlat23;
        let x_968 : vec2<f32> = ((vec2<f32>(x_960.x, x_960.y) * vec2<f32>(x_963.z, x_963.w)) + -(x_966));
        let x_969 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_968.x, x_968.y, x_969.z, x_969.w);
        let x_971 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_971.x, x_971.x, x_971.y, x_971.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_974 : vec4<f32> = u_xlat6;
        let x_976 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_974.x, x_974.x, x_974.z, x_974.z) * vec4<f32>(x_976.x, x_976.x, x_976.z, x_976.z));
        let x_979 : vec4<f32> = u_xlat7;
        let x_983 : vec2<f32> = (vec2<f32>(x_979.y, x_979.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_984 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_984.x, x_983.x, x_984.z, x_983.y);
        let x_986 : vec4<f32> = u_xlat7;
        let x_989 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_986.x, x_986.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_989.x, x_989.y)));
        let x_993 : vec4<f32> = u_xlat5;
        let x_996 : vec2<f32> = (-(vec2<f32>(x_993.x, x_993.y)) + vec2<f32>(1.0f, 1.0f));
        let x_997 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_996.x, x_997.y, x_996.y, x_997.w);
        let x_999 : vec4<f32> = u_xlat5;
        let x_1001 : vec2<f32> = min(vec2<f32>(x_999.x, x_999.y), vec2<f32>(0.0f, 0.0f));
        let x_1002 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1001.x, x_1001.y, x_1002.z, x_1002.w);
        let x_1004 : vec4<f32> = u_xlat7;
        let x_1007 : vec4<f32> = u_xlat7;
        let x_1010 : vec4<f32> = u_xlat6;
        let x_1012 : vec2<f32> = ((-(vec2<f32>(x_1004.x, x_1004.y)) * vec2<f32>(x_1007.x, x_1007.y)) + vec2<f32>(x_1010.x, x_1010.z));
        let x_1013 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1012.x, x_1013.y, x_1012.y, x_1013.w);
        let x_1015 : vec4<f32> = u_xlat5;
        let x_1017 : vec2<f32> = max(vec2<f32>(x_1015.x, x_1015.y), vec2<f32>(0.0f, 0.0f));
        let x_1018 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1017.x, x_1017.y, x_1018.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat7;
        let x_1023 : vec4<f32> = u_xlat7;
        let x_1026 : vec4<f32> = u_xlat6;
        let x_1028 : vec2<f32> = ((-(vec2<f32>(x_1020.x, x_1020.y)) * vec2<f32>(x_1023.x, x_1023.y)) + vec2<f32>(x_1026.y, x_1026.w));
        let x_1029 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1029.x, x_1028.x, x_1029.z, x_1028.y);
        let x_1031 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1031 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1035 : f32 = u_xlat6.y;
        u_xlat7.z = (x_1035 * 0.081632003f);
        let x_1039 : vec2<f32> = u_xlat43;
        let x_1042 : vec2<f32> = (vec2<f32>(x_1039.y, x_1039.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1043 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1043.w);
        let x_1045 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_1045.x, x_1045.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1049 : f32 = u_xlat6.w;
        u_xlat9.z = (x_1049 * 0.081632003f);
        let x_1053 : f32 = u_xlat9.y;
        u_xlat7.x = x_1053;
        let x_1055 : vec4<f32> = u_xlat5;
        let x_1062 : vec2<f32> = ((vec2<f32>(x_1055.x, x_1055.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1063 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1063.x, x_1062.x, x_1063.z, x_1062.y);
        let x_1065 : vec4<f32> = u_xlat5;
        let x_1069 : vec2<f32> = ((vec2<f32>(x_1065.x, x_1065.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1070 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1069.x, x_1070.y, x_1069.y, x_1070.w);
        let x_1073 : f32 = u_xlat43.x;
        u_xlat6.y = x_1073;
        let x_1076 : f32 = u_xlat8.y;
        u_xlat6.w = x_1076;
        let x_1078 : vec4<f32> = u_xlat6;
        let x_1079 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1078 + x_1079);
        let x_1081 : vec4<f32> = u_xlat5;
        let x_1084 : vec2<f32> = ((vec2<f32>(x_1081.y, x_1081.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1085 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1085.x, x_1084.x, x_1085.z, x_1084.y);
        let x_1087 : vec4<f32> = u_xlat5;
        let x_1090 : vec2<f32> = ((vec2<f32>(x_1087.y, x_1087.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1091 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1090.x, x_1091.y, x_1090.y, x_1091.w);
        let x_1094 : f32 = u_xlat43.y;
        u_xlat8.y = x_1094;
        let x_1096 : vec4<f32> = u_xlat8;
        let x_1097 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1096 + x_1097);
        let x_1099 : vec4<f32> = u_xlat6;
        let x_1100 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1099 / x_1100);
        let x_1102 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1102 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1108 : vec4<f32> = u_xlat8;
        let x_1109 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1108 / x_1109);
        let x_1111 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1111 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1113 : vec4<f32> = u_xlat6;
        let x_1116 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1113.w, x_1113.x, x_1113.y, x_1113.z) * vec4<f32>(x_1116.x, x_1116.x, x_1116.x, x_1116.x));
        let x_1119 : vec4<f32> = u_xlat8;
        let x_1122 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1119.x, x_1119.w, x_1119.y, x_1119.z) * vec4<f32>(x_1122.y, x_1122.y, x_1122.y, x_1122.y));
        let x_1125 : vec4<f32> = u_xlat6;
        let x_1126 : vec3<f32> = vec3<f32>(x_1125.y, x_1125.z, x_1125.w);
        let x_1127 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1126.x, x_1127.y, x_1126.y, x_1126.z);
        let x_1130 : f32 = u_xlat8.x;
        u_xlat9.y = x_1130;
        let x_1132 : vec2<f32> = u_xlat23;
        let x_1135 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1132.x, x_1132.y, x_1132.x, x_1132.y) * vec4<f32>(x_1135.x, x_1135.y, x_1135.x, x_1135.y)) + vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1138.y));
        let x_1141 : vec2<f32> = u_xlat23;
        let x_1143 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_1146 : vec4<f32> = u_xlat9;
        let x_1148 : vec2<f32> = ((x_1141 * vec2<f32>(x_1143.x, x_1143.y)) + vec2<f32>(x_1146.w, x_1146.y));
        let x_1149 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1152 : f32 = u_xlat9.y;
        u_xlat6.y = x_1152;
        let x_1155 : f32 = u_xlat8.z;
        u_xlat9.y = x_1155;
        let x_1157 : vec2<f32> = u_xlat23;
        let x_1160 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_1163 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1157.x, x_1157.y, x_1157.x, x_1157.y) * vec4<f32>(x_1160.x, x_1160.y, x_1160.x, x_1160.y)) + vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1163.y));
        let x_1167 : vec2<f32> = u_xlat23;
        let x_1169 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_1172 : vec4<f32> = u_xlat9;
        u_xlat49 = ((x_1167 * vec2<f32>(x_1169.x, x_1169.y)) + vec2<f32>(x_1172.w, x_1172.y));
        let x_1176 : f32 = u_xlat9.y;
        u_xlat6.z = x_1176;
        let x_1178 : vec2<f32> = u_xlat23;
        let x_1181 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1178.x, x_1178.y, x_1178.x, x_1178.y) * vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y)) + vec4<f32>(x_1184.x, x_1184.y, x_1184.x, x_1184.z));
        let x_1188 : f32 = u_xlat8.w;
        u_xlat9.y = x_1188;
        let x_1191 : vec2<f32> = u_xlat23;
        let x_1194 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y) * vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y)) + vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1197.y));
        let x_1201 : vec2<f32> = u_xlat23;
        let x_1203 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_1206 : vec4<f32> = u_xlat9;
        u_xlat25 = ((x_1201 * vec2<f32>(x_1203.x, x_1203.y)) + vec2<f32>(x_1206.w, x_1206.y));
        let x_1210 : f32 = u_xlat9.y;
        u_xlat6.w = x_1210;
        let x_1213 : vec2<f32> = u_xlat23;
        let x_1215 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_1218 : vec4<f32> = u_xlat6;
        u_xlat15 = ((x_1213 * vec2<f32>(x_1215.x, x_1215.y)) + vec2<f32>(x_1218.x, x_1218.w));
        let x_1221 : vec4<f32> = u_xlat9;
        let x_1222 : vec3<f32> = vec3<f32>(x_1221.x, x_1221.z, x_1221.w);
        let x_1223 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1222.x, x_1223.y, x_1222.y, x_1222.z);
        let x_1225 : vec2<f32> = u_xlat23;
        let x_1228 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_1231 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1225.x, x_1225.y, x_1225.x, x_1225.y) * vec4<f32>(x_1228.x, x_1228.y, x_1228.x, x_1228.y)) + vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1231.y));
        let x_1235 : vec2<f32> = u_xlat23;
        let x_1237 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_1240 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1235 * vec2<f32>(x_1237.x, x_1237.y)) + vec2<f32>(x_1240.w, x_1240.y));
        let x_1244 : f32 = u_xlat6.x;
        u_xlat8.x = x_1244;
        let x_1246 : vec2<f32> = u_xlat23;
        let x_1248 : vec4<f32> = x_86.x_MainLightShadowmapSize;
        let x_1251 : vec4<f32> = u_xlat8;
        u_xlat23 = ((x_1246 * vec2<f32>(x_1248.x, x_1248.y)) + vec2<f32>(x_1251.x, x_1251.y));
        let x_1255 : vec4<f32> = u_xlat5;
        let x_1257 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1255.x, x_1255.x, x_1255.x, x_1255.x) * x_1257);
        let x_1260 : vec4<f32> = u_xlat5;
        let x_1262 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1260.y, x_1260.y, x_1260.y, x_1260.y) * x_1262);
        let x_1265 : vec4<f32> = u_xlat5;
        let x_1267 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1265.z, x_1265.z, x_1265.z, x_1265.z) * x_1267);
        let x_1269 : vec4<f32> = u_xlat5;
        let x_1271 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1269.w, x_1269.w, x_1269.w, x_1269.w) * x_1271);
        let x_1274 : vec4<f32> = u_xlat10;
        let x_1275 : vec2<f32> = vec2<f32>(x_1274.x, x_1274.y);
        let x_1277 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
        let x_1284 : vec3<f32> = txVec13;
        let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1284.xy, x_1284.z);
        u_xlat61 = x_1286;
        let x_1288 : vec4<f32> = u_xlat10;
        let x_1289 : vec2<f32> = vec2<f32>(x_1288.z, x_1288.w);
        let x_1291 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1289.x, x_1289.y, x_1291);
        let x_1298 : vec3<f32> = txVec14;
        let x_1300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1298.xy, x_1298.z);
        u_xlat6.x = x_1300;
        let x_1303 : f32 = u_xlat6.x;
        let x_1305 : f32 = u_xlat16.y;
        u_xlat6.x = (x_1303 * x_1305);
        let x_1309 : f32 = u_xlat16.x;
        let x_1310 : f32 = u_xlat61;
        let x_1313 : f32 = u_xlat6.x;
        u_xlat61 = ((x_1309 * x_1310) + x_1313);
        let x_1316 : vec4<f32> = u_xlat11;
        let x_1317 : vec2<f32> = vec2<f32>(x_1316.x, x_1316.y);
        let x_1319 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1317.x, x_1317.y, x_1319);
        let x_1326 : vec3<f32> = txVec15;
        let x_1328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1326.xy, x_1326.z);
        u_xlat6.x = x_1328;
        let x_1331 : f32 = u_xlat16.z;
        let x_1333 : f32 = u_xlat6.x;
        let x_1335 : f32 = u_xlat61;
        u_xlat61 = ((x_1331 * x_1333) + x_1335);
        let x_1338 : vec4<f32> = u_xlat13;
        let x_1339 : vec2<f32> = vec2<f32>(x_1338.x, x_1338.y);
        let x_1341 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1339.x, x_1339.y, x_1341);
        let x_1348 : vec3<f32> = txVec16;
        let x_1350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1348.xy, x_1348.z);
        u_xlat6.x = x_1350;
        let x_1353 : f32 = u_xlat16.w;
        let x_1355 : f32 = u_xlat6.x;
        let x_1357 : f32 = u_xlat61;
        u_xlat61 = ((x_1353 * x_1355) + x_1357);
        let x_1360 : vec4<f32> = u_xlat12;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.x, x_1360.y);
        let x_1363 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec17;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1370.xy, x_1370.z);
        u_xlat6.x = x_1372;
        let x_1375 : f32 = u_xlat17.x;
        let x_1377 : f32 = u_xlat6.x;
        let x_1379 : f32 = u_xlat61;
        u_xlat61 = ((x_1375 * x_1377) + x_1379);
        let x_1382 : vec4<f32> = u_xlat12;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.z, x_1382.w);
        let x_1385 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1392 : vec3<f32> = txVec18;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1392.xy, x_1392.z);
        u_xlat6.x = x_1394;
        let x_1397 : f32 = u_xlat17.y;
        let x_1399 : f32 = u_xlat6.x;
        let x_1401 : f32 = u_xlat61;
        u_xlat61 = ((x_1397 * x_1399) + x_1401);
        let x_1404 : vec2<f32> = u_xlat49;
        let x_1406 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec19;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1413.xy, x_1413.z);
        u_xlat6.x = x_1415;
        let x_1418 : f32 = u_xlat17.z;
        let x_1420 : f32 = u_xlat6.x;
        let x_1422 : f32 = u_xlat61;
        u_xlat61 = ((x_1418 * x_1420) + x_1422);
        let x_1425 : vec4<f32> = u_xlat13;
        let x_1426 : vec2<f32> = vec2<f32>(x_1425.z, x_1425.w);
        let x_1428 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1426.x, x_1426.y, x_1428);
        let x_1435 : vec3<f32> = txVec20;
        let x_1437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1435.xy, x_1435.z);
        u_xlat6.x = x_1437;
        let x_1440 : f32 = u_xlat17.w;
        let x_1442 : f32 = u_xlat6.x;
        let x_1444 : f32 = u_xlat61;
        u_xlat61 = ((x_1440 * x_1442) + x_1444);
        let x_1447 : vec4<f32> = u_xlat14;
        let x_1448 : vec2<f32> = vec2<f32>(x_1447.x, x_1447.y);
        let x_1450 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1448.x, x_1448.y, x_1450);
        let x_1457 : vec3<f32> = txVec21;
        let x_1459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1457.xy, x_1457.z);
        u_xlat6.x = x_1459;
        let x_1462 : f32 = u_xlat18.x;
        let x_1464 : f32 = u_xlat6.x;
        let x_1466 : f32 = u_xlat61;
        u_xlat61 = ((x_1462 * x_1464) + x_1466);
        let x_1469 : vec4<f32> = u_xlat14;
        let x_1470 : vec2<f32> = vec2<f32>(x_1469.z, x_1469.w);
        let x_1472 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec22;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1479.xy, x_1479.z);
        u_xlat6.x = x_1481;
        let x_1484 : f32 = u_xlat18.y;
        let x_1486 : f32 = u_xlat6.x;
        let x_1488 : f32 = u_xlat61;
        u_xlat61 = ((x_1484 * x_1486) + x_1488);
        let x_1491 : vec2<f32> = u_xlat25;
        let x_1493 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1491.x, x_1491.y, x_1493);
        let x_1500 : vec3<f32> = txVec23;
        let x_1502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1500.xy, x_1500.z);
        u_xlat6.x = x_1502;
        let x_1505 : f32 = u_xlat18.z;
        let x_1507 : f32 = u_xlat6.x;
        let x_1509 : f32 = u_xlat61;
        u_xlat61 = ((x_1505 * x_1507) + x_1509);
        let x_1512 : vec2<f32> = u_xlat15;
        let x_1514 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec24;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1521.xy, x_1521.z);
        u_xlat6.x = x_1523;
        let x_1526 : f32 = u_xlat18.w;
        let x_1528 : f32 = u_xlat6.x;
        let x_1530 : f32 = u_xlat61;
        u_xlat61 = ((x_1526 * x_1528) + x_1530);
        let x_1533 : vec4<f32> = u_xlat9;
        let x_1534 : vec2<f32> = vec2<f32>(x_1533.x, x_1533.y);
        let x_1536 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1534.x, x_1534.y, x_1536);
        let x_1543 : vec3<f32> = txVec25;
        let x_1545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1543.xy, x_1543.z);
        u_xlat6.x = x_1545;
        let x_1548 : f32 = u_xlat5.x;
        let x_1550 : f32 = u_xlat6.x;
        let x_1552 : f32 = u_xlat61;
        u_xlat61 = ((x_1548 * x_1550) + x_1552);
        let x_1555 : vec4<f32> = u_xlat9;
        let x_1556 : vec2<f32> = vec2<f32>(x_1555.z, x_1555.w);
        let x_1558 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec26;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1565.xy, x_1565.z);
        u_xlat5.x = x_1567;
        let x_1570 : f32 = u_xlat5.y;
        let x_1572 : f32 = u_xlat5.x;
        let x_1574 : f32 = u_xlat61;
        u_xlat61 = ((x_1570 * x_1572) + x_1574);
        let x_1577 : vec2<f32> = u_xlat46;
        let x_1579 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec27;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1586.xy, x_1586.z);
        u_xlat5.x = x_1588;
        let x_1591 : f32 = u_xlat5.z;
        let x_1593 : f32 = u_xlat5.x;
        let x_1595 : f32 = u_xlat61;
        u_xlat61 = ((x_1591 * x_1593) + x_1595);
        let x_1598 : vec2<f32> = u_xlat23;
        let x_1600 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec28;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1607.xy, x_1607.z);
        u_xlat23.x = x_1609;
        let x_1612 : f32 = u_xlat5.w;
        let x_1614 : f32 = u_xlat23.x;
        let x_1616 : f32 = u_xlat61;
        u_xlat4.x = ((x_1612 * x_1614) + x_1616);
      }
    }
  } else {
    let x_1621 : vec4<f32> = u_xlat2;
    let x_1622 : vec2<f32> = vec2<f32>(x_1621.x, x_1621.y);
    let x_1624 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
    let x_1631 : vec3<f32> = txVec29;
    let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1631.xy, x_1631.z);
    u_xlat4.x = x_1633;
  }
  let x_1636 : f32 = x_86.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1636) + 1.0f);
  let x_1641 : f32 = u_xlat4.x;
  let x_1643 : f32 = x_86.x_MainLightShadowParams.x;
  let x_1646 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1641 * x_1643) + x_1646);
  let x_1651 : f32 = u_xlat2.z;
  u_xlatb21.x = (0.0f >= x_1651);
  let x_1656 : f32 = u_xlat2.z;
  u_xlatb40 = (x_1656 >= 1.0f);
  let x_1658 : bool = u_xlatb40;
  let x_1660 : bool = u_xlatb21.x;
  u_xlatb21.x = (x_1658 | x_1660);
  let x_1664 : bool = u_xlatb21.x;
  if (x_1664) {
    x_1665 = 1.0f;
  } else {
    let x_1670 : f32 = u_xlat2.x;
    x_1665 = x_1670;
  }
  let x_1671 : f32 = x_1665;
  u_xlat2.x = x_1671;
  let x_1673 : vec3<f32> = vs_TEXCOORD1;
  let x_1676 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1678 : vec3<f32> = (x_1673 + -(x_1676));
  let x_1679 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1678.x, x_1678.y, x_1678.z, x_1679.w);
  let x_1682 : vec4<f32> = u_xlat4;
  let x_1684 : vec4<f32> = u_xlat4;
  u_xlat21.x = dot(vec3<f32>(x_1682.x, x_1682.y, x_1682.z), vec3<f32>(x_1684.x, x_1684.y, x_1684.z));
  let x_1689 : f32 = u_xlat21.x;
  let x_1691 : f32 = x_86.x_MainLightShadowParams.z;
  let x_1694 : f32 = x_86.x_MainLightShadowParams.w;
  u_xlat21.x = ((x_1689 * x_1691) + x_1694);
  let x_1698 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_1698, 0.0f, 1.0f);
  let x_1703 : f32 = u_xlat2.x;
  u_xlat40 = (-(x_1703) + 1.0f);
  let x_1707 : f32 = u_xlat21.x;
  let x_1708 : f32 = u_xlat40;
  let x_1711 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1707 * x_1708) + x_1711);
  let x_1720 : f32 = x_1718.x_MainLightCookieTextureFormat;
  u_xlatb21.x = !((x_1720 == -1.0f));
  let x_1724 : bool = u_xlatb21.x;
  if (x_1724) {
    let x_1727 : vec3<f32> = vs_TEXCOORD1;
    let x_1730 : vec4<f32> = x_1718.x_MainLightWorldToLight[1i];
    let x_1732 : vec2<f32> = (vec2<f32>(x_1727.y, x_1727.y) * vec2<f32>(x_1730.x, x_1730.y));
    let x_1733 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1732.x, x_1732.y, x_1733.z);
    let x_1736 : vec4<f32> = x_1718.x_MainLightWorldToLight[0i];
    let x_1738 : vec3<f32> = vs_TEXCOORD1;
    let x_1741 : vec3<f32> = u_xlat21;
    let x_1743 : vec2<f32> = ((vec2<f32>(x_1736.x, x_1736.y) * vec2<f32>(x_1738.x, x_1738.x)) + vec2<f32>(x_1741.x, x_1741.y));
    let x_1744 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1743.x, x_1743.y, x_1744.z);
    let x_1747 : vec4<f32> = x_1718.x_MainLightWorldToLight[2i];
    let x_1749 : vec3<f32> = vs_TEXCOORD1;
    let x_1752 : vec3<f32> = u_xlat21;
    let x_1754 : vec2<f32> = ((vec2<f32>(x_1747.x, x_1747.y) * vec2<f32>(x_1749.z, x_1749.z)) + vec2<f32>(x_1752.x, x_1752.y));
    let x_1755 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1754.x, x_1754.y, x_1755.z);
    let x_1757 : vec3<f32> = u_xlat21;
    let x_1760 : vec4<f32> = x_1718.x_MainLightWorldToLight[3i];
    let x_1762 : vec2<f32> = (vec2<f32>(x_1757.x, x_1757.y) + vec2<f32>(x_1760.x, x_1760.y));
    let x_1763 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1762.x, x_1762.y, x_1763.z);
    let x_1765 : vec3<f32> = u_xlat21;
    let x_1768 : vec2<f32> = ((vec2<f32>(x_1765.x, x_1765.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1769 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1768.x, x_1768.y, x_1769.z);
    let x_1776 : vec3<f32> = u_xlat21;
    let x_1779 : f32 = x_44.x_GlobalMipBias.x;
    let x_1780 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1776.x, x_1776.y), x_1779);
    u_xlat4 = x_1780;
    let x_1782 : f32 = x_1718.x_MainLightCookieTextureFormat;
    let x_1784 : f32 = x_1718.x_MainLightCookieTextureFormat;
    let x_1786 : f32 = x_1718.x_MainLightCookieTextureFormat;
    let x_1788 : f32 = x_1718.x_MainLightCookieTextureFormat;
    let x_1789 : vec4<f32> = vec4<f32>(x_1782, x_1784, x_1786, x_1788);
    let x_1796 : vec4<bool> = (vec4<f32>(x_1789.x, x_1789.y, x_1789.z, x_1789.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb21 = vec2<bool>(x_1796.x, x_1796.y);
    let x_1799 : bool = u_xlatb21.y;
    if (x_1799) {
      let x_1804 : f32 = u_xlat4.w;
      x_1800 = x_1804;
    } else {
      let x_1807 : f32 = u_xlat4.x;
      x_1800 = x_1807;
    }
    let x_1808 : f32 = x_1800;
    u_xlat40 = x_1808;
    let x_1810 : bool = u_xlatb21.x;
    if (x_1810) {
      let x_1814 : vec4<f32> = u_xlat4;
      x_1811 = vec3<f32>(x_1814.x, x_1814.y, x_1814.z);
    } else {
      let x_1817 : f32 = u_xlat40;
      x_1811 = vec3<f32>(x_1817, x_1817, x_1817);
    }
    let x_1819 : vec3<f32> = x_1811;
    let x_1820 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1819.x, x_1819.y, x_1819.z, x_1820.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1826 : vec4<f32> = u_xlat4;
  let x_1829 : vec4<f32> = x_44.x_MainLightColor;
  let x_1831 : vec3<f32> = (vec3<f32>(x_1826.x, x_1826.y, x_1826.z) * vec3<f32>(x_1829.x, x_1829.y, x_1829.z));
  let x_1832 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1831.x, x_1831.y, x_1831.z, x_1832.w);
  let x_1834 : f32 = u_xlat60;
  let x_1836 : vec4<f32> = u_xlat4;
  let x_1838 : vec3<f32> = (vec3<f32>(x_1834, x_1834, x_1834) * vec3<f32>(x_1836.x, x_1836.y, x_1836.z));
  let x_1839 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1838.x, x_1838.y, x_1838.z, x_1839.w);
  let x_1841 : f32 = u_xlat59;
  let x_1843 : vec4<f32> = u_xlat3;
  u_xlat21 = (vec3<f32>(x_1841, x_1841, x_1841) * vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
  let x_1847 : f32 = u_xlat2.x;
  let x_1853 : f32 = x_1851.unity_LightData.z;
  u_xlat2.x = (x_1847 * x_1853);
  let x_1856 : vec4<f32> = u_xlat2;
  let x_1858 : vec4<f32> = u_xlat4;
  let x_1860 : vec3<f32> = (vec3<f32>(x_1856.x, x_1856.x, x_1856.x) * vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
  let x_1861 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
  let x_1863 : vec3<f32> = u_xlat1;
  let x_1865 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(x_1863, vec3<f32>(x_1865.x, x_1865.y, x_1865.z));
  let x_1870 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1870, 0.0f, 1.0f);
  let x_1873 : vec4<f32> = u_xlat2;
  let x_1875 : vec4<f32> = u_xlat3;
  let x_1877 : vec3<f32> = (vec3<f32>(x_1873.x, x_1873.x, x_1873.x) * vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
  let x_1878 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1877.x, x_1877.y, x_1877.z, x_1878.w);
  let x_1880 : vec4<f32> = u_xlat0;
  let x_1882 : vec4<f32> = u_xlat3;
  let x_1884 : vec3<f32> = (vec3<f32>(x_1880.y, x_1880.z, x_1880.w) * vec3<f32>(x_1882.x, x_1882.y, x_1882.z));
  let x_1885 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
  let x_1888 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1890 : f32 = x_1851.unity_LightData.y;
  u_xlat2.x = min(x_1888, x_1890);
  let x_1895 : f32 = u_xlat2.x;
  u_xlatu2 = bitcast<u32>(i32(x_1895));
  let x_1899 : f32 = x_1718.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1901 : f32 = x_1718.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1903 : f32 = x_1718.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1905 : f32 = x_1718.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1906 : vec4<f32> = vec4<f32>(x_1899, x_1901, x_1903, x_1905);
  let x_1912 : vec4<bool> = (vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1906.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1912.x, x_1912.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1923 : u32 = u_xlatu_loop_1;
    let x_1924 : u32 = u_xlatu2;
    if ((x_1923 < x_1924)) {
    } else {
      break;
    }
    let x_1927 : u32 = u_xlatu_loop_1;
    u_xlatu61 = (x_1927 >> 2u);
    let x_1930 : u32 = u_xlatu_loop_1;
    u_xlati62 = bitcast<i32>((x_1930 & 3u));
    let x_1933 : u32 = u_xlatu61;
    let x_1936 : vec4<f32> = x_1851.unity_LightIndices[bitcast<i32>(x_1933)];
    let x_1946 : i32 = u_xlati62;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1951 : vec4<u32> = indexable[x_1946];
    u_xlat61 = dot(x_1936, bitcast<vec4<f32>>(x_1951));
    let x_1954 : f32 = u_xlat61;
    u_xlatu61 = bitcast<u32>(i32(x_1954));
    let x_1957 : vec3<f32> = vs_TEXCOORD1;
    let x_1969 : u32 = u_xlatu61;
    let x_1972 : vec4<f32> = x_1968.x_AdditionalLightsPosition[bitcast<i32>(x_1969)];
    let x_1975 : u32 = u_xlatu61;
    let x_1978 : vec4<f32> = x_1968.x_AdditionalLightsPosition[bitcast<i32>(x_1975)];
    let x_1980 : vec3<f32> = ((-(x_1957) * vec3<f32>(x_1972.w, x_1972.w, x_1972.w)) + vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
    let x_1981 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
    let x_1984 : vec4<f32> = u_xlat6;
    let x_1986 : vec4<f32> = u_xlat6;
    u_xlat62 = dot(vec3<f32>(x_1984.x, x_1984.y, x_1984.z), vec3<f32>(x_1986.x, x_1986.y, x_1986.z));
    let x_1989 : f32 = u_xlat62;
    u_xlat62 = max(x_1989, 6.10351562e-05f);
    let x_1993 : f32 = u_xlat62;
    u_xlat63 = inverseSqrt(x_1993);
    let x_1995 : f32 = u_xlat63;
    let x_1997 : vec4<f32> = u_xlat6;
    let x_1999 : vec3<f32> = (vec3<f32>(x_1995, x_1995, x_1995) * vec3<f32>(x_1997.x, x_1997.y, x_1997.z));
    let x_2000 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
    let x_2002 : f32 = u_xlat62;
    u_xlat63 = (1.0f / x_2002);
    let x_2004 : f32 = u_xlat62;
    let x_2005 : u32 = u_xlatu61;
    let x_2008 : f32 = x_1968.x_AdditionalLightsAttenuation[bitcast<i32>(x_2005)].x;
    u_xlat62 = (x_2004 * x_2008);
    let x_2010 : f32 = u_xlat62;
    let x_2012 : f32 = u_xlat62;
    u_xlat62 = ((-(x_2010) * x_2012) + 1.0f);
    let x_2015 : f32 = u_xlat62;
    u_xlat62 = max(x_2015, 0.0f);
    let x_2017 : f32 = u_xlat62;
    let x_2018 : f32 = u_xlat62;
    u_xlat62 = (x_2017 * x_2018);
    let x_2020 : f32 = u_xlat62;
    let x_2021 : f32 = u_xlat63;
    u_xlat62 = (x_2020 * x_2021);
    let x_2023 : u32 = u_xlatu61;
    let x_2026 : vec4<f32> = x_1968.x_AdditionalLightsSpotDir[bitcast<i32>(x_2023)];
    let x_2028 : vec4<f32> = u_xlat6;
    u_xlat63 = dot(vec3<f32>(x_2026.x, x_2026.y, x_2026.z), vec3<f32>(x_2028.x, x_2028.y, x_2028.z));
    let x_2031 : f32 = u_xlat63;
    let x_2032 : u32 = u_xlatu61;
    let x_2035 : f32 = x_1968.x_AdditionalLightsAttenuation[bitcast<i32>(x_2032)].z;
    let x_2037 : u32 = u_xlatu61;
    let x_2040 : f32 = x_1968.x_AdditionalLightsAttenuation[bitcast<i32>(x_2037)].w;
    u_xlat63 = ((x_2031 * x_2035) + x_2040);
    let x_2042 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2042, 0.0f, 1.0f);
    let x_2044 : f32 = u_xlat63;
    let x_2045 : f32 = u_xlat63;
    u_xlat63 = (x_2044 * x_2045);
    let x_2047 : f32 = u_xlat62;
    let x_2048 : f32 = u_xlat63;
    u_xlat62 = (x_2047 * x_2048);
    let x_2051 : u32 = u_xlatu61;
    u_xlatu63 = (x_2051 >> 5u);
    let x_2054 : u32 = u_xlatu61;
    u_xlati7 = (1i << bitcast<u32>((bitcast<i32>(x_2054) & 31i)));
    let x_2060 : i32 = u_xlati7;
    let x_2062 : u32 = u_xlatu63;
    let x_2065 : f32 = x_1718.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2062)].el;
    u_xlati63 = bitcast<i32>((bitcast<u32>(x_2060) & bitcast<u32>(x_2065)));
    let x_2069 : i32 = u_xlati63;
    if ((x_2069 != 0i)) {
      let x_2079 : u32 = u_xlatu61;
      let x_2082 : f32 = x_2078.x_AdditionalLightsLightTypes[bitcast<i32>(x_2079)].el;
      u_xlati63 = i32(x_2082);
      let x_2084 : i32 = u_xlati63;
      u_xlati7 = select(1i, 0i, (x_2084 != 0i));
      let x_2088 : u32 = u_xlatu61;
      u_xlati26 = (bitcast<i32>(x_2088) << bitcast<u32>(2i));
      let x_2091 : i32 = u_xlati7;
      if ((x_2091 != 0i)) {
        let x_2095 : vec3<f32> = vs_TEXCOORD1;
        let x_2097 : i32 = u_xlati26;
        let x_2100 : i32 = u_xlati26;
        let x_2104 : vec4<f32> = x_2078.x_AdditionalLightsWorldToLights[((x_2097 + 1i) / 4i)][((x_2100 + 1i) % 4i)];
        let x_2106 : vec3<f32> = (vec3<f32>(x_2095.y, x_2095.y, x_2095.y) * vec3<f32>(x_2104.x, x_2104.y, x_2104.w));
        let x_2107 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2106.x, x_2107.y, x_2106.y, x_2106.z);
        let x_2109 : i32 = u_xlati26;
        let x_2111 : i32 = u_xlati26;
        let x_2114 : vec4<f32> = x_2078.x_AdditionalLightsWorldToLights[(x_2109 / 4i)][(x_2111 % 4i)];
        let x_2116 : vec3<f32> = vs_TEXCOORD1;
        let x_2119 : vec4<f32> = u_xlat7;
        let x_2121 : vec3<f32> = ((vec3<f32>(x_2114.x, x_2114.y, x_2114.w) * vec3<f32>(x_2116.x, x_2116.x, x_2116.x)) + vec3<f32>(x_2119.x, x_2119.z, x_2119.w));
        let x_2122 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2121.x, x_2122.y, x_2121.y, x_2121.z);
        let x_2124 : i32 = u_xlati26;
        let x_2127 : i32 = u_xlati26;
        let x_2131 : vec4<f32> = x_2078.x_AdditionalLightsWorldToLights[((x_2124 + 2i) / 4i)][((x_2127 + 2i) % 4i)];
        let x_2133 : vec3<f32> = vs_TEXCOORD1;
        let x_2136 : vec4<f32> = u_xlat7;
        let x_2138 : vec3<f32> = ((vec3<f32>(x_2131.x, x_2131.y, x_2131.w) * vec3<f32>(x_2133.z, x_2133.z, x_2133.z)) + vec3<f32>(x_2136.x, x_2136.z, x_2136.w));
        let x_2139 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2138.x, x_2139.y, x_2138.y, x_2138.z);
        let x_2141 : vec4<f32> = u_xlat7;
        let x_2143 : i32 = u_xlati26;
        let x_2146 : i32 = u_xlati26;
        let x_2150 : vec4<f32> = x_2078.x_AdditionalLightsWorldToLights[((x_2143 + 3i) / 4i)][((x_2146 + 3i) % 4i)];
        let x_2152 : vec3<f32> = (vec3<f32>(x_2141.x, x_2141.z, x_2141.w) + vec3<f32>(x_2150.x, x_2150.y, x_2150.w));
        let x_2153 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2152.x, x_2153.y, x_2152.y, x_2152.z);
        let x_2155 : vec4<f32> = u_xlat7;
        let x_2157 : vec4<f32> = u_xlat7;
        let x_2159 : vec2<f32> = (vec2<f32>(x_2155.x, x_2155.z) / vec2<f32>(x_2157.w, x_2157.w));
        let x_2160 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2159.x, x_2160.y, x_2159.y, x_2160.w);
        let x_2162 : vec4<f32> = u_xlat7;
        let x_2165 : vec2<f32> = ((vec2<f32>(x_2162.x, x_2162.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2166 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2165.x, x_2166.y, x_2165.y, x_2166.w);
        let x_2168 : vec4<f32> = u_xlat7;
        let x_2172 : vec2<f32> = clamp(vec2<f32>(x_2168.x, x_2168.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2173 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2172.x, x_2173.y, x_2172.y, x_2173.w);
        let x_2175 : u32 = u_xlatu61;
        let x_2178 : vec4<f32> = x_2078.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2175)];
        let x_2180 : vec4<f32> = u_xlat7;
        let x_2183 : u32 = u_xlatu61;
        let x_2186 : vec4<f32> = x_2078.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2183)];
        let x_2188 : vec2<f32> = ((vec2<f32>(x_2178.x, x_2178.y) * vec2<f32>(x_2180.x, x_2180.z)) + vec2<f32>(x_2186.z, x_2186.w));
        let x_2189 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2188.x, x_2189.y, x_2188.y, x_2189.w);
      } else {
        let x_2193 : i32 = u_xlati63;
        u_xlatb63 = (x_2193 == 1i);
        let x_2195 : bool = u_xlatb63;
        u_xlati63 = select(0i, 1i, x_2195);
        let x_2197 : i32 = u_xlati63;
        if ((x_2197 != 0i)) {
          let x_2201 : vec3<f32> = vs_TEXCOORD1;
          let x_2203 : i32 = u_xlati26;
          let x_2206 : i32 = u_xlati26;
          let x_2210 : vec4<f32> = x_2078.x_AdditionalLightsWorldToLights[((x_2203 + 1i) / 4i)][((x_2206 + 1i) % 4i)];
          let x_2212 : vec2<f32> = (vec2<f32>(x_2201.y, x_2201.y) * vec2<f32>(x_2210.x, x_2210.y));
          let x_2213 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2212.x, x_2212.y, x_2213.z, x_2213.w);
          let x_2215 : i32 = u_xlati26;
          let x_2217 : i32 = u_xlati26;
          let x_2220 : vec4<f32> = x_2078.x_AdditionalLightsWorldToLights[(x_2215 / 4i)][(x_2217 % 4i)];
          let x_2222 : vec3<f32> = vs_TEXCOORD1;
          let x_2225 : vec4<f32> = u_xlat8;
          let x_2227 : vec2<f32> = ((vec2<f32>(x_2220.x, x_2220.y) * vec2<f32>(x_2222.x, x_2222.x)) + vec2<f32>(x_2225.x, x_2225.y));
          let x_2228 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2227.x, x_2227.y, x_2228.z, x_2228.w);
          let x_2230 : i32 = u_xlati26;
          let x_2233 : i32 = u_xlati26;
          let x_2237 : vec4<f32> = x_2078.x_AdditionalLightsWorldToLights[((x_2230 + 2i) / 4i)][((x_2233 + 2i) % 4i)];
          let x_2239 : vec3<f32> = vs_TEXCOORD1;
          let x_2242 : vec4<f32> = u_xlat8;
          let x_2244 : vec2<f32> = ((vec2<f32>(x_2237.x, x_2237.y) * vec2<f32>(x_2239.z, x_2239.z)) + vec2<f32>(x_2242.x, x_2242.y));
          let x_2245 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2244.x, x_2244.y, x_2245.z, x_2245.w);
          let x_2247 : vec4<f32> = u_xlat8;
          let x_2249 : i32 = u_xlati26;
          let x_2252 : i32 = u_xlati26;
          let x_2256 : vec4<f32> = x_2078.x_AdditionalLightsWorldToLights[((x_2249 + 3i) / 4i)][((x_2252 + 3i) % 4i)];
          let x_2258 : vec2<f32> = (vec2<f32>(x_2247.x, x_2247.y) + vec2<f32>(x_2256.x, x_2256.y));
          let x_2259 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2258.x, x_2258.y, x_2259.z, x_2259.w);
          let x_2261 : vec4<f32> = u_xlat8;
          let x_2264 : vec2<f32> = ((vec2<f32>(x_2261.x, x_2261.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2265 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2264.x, x_2264.y, x_2265.z, x_2265.w);
          let x_2267 : vec4<f32> = u_xlat8;
          let x_2269 : vec2<f32> = fract(vec2<f32>(x_2267.x, x_2267.y));
          let x_2270 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2269.x, x_2269.y, x_2270.z, x_2270.w);
          let x_2272 : u32 = u_xlatu61;
          let x_2275 : vec4<f32> = x_2078.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2272)];
          let x_2277 : vec4<f32> = u_xlat8;
          let x_2280 : u32 = u_xlatu61;
          let x_2283 : vec4<f32> = x_2078.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2280)];
          let x_2285 : vec2<f32> = ((vec2<f32>(x_2275.x, x_2275.y) * vec2<f32>(x_2277.x, x_2277.y)) + vec2<f32>(x_2283.z, x_2283.w));
          let x_2286 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2285.x, x_2286.y, x_2285.y, x_2286.w);
        } else {
          let x_2289 : vec3<f32> = vs_TEXCOORD1;
          let x_2291 : i32 = u_xlati26;
          let x_2294 : i32 = u_xlati26;
          let x_2298 : vec4<f32> = x_2078.x_AdditionalLightsWorldToLights[((x_2291 + 1i) / 4i)][((x_2294 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_2289.y, x_2289.y, x_2289.y, x_2289.y) * x_2298);
          let x_2300 : i32 = u_xlati26;
          let x_2302 : i32 = u_xlati26;
          let x_2305 : vec4<f32> = x_2078.x_AdditionalLightsWorldToLights[(x_2300 / 4i)][(x_2302 % 4i)];
          let x_2306 : vec3<f32> = vs_TEXCOORD1;
          let x_2309 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2305 * vec4<f32>(x_2306.x, x_2306.x, x_2306.x, x_2306.x)) + x_2309);
          let x_2311 : i32 = u_xlati26;
          let x_2314 : i32 = u_xlati26;
          let x_2318 : vec4<f32> = x_2078.x_AdditionalLightsWorldToLights[((x_2311 + 2i) / 4i)][((x_2314 + 2i) % 4i)];
          let x_2319 : vec3<f32> = vs_TEXCOORD1;
          let x_2322 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2318 * vec4<f32>(x_2319.z, x_2319.z, x_2319.z, x_2319.z)) + x_2322);
          let x_2324 : vec4<f32> = u_xlat8;
          let x_2325 : i32 = u_xlati26;
          let x_2328 : i32 = u_xlati26;
          let x_2332 : vec4<f32> = x_2078.x_AdditionalLightsWorldToLights[((x_2325 + 3i) / 4i)][((x_2328 + 3i) % 4i)];
          u_xlat8 = (x_2324 + x_2332);
          let x_2334 : vec4<f32> = u_xlat8;
          let x_2336 : vec4<f32> = u_xlat8;
          let x_2338 : vec3<f32> = (vec3<f32>(x_2334.x, x_2334.y, x_2334.z) / vec3<f32>(x_2336.w, x_2336.w, x_2336.w));
          let x_2339 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2339.w);
          let x_2341 : vec4<f32> = u_xlat8;
          let x_2343 : vec4<f32> = u_xlat8;
          u_xlat63 = dot(vec3<f32>(x_2341.x, x_2341.y, x_2341.z), vec3<f32>(x_2343.x, x_2343.y, x_2343.z));
          let x_2346 : f32 = u_xlat63;
          u_xlat63 = inverseSqrt(x_2346);
          let x_2348 : f32 = u_xlat63;
          let x_2350 : vec4<f32> = u_xlat8;
          let x_2352 : vec3<f32> = (vec3<f32>(x_2348, x_2348, x_2348) * vec3<f32>(x_2350.x, x_2350.y, x_2350.z));
          let x_2353 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2352.x, x_2352.y, x_2352.z, x_2353.w);
          let x_2355 : vec4<f32> = u_xlat8;
          u_xlat63 = dot(abs(vec3<f32>(x_2355.x, x_2355.y, x_2355.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2360 : f32 = u_xlat63;
          u_xlat63 = max(x_2360, 0.000001f);
          let x_2363 : f32 = u_xlat63;
          u_xlat63 = (1.0f / x_2363);
          let x_2365 : f32 = u_xlat63;
          let x_2367 : vec4<f32> = u_xlat8;
          let x_2369 : vec3<f32> = (vec3<f32>(x_2365, x_2365, x_2365) * vec3<f32>(x_2367.z, x_2367.x, x_2367.y));
          let x_2370 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2369.x, x_2369.y, x_2369.z, x_2370.w);
          let x_2373 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_2373);
          let x_2377 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_2377, 0.0f, 1.0f);
          let x_2383 : vec4<f32> = u_xlat9;
          let x_2386 : vec4<bool> = (vec4<f32>(x_2383.y, x_2383.y, x_2383.z, x_2383.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2387 : vec2<bool> = vec2<bool>(x_2386.x, x_2386.z);
          let x_2388 : vec3<bool> = u_xlatb26;
          u_xlatb26 = vec3<bool>(x_2387.x, x_2388.y, x_2387.y);
          let x_2392 : bool = u_xlatb26.x;
          if (x_2392) {
            let x_2397 : f32 = u_xlat9.x;
            x_2393 = x_2397;
          } else {
            let x_2400 : f32 = u_xlat9.x;
            x_2393 = -(x_2400);
          }
          let x_2402 : f32 = x_2393;
          u_xlat26.x = x_2402;
          let x_2405 : bool = u_xlatb26.z;
          if (x_2405) {
            let x_2410 : f32 = u_xlat9.x;
            x_2406 = x_2410;
          } else {
            let x_2413 : f32 = u_xlat9.x;
            x_2406 = -(x_2413);
          }
          let x_2415 : f32 = x_2406;
          u_xlat26.z = x_2415;
          let x_2417 : vec4<f32> = u_xlat8;
          let x_2419 : f32 = u_xlat63;
          let x_2422 : vec3<f32> = u_xlat26;
          let x_2424 : vec2<f32> = ((vec2<f32>(x_2417.x, x_2417.y) * vec2<f32>(x_2419, x_2419)) + vec2<f32>(x_2422.x, x_2422.z));
          let x_2425 : vec3<f32> = u_xlat26;
          u_xlat26 = vec3<f32>(x_2424.x, x_2425.y, x_2424.y);
          let x_2427 : vec3<f32> = u_xlat26;
          let x_2430 : vec2<f32> = ((vec2<f32>(x_2427.x, x_2427.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2431 : vec3<f32> = u_xlat26;
          u_xlat26 = vec3<f32>(x_2430.x, x_2431.y, x_2430.y);
          let x_2433 : vec3<f32> = u_xlat26;
          let x_2437 : vec2<f32> = clamp(vec2<f32>(x_2433.x, x_2433.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2438 : vec3<f32> = u_xlat26;
          u_xlat26 = vec3<f32>(x_2437.x, x_2438.y, x_2437.y);
          let x_2440 : u32 = u_xlatu61;
          let x_2443 : vec4<f32> = x_2078.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2440)];
          let x_2445 : vec3<f32> = u_xlat26;
          let x_2448 : u32 = u_xlatu61;
          let x_2451 : vec4<f32> = x_2078.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2448)];
          let x_2453 : vec2<f32> = ((vec2<f32>(x_2443.x, x_2443.y) * vec2<f32>(x_2445.x, x_2445.z)) + vec2<f32>(x_2451.z, x_2451.w));
          let x_2454 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2453.x, x_2454.y, x_2453.y, x_2454.w);
        }
      }
      let x_2461 : vec4<f32> = u_xlat7;
      let x_2464 : f32 = x_44.x_GlobalMipBias.x;
      let x_2465 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2461.x, x_2461.z), x_2464);
      u_xlat7 = x_2465;
      let x_2467 : bool = u_xlatb4.y;
      if (x_2467) {
        let x_2472 : f32 = u_xlat7.w;
        x_2468 = x_2472;
      } else {
        let x_2475 : f32 = u_xlat7.x;
        x_2468 = x_2475;
      }
      let x_2476 : f32 = x_2468;
      u_xlat63 = x_2476;
      let x_2478 : bool = u_xlatb4.x;
      if (x_2478) {
        let x_2482 : vec4<f32> = u_xlat7;
        x_2479 = vec3<f32>(x_2482.x, x_2482.y, x_2482.z);
      } else {
        let x_2485 : f32 = u_xlat63;
        x_2479 = vec3<f32>(x_2485, x_2485, x_2485);
      }
      let x_2487 : vec3<f32> = x_2479;
      let x_2488 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2487.x, x_2487.y, x_2487.z, x_2488.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_2494 : vec4<f32> = u_xlat7;
    let x_2496 : u32 = u_xlatu61;
    let x_2499 : vec4<f32> = x_1968.x_AdditionalLightsColor[bitcast<i32>(x_2496)];
    let x_2501 : vec3<f32> = (vec3<f32>(x_2494.x, x_2494.y, x_2494.z) * vec3<f32>(x_2499.x, x_2499.y, x_2499.z));
    let x_2502 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2501.x, x_2501.y, x_2501.z, x_2502.w);
    let x_2504 : f32 = u_xlat60;
    let x_2506 : vec4<f32> = u_xlat7;
    let x_2508 : vec3<f32> = (vec3<f32>(x_2504, x_2504, x_2504) * vec3<f32>(x_2506.x, x_2506.y, x_2506.z));
    let x_2509 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2509.w);
    let x_2511 : f32 = u_xlat62;
    let x_2513 : vec4<f32> = u_xlat7;
    let x_2515 : vec3<f32> = (vec3<f32>(x_2511, x_2511, x_2511) * vec3<f32>(x_2513.x, x_2513.y, x_2513.z));
    let x_2516 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2515.x, x_2515.y, x_2515.z, x_2516.w);
    let x_2518 : vec3<f32> = u_xlat1;
    let x_2519 : vec4<f32> = u_xlat6;
    u_xlat61 = dot(x_2518, vec3<f32>(x_2519.x, x_2519.y, x_2519.z));
    let x_2522 : f32 = u_xlat61;
    u_xlat61 = clamp(x_2522, 0.0f, 1.0f);
    let x_2524 : f32 = u_xlat61;
    let x_2526 : vec4<f32> = u_xlat7;
    let x_2528 : vec3<f32> = (vec3<f32>(x_2524, x_2524, x_2524) * vec3<f32>(x_2526.x, x_2526.y, x_2526.z));
    let x_2529 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2528.x, x_2528.y, x_2528.z, x_2529.w);
    let x_2531 : vec4<f32> = u_xlat6;
    let x_2533 : vec4<f32> = u_xlat0;
    let x_2536 : vec4<f32> = u_xlat5;
    let x_2538 : vec3<f32> = ((vec3<f32>(x_2531.x, x_2531.y, x_2531.z) * vec3<f32>(x_2533.y, x_2533.z, x_2533.w)) + vec3<f32>(x_2536.x, x_2536.y, x_2536.z));
    let x_2539 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2538.x, x_2538.y, x_2538.z, x_2539.w);

    continuing {
      let x_2541 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2541 + bitcast<u32>(1i));
    }
  }
  let x_2544 : vec3<f32> = u_xlat21;
  let x_2545 : vec4<f32> = u_xlat0;
  let x_2548 : vec4<f32> = u_xlat3;
  u_xlat19 = ((x_2544 * vec3<f32>(x_2545.y, x_2545.z, x_2545.w)) + vec3<f32>(x_2548.x, x_2548.y, x_2548.z));
  let x_2551 : vec4<f32> = u_xlat5;
  let x_2553 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_2551.x, x_2551.y, x_2551.z) + x_2553);
  let x_2555 : f32 = u_xlat58;
  let x_2556 : f32 = u_xlat58;
  u_xlat1.x = (x_2555 * -(x_2556));
  let x_2561 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2561);
  let x_2564 : vec3<f32> = u_xlat19;
  let x_2567 : vec4<f32> = x_44.unity_FogColor;
  u_xlat19 = (x_2564 + -(vec3<f32>(x_2567.x, x_2567.y, x_2567.z)));
  let x_2573 : vec3<f32> = u_xlat1;
  let x_2575 : vec3<f32> = u_xlat19;
  let x_2578 : vec4<f32> = x_44.unity_FogColor;
  let x_2580 : vec3<f32> = ((vec3<f32>(x_2573.x, x_2573.x, x_2573.x) * x_2575) + vec3<f32>(x_2578.x, x_2578.y, x_2578.z));
  let x_2581 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2580.x, x_2580.y, x_2580.z, x_2581.w);
  let x_2585 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2585 == 1.0f);
  let x_2587 : bool = u_xlatb19;
  if (x_2587) {
    let x_2592 : f32 = u_xlat0.x;
    x_2588 = x_2592;
  } else {
    x_2588 = 1.0f;
  }
  let x_2594 : f32 = x_2588;
  SV_Target0.w = x_2594;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

