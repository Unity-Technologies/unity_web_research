diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
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
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Shininess : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_175 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(1) @binding(2) var<uniform> x_411 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat25 : f32;

var<private> u_xlatb25 : bool;

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlatu24 : u32;

var<private> u_xlatu27 : u32;

var<private> u_xlati28 : i32;

var<private> u_xlat27 : f32;

var<private> u_xlati27 : i32;

@group(1) @binding(1) var<uniform> x_678 : AdditionalLights;

var<private> u_xlat28 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlati29 : i32;

var<private> u_xlatb30 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu26 : u32;

var<private> u_xlatb27 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_72 : f32;
  var x_121 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_809 : f32;
  var x_819 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_53 * x_55);
  let x_62 : f32 = u_xlat1.w;
  let x_68 : f32 = x_65.x_Cutoff;
  u_xlatb0 = (x_62 >= x_68);
  let x_70 : bool = u_xlatb0;
  if (x_70) {
    let x_76 : f32 = u_xlat1.w;
    x_72 = x_76;
  } else {
    x_72 = 0.0f;
  }
  let x_79 : f32 = x_72;
  u_xlat0.x = x_79;
  let x_83 : f32 = u_xlat0.w;
  let x_85 : f32 = vs_TEXCOORD7.w;
  let x_88 : f32 = x_65.x_Cutoff;
  u_xlat8 = ((x_83 * x_85) + -(x_88));
  let x_93 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_93);
  let x_97 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_97);
  let x_99 : f32 = u_xlat24;
  let x_101 : f32 = u_xlat16;
  u_xlat16 = (abs(x_99) + abs(x_101));
  let x_104 : f32 = u_xlat16;
  u_xlat16 = max(x_104, 0.00009999999747378752f);
  let x_107 : f32 = u_xlat8;
  let x_108 : f32 = u_xlat16;
  u_xlat8 = (x_107 / x_108);
  let x_110 : f32 = u_xlat8;
  u_xlat8 = (x_110 + 0.5f);
  let x_113 : f32 = u_xlat8;
  u_xlat8 = clamp(x_113, 0.0f, 1.0f);
  let x_118 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_118 == 0.0f));
  let x_120 : bool = u_xlatb16;
  if (x_120) {
    let x_124 : f32 = u_xlat8;
    x_121 = x_124;
  } else {
    let x_127 : f32 = u_xlat0.x;
    x_121 = x_127;
  }
  let x_128 : f32 = x_121;
  u_xlat0.x = x_128;
  let x_131 : f32 = u_xlat0.x;
  u_xlat0.x = (x_131 + -0.00009999999747378752f);
  let x_136 : f32 = u_xlat0.x;
  u_xlatb0 = (x_136 < 0.0f);
  let x_138 : bool = u_xlatb0;
  if (((select(0i, 1i, x_138) * -1i) != 0i)) {
    discard;
  }
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  let x_149 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_153);
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  let x_160 : vec3<f32> = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_178 : vec4<f32> = x_175.x_CascadeShadowSplitSpheres0;
  let x_181 : vec3<f32> = (vec3<f32>(x_165.x, x_165.y, x_165.z) + -(vec3<f32>(x_178.x, x_178.y, x_178.z)));
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_185 : vec4<f32> = vs_TEXCOORD2;
  let x_189 : vec4<f32> = x_175.x_CascadeShadowSplitSpheres1;
  let x_192 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : vec4<f32> = vs_TEXCOORD2;
  let x_200 : vec4<f32> = x_175.x_CascadeShadowSplitSpheres2;
  let x_203 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) + -(vec3<f32>(x_200.x, x_200.y, x_200.z)));
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_208 : vec4<f32> = vs_TEXCOORD2;
  let x_211 : vec4<f32> = x_175.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (vec3<f32>(x_208.x, x_208.y, x_208.z) + -(vec3<f32>(x_211.x, x_211.y, x_211.z)));
  let x_215 : vec4<f32> = u_xlat3;
  let x_217 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_221 : vec4<f32> = u_xlat4;
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_221.x, x_221.y, x_221.z), vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_228 : vec4<f32> = u_xlat5;
  let x_230 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_228.x, x_228.y, x_228.z), vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_235 : vec3<f32> = u_xlat6;
  let x_236 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_235, x_236);
  let x_242 : vec4<f32> = u_xlat3;
  let x_245 : vec4<f32> = x_175.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_242 < x_245);
  let x_248 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_248);
  let x_252 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_252);
  let x_256 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_256);
  let x_260 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_260);
  let x_264 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_264);
  let x_270 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_270);
  let x_274 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_274);
  let x_277 : vec4<f32> = u_xlat3;
  let x_279 : vec4<f32> = u_xlat4;
  let x_281 : vec3<f32> = (vec3<f32>(x_277.x, x_277.y, x_277.z) + vec3<f32>(x_279.y, x_279.z, x_279.w));
  let x_282 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec4<f32> = u_xlat3;
  let x_287 : vec3<f32> = max(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_288.x, x_287.x, x_287.y, x_287.z);
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_290, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_298 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_298) + 4.0f);
  let x_305 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_305);
  let x_309 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_309) << bitcast<u32>(2i));
  let x_312 : vec4<f32> = vs_TEXCOORD2;
  let x_314 : i32 = u_xlati0;
  let x_317 : i32 = u_xlati0;
  let x_321 : vec4<f32> = x_175.x_MainLightWorldToShadow[((x_314 + 1i) / 4i)][((x_317 + 1i) % 4i)];
  let x_323 : vec3<f32> = (vec3<f32>(x_312.y, x_312.y, x_312.y) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : i32 = u_xlati0;
  let x_328 : i32 = u_xlati0;
  let x_331 : vec4<f32> = x_175.x_MainLightWorldToShadow[(x_326 / 4i)][(x_328 % 4i)];
  let x_333 : vec4<f32> = vs_TEXCOORD2;
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : vec3<f32> = ((vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(x_333.x, x_333.x, x_333.x)) + vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : i32 = u_xlati0;
  let x_344 : i32 = u_xlati0;
  let x_348 : vec4<f32> = x_175.x_MainLightWorldToShadow[((x_341 + 2i) / 4i)][((x_344 + 2i) % 4i)];
  let x_350 : vec4<f32> = vs_TEXCOORD2;
  let x_353 : vec4<f32> = u_xlat3;
  let x_355 : vec3<f32> = ((vec3<f32>(x_348.x, x_348.y, x_348.z) * vec3<f32>(x_350.z, x_350.z, x_350.z)) + vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat3;
  let x_360 : i32 = u_xlati0;
  let x_363 : i32 = u_xlati0;
  let x_367 : vec4<f32> = x_175.x_MainLightWorldToShadow[((x_360 + 3i) / 4i)][((x_363 + 3i) % 4i)];
  let x_369 : vec3<f32> = (vec3<f32>(x_358.x, x_358.y, x_358.z) + vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : f32 = hlslcc_FragCoord.w;
  let x_375 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_373 * x_375);
  let x_379 : f32 = u_xlat0.x;
  let x_382 : f32 = x_44.x_ProjectionParams.y;
  u_xlat0.x = (x_379 / x_382);
  let x_386 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_386) + 1.0f);
  let x_391 : f32 = u_xlat0.x;
  let x_393 : f32 = x_44.x_ProjectionParams.z;
  u_xlat0.x = (x_391 * x_393);
  let x_397 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_397, 0.0f);
  let x_401 : f32 = u_xlat0.x;
  let x_404 : f32 = x_44.unity_FogParams.x;
  u_xlat0.x = (x_401 * x_404);
  u_xlat2.w = 1.0f;
  let x_414 : vec4<f32> = x_411.unity_SHAr;
  let x_415 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_414, x_415);
  let x_420 : vec4<f32> = x_411.unity_SHAg;
  let x_421 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_420, x_421);
  let x_426 : vec4<f32> = x_411.unity_SHAb;
  let x_427 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_426, x_427);
  let x_430 : vec4<f32> = u_xlat2;
  let x_432 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_430.y, x_430.z, x_430.z, x_430.x) * vec4<f32>(x_432.x, x_432.y, x_432.z, x_432.z));
  let x_437 : vec4<f32> = x_411.unity_SHBr;
  let x_438 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_437, x_438);
  let x_443 : vec4<f32> = x_411.unity_SHBg;
  let x_444 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_443, x_444);
  let x_449 : vec4<f32> = x_411.unity_SHBb;
  let x_450 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_449, x_450);
  let x_454 : f32 = u_xlat2.y;
  let x_456 : f32 = u_xlat2.y;
  u_xlat24 = (x_454 * x_456);
  let x_459 : f32 = u_xlat2.x;
  let x_461 : f32 = u_xlat2.x;
  let x_463 : f32 = u_xlat24;
  u_xlat24 = ((x_459 * x_461) + -(x_463));
  let x_468 : vec4<f32> = x_411.unity_SHC;
  let x_470 : f32 = u_xlat24;
  let x_473 : vec3<f32> = u_xlat6;
  let x_474 : vec3<f32> = ((vec3<f32>(x_468.x, x_468.y, x_468.z) * vec3<f32>(x_470, x_470, x_470)) + x_473);
  let x_475 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat5;
  let x_481 : vec3<f32> = (vec3<f32>(x_477.x, x_477.y, x_477.z) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat4;
  let x_486 : vec3<f32> = max(vec3<f32>(x_484.x, x_484.y, x_484.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_487 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_491 : vec4<f32> = u_xlat3;
  let x_492 : vec2<f32> = vec2<f32>(x_491.x, x_491.y);
  let x_494 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_492.x, x_492.y, x_494);
  let x_506 : vec3<f32> = txVec0;
  let x_508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_506.xy, x_506.z);
  u_xlat24 = x_508;
  let x_512 : f32 = x_175.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_512) + 1.0f);
  let x_515 : f32 = u_xlat24;
  let x_517 : f32 = x_175.x_MainLightShadowParams.x;
  let x_519 : f32 = u_xlat25;
  u_xlat24 = ((x_515 * x_517) + x_519);
  let x_523 : f32 = u_xlat3.z;
  u_xlatb25 = (0.0f >= x_523);
  let x_527 : f32 = u_xlat3.z;
  u_xlatb26 = (x_527 >= 1.0f);
  let x_529 : bool = u_xlatb25;
  let x_530 : bool = u_xlatb26;
  u_xlatb25 = (x_529 | x_530);
  let x_532 : bool = u_xlatb25;
  let x_533 : f32 = u_xlat24;
  u_xlat24 = select(x_533, 1.0f, x_532);
  let x_535 : vec4<f32> = vs_TEXCOORD2;
  let x_539 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_541 : vec3<f32> = (vec3<f32>(x_535.x, x_535.y, x_535.z) + -(x_539));
  let x_542 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec4<f32> = u_xlat3;
  let x_546 : vec4<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_544.x, x_544.y, x_544.z), vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_550 : f32 = u_xlat25;
  let x_552 : f32 = x_175.x_MainLightShadowParams.z;
  let x_555 : f32 = x_175.x_MainLightShadowParams.w;
  u_xlat26 = ((x_550 * x_552) + x_555);
  let x_557 : f32 = u_xlat26;
  u_xlat26 = clamp(x_557, 0.0f, 1.0f);
  let x_559 : f32 = u_xlat24;
  u_xlat3.x = (-(x_559) + 1.0f);
  let x_563 : f32 = u_xlat26;
  let x_565 : f32 = u_xlat3.x;
  let x_567 : f32 = u_xlat24;
  u_xlat24 = ((x_563 * x_565) + x_567);
  let x_569 : f32 = u_xlat24;
  let x_571 : f32 = x_411.unity_LightData.z;
  u_xlat24 = (x_569 * x_571);
  let x_573 : f32 = u_xlat24;
  let x_576 : vec4<f32> = x_44.x_MainLightColor;
  let x_578 : vec3<f32> = (vec3<f32>(x_573, x_573, x_573) * vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat2;
  let x_584 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat24 = dot(vec3<f32>(x_581.x, x_581.y, x_581.z), vec3<f32>(x_584.x, x_584.y, x_584.z));
  let x_587 : f32 = u_xlat24;
  u_xlat24 = clamp(x_587, 0.0f, 1.0f);
  let x_589 : f32 = u_xlat24;
  let x_591 : vec4<f32> = u_xlat3;
  let x_593 : vec3<f32> = (vec3<f32>(x_589, x_589, x_589) * vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec4<f32> = u_xlat1;
  let x_598 : vec4<f32> = u_xlat3;
  let x_600 : vec3<f32> = (vec3<f32>(x_596.x, x_596.y, x_596.z) * vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_601 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_604 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_606 : f32 = x_411.unity_LightData.y;
  u_xlat24 = min(x_604, x_606);
  let x_609 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_609));
  let x_612 : f32 = u_xlat25;
  let x_615 : f32 = x_175.x_AdditionalShadowFadeParams.x;
  let x_618 : f32 = x_175.x_AdditionalShadowFadeParams.y;
  u_xlat25 = ((x_612 * x_615) + x_618);
  let x_620 : f32 = u_xlat25;
  u_xlat25 = clamp(x_620, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_632 : u32 = u_xlatu_loop_1;
    let x_633 : u32 = u_xlatu24;
    if ((x_632 < x_633)) {
    } else {
      break;
    }
    let x_636 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_636 >> 2u);
    let x_639 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_639 & 3u));
    let x_643 : u32 = u_xlatu27;
    let x_646 : vec4<f32> = x_411.unity_LightIndices[bitcast<i32>(x_643)];
    let x_656 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_661 : vec4<u32> = indexable[x_656];
    u_xlat27 = dot(x_646, bitcast<vec4<f32>>(x_661));
    let x_665 : f32 = u_xlat27;
    u_xlati27 = i32(x_665);
    let x_667 : vec4<f32> = vs_TEXCOORD2;
    let x_679 : i32 = u_xlati27;
    let x_681 : vec4<f32> = x_678.x_AdditionalLightsPosition[x_679];
    let x_684 : i32 = u_xlati27;
    let x_686 : vec4<f32> = x_678.x_AdditionalLightsPosition[x_684];
    u_xlat6 = ((-(vec3<f32>(x_667.x, x_667.y, x_667.z)) * vec3<f32>(x_681.w, x_681.w, x_681.w)) + vec3<f32>(x_686.x, x_686.y, x_686.z));
    let x_690 : vec3<f32> = u_xlat6;
    let x_691 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_690, x_691);
    let x_693 : f32 = u_xlat28;
    u_xlat28 = max(x_693, 0.00006103515625f);
    let x_697 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_697);
    let x_699 : f32 = u_xlat29;
    let x_701 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_699, x_699, x_699) * x_701);
    let x_703 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_703);
    let x_705 : f32 = u_xlat28;
    let x_706 : i32 = u_xlati27;
    let x_708 : f32 = x_678.x_AdditionalLightsAttenuation[x_706].x;
    u_xlat28 = (x_705 * x_708);
    let x_710 : f32 = u_xlat28;
    let x_712 : f32 = u_xlat28;
    u_xlat28 = ((-(x_710) * x_712) + 1.0f);
    let x_715 : f32 = u_xlat28;
    u_xlat28 = max(x_715, 0.0f);
    let x_717 : f32 = u_xlat28;
    let x_718 : f32 = u_xlat28;
    u_xlat28 = (x_717 * x_718);
    let x_720 : f32 = u_xlat28;
    let x_721 : f32 = u_xlat29;
    u_xlat28 = (x_720 * x_721);
    let x_723 : i32 = u_xlati27;
    let x_725 : vec4<f32> = x_678.x_AdditionalLightsSpotDir[x_723];
    let x_727 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_725.x, x_725.y, x_725.z), x_727);
    let x_729 : f32 = u_xlat29;
    let x_730 : i32 = u_xlati27;
    let x_732 : f32 = x_678.x_AdditionalLightsAttenuation[x_730].z;
    let x_734 : i32 = u_xlati27;
    let x_736 : f32 = x_678.x_AdditionalLightsAttenuation[x_734].w;
    u_xlat29 = ((x_729 * x_732) + x_736);
    let x_738 : f32 = u_xlat29;
    u_xlat29 = clamp(x_738, 0.0f, 1.0f);
    let x_740 : f32 = u_xlat29;
    let x_741 : f32 = u_xlat29;
    u_xlat29 = (x_740 * x_741);
    let x_743 : f32 = u_xlat28;
    let x_744 : f32 = u_xlat29;
    u_xlat28 = (x_743 * x_744);
    let x_748 : i32 = u_xlati27;
    let x_750 : f32 = x_175.x_AdditionalShadowParams[x_748].w;
    u_xlati29 = i32(x_750);
    let x_753 : i32 = u_xlati29;
    u_xlatb30 = (x_753 >= 0i);
    let x_755 : bool = u_xlatb30;
    if (x_755) {
      let x_759 : i32 = u_xlati27;
      let x_761 : f32 = x_175.x_AdditionalShadowParams[x_759].z;
      u_xlatb30 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_761, x_761, x_761, x_761))));
      let x_765 : bool = u_xlatb30;
      if (x_765) {
        let x_769 : vec3<f32> = u_xlat6;
        let x_772 : vec3<f32> = u_xlat6;
        let x_775 : vec4<bool> = (abs(vec4<f32>(x_769.z, x_769.z, x_769.y, x_769.z)) >= abs(vec4<f32>(x_772.x, x_772.y, x_772.x, x_772.x)));
        let x_777 : vec3<bool> = vec3<bool>(x_775.x, x_775.y, x_775.z);
        let x_778 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_777.x, x_777.y, x_777.z, x_778.w);
        let x_781 : bool = u_xlatb7.y;
        let x_783 : bool = u_xlatb7.x;
        u_xlatb30 = (x_781 & x_783);
        let x_785 : vec3<f32> = u_xlat6;
        let x_788 : vec4<bool> = (-(vec4<f32>(x_785.z, x_785.y, x_785.z, x_785.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_789 : vec3<bool> = vec3<bool>(x_788.x, x_788.y, x_788.w);
        let x_790 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_789.x, x_789.y, x_790.z, x_789.z);
        let x_794 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_794);
        let x_799 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_799);
        let x_804 : bool = u_xlatb7.w;
        u_xlat31 = select(0.0f, 1.0f, x_804);
        let x_808 : bool = u_xlatb7.z;
        if (x_808) {
          let x_813 : f32 = u_xlat7.y;
          x_809 = x_813;
        } else {
          let x_815 : f32 = u_xlat31;
          x_809 = x_815;
        }
        let x_816 : f32 = x_809;
        u_xlat15 = x_816;
        let x_818 : bool = u_xlatb30;
        if (x_818) {
          let x_823 : f32 = u_xlat7.x;
          x_819 = x_823;
        } else {
          let x_825 : f32 = u_xlat15;
          x_819 = x_825;
        }
        let x_826 : f32 = x_819;
        u_xlat30 = x_826;
        let x_827 : i32 = u_xlati27;
        let x_829 : f32 = x_175.x_AdditionalShadowParams[x_827].w;
        u_xlat7.x = trunc(x_829);
        let x_832 : f32 = u_xlat30;
        let x_834 : f32 = u_xlat7.x;
        u_xlat30 = (x_832 + x_834);
        let x_836 : f32 = u_xlat30;
        u_xlati29 = i32(x_836);
      }
      let x_838 : i32 = u_xlati29;
      u_xlati29 = (x_838 << bitcast<u32>(2i));
      let x_840 : vec4<f32> = vs_TEXCOORD2;
      let x_843 : i32 = u_xlati29;
      let x_846 : i32 = u_xlati29;
      let x_850 : vec4<f32> = x_175.x_AdditionalLightsWorldToShadow[((x_843 + 1i) / 4i)][((x_846 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_840.y, x_840.y, x_840.y, x_840.y) * x_850);
      let x_852 : i32 = u_xlati29;
      let x_854 : i32 = u_xlati29;
      let x_857 : vec4<f32> = x_175.x_AdditionalLightsWorldToShadow[(x_852 / 4i)][(x_854 % 4i)];
      let x_858 : vec4<f32> = vs_TEXCOORD2;
      let x_861 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_857 * vec4<f32>(x_858.x, x_858.x, x_858.x, x_858.x)) + x_861);
      let x_863 : i32 = u_xlati29;
      let x_866 : i32 = u_xlati29;
      let x_870 : vec4<f32> = x_175.x_AdditionalLightsWorldToShadow[((x_863 + 2i) / 4i)][((x_866 + 2i) % 4i)];
      let x_871 : vec4<f32> = vs_TEXCOORD2;
      let x_874 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_870 * vec4<f32>(x_871.z, x_871.z, x_871.z, x_871.z)) + x_874);
      let x_876 : vec4<f32> = u_xlat7;
      let x_877 : i32 = u_xlati29;
      let x_880 : i32 = u_xlati29;
      let x_884 : vec4<f32> = x_175.x_AdditionalLightsWorldToShadow[((x_877 + 3i) / 4i)][((x_880 + 3i) % 4i)];
      u_xlat7 = (x_876 + x_884);
      let x_886 : vec4<f32> = u_xlat7;
      let x_888 : vec4<f32> = u_xlat7;
      let x_890 : vec3<f32> = (vec3<f32>(x_886.x, x_886.y, x_886.z) / vec3<f32>(x_888.w, x_888.w, x_888.w));
      let x_891 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
      let x_894 : vec4<f32> = u_xlat7;
      let x_895 : vec2<f32> = vec2<f32>(x_894.x, x_894.y);
      let x_897 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_895.x, x_895.y, x_897);
      let x_905 : vec3<f32> = txVec1;
      let x_907 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_905.xy, x_905.z);
      u_xlat29 = x_907;
      let x_908 : i32 = u_xlati27;
      let x_910 : f32 = x_175.x_AdditionalShadowParams[x_908].x;
      u_xlat30 = (1.0f + -(x_910));
      let x_913 : f32 = u_xlat29;
      let x_914 : i32 = u_xlati27;
      let x_916 : f32 = x_175.x_AdditionalShadowParams[x_914].x;
      let x_918 : f32 = u_xlat30;
      u_xlat29 = ((x_913 * x_916) + x_918);
      let x_921 : f32 = u_xlat7.z;
      u_xlatb30 = (0.0f >= x_921);
      let x_924 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_924 >= 1.0f);
      let x_927 : bool = u_xlatb30;
      let x_929 : bool = u_xlatb7.x;
      u_xlatb30 = (x_927 | x_929);
      let x_931 : bool = u_xlatb30;
      let x_932 : f32 = u_xlat29;
      u_xlat29 = select(x_932, 1.0f, x_931);
    } else {
      u_xlat29 = 1.0f;
    }
    let x_935 : f32 = u_xlat29;
    u_xlat30 = (-(x_935) + 1.0f);
    let x_938 : f32 = u_xlat25;
    let x_939 : f32 = u_xlat30;
    let x_941 : f32 = u_xlat29;
    u_xlat29 = ((x_938 * x_939) + x_941);
    let x_943 : f32 = u_xlat28;
    let x_944 : f32 = u_xlat29;
    u_xlat28 = (x_943 * x_944);
    let x_946 : f32 = u_xlat28;
    let x_948 : i32 = u_xlati27;
    let x_950 : vec4<f32> = x_678.x_AdditionalLightsColor[x_948];
    let x_952 : vec3<f32> = (vec3<f32>(x_946, x_946, x_946) * vec3<f32>(x_950.x, x_950.y, x_950.z));
    let x_953 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
    let x_955 : vec4<f32> = u_xlat2;
    let x_957 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_955.x, x_955.y, x_955.z), x_957);
    let x_959 : f32 = u_xlat27;
    u_xlat27 = clamp(x_959, 0.0f, 1.0f);
    let x_961 : f32 = u_xlat27;
    let x_963 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_961, x_961, x_961) * vec3<f32>(x_963.x, x_963.y, x_963.z));
    let x_966 : vec3<f32> = u_xlat6;
    let x_967 : vec4<f32> = u_xlat1;
    let x_970 : vec4<f32> = u_xlat5;
    let x_972 : vec3<f32> = ((x_966 * vec3<f32>(x_967.x, x_967.y, x_967.z)) + vec3<f32>(x_970.x, x_970.y, x_970.z));
    let x_973 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);

    continuing {
      let x_975 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_975 + bitcast<u32>(1i));
    }
  }
  let x_977 : vec4<f32> = u_xlat4;
  let x_979 : vec4<f32> = u_xlat1;
  let x_982 : vec4<f32> = u_xlat3;
  let x_984 : vec3<f32> = ((vec3<f32>(x_977.x, x_977.y, x_977.z) * vec3<f32>(x_979.x, x_979.y, x_979.z)) + vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_985 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_987 : vec4<f32> = u_xlat5;
  let x_989 : vec4<f32> = u_xlat1;
  let x_991 : vec3<f32> = (vec3<f32>(x_987.x, x_987.y, x_987.z) + vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_995 : f32 = u_xlat0.x;
  let x_997 : f32 = u_xlat0.x;
  u_xlat0.x = (x_995 * -(x_997));
  let x_1002 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1002);
  let x_1005 : vec4<f32> = u_xlat1;
  let x_1008 : vec4<f32> = x_44.unity_FogColor;
  let x_1011 : vec3<f32> = (vec3<f32>(x_1005.x, x_1005.y, x_1005.z) + -(vec3<f32>(x_1008.x, x_1008.y, x_1008.z)));
  let x_1012 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
  let x_1016 : vec4<f32> = u_xlat0;
  let x_1018 : vec4<f32> = u_xlat1;
  let x_1022 : vec4<f32> = x_44.unity_FogColor;
  let x_1024 : vec3<f32> = ((vec3<f32>(x_1016.x, x_1016.x, x_1016.x) * vec3<f32>(x_1018.x, x_1018.y, x_1018.z)) + vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1025 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
  let x_1027 : bool = u_xlatb16;
  let x_1028 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_1028, x_1027);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}


