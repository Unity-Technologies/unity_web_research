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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_128 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat44 : f32;

var<private> u_xlatu44 : u32;

var<private> u_xlati44 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

@group(1) @binding(4) var<uniform> x_555 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_736 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatu48 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati48 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_994 : AdditionalLights;

var<private> u_xlat35 : f32;

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

var<private> u_xlatu17 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var x_99 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_507 : f32;
  var x_639 : f32;
  var x_650 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1127 : f32;
  var x_1138 : f32;
  var txVec1 : vec3<f32>;
  var x_1584 : f32;
  var x_1597 : f32;
  var x_1655 : f32;
  var x_1666 : vec3<f32>;
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
  let x_57 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb15 = (x_57 == 0.0f);
  let x_64 : vec3<f32> = vs_TEXCOORD7;
  let x_69 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_64) + x_69);
  let x_72 : vec3<f32> = u_xlat2;
  let x_73 : vec3<f32> = u_xlat2;
  u_xlat29 = dot(x_72, x_73);
  let x_75 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_75);
  let x_77 : f32 = u_xlat29;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_77, x_77, x_77) * x_79);
  let x_85 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_85;
  let x_89 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_89;
  let x_94 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_94;
  let x_97 : bool = u_xlatb15;
  if (x_97) {
    let x_102 : vec3<f32> = u_xlat2;
    x_99 = x_102;
  } else {
    let x_104 : vec4<f32> = u_xlat3;
    x_99 = vec3<f32>(x_104.x, x_104.y, x_104.z);
  }
  let x_106 : vec3<f32> = x_99;
  u_xlat15 = x_106;
  let x_108 : vec3<f32> = vs_TEXCOORD3;
  let x_109 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_108, x_109);
  let x_113 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_113);
  let x_116 : vec3<f32> = u_xlat2;
  let x_118 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_116.x, x_116.x, x_116.x) * x_118);
  let x_120 : vec3<f32> = vs_TEXCOORD7;
  let x_131 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres0;
  let x_134 : vec3<f32> = (x_120 + -(vec3<f32>(x_131.x, x_131.y, x_131.z)));
  let x_135 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_138 : vec3<f32> = vs_TEXCOORD7;
  let x_140 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres1;
  let x_143 : vec3<f32> = (x_138 + -(vec3<f32>(x_140.x, x_140.y, x_140.z)));
  let x_144 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec3<f32> = vs_TEXCOORD7;
  let x_150 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_147 + -(vec3<f32>(x_150.x, x_150.y, x_150.z)));
  let x_155 : vec3<f32> = vs_TEXCOORD7;
  let x_157 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres3;
  let x_160 : vec3<f32> = (x_155 + -(vec3<f32>(x_157.x, x_157.y, x_157.z)));
  let x_161 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_163 : vec4<f32> = u_xlat3;
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_169 : vec4<f32> = u_xlat4;
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_169.x, x_169.y, x_169.z), vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_175 : vec3<f32> = u_xlat5;
  let x_176 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_175, x_176);
  let x_179 : vec4<f32> = u_xlat6;
  let x_181 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_188 : vec4<f32> = u_xlat3;
  let x_191 : vec4<f32> = x_128.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_188 < x_191);
  let x_194 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_194);
  let x_199 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_199);
  let x_203 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_203);
  let x_207 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_207);
  let x_211 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_211);
  let x_217 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_217);
  let x_221 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_221);
  let x_224 : vec4<f32> = u_xlat3;
  let x_226 : vec4<f32> = u_xlat4;
  let x_228 : vec3<f32> = (vec3<f32>(x_224.x, x_224.y, x_224.z) + vec3<f32>(x_226.y, x_226.z, x_226.w));
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat3;
  let x_234 : vec3<f32> = max(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_235.x, x_234.x, x_234.y, x_234.z);
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_238, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_244 : f32 = u_xlat44;
  u_xlat44 = (-(x_244) + 4.0f);
  let x_249 : f32 = u_xlat44;
  u_xlatu44 = u32(x_249);
  let x_253 : u32 = u_xlatu44;
  u_xlati44 = (bitcast<i32>(x_253) << bitcast<u32>(2i));
  let x_256 : vec3<f32> = vs_TEXCOORD7;
  let x_258 : i32 = u_xlati44;
  let x_261 : i32 = u_xlati44;
  let x_265 : vec4<f32> = x_128.x_MainLightWorldToShadow[((x_258 + 1i) / 4i)][((x_261 + 1i) % 4i)];
  let x_267 : vec3<f32> = (vec3<f32>(x_256.y, x_256.y, x_256.y) * vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : i32 = u_xlati44;
  let x_272 : i32 = u_xlati44;
  let x_275 : vec4<f32> = x_128.x_MainLightWorldToShadow[(x_270 / 4i)][(x_272 % 4i)];
  let x_277 : vec3<f32> = vs_TEXCOORD7;
  let x_280 : vec4<f32> = u_xlat3;
  let x_282 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_277.x, x_277.x, x_277.x)) + vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : i32 = u_xlati44;
  let x_288 : i32 = u_xlati44;
  let x_292 : vec4<f32> = x_128.x_MainLightWorldToShadow[((x_285 + 2i) / 4i)][((x_288 + 2i) % 4i)];
  let x_294 : vec3<f32> = vs_TEXCOORD7;
  let x_297 : vec4<f32> = u_xlat3;
  let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.z, x_294.z, x_294.z)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : i32 = u_xlati44;
  let x_307 : i32 = u_xlati44;
  let x_311 : vec4<f32> = x_128.x_MainLightWorldToShadow[((x_304 + 3i) / 4i)][((x_307 + 3i) % 4i)];
  let x_313 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_318 : f32 = vs_TEXCOORD7.y;
  let x_320 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat44 = (x_318 * x_320);
  let x_323 : f32 = x_29.unity_MatrixV[0i].z;
  let x_325 : f32 = vs_TEXCOORD7.x;
  let x_327 : f32 = u_xlat44;
  u_xlat44 = ((x_323 * x_325) + x_327);
  let x_330 : f32 = x_29.unity_MatrixV[2i].z;
  let x_332 : f32 = vs_TEXCOORD7.z;
  let x_334 : f32 = u_xlat44;
  u_xlat44 = ((x_330 * x_332) + x_334);
  let x_336 : f32 = u_xlat44;
  let x_338 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat44 = (x_336 + x_338);
  let x_340 : f32 = u_xlat44;
  let x_343 : f32 = x_29.x_ProjectionParams.y;
  u_xlat44 = (-(x_340) + -(x_343));
  let x_346 : f32 = u_xlat44;
  u_xlat44 = max(x_346, 0.0f);
  let x_348 : f32 = u_xlat44;
  let x_351 : f32 = x_29.unity_FogParams.x;
  u_xlat44 = (x_348 * x_351);
  let x_358 : vec4<f32> = vs_TEXCOORD0;
  let x_361 : f32 = x_29.x_GlobalMipBias.x;
  let x_362 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_358.z, x_358.w), x_361);
  u_xlat4 = x_362;
  let x_367 : vec4<f32> = vs_TEXCOORD0;
  let x_370 : f32 = x_29.x_GlobalMipBias.x;
  let x_371 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_367.z, x_367.w), x_370);
  u_xlat5 = vec3<f32>(x_371.x, x_371.y, x_371.z);
  let x_373 : vec4<f32> = u_xlat4;
  let x_377 : vec3<f32> = (vec3<f32>(x_373.x, x_373.y, x_373.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : vec3<f32> = u_xlat2;
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat45 = dot(x_381, vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : f32 = u_xlat45;
  u_xlat45 = (x_385 + 0.5f);
  let x_388 : f32 = u_xlat45;
  let x_390 : vec3<f32> = u_xlat5;
  let x_391 : vec3<f32> = (vec3<f32>(x_388, x_388, x_388) * x_390);
  let x_392 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_395 : f32 = u_xlat4.w;
  u_xlat45 = max(x_395, 0.00009999999747378752f);
  let x_398 : vec4<f32> = u_xlat4;
  let x_400 : f32 = u_xlat45;
  let x_402 : vec3<f32> = (vec3<f32>(x_398.x, x_398.y, x_398.z) / vec3<f32>(x_400, x_400, x_400));
  let x_403 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : f32 = u_xlat1;
  u_xlat45 = ((-(x_405) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_411 : f32 = u_xlat45;
  u_xlat46 = (-(x_411) + 1.0f);
  let x_414 : vec4<f32> = u_xlat0;
  let x_416 : f32 = u_xlat45;
  u_xlat5 = (vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416, x_416, x_416));
  let x_419 : vec4<f32> = u_xlat0;
  let x_423 : vec3<f32> = (vec3<f32>(x_419.x, x_419.y, x_419.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_424 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : f32 = u_xlat1;
  let x_428 : vec4<f32> = u_xlat0;
  let x_433 : vec3<f32> = ((vec3<f32>(x_426, x_426, x_426) * vec3<f32>(x_428.x, x_428.y, x_428.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_434 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_437 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_437) + 1.0f);
  let x_440 : f32 = u_xlat1;
  let x_441 : f32 = u_xlat1;
  u_xlat45 = (x_440 * x_441);
  let x_443 : f32 = u_xlat45;
  u_xlat45 = max(x_443, 0.0078125f);
  let x_447 : f32 = u_xlat45;
  let x_448 : f32 = u_xlat45;
  u_xlat47 = (x_447 * x_448);
  let x_452 : f32 = u_xlat0.w;
  let x_453 : f32 = u_xlat46;
  u_xlat42 = (x_452 + x_453);
  let x_455 : f32 = u_xlat42;
  u_xlat42 = clamp(x_455, 0.0f, 1.0f);
  let x_457 : f32 = u_xlat45;
  u_xlat46 = ((x_457 * 4.0f) + 2.0f);
  let x_461 : vec4<f32> = u_xlat3;
  let x_462 : vec2<f32> = vec2<f32>(x_461.x, x_461.y);
  let x_464 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_462.x, x_462.y, x_464);
  let x_476 : vec3<f32> = txVec0;
  let x_478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_476.xy, x_476.z);
  u_xlat3.x = x_478;
  let x_483 : f32 = x_128.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_483) + 1.0f);
  let x_487 : f32 = u_xlat3.x;
  let x_489 : f32 = x_128.x_MainLightShadowParams.x;
  let x_491 : f32 = u_xlat17;
  u_xlat3.x = ((x_487 * x_489) + x_491);
  let x_496 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_496);
  let x_500 : f32 = u_xlat3.z;
  u_xlatb31 = (x_500 >= 1.0f);
  let x_502 : bool = u_xlatb31;
  let x_503 : bool = u_xlatb17;
  u_xlatb17 = (x_502 | x_503);
  let x_505 : bool = u_xlatb17;
  if (x_505) {
    x_507 = 1.0f;
  } else {
    let x_512 : f32 = u_xlat3.x;
    x_507 = x_512;
  }
  let x_513 : f32 = x_507;
  u_xlat3.x = x_513;
  let x_515 : vec3<f32> = vs_TEXCOORD7;
  let x_517 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_519 : vec3<f32> = (x_515 + -(x_517));
  let x_520 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat6;
  let x_524 : vec4<f32> = u_xlat6;
  u_xlat17 = dot(vec3<f32>(x_522.x, x_522.y, x_522.z), vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_528 : f32 = u_xlat17;
  let x_530 : f32 = x_128.x_MainLightShadowParams.z;
  let x_533 : f32 = x_128.x_MainLightShadowParams.w;
  u_xlat31 = ((x_528 * x_530) + x_533);
  let x_535 : f32 = u_xlat31;
  u_xlat31 = clamp(x_535, 0.0f, 1.0f);
  let x_538 : f32 = u_xlat3.x;
  u_xlat6.x = (-(x_538) + 1.0f);
  let x_542 : f32 = u_xlat31;
  let x_544 : f32 = u_xlat6.x;
  let x_547 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_542 * x_544) + x_547);
  let x_557 : f32 = x_555.x_MainLightCookieTextureFormat;
  u_xlatb31 = !((x_557 == -1.0f));
  let x_559 : bool = u_xlatb31;
  if (x_559) {
    let x_562 : vec3<f32> = vs_TEXCOORD7;
    let x_565 : vec4<f32> = x_555.x_MainLightWorldToLight[1i];
    let x_567 : vec2<f32> = (vec2<f32>(x_562.y, x_562.y) * vec2<f32>(x_565.x, x_565.y));
    let x_568 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
    let x_571 : vec4<f32> = x_555.x_MainLightWorldToLight[0i];
    let x_573 : vec3<f32> = vs_TEXCOORD7;
    let x_576 : vec4<f32> = u_xlat6;
    let x_578 : vec2<f32> = ((vec2<f32>(x_571.x, x_571.y) * vec2<f32>(x_573.x, x_573.x)) + vec2<f32>(x_576.x, x_576.y));
    let x_579 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_578.x, x_578.y, x_579.z, x_579.w);
    let x_582 : vec4<f32> = x_555.x_MainLightWorldToLight[2i];
    let x_584 : vec3<f32> = vs_TEXCOORD7;
    let x_587 : vec4<f32> = u_xlat6;
    let x_589 : vec2<f32> = ((vec2<f32>(x_582.x, x_582.y) * vec2<f32>(x_584.z, x_584.z)) + vec2<f32>(x_587.x, x_587.y));
    let x_590 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
    let x_592 : vec4<f32> = u_xlat6;
    let x_595 : vec4<f32> = x_555.x_MainLightWorldToLight[3i];
    let x_597 : vec2<f32> = (vec2<f32>(x_592.x, x_592.y) + vec2<f32>(x_595.x, x_595.y));
    let x_598 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
    let x_600 : vec4<f32> = u_xlat6;
    let x_604 : vec2<f32> = ((vec2<f32>(x_600.x, x_600.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_605 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_604.x, x_604.y, x_605.z, x_605.w);
    let x_612 : vec4<f32> = u_xlat6;
    let x_615 : f32 = x_29.x_GlobalMipBias.x;
    let x_616 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_612.x, x_612.y), x_615);
    u_xlat6 = x_616;
    let x_621 : f32 = x_555.x_MainLightCookieTextureFormat;
    let x_623 : f32 = x_555.x_MainLightCookieTextureFormat;
    let x_625 : f32 = x_555.x_MainLightCookieTextureFormat;
    let x_627 : f32 = x_555.x_MainLightCookieTextureFormat;
    let x_628 : vec4<f32> = vec4<f32>(x_621, x_623, x_625, x_627);
    let x_635 : vec4<bool> = (vec4<f32>(x_628.x, x_628.y, x_628.z, x_628.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_635.x, x_635.y);
    let x_638 : bool = u_xlatb7.y;
    if (x_638) {
      let x_643 : f32 = u_xlat6.w;
      x_639 = x_643;
    } else {
      let x_646 : f32 = u_xlat6.x;
      x_639 = x_646;
    }
    let x_647 : f32 = x_639;
    u_xlat31 = x_647;
    let x_649 : bool = u_xlatb7.x;
    if (x_649) {
      let x_653 : vec4<f32> = u_xlat6;
      x_650 = vec3<f32>(x_653.x, x_653.y, x_653.z);
    } else {
      let x_656 : f32 = u_xlat31;
      x_650 = vec3<f32>(x_656, x_656, x_656);
    }
    let x_658 : vec3<f32> = x_650;
    let x_659 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_665 : vec4<f32> = u_xlat6;
  let x_668 : vec4<f32> = x_29.x_MainLightColor;
  let x_670 : vec3<f32> = (vec3<f32>(x_665.x, x_665.y, x_665.z) * vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_671 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_673 : vec3<f32> = u_xlat15;
  let x_675 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(-(x_673), x_675);
  let x_677 : f32 = u_xlat31;
  let x_678 : f32 = u_xlat31;
  u_xlat31 = (x_677 + x_678);
  let x_681 : vec3<f32> = u_xlat2;
  let x_682 : f32 = u_xlat31;
  let x_686 : vec3<f32> = u_xlat15;
  let x_688 : vec3<f32> = ((x_681 * -(vec3<f32>(x_682, x_682, x_682))) + -(x_686));
  let x_689 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec3<f32> = u_xlat2;
  let x_692 : vec3<f32> = u_xlat15;
  u_xlat31 = dot(x_691, x_692);
  let x_694 : f32 = u_xlat31;
  u_xlat31 = clamp(x_694, 0.0f, 1.0f);
  let x_696 : f32 = u_xlat31;
  u_xlat31 = (-(x_696) + 1.0f);
  let x_699 : f32 = u_xlat31;
  let x_700 : f32 = u_xlat31;
  u_xlat31 = (x_699 * x_700);
  let x_702 : f32 = u_xlat31;
  let x_703 : f32 = u_xlat31;
  u_xlat31 = (x_702 * x_703);
  let x_706 : f32 = u_xlat1;
  u_xlat48 = ((-(x_706) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_712 : f32 = u_xlat1;
  let x_713 : f32 = u_xlat48;
  u_xlat1 = (x_712 * x_713);
  let x_715 : f32 = u_xlat1;
  u_xlat1 = (x_715 * 6.0f);
  let x_726 : vec4<f32> = u_xlat7;
  let x_728 : f32 = u_xlat1;
  let x_729 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_726.x, x_726.y, x_726.z), x_728);
  u_xlat7 = x_729;
  let x_731 : f32 = u_xlat7.w;
  u_xlat1 = (x_731 + -1.0f);
  let x_738 : f32 = x_736.unity_SpecCube0_HDR.w;
  let x_739 : f32 = u_xlat1;
  u_xlat1 = ((x_738 * x_739) + 1.0f);
  let x_742 : f32 = u_xlat1;
  u_xlat1 = max(x_742, 0.0f);
  let x_744 : f32 = u_xlat1;
  u_xlat1 = log2(x_744);
  let x_746 : f32 = u_xlat1;
  let x_748 : f32 = x_736.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_746 * x_748);
  let x_750 : f32 = u_xlat1;
  u_xlat1 = exp2(x_750);
  let x_752 : f32 = u_xlat1;
  let x_754 : f32 = x_736.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_752 * x_754);
  let x_756 : vec4<f32> = u_xlat7;
  let x_758 : f32 = u_xlat1;
  let x_760 : vec3<f32> = (vec3<f32>(x_756.x, x_756.y, x_756.z) * vec3<f32>(x_758, x_758, x_758));
  let x_761 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_765 : f32 = u_xlat45;
  let x_767 : f32 = u_xlat45;
  u_xlat8 = ((vec2<f32>(x_765, x_765) * vec2<f32>(x_767, x_767)) + vec2<f32>(-1.0f, 1.0f));
  let x_773 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_773);
  let x_776 : vec4<f32> = u_xlat0;
  let x_779 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_776.x, x_776.y, x_776.z)) + vec3<f32>(x_779, x_779, x_779));
  let x_782 : f32 = u_xlat31;
  let x_784 : vec3<f32> = u_xlat22;
  let x_786 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_782, x_782, x_782) * x_784) + vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_789 : f32 = u_xlat1;
  let x_791 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_789, x_789, x_789) * x_791);
  let x_793 : vec4<f32> = u_xlat7;
  let x_795 : vec3<f32> = u_xlat22;
  let x_796 : vec3<f32> = (vec3<f32>(x_793.x, x_793.y, x_793.z) * x_795);
  let x_797 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_799 : vec4<f32> = u_xlat4;
  let x_801 : vec3<f32> = u_xlat5;
  let x_803 : vec4<f32> = u_xlat7;
  let x_805 : vec3<f32> = ((vec3<f32>(x_799.x, x_799.y, x_799.z) * x_801) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_809 : f32 = u_xlat3.x;
  let x_811 : f32 = x_736.unity_LightData.z;
  u_xlat42 = (x_809 * x_811);
  let x_813 : vec3<f32> = u_xlat2;
  let x_815 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_813, vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : f32 = u_xlat1;
  u_xlat1 = clamp(x_818, 0.0f, 1.0f);
  let x_820 : f32 = u_xlat42;
  let x_821 : f32 = u_xlat1;
  u_xlat42 = (x_820 * x_821);
  let x_823 : f32 = u_xlat42;
  let x_825 : vec4<f32> = u_xlat6;
  let x_827 : vec3<f32> = (vec3<f32>(x_823, x_823, x_823) * vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_827.x, x_828.y, x_827.y, x_827.z);
  let x_830 : vec3<f32> = u_xlat15;
  let x_832 : vec4<f32> = x_29.x_MainLightPosition;
  let x_834 : vec3<f32> = (x_830 + vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat6;
  let x_839 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_837.x, x_837.y, x_837.z), vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : f32 = u_xlat42;
  u_xlat42 = max(x_842, 1.17549435e-38f);
  let x_845 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_845);
  let x_847 : f32 = u_xlat42;
  let x_849 : vec4<f32> = u_xlat6;
  let x_851 : vec3<f32> = (vec3<f32>(x_847, x_847, x_847) * vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec3<f32> = u_xlat2;
  let x_855 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_854, vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : f32 = u_xlat42;
  u_xlat42 = clamp(x_858, 0.0f, 1.0f);
  let x_861 : vec4<f32> = x_29.x_MainLightPosition;
  let x_863 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_861.x, x_861.y, x_861.z), vec3<f32>(x_863.x, x_863.y, x_863.z));
  let x_866 : f32 = u_xlat1;
  u_xlat1 = clamp(x_866, 0.0f, 1.0f);
  let x_868 : f32 = u_xlat42;
  let x_869 : f32 = u_xlat42;
  u_xlat42 = (x_868 * x_869);
  let x_871 : f32 = u_xlat42;
  let x_873 : f32 = u_xlat8.x;
  u_xlat42 = ((x_871 * x_873) + 1.00001001358032226562f);
  let x_877 : f32 = u_xlat1;
  let x_878 : f32 = u_xlat1;
  u_xlat1 = (x_877 * x_878);
  let x_880 : f32 = u_xlat42;
  let x_881 : f32 = u_xlat42;
  u_xlat42 = (x_880 * x_881);
  let x_883 : f32 = u_xlat1;
  u_xlat1 = max(x_883, 0.10000000149011611938f);
  let x_886 : f32 = u_xlat42;
  let x_887 : f32 = u_xlat1;
  u_xlat42 = (x_886 * x_887);
  let x_889 : f32 = u_xlat46;
  let x_890 : f32 = u_xlat42;
  u_xlat42 = (x_889 * x_890);
  let x_892 : f32 = u_xlat47;
  let x_893 : f32 = u_xlat42;
  u_xlat42 = (x_892 / x_893);
  let x_895 : vec4<f32> = u_xlat0;
  let x_897 : f32 = u_xlat42;
  let x_900 : vec3<f32> = u_xlat5;
  let x_901 : vec3<f32> = ((vec3<f32>(x_895.x, x_895.y, x_895.z) * vec3<f32>(x_897, x_897, x_897)) + x_900);
  let x_902 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_905 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_907 : f32 = x_736.unity_LightData.y;
  u_xlat42 = min(x_905, x_907);
  let x_910 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_910));
  let x_913 : f32 = u_xlat17;
  let x_916 : f32 = x_128.x_AdditionalShadowFadeParams.x;
  let x_919 : f32 = x_128.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_913 * x_916) + x_919);
  let x_921 : f32 = u_xlat1;
  u_xlat1 = clamp(x_921, 0.0f, 1.0f);
  let x_924 : f32 = x_555.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_926 : f32 = x_555.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_928 : f32 = x_555.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_930 : f32 = x_555.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_931 : vec4<f32> = vec4<f32>(x_924, x_926, x_928, x_930);
  let x_937 : vec4<bool> = (vec4<f32>(x_931.x, x_931.y, x_931.z, x_931.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_937.x, x_937.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_949 : u32 = u_xlatu_loop_1;
    let x_950 : u32 = u_xlatu42;
    if ((x_949 < x_950)) {
    } else {
      break;
    }
    let x_953 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_953 >> 2u);
    let x_956 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_956 & 3u));
    let x_959 : u32 = u_xlatu48;
    let x_962 : vec4<f32> = x_736.unity_LightIndices[bitcast<i32>(x_959)];
    let x_972 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_977 : vec4<u32> = indexable[x_972];
    u_xlat48 = dot(x_962, bitcast<vec4<f32>>(x_977));
    let x_981 : f32 = u_xlat48;
    u_xlati48 = i32(x_981);
    let x_984 : vec3<f32> = vs_TEXCOORD7;
    let x_995 : i32 = u_xlati48;
    let x_997 : vec4<f32> = x_994.x_AdditionalLightsPosition[x_995];
    let x_1000 : i32 = u_xlati48;
    let x_1002 : vec4<f32> = x_994.x_AdditionalLightsPosition[x_1000];
    u_xlat9 = ((-(x_984) * vec3<f32>(x_997.w, x_997.w, x_997.w)) + vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
    let x_1006 : vec3<f32> = u_xlat9;
    let x_1007 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1006, x_1007);
    let x_1009 : f32 = u_xlat35;
    u_xlat35 = max(x_1009, 0.00006103515625f);
    let x_1013 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1013);
    let x_1016 : f32 = u_xlat49;
    let x_1018 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1016, x_1016, x_1016) * x_1018);
    let x_1021 : f32 = u_xlat35;
    u_xlat51 = (1.0f / x_1021);
    let x_1023 : f32 = u_xlat35;
    let x_1024 : i32 = u_xlati48;
    let x_1026 : f32 = x_994.x_AdditionalLightsAttenuation[x_1024].x;
    u_xlat35 = (x_1023 * x_1026);
    let x_1028 : f32 = u_xlat35;
    let x_1030 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1028) * x_1030) + 1.0f);
    let x_1033 : f32 = u_xlat35;
    u_xlat35 = max(x_1033, 0.0f);
    let x_1035 : f32 = u_xlat35;
    let x_1036 : f32 = u_xlat35;
    u_xlat35 = (x_1035 * x_1036);
    let x_1038 : f32 = u_xlat35;
    let x_1039 : f32 = u_xlat51;
    u_xlat35 = (x_1038 * x_1039);
    let x_1041 : i32 = u_xlati48;
    let x_1043 : vec4<f32> = x_994.x_AdditionalLightsSpotDir[x_1041];
    let x_1045 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1043.x, x_1043.y, x_1043.z), x_1045);
    let x_1047 : f32 = u_xlat51;
    let x_1048 : i32 = u_xlati48;
    let x_1050 : f32 = x_994.x_AdditionalLightsAttenuation[x_1048].z;
    let x_1052 : i32 = u_xlati48;
    let x_1054 : f32 = x_994.x_AdditionalLightsAttenuation[x_1052].w;
    u_xlat51 = ((x_1047 * x_1050) + x_1054);
    let x_1056 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1056, 0.0f, 1.0f);
    let x_1058 : f32 = u_xlat51;
    let x_1059 : f32 = u_xlat51;
    u_xlat51 = (x_1058 * x_1059);
    let x_1061 : f32 = u_xlat35;
    let x_1062 : f32 = u_xlat51;
    u_xlat35 = (x_1061 * x_1062);
    let x_1066 : i32 = u_xlati48;
    let x_1068 : f32 = x_128.x_AdditionalShadowParams[x_1066].w;
    u_xlati51 = i32(x_1068);
    let x_1071 : i32 = u_xlati51;
    u_xlatb52 = (x_1071 >= 0i);
    let x_1073 : bool = u_xlatb52;
    if (x_1073) {
      let x_1077 : i32 = u_xlati48;
      let x_1079 : f32 = x_128.x_AdditionalShadowParams[x_1077].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1079, x_1079, x_1079, x_1079))));
      let x_1083 : bool = u_xlatb52;
      if (x_1083) {
        let x_1087 : vec3<f32> = u_xlat10;
        let x_1090 : vec3<f32> = u_xlat10;
        let x_1093 : vec4<bool> = (abs(vec4<f32>(x_1087.z, x_1087.z, x_1087.y, x_1087.z)) >= abs(vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.x)));
        let x_1095 : vec3<bool> = vec3<bool>(x_1093.x, x_1093.y, x_1093.z);
        let x_1096 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
        let x_1099 : bool = u_xlatb11.y;
        let x_1101 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1099 & x_1101);
        let x_1103 : vec3<f32> = u_xlat10;
        let x_1106 : vec4<bool> = (-(vec4<f32>(x_1103.z, x_1103.y, x_1103.z, x_1103.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1107 : vec3<bool> = vec3<bool>(x_1106.x, x_1106.y, x_1106.w);
        let x_1108 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1107.x, x_1107.y, x_1108.z, x_1107.z);
        let x_1112 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1112);
        let x_1117 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1117);
        let x_1122 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1122);
        let x_1126 : bool = u_xlatb11.z;
        if (x_1126) {
          let x_1131 : f32 = u_xlat11.y;
          x_1127 = x_1131;
        } else {
          let x_1133 : f32 = u_xlat53;
          x_1127 = x_1133;
        }
        let x_1134 : f32 = x_1127;
        u_xlat25.x = x_1134;
        let x_1137 : bool = u_xlatb52;
        if (x_1137) {
          let x_1142 : f32 = u_xlat11.x;
          x_1138 = x_1142;
        } else {
          let x_1145 : f32 = u_xlat25.x;
          x_1138 = x_1145;
        }
        let x_1146 : f32 = x_1138;
        u_xlat52 = x_1146;
        let x_1147 : i32 = u_xlati48;
        let x_1149 : f32 = x_128.x_AdditionalShadowParams[x_1147].w;
        u_xlat11.x = trunc(x_1149);
        let x_1152 : f32 = u_xlat52;
        let x_1154 : f32 = u_xlat11.x;
        u_xlat52 = (x_1152 + x_1154);
        let x_1156 : f32 = u_xlat52;
        u_xlati51 = i32(x_1156);
      }
      let x_1158 : i32 = u_xlati51;
      u_xlati51 = (x_1158 << bitcast<u32>(2i));
      let x_1160 : vec3<f32> = vs_TEXCOORD7;
      let x_1163 : i32 = u_xlati51;
      let x_1166 : i32 = u_xlati51;
      let x_1170 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[((x_1163 + 1i) / 4i)][((x_1166 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1160.y, x_1160.y, x_1160.y, x_1160.y) * x_1170);
      let x_1172 : i32 = u_xlati51;
      let x_1174 : i32 = u_xlati51;
      let x_1177 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[(x_1172 / 4i)][(x_1174 % 4i)];
      let x_1178 : vec3<f32> = vs_TEXCOORD7;
      let x_1181 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1177 * vec4<f32>(x_1178.x, x_1178.x, x_1178.x, x_1178.x)) + x_1181);
      let x_1183 : i32 = u_xlati51;
      let x_1186 : i32 = u_xlati51;
      let x_1190 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[((x_1183 + 2i) / 4i)][((x_1186 + 2i) % 4i)];
      let x_1191 : vec3<f32> = vs_TEXCOORD7;
      let x_1194 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1190 * vec4<f32>(x_1191.z, x_1191.z, x_1191.z, x_1191.z)) + x_1194);
      let x_1196 : vec4<f32> = u_xlat11;
      let x_1197 : i32 = u_xlati51;
      let x_1200 : i32 = u_xlati51;
      let x_1204 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[((x_1197 + 3i) / 4i)][((x_1200 + 3i) % 4i)];
      u_xlat11 = (x_1196 + x_1204);
      let x_1206 : vec4<f32> = u_xlat11;
      let x_1208 : vec4<f32> = u_xlat11;
      let x_1210 : vec3<f32> = (vec3<f32>(x_1206.x, x_1206.y, x_1206.z) / vec3<f32>(x_1208.w, x_1208.w, x_1208.w));
      let x_1211 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
      let x_1214 : vec4<f32> = u_xlat11;
      let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
      let x_1217 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
      let x_1225 : vec3<f32> = txVec1;
      let x_1227 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1225.xy, x_1225.z);
      u_xlat51 = x_1227;
      let x_1228 : i32 = u_xlati48;
      let x_1230 : f32 = x_128.x_AdditionalShadowParams[x_1228].x;
      u_xlat52 = (1.0f + -(x_1230));
      let x_1233 : f32 = u_xlat51;
      let x_1234 : i32 = u_xlati48;
      let x_1236 : f32 = x_128.x_AdditionalShadowParams[x_1234].x;
      let x_1238 : f32 = u_xlat52;
      u_xlat51 = ((x_1233 * x_1236) + x_1238);
      let x_1241 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1241);
      let x_1244 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1244 >= 1.0f);
      let x_1247 : bool = u_xlatb52;
      let x_1249 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1247 | x_1249);
      let x_1251 : bool = u_xlatb52;
      let x_1252 : f32 = u_xlat51;
      u_xlat51 = select(x_1252, 1.0f, x_1251);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1255 : f32 = u_xlat51;
    u_xlat52 = (-(x_1255) + 1.0f);
    let x_1258 : f32 = u_xlat1;
    let x_1259 : f32 = u_xlat52;
    let x_1261 : f32 = u_xlat51;
    u_xlat51 = ((x_1258 * x_1259) + x_1261);
    let x_1264 : i32 = u_xlati48;
    u_xlati52 = (1i << bitcast<u32>((x_1264 & 31i)));
    let x_1268 : i32 = u_xlati52;
    let x_1271 : f32 = x_555.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1268) & bitcast<u32>(x_1271)));
    let x_1275 : i32 = u_xlati52;
    if ((x_1275 != 0i)) {
      let x_1279 : i32 = u_xlati48;
      let x_1281 : f32 = x_555.x_AdditionalLightsLightTypes[x_1279].el;
      u_xlati52 = i32(x_1281);
      let x_1284 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1284 != 0i));
      let x_1288 : i32 = u_xlati48;
      u_xlati25 = (x_1288 << bitcast<u32>(2i));
      let x_1290 : i32 = u_xlati11;
      if ((x_1290 != 0i)) {
        let x_1294 : vec3<f32> = vs_TEXCOORD7;
        let x_1296 : i32 = u_xlati25;
        let x_1299 : i32 = u_xlati25;
        let x_1303 : vec4<f32> = x_555.x_AdditionalLightsWorldToLights[((x_1296 + 1i) / 4i)][((x_1299 + 1i) % 4i)];
        let x_1305 : vec3<f32> = (vec3<f32>(x_1294.y, x_1294.y, x_1294.y) * vec3<f32>(x_1303.x, x_1303.y, x_1303.w));
        let x_1306 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1305.x, x_1306.y, x_1305.y, x_1305.z);
        let x_1308 : i32 = u_xlati25;
        let x_1310 : i32 = u_xlati25;
        let x_1313 : vec4<f32> = x_555.x_AdditionalLightsWorldToLights[(x_1308 / 4i)][(x_1310 % 4i)];
        let x_1315 : vec3<f32> = vs_TEXCOORD7;
        let x_1318 : vec4<f32> = u_xlat11;
        let x_1320 : vec3<f32> = ((vec3<f32>(x_1313.x, x_1313.y, x_1313.w) * vec3<f32>(x_1315.x, x_1315.x, x_1315.x)) + vec3<f32>(x_1318.x, x_1318.z, x_1318.w));
        let x_1321 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1320.x, x_1321.y, x_1320.y, x_1320.z);
        let x_1323 : i32 = u_xlati25;
        let x_1326 : i32 = u_xlati25;
        let x_1330 : vec4<f32> = x_555.x_AdditionalLightsWorldToLights[((x_1323 + 2i) / 4i)][((x_1326 + 2i) % 4i)];
        let x_1332 : vec3<f32> = vs_TEXCOORD7;
        let x_1335 : vec4<f32> = u_xlat11;
        let x_1337 : vec3<f32> = ((vec3<f32>(x_1330.x, x_1330.y, x_1330.w) * vec3<f32>(x_1332.z, x_1332.z, x_1332.z)) + vec3<f32>(x_1335.x, x_1335.z, x_1335.w));
        let x_1338 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1337.x, x_1338.y, x_1337.y, x_1337.z);
        let x_1340 : vec4<f32> = u_xlat11;
        let x_1342 : i32 = u_xlati25;
        let x_1345 : i32 = u_xlati25;
        let x_1349 : vec4<f32> = x_555.x_AdditionalLightsWorldToLights[((x_1342 + 3i) / 4i)][((x_1345 + 3i) % 4i)];
        let x_1351 : vec3<f32> = (vec3<f32>(x_1340.x, x_1340.z, x_1340.w) + vec3<f32>(x_1349.x, x_1349.y, x_1349.w));
        let x_1352 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1351.x, x_1352.y, x_1351.y, x_1351.z);
        let x_1354 : vec4<f32> = u_xlat11;
        let x_1356 : vec4<f32> = u_xlat11;
        let x_1358 : vec2<f32> = (vec2<f32>(x_1354.x, x_1354.z) / vec2<f32>(x_1356.w, x_1356.w));
        let x_1359 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1358.x, x_1359.y, x_1358.y, x_1359.w);
        let x_1361 : vec4<f32> = u_xlat11;
        let x_1364 : vec2<f32> = ((vec2<f32>(x_1361.x, x_1361.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1365 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1364.x, x_1365.y, x_1364.y, x_1365.w);
        let x_1367 : vec4<f32> = u_xlat11;
        let x_1371 : vec2<f32> = clamp(vec2<f32>(x_1367.x, x_1367.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1372 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1371.x, x_1372.y, x_1371.y, x_1372.w);
        let x_1374 : i32 = u_xlati48;
        let x_1376 : vec4<f32> = x_555.x_AdditionalLightsCookieAtlasUVRects[x_1374];
        let x_1378 : vec4<f32> = u_xlat11;
        let x_1381 : i32 = u_xlati48;
        let x_1383 : vec4<f32> = x_555.x_AdditionalLightsCookieAtlasUVRects[x_1381];
        let x_1385 : vec2<f32> = ((vec2<f32>(x_1376.x, x_1376.y) * vec2<f32>(x_1378.x, x_1378.z)) + vec2<f32>(x_1383.z, x_1383.w));
        let x_1386 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1385.x, x_1386.y, x_1385.y, x_1386.w);
      } else {
        let x_1389 : i32 = u_xlati52;
        u_xlatb52 = (x_1389 == 1i);
        let x_1391 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1391);
        let x_1393 : i32 = u_xlati52;
        if ((x_1393 != 0i)) {
          let x_1398 : vec3<f32> = vs_TEXCOORD7;
          let x_1400 : i32 = u_xlati25;
          let x_1403 : i32 = u_xlati25;
          let x_1407 : vec4<f32> = x_555.x_AdditionalLightsWorldToLights[((x_1400 + 1i) / 4i)][((x_1403 + 1i) % 4i)];
          let x_1409 : vec2<f32> = (vec2<f32>(x_1398.y, x_1398.y) * vec2<f32>(x_1407.x, x_1407.y));
          let x_1410 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1409.x, x_1409.y, x_1410.z, x_1410.w);
          let x_1412 : i32 = u_xlati25;
          let x_1414 : i32 = u_xlati25;
          let x_1417 : vec4<f32> = x_555.x_AdditionalLightsWorldToLights[(x_1412 / 4i)][(x_1414 % 4i)];
          let x_1419 : vec3<f32> = vs_TEXCOORD7;
          let x_1422 : vec4<f32> = u_xlat12;
          let x_1424 : vec2<f32> = ((vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(x_1419.x, x_1419.x)) + vec2<f32>(x_1422.x, x_1422.y));
          let x_1425 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1424.x, x_1424.y, x_1425.z, x_1425.w);
          let x_1427 : i32 = u_xlati25;
          let x_1430 : i32 = u_xlati25;
          let x_1434 : vec4<f32> = x_555.x_AdditionalLightsWorldToLights[((x_1427 + 2i) / 4i)][((x_1430 + 2i) % 4i)];
          let x_1436 : vec3<f32> = vs_TEXCOORD7;
          let x_1439 : vec4<f32> = u_xlat12;
          let x_1441 : vec2<f32> = ((vec2<f32>(x_1434.x, x_1434.y) * vec2<f32>(x_1436.z, x_1436.z)) + vec2<f32>(x_1439.x, x_1439.y));
          let x_1442 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1441.x, x_1441.y, x_1442.z, x_1442.w);
          let x_1444 : vec4<f32> = u_xlat12;
          let x_1446 : i32 = u_xlati25;
          let x_1449 : i32 = u_xlati25;
          let x_1453 : vec4<f32> = x_555.x_AdditionalLightsWorldToLights[((x_1446 + 3i) / 4i)][((x_1449 + 3i) % 4i)];
          let x_1455 : vec2<f32> = (vec2<f32>(x_1444.x, x_1444.y) + vec2<f32>(x_1453.x, x_1453.y));
          let x_1456 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1455.x, x_1455.y, x_1456.z, x_1456.w);
          let x_1458 : vec4<f32> = u_xlat12;
          let x_1461 : vec2<f32> = ((vec2<f32>(x_1458.x, x_1458.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1462 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1461.x, x_1461.y, x_1462.z, x_1462.w);
          let x_1464 : vec4<f32> = u_xlat12;
          let x_1466 : vec2<f32> = fract(vec2<f32>(x_1464.x, x_1464.y));
          let x_1467 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1466.x, x_1466.y, x_1467.z, x_1467.w);
          let x_1469 : i32 = u_xlati48;
          let x_1471 : vec4<f32> = x_555.x_AdditionalLightsCookieAtlasUVRects[x_1469];
          let x_1473 : vec4<f32> = u_xlat12;
          let x_1476 : i32 = u_xlati48;
          let x_1478 : vec4<f32> = x_555.x_AdditionalLightsCookieAtlasUVRects[x_1476];
          let x_1480 : vec2<f32> = ((vec2<f32>(x_1471.x, x_1471.y) * vec2<f32>(x_1473.x, x_1473.y)) + vec2<f32>(x_1478.z, x_1478.w));
          let x_1481 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1480.x, x_1481.y, x_1480.y, x_1481.w);
        } else {
          let x_1484 : vec3<f32> = vs_TEXCOORD7;
          let x_1486 : i32 = u_xlati25;
          let x_1489 : i32 = u_xlati25;
          let x_1493 : vec4<f32> = x_555.x_AdditionalLightsWorldToLights[((x_1486 + 1i) / 4i)][((x_1489 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1484.y, x_1484.y, x_1484.y, x_1484.y) * x_1493);
          let x_1495 : i32 = u_xlati25;
          let x_1497 : i32 = u_xlati25;
          let x_1500 : vec4<f32> = x_555.x_AdditionalLightsWorldToLights[(x_1495 / 4i)][(x_1497 % 4i)];
          let x_1501 : vec3<f32> = vs_TEXCOORD7;
          let x_1504 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1500 * vec4<f32>(x_1501.x, x_1501.x, x_1501.x, x_1501.x)) + x_1504);
          let x_1506 : i32 = u_xlati25;
          let x_1509 : i32 = u_xlati25;
          let x_1513 : vec4<f32> = x_555.x_AdditionalLightsWorldToLights[((x_1506 + 2i) / 4i)][((x_1509 + 2i) % 4i)];
          let x_1514 : vec3<f32> = vs_TEXCOORD7;
          let x_1517 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1513 * vec4<f32>(x_1514.z, x_1514.z, x_1514.z, x_1514.z)) + x_1517);
          let x_1519 : vec4<f32> = u_xlat12;
          let x_1520 : i32 = u_xlati25;
          let x_1523 : i32 = u_xlati25;
          let x_1527 : vec4<f32> = x_555.x_AdditionalLightsWorldToLights[((x_1520 + 3i) / 4i)][((x_1523 + 3i) % 4i)];
          u_xlat12 = (x_1519 + x_1527);
          let x_1529 : vec4<f32> = u_xlat12;
          let x_1531 : vec4<f32> = u_xlat12;
          let x_1533 : vec3<f32> = (vec3<f32>(x_1529.x, x_1529.y, x_1529.z) / vec3<f32>(x_1531.w, x_1531.w, x_1531.w));
          let x_1534 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1533.x, x_1533.y, x_1533.z, x_1534.w);
          let x_1536 : vec4<f32> = u_xlat12;
          let x_1538 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1536.x, x_1536.y, x_1536.z), vec3<f32>(x_1538.x, x_1538.y, x_1538.z));
          let x_1541 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1541);
          let x_1543 : f32 = u_xlat52;
          let x_1545 : vec4<f32> = u_xlat12;
          let x_1547 : vec3<f32> = (vec3<f32>(x_1543, x_1543, x_1543) * vec3<f32>(x_1545.x, x_1545.y, x_1545.z));
          let x_1548 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1547.x, x_1547.y, x_1547.z, x_1548.w);
          let x_1550 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1550.x, x_1550.y, x_1550.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1555 : f32 = u_xlat52;
          u_xlat52 = max(x_1555, 0.00000099999999747524f);
          let x_1558 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1558);
          let x_1561 : f32 = u_xlat52;
          let x_1563 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1561, x_1561, x_1561) * vec3<f32>(x_1563.z, x_1563.x, x_1563.y));
          let x_1567 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1567);
          let x_1571 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1571, 0.0f, 1.0f);
          let x_1576 : vec3<f32> = u_xlat13;
          let x_1578 : vec4<bool> = (vec4<f32>(x_1576.y, x_1576.y, x_1576.z, x_1576.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1579 : vec2<bool> = vec2<bool>(x_1578.x, x_1578.z);
          let x_1580 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1579.x, x_1580.y, x_1579.y);
          let x_1583 : bool = u_xlatb25.x;
          if (x_1583) {
            let x_1588 : f32 = u_xlat13.x;
            x_1584 = x_1588;
          } else {
            let x_1591 : f32 = u_xlat13.x;
            x_1584 = -(x_1591);
          }
          let x_1593 : f32 = x_1584;
          u_xlat25.x = x_1593;
          let x_1596 : bool = u_xlatb25.z;
          if (x_1596) {
            let x_1601 : f32 = u_xlat13.x;
            x_1597 = x_1601;
          } else {
            let x_1604 : f32 = u_xlat13.x;
            x_1597 = -(x_1604);
          }
          let x_1606 : f32 = x_1597;
          u_xlat25.z = x_1606;
          let x_1608 : vec4<f32> = u_xlat12;
          let x_1610 : f32 = u_xlat52;
          let x_1613 : vec3<f32> = u_xlat25;
          let x_1615 : vec2<f32> = ((vec2<f32>(x_1608.x, x_1608.y) * vec2<f32>(x_1610, x_1610)) + vec2<f32>(x_1613.x, x_1613.z));
          let x_1616 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1615.x, x_1616.y, x_1615.y);
          let x_1618 : vec3<f32> = u_xlat25;
          let x_1621 : vec2<f32> = ((vec2<f32>(x_1618.x, x_1618.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1622 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1621.x, x_1622.y, x_1621.y);
          let x_1624 : vec3<f32> = u_xlat25;
          let x_1628 : vec2<f32> = clamp(vec2<f32>(x_1624.x, x_1624.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1629 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1628.x, x_1629.y, x_1628.y);
          let x_1631 : i32 = u_xlati48;
          let x_1633 : vec4<f32> = x_555.x_AdditionalLightsCookieAtlasUVRects[x_1631];
          let x_1635 : vec3<f32> = u_xlat25;
          let x_1638 : i32 = u_xlati48;
          let x_1640 : vec4<f32> = x_555.x_AdditionalLightsCookieAtlasUVRects[x_1638];
          let x_1642 : vec2<f32> = ((vec2<f32>(x_1633.x, x_1633.y) * vec2<f32>(x_1635.x, x_1635.z)) + vec2<f32>(x_1640.z, x_1640.w));
          let x_1643 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1642.x, x_1643.y, x_1642.y, x_1643.w);
        }
      }
      let x_1650 : vec4<f32> = u_xlat11;
      let x_1652 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1650.x, x_1650.z), 0.0f);
      u_xlat11 = x_1652;
      let x_1654 : bool = u_xlatb7.y;
      if (x_1654) {
        let x_1659 : f32 = u_xlat11.w;
        x_1655 = x_1659;
      } else {
        let x_1662 : f32 = u_xlat11.x;
        x_1655 = x_1662;
      }
      let x_1663 : f32 = x_1655;
      u_xlat52 = x_1663;
      let x_1665 : bool = u_xlatb7.x;
      if (x_1665) {
        let x_1669 : vec4<f32> = u_xlat11;
        x_1666 = vec3<f32>(x_1669.x, x_1669.y, x_1669.z);
      } else {
        let x_1672 : f32 = u_xlat52;
        x_1666 = vec3<f32>(x_1672, x_1672, x_1672);
      }
      let x_1674 : vec3<f32> = x_1666;
      let x_1675 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1675.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1681 : vec4<f32> = u_xlat11;
    let x_1683 : i32 = u_xlati48;
    let x_1685 : vec4<f32> = x_994.x_AdditionalLightsColor[x_1683];
    let x_1687 : vec3<f32> = (vec3<f32>(x_1681.x, x_1681.y, x_1681.z) * vec3<f32>(x_1685.x, x_1685.y, x_1685.z));
    let x_1688 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1687.x, x_1687.y, x_1687.z, x_1688.w);
    let x_1690 : f32 = u_xlat35;
    let x_1691 : f32 = u_xlat51;
    u_xlat48 = (x_1690 * x_1691);
    let x_1693 : vec3<f32> = u_xlat2;
    let x_1694 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(x_1693, x_1694);
    let x_1696 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1696, 0.0f, 1.0f);
    let x_1698 : f32 = u_xlat48;
    let x_1699 : f32 = u_xlat35;
    u_xlat48 = (x_1698 * x_1699);
    let x_1701 : f32 = u_xlat48;
    let x_1703 : vec4<f32> = u_xlat11;
    let x_1705 : vec3<f32> = (vec3<f32>(x_1701, x_1701, x_1701) * vec3<f32>(x_1703.x, x_1703.y, x_1703.z));
    let x_1706 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1706.w);
    let x_1708 : vec3<f32> = u_xlat9;
    let x_1709 : f32 = u_xlat49;
    let x_1712 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1708 * vec3<f32>(x_1709, x_1709, x_1709)) + x_1712);
    let x_1714 : vec3<f32> = u_xlat9;
    let x_1715 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1714, x_1715);
    let x_1717 : f32 = u_xlat48;
    u_xlat48 = max(x_1717, 1.17549435e-38f);
    let x_1719 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1719);
    let x_1721 : f32 = u_xlat48;
    let x_1723 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1721, x_1721, x_1721) * x_1723);
    let x_1725 : vec3<f32> = u_xlat2;
    let x_1726 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1725, x_1726);
    let x_1728 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1728, 0.0f, 1.0f);
    let x_1730 : vec3<f32> = u_xlat10;
    let x_1731 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1730, x_1731);
    let x_1733 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1733, 0.0f, 1.0f);
    let x_1735 : f32 = u_xlat48;
    let x_1736 : f32 = u_xlat48;
    u_xlat48 = (x_1735 * x_1736);
    let x_1738 : f32 = u_xlat48;
    let x_1740 : f32 = u_xlat8.x;
    u_xlat48 = ((x_1738 * x_1740) + 1.00001001358032226562f);
    let x_1743 : f32 = u_xlat35;
    let x_1744 : f32 = u_xlat35;
    u_xlat35 = (x_1743 * x_1744);
    let x_1746 : f32 = u_xlat48;
    let x_1747 : f32 = u_xlat48;
    u_xlat48 = (x_1746 * x_1747);
    let x_1749 : f32 = u_xlat35;
    u_xlat35 = max(x_1749, 0.10000000149011611938f);
    let x_1751 : f32 = u_xlat48;
    let x_1752 : f32 = u_xlat35;
    u_xlat48 = (x_1751 * x_1752);
    let x_1754 : f32 = u_xlat46;
    let x_1755 : f32 = u_xlat48;
    u_xlat48 = (x_1754 * x_1755);
    let x_1757 : f32 = u_xlat47;
    let x_1758 : f32 = u_xlat48;
    u_xlat48 = (x_1757 / x_1758);
    let x_1760 : vec4<f32> = u_xlat0;
    let x_1762 : f32 = u_xlat48;
    let x_1765 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1760.x, x_1760.y, x_1760.z) * vec3<f32>(x_1762, x_1762, x_1762)) + x_1765);
    let x_1767 : vec3<f32> = u_xlat9;
    let x_1768 : vec4<f32> = u_xlat11;
    let x_1771 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1767 * vec3<f32>(x_1768.x, x_1768.y, x_1768.z)) + x_1771);

    continuing {
      let x_1773 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1773 + bitcast<u32>(1i));
    }
  }
  let x_1775 : vec4<f32> = u_xlat6;
  let x_1777 : vec4<f32> = u_xlat3;
  let x_1780 : vec4<f32> = u_xlat4;
  let x_1782 : vec3<f32> = ((vec3<f32>(x_1775.x, x_1775.y, x_1775.z) * vec3<f32>(x_1777.x, x_1777.z, x_1777.w)) + vec3<f32>(x_1780.x, x_1780.y, x_1780.z));
  let x_1783 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1782.x, x_1782.y, x_1782.z, x_1783.w);
  let x_1785 : vec3<f32> = u_xlat22;
  let x_1786 : vec4<f32> = u_xlat0;
  let x_1788 : vec3<f32> = (x_1785 + vec3<f32>(x_1786.x, x_1786.y, x_1786.z));
  let x_1789 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1788.x, x_1788.y, x_1788.z, x_1789.w);
  let x_1791 : f32 = u_xlat44;
  let x_1792 : f32 = u_xlat44;
  u_xlat42 = (x_1791 * -(x_1792));
  let x_1795 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1795);
  let x_1797 : vec4<f32> = u_xlat0;
  let x_1800 : vec4<f32> = x_29.unity_FogColor;
  let x_1803 : vec3<f32> = (vec3<f32>(x_1797.x, x_1797.y, x_1797.z) + -(vec3<f32>(x_1800.x, x_1800.y, x_1800.z)));
  let x_1804 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1803.x, x_1803.y, x_1803.z, x_1804.w);
  let x_1808 : f32 = u_xlat42;
  let x_1810 : vec4<f32> = u_xlat0;
  let x_1814 : vec4<f32> = x_29.unity_FogColor;
  let x_1816 : vec3<f32> = ((vec3<f32>(x_1808, x_1808, x_1808) * vec3<f32>(x_1810.x, x_1810.y, x_1810.z)) + vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
  let x_1817 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1817.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


