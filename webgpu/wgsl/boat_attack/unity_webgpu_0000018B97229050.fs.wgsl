diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_8,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_80 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat44 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat42 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat30 : f32;

@group(1) @binding(4) var<uniform> x_516 : LightCookies;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb19 : vec2<bool>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_707 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatu45 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati45 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_968 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb52 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu30 : u32;

var<private> u_xlatb45 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_468 : f32;
  var x_601 : f32;
  var x_612 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1100 : f32;
  var x_1111 : f32;
  var txVec1 : vec3<f32>;
  var x_1557 : f32;
  var x_1570 : f32;
  var x_1628 : f32;
  var x_1639 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1 = x_49.x;
  let x_54 : vec4<f32> = vs_TEXCOORD3;
  let x_56 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_54.x, x_54.y, x_54.z), vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_61 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_61);
  let x_64 : vec3<f32> = u_xlat15;
  let x_66 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_64.x, x_64.x, x_64.x) * vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_72 : vec3<f32> = vs_TEXCOORD7;
  let x_84 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres0;
  let x_87 : vec3<f32> = (x_72 + -(vec3<f32>(x_84.x, x_84.y, x_84.z)));
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_87.x, x_87.y, x_87.z, x_88.w);
  let x_91 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres1;
  let x_97 : vec3<f32> = (x_91 + -(vec3<f32>(x_94.x, x_94.y, x_94.z)));
  let x_98 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_101 : vec3<f32> = vs_TEXCOORD7;
  let x_104 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_101 + -(vec3<f32>(x_104.x, x_104.y, x_104.z)));
  let x_109 : vec3<f32> = vs_TEXCOORD7;
  let x_112 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_109 + -(vec3<f32>(x_112.x, x_112.y, x_112.z)));
  let x_116 : vec4<f32> = u_xlat2;
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_116.x, x_116.y, x_116.z), vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_122 : vec4<f32> = u_xlat3;
  let x_124 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_122.x, x_122.y, x_122.z), vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_129 : vec3<f32> = u_xlat4;
  let x_130 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_129, x_130);
  let x_134 : vec3<f32> = u_xlat5;
  let x_135 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_134, x_135);
  let x_143 : vec4<f32> = u_xlat2;
  let x_146 : vec4<f32> = x_80.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_143 < x_146);
  let x_150 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_150);
  let x_156 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_156);
  let x_160 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_160);
  let x_164 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_168);
  let x_174 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_174);
  let x_178 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_178);
  let x_181 : vec4<f32> = u_xlat2;
  let x_183 : vec4<f32> = u_xlat3;
  let x_185 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + vec3<f32>(x_183.y, x_183.z, x_183.w));
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec4<f32> = u_xlat2;
  let x_191 : vec3<f32> = max(vec3<f32>(x_188.x, x_188.y, x_188.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_192.x, x_191.x, x_191.y, x_191.z);
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_194, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_202 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_202) + 4.0f);
  let x_209 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_209);
  let x_213 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_213) << bitcast<u32>(2i));
  let x_217 : vec3<f32> = vs_TEXCOORD7;
  let x_219 : i32 = u_xlati2;
  let x_222 : i32 = u_xlati2;
  let x_226 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_219 + 1i) / 4i)][((x_222 + 1i) % 4i)];
  u_xlat16 = (vec3<f32>(x_217.y, x_217.y, x_217.y) * vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : i32 = u_xlati2;
  let x_231 : i32 = u_xlati2;
  let x_234 : vec4<f32> = x_80.x_MainLightWorldToShadow[(x_229 / 4i)][(x_231 % 4i)];
  let x_236 : vec3<f32> = vs_TEXCOORD7;
  let x_239 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.x, x_236.x, x_236.x)) + x_239);
  let x_241 : i32 = u_xlati2;
  let x_244 : i32 = u_xlati2;
  let x_248 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_241 + 2i) / 4i)][((x_244 + 2i) % 4i)];
  let x_250 : vec3<f32> = vs_TEXCOORD7;
  let x_253 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.z, x_250.z, x_250.z)) + x_253);
  let x_255 : vec3<f32> = u_xlat16;
  let x_256 : i32 = u_xlati2;
  let x_259 : i32 = u_xlati2;
  let x_263 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_256 + 3i) / 4i)][((x_259 + 3i) % 4i)];
  let x_265 : vec3<f32> = (x_255 + vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_266 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_271 : f32 = vs_TEXCOORD7.y;
  let x_274 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat44 = (x_271 * x_274);
  let x_277 : f32 = x_29.unity_MatrixV[0i].z;
  let x_279 : f32 = vs_TEXCOORD7.x;
  let x_281 : f32 = u_xlat44;
  u_xlat44 = ((x_277 * x_279) + x_281);
  let x_284 : f32 = x_29.unity_MatrixV[2i].z;
  let x_286 : f32 = vs_TEXCOORD7.z;
  let x_288 : f32 = u_xlat44;
  u_xlat44 = ((x_284 * x_286) + x_288);
  let x_290 : f32 = u_xlat44;
  let x_292 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat44 = (x_290 + x_292);
  let x_294 : f32 = u_xlat44;
  let x_297 : f32 = x_29.x_ProjectionParams.y;
  u_xlat44 = (-(x_294) + -(x_297));
  let x_300 : f32 = u_xlat44;
  u_xlat44 = max(x_300, 0.0f);
  let x_302 : f32 = u_xlat44;
  let x_305 : f32 = x_29.unity_FogParams.x;
  u_xlat44 = (x_302 * x_305);
  let x_312 : vec4<f32> = vs_TEXCOORD0;
  let x_315 : f32 = x_29.x_GlobalMipBias.x;
  let x_316 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_312.z, x_312.w), x_315);
  u_xlat3 = x_316;
  let x_321 : vec4<f32> = vs_TEXCOORD0;
  let x_324 : f32 = x_29.x_GlobalMipBias.x;
  let x_325 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_321.z, x_321.w), x_324);
  u_xlat4 = vec3<f32>(x_325.x, x_325.y, x_325.z);
  let x_327 : vec4<f32> = u_xlat3;
  let x_331 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec3<f32> = u_xlat15;
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_334, vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_340 : f32 = u_xlat3.x;
  u_xlat3.x = (x_340 + 0.5f);
  let x_344 : vec4<f32> = u_xlat3;
  let x_346 : vec3<f32> = u_xlat4;
  let x_347 : vec3<f32> = (vec3<f32>(x_344.x, x_344.x, x_344.x) * x_346);
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_352 : f32 = u_xlat3.w;
  u_xlat45 = max(x_352, 0.00009999999747378752f);
  let x_355 : vec4<f32> = u_xlat3;
  let x_357 : f32 = u_xlat45;
  let x_359 : vec3<f32> = (vec3<f32>(x_355.x, x_355.y, x_355.z) / vec3<f32>(x_357, x_357, x_357));
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : f32 = u_xlat1;
  u_xlat45 = ((-(x_362) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_367 : f32 = u_xlat45;
  u_xlat4.x = (-(x_367) + 1.0f);
  let x_372 : vec4<f32> = u_xlat0;
  let x_374 : f32 = u_xlat45;
  u_xlat18 = (vec3<f32>(x_372.x, x_372.y, x_372.z) * vec3<f32>(x_374, x_374, x_374));
  let x_377 : vec4<f32> = u_xlat0;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : f32 = u_xlat1;
  let x_386 : vec4<f32> = u_xlat0;
  let x_391 : vec3<f32> = ((vec3<f32>(x_384, x_384, x_384) * vec3<f32>(x_386.x, x_386.y, x_386.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_392 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_395 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_395) + 1.0f);
  let x_398 : f32 = u_xlat1;
  let x_399 : f32 = u_xlat1;
  u_xlat45 = (x_398 * x_399);
  let x_401 : f32 = u_xlat45;
  u_xlat45 = max(x_401, 0.0078125f);
  let x_404 : f32 = u_xlat45;
  let x_405 : f32 = u_xlat45;
  u_xlat5.x = (x_404 * x_405);
  let x_410 : f32 = u_xlat0.w;
  let x_412 : f32 = u_xlat4.x;
  u_xlat42 = (x_410 + x_412);
  let x_414 : f32 = u_xlat42;
  u_xlat42 = clamp(x_414, 0.0f, 1.0f);
  let x_416 : f32 = u_xlat45;
  u_xlat4.x = ((x_416 * 4.0f) + 2.0f);
  let x_422 : vec4<f32> = u_xlat2;
  let x_423 : vec2<f32> = vec2<f32>(x_422.x, x_422.y);
  let x_425 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_423.x, x_423.y, x_425);
  let x_437 : vec3<f32> = txVec0;
  let x_439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_437.xy, x_437.z);
  u_xlat2.x = x_439;
  let x_442 : f32 = x_80.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_442) + 1.0f);
  let x_447 : f32 = u_xlat2.x;
  let x_449 : f32 = x_80.x_MainLightShadowParams.x;
  let x_452 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_447 * x_449) + x_452);
  let x_457 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_457);
  let x_461 : f32 = u_xlat2.z;
  u_xlatb30 = (x_461 >= 1.0f);
  let x_463 : bool = u_xlatb30;
  let x_464 : bool = u_xlatb16;
  u_xlatb16 = (x_463 | x_464);
  let x_466 : bool = u_xlatb16;
  if (x_466) {
    x_468 = 1.0f;
  } else {
    let x_473 : f32 = u_xlat2.x;
    x_468 = x_473;
  }
  let x_474 : f32 = x_468;
  u_xlat2.x = x_474;
  let x_477 : vec3<f32> = vs_TEXCOORD7;
  let x_480 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat19 = (x_477 + -(x_480));
  let x_483 : vec3<f32> = u_xlat19;
  let x_484 : vec3<f32> = u_xlat19;
  u_xlat16.x = dot(x_483, x_484);
  let x_489 : f32 = u_xlat16.x;
  let x_491 : f32 = x_80.x_MainLightShadowParams.z;
  let x_494 : f32 = x_80.x_MainLightShadowParams.w;
  u_xlat30 = ((x_489 * x_491) + x_494);
  let x_496 : f32 = u_xlat30;
  u_xlat30 = clamp(x_496, 0.0f, 1.0f);
  let x_499 : f32 = u_xlat2.x;
  u_xlat19.x = (-(x_499) + 1.0f);
  let x_503 : f32 = u_xlat30;
  let x_505 : f32 = u_xlat19.x;
  let x_508 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_503 * x_505) + x_508);
  let x_518 : f32 = x_516.x_MainLightCookieTextureFormat;
  u_xlatb30 = !((x_518 == -1.0f));
  let x_520 : bool = u_xlatb30;
  if (x_520) {
    let x_523 : vec3<f32> = vs_TEXCOORD7;
    let x_526 : vec4<f32> = x_516.x_MainLightWorldToLight[1i];
    let x_528 : vec2<f32> = (vec2<f32>(x_523.y, x_523.y) * vec2<f32>(x_526.x, x_526.y));
    let x_529 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_528.x, x_528.y, x_529.z);
    let x_532 : vec4<f32> = x_516.x_MainLightWorldToLight[0i];
    let x_534 : vec3<f32> = vs_TEXCOORD7;
    let x_537 : vec3<f32> = u_xlat19;
    let x_539 : vec2<f32> = ((vec2<f32>(x_532.x, x_532.y) * vec2<f32>(x_534.x, x_534.x)) + vec2<f32>(x_537.x, x_537.y));
    let x_540 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_539.x, x_539.y, x_540.z);
    let x_543 : vec4<f32> = x_516.x_MainLightWorldToLight[2i];
    let x_545 : vec3<f32> = vs_TEXCOORD7;
    let x_548 : vec3<f32> = u_xlat19;
    let x_550 : vec2<f32> = ((vec2<f32>(x_543.x, x_543.y) * vec2<f32>(x_545.z, x_545.z)) + vec2<f32>(x_548.x, x_548.y));
    let x_551 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_550.x, x_550.y, x_551.z);
    let x_553 : vec3<f32> = u_xlat19;
    let x_556 : vec4<f32> = x_516.x_MainLightWorldToLight[3i];
    let x_558 : vec2<f32> = (vec2<f32>(x_553.x, x_553.y) + vec2<f32>(x_556.x, x_556.y));
    let x_559 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_558.x, x_558.y, x_559.z);
    let x_561 : vec3<f32> = u_xlat19;
    let x_565 : vec2<f32> = ((vec2<f32>(x_561.x, x_561.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_566 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_565.x, x_565.y, x_566.z);
    let x_574 : vec3<f32> = u_xlat19;
    let x_577 : f32 = x_29.x_GlobalMipBias.x;
    let x_578 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_574.x, x_574.y), x_577);
    u_xlat6 = x_578;
    let x_583 : f32 = x_516.x_MainLightCookieTextureFormat;
    let x_585 : f32 = x_516.x_MainLightCookieTextureFormat;
    let x_587 : f32 = x_516.x_MainLightCookieTextureFormat;
    let x_589 : f32 = x_516.x_MainLightCookieTextureFormat;
    let x_590 : vec4<f32> = vec4<f32>(x_583, x_585, x_587, x_589);
    let x_597 : vec4<bool> = (vec4<f32>(x_590.x, x_590.y, x_590.z, x_590.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_597.x, x_597.y);
    let x_600 : bool = u_xlatb19.y;
    if (x_600) {
      let x_605 : f32 = u_xlat6.w;
      x_601 = x_605;
    } else {
      let x_608 : f32 = u_xlat6.x;
      x_601 = x_608;
    }
    let x_609 : f32 = x_601;
    u_xlat30 = x_609;
    let x_611 : bool = u_xlatb19.x;
    if (x_611) {
      let x_615 : vec4<f32> = u_xlat6;
      x_612 = vec3<f32>(x_615.x, x_615.y, x_615.z);
    } else {
      let x_618 : f32 = u_xlat30;
      x_612 = vec3<f32>(x_618, x_618, x_618);
    }
    let x_620 : vec3<f32> = x_612;
    u_xlat19 = x_620;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_625 : vec3<f32> = u_xlat19;
  let x_627 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat19 = (x_625 * vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_631 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_631;
  let x_635 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_635;
  let x_639 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_639;
  let x_641 : vec4<f32> = u_xlat6;
  let x_644 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(-(vec3<f32>(x_641.x, x_641.y, x_641.z)), x_644);
  let x_646 : f32 = u_xlat30;
  let x_647 : f32 = u_xlat30;
  u_xlat30 = (x_646 + x_647);
  let x_650 : vec3<f32> = u_xlat15;
  let x_651 : f32 = u_xlat30;
  let x_655 : vec4<f32> = u_xlat6;
  let x_658 : vec3<f32> = ((x_650 * -(vec3<f32>(x_651, x_651, x_651))) + -(vec3<f32>(x_655.x, x_655.y, x_655.z)));
  let x_659 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec3<f32> = u_xlat15;
  let x_662 : vec4<f32> = u_xlat6;
  u_xlat30 = dot(x_661, vec3<f32>(x_662.x, x_662.y, x_662.z));
  let x_665 : f32 = u_xlat30;
  u_xlat30 = clamp(x_665, 0.0f, 1.0f);
  let x_667 : f32 = u_xlat30;
  u_xlat30 = (-(x_667) + 1.0f);
  let x_670 : f32 = u_xlat30;
  let x_671 : f32 = u_xlat30;
  u_xlat30 = (x_670 * x_671);
  let x_673 : f32 = u_xlat30;
  let x_674 : f32 = u_xlat30;
  u_xlat30 = (x_673 * x_674);
  let x_677 : f32 = u_xlat1;
  u_xlat48 = ((-(x_677) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_683 : f32 = u_xlat1;
  let x_684 : f32 = u_xlat48;
  u_xlat1 = (x_683 * x_684);
  let x_686 : f32 = u_xlat1;
  u_xlat1 = (x_686 * 6.0f);
  let x_697 : vec4<f32> = u_xlat7;
  let x_699 : f32 = u_xlat1;
  let x_700 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_697.x, x_697.y, x_697.z), x_699);
  u_xlat7 = x_700;
  let x_702 : f32 = u_xlat7.w;
  u_xlat1 = (x_702 + -1.0f);
  let x_709 : f32 = x_707.unity_SpecCube0_HDR.w;
  let x_710 : f32 = u_xlat1;
  u_xlat1 = ((x_709 * x_710) + 1.0f);
  let x_713 : f32 = u_xlat1;
  u_xlat1 = max(x_713, 0.0f);
  let x_715 : f32 = u_xlat1;
  u_xlat1 = log2(x_715);
  let x_717 : f32 = u_xlat1;
  let x_719 : f32 = x_707.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_717 * x_719);
  let x_721 : f32 = u_xlat1;
  u_xlat1 = exp2(x_721);
  let x_723 : f32 = u_xlat1;
  let x_725 : f32 = x_707.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_723 * x_725);
  let x_727 : vec4<f32> = u_xlat7;
  let x_729 : f32 = u_xlat1;
  let x_731 : vec3<f32> = (vec3<f32>(x_727.x, x_727.y, x_727.z) * vec3<f32>(x_729, x_729, x_729));
  let x_732 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_736 : f32 = u_xlat45;
  let x_738 : f32 = u_xlat45;
  u_xlat8 = ((vec2<f32>(x_736, x_736) * vec2<f32>(x_738, x_738)) + vec2<f32>(-1.0f, 1.0f));
  let x_744 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_744);
  let x_747 : vec4<f32> = u_xlat0;
  let x_750 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_747.x, x_747.y, x_747.z)) + vec3<f32>(x_750, x_750, x_750));
  let x_753 : f32 = u_xlat30;
  let x_755 : vec3<f32> = u_xlat22;
  let x_757 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_753, x_753, x_753) * x_755) + vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : f32 = u_xlat1;
  let x_762 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_760, x_760, x_760) * x_762);
  let x_764 : vec4<f32> = u_xlat7;
  let x_766 : vec3<f32> = u_xlat22;
  let x_767 : vec3<f32> = (vec3<f32>(x_764.x, x_764.y, x_764.z) * x_766);
  let x_768 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec4<f32> = u_xlat3;
  let x_772 : vec3<f32> = u_xlat18;
  let x_774 : vec4<f32> = u_xlat7;
  let x_776 : vec3<f32> = ((vec3<f32>(x_770.x, x_770.y, x_770.z) * x_772) + vec3<f32>(x_774.x, x_774.y, x_774.z));
  let x_777 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_780 : f32 = u_xlat2.x;
  let x_782 : f32 = x_707.unity_LightData.z;
  u_xlat42 = (x_780 * x_782);
  let x_784 : vec3<f32> = u_xlat15;
  let x_786 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_784, vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_789 : f32 = u_xlat1;
  u_xlat1 = clamp(x_789, 0.0f, 1.0f);
  let x_791 : f32 = u_xlat42;
  let x_792 : f32 = u_xlat1;
  u_xlat42 = (x_791 * x_792);
  let x_794 : f32 = u_xlat42;
  let x_796 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_794, x_794, x_794) * x_796);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = x_29.x_MainLightPosition;
  let x_803 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) + vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : vec4<f32> = u_xlat7;
  let x_808 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_806.x, x_806.y, x_806.z), vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : f32 = u_xlat42;
  u_xlat42 = max(x_811, 1.17549435e-38f);
  let x_814 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_814);
  let x_816 : f32 = u_xlat42;
  let x_818 : vec4<f32> = u_xlat7;
  let x_820 : vec3<f32> = (vec3<f32>(x_816, x_816, x_816) * vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_823 : vec3<f32> = u_xlat15;
  let x_824 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_823, vec3<f32>(x_824.x, x_824.y, x_824.z));
  let x_827 : f32 = u_xlat42;
  u_xlat42 = clamp(x_827, 0.0f, 1.0f);
  let x_830 : vec4<f32> = x_29.x_MainLightPosition;
  let x_832 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_830.x, x_830.y, x_830.z), vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : f32 = u_xlat1;
  u_xlat1 = clamp(x_835, 0.0f, 1.0f);
  let x_837 : f32 = u_xlat42;
  let x_838 : f32 = u_xlat42;
  u_xlat42 = (x_837 * x_838);
  let x_840 : f32 = u_xlat42;
  let x_842 : f32 = u_xlat8.x;
  u_xlat42 = ((x_840 * x_842) + 1.00001001358032226562f);
  let x_846 : f32 = u_xlat1;
  let x_847 : f32 = u_xlat1;
  u_xlat1 = (x_846 * x_847);
  let x_849 : f32 = u_xlat42;
  let x_850 : f32 = u_xlat42;
  u_xlat42 = (x_849 * x_850);
  let x_852 : f32 = u_xlat1;
  u_xlat1 = max(x_852, 0.10000000149011611938f);
  let x_855 : f32 = u_xlat42;
  let x_856 : f32 = u_xlat1;
  u_xlat42 = (x_855 * x_856);
  let x_859 : f32 = u_xlat4.x;
  let x_860 : f32 = u_xlat42;
  u_xlat42 = (x_859 * x_860);
  let x_863 : f32 = u_xlat5.x;
  let x_864 : f32 = u_xlat42;
  u_xlat42 = (x_863 / x_864);
  let x_866 : vec4<f32> = u_xlat0;
  let x_868 : f32 = u_xlat42;
  let x_871 : vec3<f32> = u_xlat18;
  let x_872 : vec3<f32> = ((vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(x_868, x_868, x_868)) + x_871);
  let x_873 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_876 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_878 : f32 = x_707.unity_LightData.y;
  u_xlat42 = min(x_876, x_878);
  let x_881 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_881));
  let x_885 : f32 = u_xlat16.x;
  let x_888 : f32 = x_80.x_AdditionalShadowFadeParams.x;
  let x_891 : f32 = x_80.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_885 * x_888) + x_891);
  let x_893 : f32 = u_xlat1;
  u_xlat1 = clamp(x_893, 0.0f, 1.0f);
  let x_896 : f32 = x_516.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_898 : f32 = x_516.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_900 : f32 = x_516.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_902 : f32 = x_516.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_903 : vec4<f32> = vec4<f32>(x_896, x_898, x_900, x_902);
  let x_909 : vec4<bool> = (vec4<f32>(x_903.x, x_903.y, x_903.z, x_903.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_910 : vec2<bool> = vec2<bool>(x_909.x, x_909.y);
  let x_911 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_910.x, x_910.y, x_911.z, x_911.w);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_923 : u32 = u_xlatu_loop_1;
    let x_924 : u32 = u_xlatu42;
    if ((x_923 < x_924)) {
    } else {
      break;
    }
    let x_927 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_927 >> 2u);
    let x_930 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_930 & 3u));
    let x_933 : u32 = u_xlatu45;
    let x_936 : vec4<f32> = x_707.unity_LightIndices[bitcast<i32>(x_933)];
    let x_946 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_951 : vec4<u32> = indexable[x_946];
    u_xlat45 = dot(x_936, bitcast<vec4<f32>>(x_951));
    let x_955 : f32 = u_xlat45;
    u_xlati45 = i32(x_955);
    let x_958 : vec3<f32> = vs_TEXCOORD7;
    let x_969 : i32 = u_xlati45;
    let x_971 : vec4<f32> = x_968.x_AdditionalLightsPosition[x_969];
    let x_974 : i32 = u_xlati45;
    let x_976 : vec4<f32> = x_968.x_AdditionalLightsPosition[x_974];
    u_xlat9 = ((-(x_958) * vec3<f32>(x_971.w, x_971.w, x_971.w)) + vec3<f32>(x_976.x, x_976.y, x_976.z));
    let x_979 : vec3<f32> = u_xlat9;
    let x_980 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_979, x_980);
    let x_982 : f32 = u_xlat48;
    u_xlat48 = max(x_982, 0.00006103515625f);
    let x_986 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_986);
    let x_989 : f32 = u_xlat49;
    let x_991 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_989, x_989, x_989) * x_991);
    let x_994 : f32 = u_xlat48;
    u_xlat51 = (1.0f / x_994);
    let x_996 : f32 = u_xlat48;
    let x_997 : i32 = u_xlati45;
    let x_999 : f32 = x_968.x_AdditionalLightsAttenuation[x_997].x;
    u_xlat48 = (x_996 * x_999);
    let x_1001 : f32 = u_xlat48;
    let x_1003 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1001) * x_1003) + 1.0f);
    let x_1006 : f32 = u_xlat48;
    u_xlat48 = max(x_1006, 0.0f);
    let x_1008 : f32 = u_xlat48;
    let x_1009 : f32 = u_xlat48;
    u_xlat48 = (x_1008 * x_1009);
    let x_1011 : f32 = u_xlat48;
    let x_1012 : f32 = u_xlat51;
    u_xlat48 = (x_1011 * x_1012);
    let x_1014 : i32 = u_xlati45;
    let x_1016 : vec4<f32> = x_968.x_AdditionalLightsSpotDir[x_1014];
    let x_1018 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1016.x, x_1016.y, x_1016.z), x_1018);
    let x_1020 : f32 = u_xlat51;
    let x_1021 : i32 = u_xlati45;
    let x_1023 : f32 = x_968.x_AdditionalLightsAttenuation[x_1021].z;
    let x_1025 : i32 = u_xlati45;
    let x_1027 : f32 = x_968.x_AdditionalLightsAttenuation[x_1025].w;
    u_xlat51 = ((x_1020 * x_1023) + x_1027);
    let x_1029 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1029, 0.0f, 1.0f);
    let x_1031 : f32 = u_xlat51;
    let x_1032 : f32 = u_xlat51;
    u_xlat51 = (x_1031 * x_1032);
    let x_1034 : f32 = u_xlat48;
    let x_1035 : f32 = u_xlat51;
    u_xlat48 = (x_1034 * x_1035);
    let x_1039 : i32 = u_xlati45;
    let x_1041 : f32 = x_80.x_AdditionalShadowParams[x_1039].w;
    u_xlati51 = i32(x_1041);
    let x_1044 : i32 = u_xlati51;
    u_xlatb52 = (x_1044 >= 0i);
    let x_1046 : bool = u_xlatb52;
    if (x_1046) {
      let x_1050 : i32 = u_xlati45;
      let x_1052 : f32 = x_80.x_AdditionalShadowParams[x_1050].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1052, x_1052, x_1052, x_1052))));
      let x_1056 : bool = u_xlatb52;
      if (x_1056) {
        let x_1060 : vec3<f32> = u_xlat10;
        let x_1063 : vec3<f32> = u_xlat10;
        let x_1066 : vec4<bool> = (abs(vec4<f32>(x_1060.z, x_1060.z, x_1060.y, x_1060.z)) >= abs(vec4<f32>(x_1063.x, x_1063.y, x_1063.x, x_1063.x)));
        let x_1068 : vec3<bool> = vec3<bool>(x_1066.x, x_1066.y, x_1066.z);
        let x_1069 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
        let x_1072 : bool = u_xlatb11.y;
        let x_1074 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1072 & x_1074);
        let x_1076 : vec3<f32> = u_xlat10;
        let x_1079 : vec4<bool> = (-(vec4<f32>(x_1076.z, x_1076.y, x_1076.z, x_1076.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1080 : vec3<bool> = vec3<bool>(x_1079.x, x_1079.y, x_1079.w);
        let x_1081 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1080.x, x_1080.y, x_1081.z, x_1080.z);
        let x_1085 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1085);
        let x_1090 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1090);
        let x_1095 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1095);
        let x_1099 : bool = u_xlatb11.z;
        if (x_1099) {
          let x_1104 : f32 = u_xlat11.y;
          x_1100 = x_1104;
        } else {
          let x_1106 : f32 = u_xlat53;
          x_1100 = x_1106;
        }
        let x_1107 : f32 = x_1100;
        u_xlat25.x = x_1107;
        let x_1110 : bool = u_xlatb52;
        if (x_1110) {
          let x_1115 : f32 = u_xlat11.x;
          x_1111 = x_1115;
        } else {
          let x_1118 : f32 = u_xlat25.x;
          x_1111 = x_1118;
        }
        let x_1119 : f32 = x_1111;
        u_xlat52 = x_1119;
        let x_1120 : i32 = u_xlati45;
        let x_1122 : f32 = x_80.x_AdditionalShadowParams[x_1120].w;
        u_xlat11.x = trunc(x_1122);
        let x_1125 : f32 = u_xlat52;
        let x_1127 : f32 = u_xlat11.x;
        u_xlat52 = (x_1125 + x_1127);
        let x_1129 : f32 = u_xlat52;
        u_xlati51 = i32(x_1129);
      }
      let x_1131 : i32 = u_xlati51;
      u_xlati51 = (x_1131 << bitcast<u32>(2i));
      let x_1133 : vec3<f32> = vs_TEXCOORD7;
      let x_1136 : i32 = u_xlati51;
      let x_1139 : i32 = u_xlati51;
      let x_1143 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_1136 + 1i) / 4i)][((x_1139 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1133.y, x_1133.y, x_1133.y, x_1133.y) * x_1143);
      let x_1145 : i32 = u_xlati51;
      let x_1147 : i32 = u_xlati51;
      let x_1150 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[(x_1145 / 4i)][(x_1147 % 4i)];
      let x_1151 : vec3<f32> = vs_TEXCOORD7;
      let x_1154 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1150 * vec4<f32>(x_1151.x, x_1151.x, x_1151.x, x_1151.x)) + x_1154);
      let x_1156 : i32 = u_xlati51;
      let x_1159 : i32 = u_xlati51;
      let x_1163 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_1156 + 2i) / 4i)][((x_1159 + 2i) % 4i)];
      let x_1164 : vec3<f32> = vs_TEXCOORD7;
      let x_1167 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1163 * vec4<f32>(x_1164.z, x_1164.z, x_1164.z, x_1164.z)) + x_1167);
      let x_1169 : vec4<f32> = u_xlat11;
      let x_1170 : i32 = u_xlati51;
      let x_1173 : i32 = u_xlati51;
      let x_1177 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_1170 + 3i) / 4i)][((x_1173 + 3i) % 4i)];
      u_xlat11 = (x_1169 + x_1177);
      let x_1179 : vec4<f32> = u_xlat11;
      let x_1181 : vec4<f32> = u_xlat11;
      let x_1183 : vec3<f32> = (vec3<f32>(x_1179.x, x_1179.y, x_1179.z) / vec3<f32>(x_1181.w, x_1181.w, x_1181.w));
      let x_1184 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
      let x_1187 : vec4<f32> = u_xlat11;
      let x_1188 : vec2<f32> = vec2<f32>(x_1187.x, x_1187.y);
      let x_1190 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1188.x, x_1188.y, x_1190);
      let x_1198 : vec3<f32> = txVec1;
      let x_1200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1198.xy, x_1198.z);
      u_xlat51 = x_1200;
      let x_1201 : i32 = u_xlati45;
      let x_1203 : f32 = x_80.x_AdditionalShadowParams[x_1201].x;
      u_xlat52 = (1.0f + -(x_1203));
      let x_1206 : f32 = u_xlat51;
      let x_1207 : i32 = u_xlati45;
      let x_1209 : f32 = x_80.x_AdditionalShadowParams[x_1207].x;
      let x_1211 : f32 = u_xlat52;
      u_xlat51 = ((x_1206 * x_1209) + x_1211);
      let x_1214 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1214);
      let x_1217 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1217 >= 1.0f);
      let x_1220 : bool = u_xlatb52;
      let x_1222 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1220 | x_1222);
      let x_1224 : bool = u_xlatb52;
      let x_1225 : f32 = u_xlat51;
      u_xlat51 = select(x_1225, 1.0f, x_1224);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1228 : f32 = u_xlat51;
    u_xlat52 = (-(x_1228) + 1.0f);
    let x_1231 : f32 = u_xlat1;
    let x_1232 : f32 = u_xlat52;
    let x_1234 : f32 = u_xlat51;
    u_xlat51 = ((x_1231 * x_1232) + x_1234);
    let x_1237 : i32 = u_xlati45;
    u_xlati52 = (1i << bitcast<u32>((x_1237 & 31i)));
    let x_1241 : i32 = u_xlati52;
    let x_1244 : f32 = x_516.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1241) & bitcast<u32>(x_1244)));
    let x_1248 : i32 = u_xlati52;
    if ((x_1248 != 0i)) {
      let x_1252 : i32 = u_xlati45;
      let x_1254 : f32 = x_516.x_AdditionalLightsLightTypes[x_1252].el;
      u_xlati52 = i32(x_1254);
      let x_1257 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1257 != 0i));
      let x_1261 : i32 = u_xlati45;
      u_xlati25 = (x_1261 << bitcast<u32>(2i));
      let x_1263 : i32 = u_xlati11;
      if ((x_1263 != 0i)) {
        let x_1267 : vec3<f32> = vs_TEXCOORD7;
        let x_1269 : i32 = u_xlati25;
        let x_1272 : i32 = u_xlati25;
        let x_1276 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1269 + 1i) / 4i)][((x_1272 + 1i) % 4i)];
        let x_1278 : vec3<f32> = (vec3<f32>(x_1267.y, x_1267.y, x_1267.y) * vec3<f32>(x_1276.x, x_1276.y, x_1276.w));
        let x_1279 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1278.x, x_1279.y, x_1278.y, x_1278.z);
        let x_1281 : i32 = u_xlati25;
        let x_1283 : i32 = u_xlati25;
        let x_1286 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[(x_1281 / 4i)][(x_1283 % 4i)];
        let x_1288 : vec3<f32> = vs_TEXCOORD7;
        let x_1291 : vec4<f32> = u_xlat11;
        let x_1293 : vec3<f32> = ((vec3<f32>(x_1286.x, x_1286.y, x_1286.w) * vec3<f32>(x_1288.x, x_1288.x, x_1288.x)) + vec3<f32>(x_1291.x, x_1291.z, x_1291.w));
        let x_1294 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1293.x, x_1294.y, x_1293.y, x_1293.z);
        let x_1296 : i32 = u_xlati25;
        let x_1299 : i32 = u_xlati25;
        let x_1303 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1296 + 2i) / 4i)][((x_1299 + 2i) % 4i)];
        let x_1305 : vec3<f32> = vs_TEXCOORD7;
        let x_1308 : vec4<f32> = u_xlat11;
        let x_1310 : vec3<f32> = ((vec3<f32>(x_1303.x, x_1303.y, x_1303.w) * vec3<f32>(x_1305.z, x_1305.z, x_1305.z)) + vec3<f32>(x_1308.x, x_1308.z, x_1308.w));
        let x_1311 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1310.x, x_1311.y, x_1310.y, x_1310.z);
        let x_1313 : vec4<f32> = u_xlat11;
        let x_1315 : i32 = u_xlati25;
        let x_1318 : i32 = u_xlati25;
        let x_1322 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1315 + 3i) / 4i)][((x_1318 + 3i) % 4i)];
        let x_1324 : vec3<f32> = (vec3<f32>(x_1313.x, x_1313.z, x_1313.w) + vec3<f32>(x_1322.x, x_1322.y, x_1322.w));
        let x_1325 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1324.x, x_1325.y, x_1324.y, x_1324.z);
        let x_1327 : vec4<f32> = u_xlat11;
        let x_1329 : vec4<f32> = u_xlat11;
        let x_1331 : vec2<f32> = (vec2<f32>(x_1327.x, x_1327.z) / vec2<f32>(x_1329.w, x_1329.w));
        let x_1332 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1331.x, x_1332.y, x_1331.y, x_1332.w);
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1337 : vec2<f32> = ((vec2<f32>(x_1334.x, x_1334.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1338 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1337.x, x_1338.y, x_1337.y, x_1338.w);
        let x_1340 : vec4<f32> = u_xlat11;
        let x_1344 : vec2<f32> = clamp(vec2<f32>(x_1340.x, x_1340.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1345 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1344.x, x_1345.y, x_1344.y, x_1345.w);
        let x_1347 : i32 = u_xlati45;
        let x_1349 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1347];
        let x_1351 : vec4<f32> = u_xlat11;
        let x_1354 : i32 = u_xlati45;
        let x_1356 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1354];
        let x_1358 : vec2<f32> = ((vec2<f32>(x_1349.x, x_1349.y) * vec2<f32>(x_1351.x, x_1351.z)) + vec2<f32>(x_1356.z, x_1356.w));
        let x_1359 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1358.x, x_1359.y, x_1358.y, x_1359.w);
      } else {
        let x_1362 : i32 = u_xlati52;
        u_xlatb52 = (x_1362 == 1i);
        let x_1364 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1364);
        let x_1366 : i32 = u_xlati52;
        if ((x_1366 != 0i)) {
          let x_1371 : vec3<f32> = vs_TEXCOORD7;
          let x_1373 : i32 = u_xlati25;
          let x_1376 : i32 = u_xlati25;
          let x_1380 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1373 + 1i) / 4i)][((x_1376 + 1i) % 4i)];
          let x_1382 : vec2<f32> = (vec2<f32>(x_1371.y, x_1371.y) * vec2<f32>(x_1380.x, x_1380.y));
          let x_1383 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1382.x, x_1382.y, x_1383.z, x_1383.w);
          let x_1385 : i32 = u_xlati25;
          let x_1387 : i32 = u_xlati25;
          let x_1390 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[(x_1385 / 4i)][(x_1387 % 4i)];
          let x_1392 : vec3<f32> = vs_TEXCOORD7;
          let x_1395 : vec4<f32> = u_xlat12;
          let x_1397 : vec2<f32> = ((vec2<f32>(x_1390.x, x_1390.y) * vec2<f32>(x_1392.x, x_1392.x)) + vec2<f32>(x_1395.x, x_1395.y));
          let x_1398 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1397.x, x_1397.y, x_1398.z, x_1398.w);
          let x_1400 : i32 = u_xlati25;
          let x_1403 : i32 = u_xlati25;
          let x_1407 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1400 + 2i) / 4i)][((x_1403 + 2i) % 4i)];
          let x_1409 : vec3<f32> = vs_TEXCOORD7;
          let x_1412 : vec4<f32> = u_xlat12;
          let x_1414 : vec2<f32> = ((vec2<f32>(x_1407.x, x_1407.y) * vec2<f32>(x_1409.z, x_1409.z)) + vec2<f32>(x_1412.x, x_1412.y));
          let x_1415 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1414.x, x_1414.y, x_1415.z, x_1415.w);
          let x_1417 : vec4<f32> = u_xlat12;
          let x_1419 : i32 = u_xlati25;
          let x_1422 : i32 = u_xlati25;
          let x_1426 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1419 + 3i) / 4i)][((x_1422 + 3i) % 4i)];
          let x_1428 : vec2<f32> = (vec2<f32>(x_1417.x, x_1417.y) + vec2<f32>(x_1426.x, x_1426.y));
          let x_1429 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1428.x, x_1428.y, x_1429.z, x_1429.w);
          let x_1431 : vec4<f32> = u_xlat12;
          let x_1434 : vec2<f32> = ((vec2<f32>(x_1431.x, x_1431.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1435 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1434.x, x_1434.y, x_1435.z, x_1435.w);
          let x_1437 : vec4<f32> = u_xlat12;
          let x_1439 : vec2<f32> = fract(vec2<f32>(x_1437.x, x_1437.y));
          let x_1440 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1439.x, x_1439.y, x_1440.z, x_1440.w);
          let x_1442 : i32 = u_xlati45;
          let x_1444 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1442];
          let x_1446 : vec4<f32> = u_xlat12;
          let x_1449 : i32 = u_xlati45;
          let x_1451 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1449];
          let x_1453 : vec2<f32> = ((vec2<f32>(x_1444.x, x_1444.y) * vec2<f32>(x_1446.x, x_1446.y)) + vec2<f32>(x_1451.z, x_1451.w));
          let x_1454 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1453.x, x_1454.y, x_1453.y, x_1454.w);
        } else {
          let x_1457 : vec3<f32> = vs_TEXCOORD7;
          let x_1459 : i32 = u_xlati25;
          let x_1462 : i32 = u_xlati25;
          let x_1466 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1459 + 1i) / 4i)][((x_1462 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1457.y, x_1457.y, x_1457.y, x_1457.y) * x_1466);
          let x_1468 : i32 = u_xlati25;
          let x_1470 : i32 = u_xlati25;
          let x_1473 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[(x_1468 / 4i)][(x_1470 % 4i)];
          let x_1474 : vec3<f32> = vs_TEXCOORD7;
          let x_1477 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1473 * vec4<f32>(x_1474.x, x_1474.x, x_1474.x, x_1474.x)) + x_1477);
          let x_1479 : i32 = u_xlati25;
          let x_1482 : i32 = u_xlati25;
          let x_1486 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1479 + 2i) / 4i)][((x_1482 + 2i) % 4i)];
          let x_1487 : vec3<f32> = vs_TEXCOORD7;
          let x_1490 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1486 * vec4<f32>(x_1487.z, x_1487.z, x_1487.z, x_1487.z)) + x_1490);
          let x_1492 : vec4<f32> = u_xlat12;
          let x_1493 : i32 = u_xlati25;
          let x_1496 : i32 = u_xlati25;
          let x_1500 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1493 + 3i) / 4i)][((x_1496 + 3i) % 4i)];
          u_xlat12 = (x_1492 + x_1500);
          let x_1502 : vec4<f32> = u_xlat12;
          let x_1504 : vec4<f32> = u_xlat12;
          let x_1506 : vec3<f32> = (vec3<f32>(x_1502.x, x_1502.y, x_1502.z) / vec3<f32>(x_1504.w, x_1504.w, x_1504.w));
          let x_1507 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1507.w);
          let x_1509 : vec4<f32> = u_xlat12;
          let x_1511 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1509.x, x_1509.y, x_1509.z), vec3<f32>(x_1511.x, x_1511.y, x_1511.z));
          let x_1514 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1514);
          let x_1516 : f32 = u_xlat52;
          let x_1518 : vec4<f32> = u_xlat12;
          let x_1520 : vec3<f32> = (vec3<f32>(x_1516, x_1516, x_1516) * vec3<f32>(x_1518.x, x_1518.y, x_1518.z));
          let x_1521 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1520.x, x_1520.y, x_1520.z, x_1521.w);
          let x_1523 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1523.x, x_1523.y, x_1523.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1528 : f32 = u_xlat52;
          u_xlat52 = max(x_1528, 0.00000099999999747524f);
          let x_1531 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1531);
          let x_1534 : f32 = u_xlat52;
          let x_1536 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1534, x_1534, x_1534) * vec3<f32>(x_1536.z, x_1536.x, x_1536.y));
          let x_1540 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1540);
          let x_1544 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1544, 0.0f, 1.0f);
          let x_1549 : vec3<f32> = u_xlat13;
          let x_1551 : vec4<bool> = (vec4<f32>(x_1549.y, x_1549.y, x_1549.z, x_1549.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1552 : vec2<bool> = vec2<bool>(x_1551.x, x_1551.z);
          let x_1553 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1552.x, x_1553.y, x_1552.y);
          let x_1556 : bool = u_xlatb25.x;
          if (x_1556) {
            let x_1561 : f32 = u_xlat13.x;
            x_1557 = x_1561;
          } else {
            let x_1564 : f32 = u_xlat13.x;
            x_1557 = -(x_1564);
          }
          let x_1566 : f32 = x_1557;
          u_xlat25.x = x_1566;
          let x_1569 : bool = u_xlatb25.z;
          if (x_1569) {
            let x_1574 : f32 = u_xlat13.x;
            x_1570 = x_1574;
          } else {
            let x_1577 : f32 = u_xlat13.x;
            x_1570 = -(x_1577);
          }
          let x_1579 : f32 = x_1570;
          u_xlat25.z = x_1579;
          let x_1581 : vec4<f32> = u_xlat12;
          let x_1583 : f32 = u_xlat52;
          let x_1586 : vec3<f32> = u_xlat25;
          let x_1588 : vec2<f32> = ((vec2<f32>(x_1581.x, x_1581.y) * vec2<f32>(x_1583, x_1583)) + vec2<f32>(x_1586.x, x_1586.z));
          let x_1589 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1588.x, x_1589.y, x_1588.y);
          let x_1591 : vec3<f32> = u_xlat25;
          let x_1594 : vec2<f32> = ((vec2<f32>(x_1591.x, x_1591.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1595 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1594.x, x_1595.y, x_1594.y);
          let x_1597 : vec3<f32> = u_xlat25;
          let x_1601 : vec2<f32> = clamp(vec2<f32>(x_1597.x, x_1597.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1602 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1601.x, x_1602.y, x_1601.y);
          let x_1604 : i32 = u_xlati45;
          let x_1606 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1604];
          let x_1608 : vec3<f32> = u_xlat25;
          let x_1611 : i32 = u_xlati45;
          let x_1613 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1611];
          let x_1615 : vec2<f32> = ((vec2<f32>(x_1606.x, x_1606.y) * vec2<f32>(x_1608.x, x_1608.z)) + vec2<f32>(x_1613.z, x_1613.w));
          let x_1616 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1615.x, x_1616.y, x_1615.y, x_1616.w);
        }
      }
      let x_1623 : vec4<f32> = u_xlat11;
      let x_1625 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1623.x, x_1623.z), 0.0f);
      u_xlat11 = x_1625;
      let x_1627 : bool = u_xlatb2.y;
      if (x_1627) {
        let x_1632 : f32 = u_xlat11.w;
        x_1628 = x_1632;
      } else {
        let x_1635 : f32 = u_xlat11.x;
        x_1628 = x_1635;
      }
      let x_1636 : f32 = x_1628;
      u_xlat52 = x_1636;
      let x_1638 : bool = u_xlatb2.x;
      if (x_1638) {
        let x_1642 : vec4<f32> = u_xlat11;
        x_1639 = vec3<f32>(x_1642.x, x_1642.y, x_1642.z);
      } else {
        let x_1645 : f32 = u_xlat52;
        x_1639 = vec3<f32>(x_1645, x_1645, x_1645);
      }
      let x_1647 : vec3<f32> = x_1639;
      let x_1648 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1647.x, x_1647.y, x_1647.z, x_1648.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1654 : vec4<f32> = u_xlat11;
    let x_1656 : i32 = u_xlati45;
    let x_1658 : vec4<f32> = x_968.x_AdditionalLightsColor[x_1656];
    let x_1660 : vec3<f32> = (vec3<f32>(x_1654.x, x_1654.y, x_1654.z) * vec3<f32>(x_1658.x, x_1658.y, x_1658.z));
    let x_1661 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1660.x, x_1660.y, x_1660.z, x_1661.w);
    let x_1663 : f32 = u_xlat48;
    let x_1664 : f32 = u_xlat51;
    u_xlat45 = (x_1663 * x_1664);
    let x_1666 : vec3<f32> = u_xlat15;
    let x_1667 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(x_1666, x_1667);
    let x_1669 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1669, 0.0f, 1.0f);
    let x_1671 : f32 = u_xlat45;
    let x_1672 : f32 = u_xlat48;
    u_xlat45 = (x_1671 * x_1672);
    let x_1674 : f32 = u_xlat45;
    let x_1676 : vec4<f32> = u_xlat11;
    let x_1678 : vec3<f32> = (vec3<f32>(x_1674, x_1674, x_1674) * vec3<f32>(x_1676.x, x_1676.y, x_1676.z));
    let x_1679 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1678.x, x_1678.y, x_1678.z, x_1679.w);
    let x_1681 : vec3<f32> = u_xlat9;
    let x_1682 : f32 = u_xlat49;
    let x_1685 : vec4<f32> = u_xlat6;
    u_xlat9 = ((x_1681 * vec3<f32>(x_1682, x_1682, x_1682)) + vec3<f32>(x_1685.x, x_1685.y, x_1685.z));
    let x_1688 : vec3<f32> = u_xlat9;
    let x_1689 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1688, x_1689);
    let x_1691 : f32 = u_xlat45;
    u_xlat45 = max(x_1691, 1.17549435e-38f);
    let x_1693 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1693);
    let x_1695 : f32 = u_xlat45;
    let x_1697 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1695, x_1695, x_1695) * x_1697);
    let x_1699 : vec3<f32> = u_xlat15;
    let x_1700 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1699, x_1700);
    let x_1702 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1702, 0.0f, 1.0f);
    let x_1704 : vec3<f32> = u_xlat10;
    let x_1705 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1704, x_1705);
    let x_1707 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1707, 0.0f, 1.0f);
    let x_1709 : f32 = u_xlat45;
    let x_1710 : f32 = u_xlat45;
    u_xlat45 = (x_1709 * x_1710);
    let x_1712 : f32 = u_xlat45;
    let x_1714 : f32 = u_xlat8.x;
    u_xlat45 = ((x_1712 * x_1714) + 1.00001001358032226562f);
    let x_1717 : f32 = u_xlat48;
    let x_1718 : f32 = u_xlat48;
    u_xlat48 = (x_1717 * x_1718);
    let x_1720 : f32 = u_xlat45;
    let x_1721 : f32 = u_xlat45;
    u_xlat45 = (x_1720 * x_1721);
    let x_1723 : f32 = u_xlat48;
    u_xlat48 = max(x_1723, 0.10000000149011611938f);
    let x_1725 : f32 = u_xlat45;
    let x_1726 : f32 = u_xlat48;
    u_xlat45 = (x_1725 * x_1726);
    let x_1729 : f32 = u_xlat4.x;
    let x_1730 : f32 = u_xlat45;
    u_xlat45 = (x_1729 * x_1730);
    let x_1733 : f32 = u_xlat5.x;
    let x_1734 : f32 = u_xlat45;
    u_xlat45 = (x_1733 / x_1734);
    let x_1736 : vec4<f32> = u_xlat0;
    let x_1738 : f32 = u_xlat45;
    let x_1741 : vec3<f32> = u_xlat18;
    u_xlat9 = ((vec3<f32>(x_1736.x, x_1736.y, x_1736.z) * vec3<f32>(x_1738, x_1738, x_1738)) + x_1741);
    let x_1743 : vec3<f32> = u_xlat9;
    let x_1744 : vec4<f32> = u_xlat11;
    let x_1747 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1743 * vec3<f32>(x_1744.x, x_1744.y, x_1744.z)) + x_1747);

    continuing {
      let x_1749 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1749 + bitcast<u32>(1i));
    }
  }
  let x_1751 : vec4<f32> = u_xlat7;
  let x_1753 : vec3<f32> = u_xlat19;
  let x_1755 : vec4<f32> = u_xlat3;
  let x_1757 : vec3<f32> = ((vec3<f32>(x_1751.x, x_1751.y, x_1751.z) * x_1753) + vec3<f32>(x_1755.x, x_1755.y, x_1755.z));
  let x_1758 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1757.x, x_1757.y, x_1757.z, x_1758.w);
  let x_1760 : vec3<f32> = u_xlat22;
  let x_1761 : vec4<f32> = u_xlat0;
  let x_1763 : vec3<f32> = (x_1760 + vec3<f32>(x_1761.x, x_1761.y, x_1761.z));
  let x_1764 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1763.x, x_1763.y, x_1763.z, x_1764.w);
  let x_1766 : f32 = u_xlat44;
  let x_1767 : f32 = u_xlat44;
  u_xlat42 = (x_1766 * -(x_1767));
  let x_1770 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1770);
  let x_1772 : vec4<f32> = u_xlat0;
  let x_1776 : vec4<f32> = x_29.unity_FogColor;
  let x_1779 : vec3<f32> = (vec3<f32>(x_1772.x, x_1772.y, x_1772.z) + -(vec3<f32>(x_1776.x, x_1776.y, x_1776.z)));
  let x_1780 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1779.x, x_1779.y, x_1779.z, x_1780.w);
  let x_1784 : f32 = u_xlat42;
  let x_1786 : vec4<f32> = u_xlat0;
  let x_1790 : vec4<f32> = x_29.unity_FogColor;
  let x_1792 : vec3<f32> = ((vec3<f32>(x_1784, x_1784, x_1784) * vec3<f32>(x_1786.x, x_1786.y, x_1786.z)) + vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
  let x_1793 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1793.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


