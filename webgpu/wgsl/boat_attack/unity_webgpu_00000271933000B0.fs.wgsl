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

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicTex : sampler;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_108 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat16 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

@group(1) @binding(4) var<uniform> x_503 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_697 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_958 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu16 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_452 : f32;
  var x_587 : f32;
  var x_598 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1090 : f32;
  var x_1100 : f32;
  var txVec1 : vec3<f32>;
  var x_1530 : f32;
  var x_1543 : f32;
  var x_1601 : f32;
  var x_1612 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0.x = x_36.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 == 0.0f);
  let x_47 : bool = u_xlatb0;
  if (((select(0i, 1i, x_47) * -1i) != 0i)) {
    discard;
  }
  let x_61 : vec4<f32> = vs_TEXCOORD0;
  let x_64 : f32 = x_28.x_GlobalMipBias.x;
  let x_65 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_61.x, x_61.y), x_64);
  u_xlat0 = x_65;
  let x_72 : vec4<f32> = vs_TEXCOORD0;
  let x_75 : f32 = x_28.x_GlobalMipBias.x;
  let x_76 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_72.x, x_72.y), x_75);
  u_xlat1 = x_76.x;
  let x_81 : vec4<f32> = vs_TEXCOORD3;
  let x_83 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_88 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat15;
  let x_93 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_91.x, x_91.x, x_91.x) * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_99 : vec3<f32> = vs_TEXCOORD7;
  let x_111 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres0;
  let x_114 : vec3<f32> = (x_99 + -(vec3<f32>(x_111.x, x_111.y, x_111.z)));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_118 : vec3<f32> = vs_TEXCOORD7;
  let x_121 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres1;
  let x_124 : vec3<f32> = (x_118 + -(vec3<f32>(x_121.x, x_121.y, x_121.z)));
  let x_125 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_128 : vec3<f32> = vs_TEXCOORD7;
  let x_131 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_128 + -(vec3<f32>(x_131.x, x_131.y, x_131.z)));
  let x_136 : vec3<f32> = vs_TEXCOORD7;
  let x_139 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres3;
  let x_142 : vec3<f32> = (x_136 + -(vec3<f32>(x_139.x, x_139.y, x_139.z)));
  let x_143 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_145 : vec4<f32> = u_xlat2;
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_145.x, x_145.y, x_145.z), vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_151 : vec4<f32> = u_xlat3;
  let x_153 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_151.x, x_151.y, x_151.z), vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_158 : vec3<f32> = u_xlat4;
  let x_159 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_158, x_159);
  let x_163 : vec4<f32> = u_xlat5;
  let x_165 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_173 : vec4<f32> = u_xlat2;
  let x_176 : vec4<f32> = x_108.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_173 < x_176);
  let x_179 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_179);
  let x_184 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_184);
  let x_188 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_188);
  let x_192 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_192);
  let x_196 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_196);
  let x_202 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_202);
  let x_206 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_206);
  let x_209 : vec4<f32> = u_xlat2;
  let x_211 : vec4<f32> = u_xlat3;
  let x_213 : vec3<f32> = (vec3<f32>(x_209.x, x_209.y, x_209.z) + vec3<f32>(x_211.y, x_211.z, x_211.w));
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_216 : vec4<f32> = u_xlat2;
  let x_219 : vec3<f32> = max(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_220 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_220.x, x_219.x, x_219.y, x_219.z);
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_222, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_230 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_230) + 4.0f);
  let x_237 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_237);
  let x_241 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_241) << bitcast<u32>(2i));
  let x_245 : vec3<f32> = vs_TEXCOORD7;
  let x_247 : i32 = u_xlati2;
  let x_250 : i32 = u_xlati2;
  let x_254 : vec4<f32> = x_108.x_MainLightWorldToShadow[((x_247 + 1i) / 4i)][((x_250 + 1i) % 4i)];
  u_xlat16 = (vec3<f32>(x_245.y, x_245.y, x_245.y) * vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : i32 = u_xlati2;
  let x_259 : i32 = u_xlati2;
  let x_262 : vec4<f32> = x_108.x_MainLightWorldToShadow[(x_257 / 4i)][(x_259 % 4i)];
  let x_264 : vec3<f32> = vs_TEXCOORD7;
  let x_267 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(x_264.x, x_264.x, x_264.x)) + x_267);
  let x_269 : i32 = u_xlati2;
  let x_272 : i32 = u_xlati2;
  let x_276 : vec4<f32> = x_108.x_MainLightWorldToShadow[((x_269 + 2i) / 4i)][((x_272 + 2i) % 4i)];
  let x_278 : vec3<f32> = vs_TEXCOORD7;
  let x_281 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_276.x, x_276.y, x_276.z) * vec3<f32>(x_278.z, x_278.z, x_278.z)) + x_281);
  let x_283 : vec3<f32> = u_xlat16;
  let x_284 : i32 = u_xlati2;
  let x_287 : i32 = u_xlati2;
  let x_291 : vec4<f32> = x_108.x_MainLightWorldToShadow[((x_284 + 3i) / 4i)][((x_287 + 3i) % 4i)];
  let x_293 : vec3<f32> = (x_283 + vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_301 : vec4<f32> = vs_TEXCOORD0;
  let x_304 : f32 = x_28.x_GlobalMipBias.x;
  let x_305 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_301.z, x_301.w), x_304);
  u_xlat3 = x_305;
  let x_310 : vec4<f32> = vs_TEXCOORD0;
  let x_313 : f32 = x_28.x_GlobalMipBias.x;
  let x_314 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_310.z, x_310.w), x_313);
  u_xlat4 = vec3<f32>(x_314.x, x_314.y, x_314.z);
  let x_316 : vec4<f32> = u_xlat3;
  let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_321 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_324 : vec3<f32> = u_xlat15;
  let x_325 : vec4<f32> = u_xlat3;
  u_xlat44 = dot(x_324, vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : f32 = u_xlat44;
  u_xlat44 = (x_328 + 0.5f);
  let x_331 : f32 = u_xlat44;
  let x_333 : vec3<f32> = u_xlat4;
  let x_334 : vec3<f32> = (vec3<f32>(x_331, x_331, x_331) * x_333);
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : f32 = u_xlat3.w;
  u_xlat44 = max(x_338, 0.00009999999747378752f);
  let x_341 : vec4<f32> = u_xlat3;
  let x_343 : f32 = u_xlat44;
  let x_345 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) / vec3<f32>(x_343, x_343, x_343));
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : f32 = u_xlat1;
  u_xlat44 = ((-(x_348) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_354 : f32 = u_xlat44;
  u_xlat45 = (-(x_354) + 1.0f);
  let x_357 : vec4<f32> = u_xlat0;
  let x_359 : f32 = u_xlat44;
  u_xlat4 = (vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359, x_359, x_359));
  let x_362 : vec4<f32> = u_xlat0;
  let x_366 : vec3<f32> = (vec3<f32>(x_362.x, x_362.y, x_362.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_367 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : f32 = u_xlat1;
  let x_371 : vec4<f32> = u_xlat0;
  let x_376 : vec3<f32> = ((vec3<f32>(x_369, x_369, x_369) * vec3<f32>(x_371.x, x_371.y, x_371.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_377 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_380) + 1.0f);
  let x_383 : f32 = u_xlat1;
  let x_384 : f32 = u_xlat1;
  u_xlat44 = (x_383 * x_384);
  let x_386 : f32 = u_xlat44;
  u_xlat44 = max(x_386, 0.0078125f);
  let x_390 : f32 = u_xlat44;
  let x_391 : f32 = u_xlat44;
  u_xlat46 = (x_390 * x_391);
  let x_395 : f32 = u_xlat0.w;
  let x_396 : f32 = u_xlat45;
  u_xlat42 = (x_395 + x_396);
  let x_398 : f32 = u_xlat42;
  u_xlat42 = clamp(x_398, 0.0f, 1.0f);
  let x_400 : f32 = u_xlat44;
  u_xlat45 = ((x_400 * 4.0f) + 2.0f);
  let x_405 : vec4<f32> = u_xlat2;
  let x_406 : vec2<f32> = vec2<f32>(x_405.x, x_405.y);
  let x_408 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_406.x, x_406.y, x_408);
  let x_420 : vec3<f32> = txVec0;
  let x_422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_420.xy, x_420.z);
  u_xlat2.x = x_422;
  let x_426 : f32 = x_108.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_426) + 1.0f);
  let x_431 : f32 = u_xlat2.x;
  let x_433 : f32 = x_108.x_MainLightShadowParams.x;
  let x_436 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_431 * x_433) + x_436);
  let x_441 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_441);
  let x_445 : f32 = u_xlat2.z;
  u_xlatb30 = (x_445 >= 1.0f);
  let x_447 : bool = u_xlatb30;
  let x_448 : bool = u_xlatb16;
  u_xlatb16 = (x_447 | x_448);
  let x_450 : bool = u_xlatb16;
  if (x_450) {
    x_452 = 1.0f;
  } else {
    let x_457 : f32 = u_xlat2.x;
    x_452 = x_457;
  }
  let x_458 : f32 = x_452;
  u_xlat2.x = x_458;
  let x_460 : vec3<f32> = vs_TEXCOORD7;
  let x_463 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_465 : vec3<f32> = (x_460 + -(x_463));
  let x_466 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat5;
  let x_470 : vec4<f32> = u_xlat5;
  u_xlat16.x = dot(vec3<f32>(x_468.x, x_468.y, x_468.z), vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_476 : f32 = u_xlat16.x;
  let x_478 : f32 = x_108.x_MainLightShadowParams.z;
  let x_481 : f32 = x_108.x_MainLightShadowParams.w;
  u_xlat30 = ((x_476 * x_478) + x_481);
  let x_483 : f32 = u_xlat30;
  u_xlat30 = clamp(x_483, 0.0f, 1.0f);
  let x_486 : f32 = u_xlat2.x;
  u_xlat5.x = (-(x_486) + 1.0f);
  let x_490 : f32 = u_xlat30;
  let x_492 : f32 = u_xlat5.x;
  let x_495 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_490 * x_492) + x_495);
  let x_505 : f32 = x_503.x_MainLightCookieTextureFormat;
  u_xlatb30 = !((x_505 == -1.0f));
  let x_507 : bool = u_xlatb30;
  if (x_507) {
    let x_510 : vec3<f32> = vs_TEXCOORD7;
    let x_513 : vec4<f32> = x_503.x_MainLightWorldToLight[1i];
    let x_515 : vec2<f32> = (vec2<f32>(x_510.y, x_510.y) * vec2<f32>(x_513.x, x_513.y));
    let x_516 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
    let x_519 : vec4<f32> = x_503.x_MainLightWorldToLight[0i];
    let x_521 : vec3<f32> = vs_TEXCOORD7;
    let x_524 : vec4<f32> = u_xlat5;
    let x_526 : vec2<f32> = ((vec2<f32>(x_519.x, x_519.y) * vec2<f32>(x_521.x, x_521.x)) + vec2<f32>(x_524.x, x_524.y));
    let x_527 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
    let x_530 : vec4<f32> = x_503.x_MainLightWorldToLight[2i];
    let x_532 : vec3<f32> = vs_TEXCOORD7;
    let x_535 : vec4<f32> = u_xlat5;
    let x_537 : vec2<f32> = ((vec2<f32>(x_530.x, x_530.y) * vec2<f32>(x_532.z, x_532.z)) + vec2<f32>(x_535.x, x_535.y));
    let x_538 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
    let x_540 : vec4<f32> = u_xlat5;
    let x_543 : vec4<f32> = x_503.x_MainLightWorldToLight[3i];
    let x_545 : vec2<f32> = (vec2<f32>(x_540.x, x_540.y) + vec2<f32>(x_543.x, x_543.y));
    let x_546 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
    let x_548 : vec4<f32> = u_xlat5;
    let x_552 : vec2<f32> = ((vec2<f32>(x_548.x, x_548.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_553 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
    let x_560 : vec4<f32> = u_xlat5;
    let x_563 : f32 = x_28.x_GlobalMipBias.x;
    let x_564 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_560.x, x_560.y), x_563);
    u_xlat5 = x_564;
    let x_569 : f32 = x_503.x_MainLightCookieTextureFormat;
    let x_571 : f32 = x_503.x_MainLightCookieTextureFormat;
    let x_573 : f32 = x_503.x_MainLightCookieTextureFormat;
    let x_575 : f32 = x_503.x_MainLightCookieTextureFormat;
    let x_576 : vec4<f32> = vec4<f32>(x_569, x_571, x_573, x_575);
    let x_583 : vec4<bool> = (vec4<f32>(x_576.x, x_576.y, x_576.z, x_576.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_583.x, x_583.y);
    let x_586 : bool = u_xlatb6.y;
    if (x_586) {
      let x_591 : f32 = u_xlat5.w;
      x_587 = x_591;
    } else {
      let x_594 : f32 = u_xlat5.x;
      x_587 = x_594;
    }
    let x_595 : f32 = x_587;
    u_xlat30 = x_595;
    let x_597 : bool = u_xlatb6.x;
    if (x_597) {
      let x_601 : vec4<f32> = u_xlat5;
      x_598 = vec3<f32>(x_601.x, x_601.y, x_601.z);
    } else {
      let x_604 : f32 = u_xlat30;
      x_598 = vec3<f32>(x_604, x_604, x_604);
    }
    let x_606 : vec3<f32> = x_598;
    let x_607 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_613 : vec4<f32> = u_xlat5;
  let x_616 : vec4<f32> = x_28.x_MainLightColor;
  let x_618 : vec3<f32> = (vec3<f32>(x_613.x, x_613.y, x_613.z) * vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_619 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_624 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_624;
  let x_628 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_628;
  let x_632 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_632;
  let x_634 : vec3<f32> = u_xlat6;
  let x_636 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(-(x_634), x_636);
  let x_638 : f32 = u_xlat30;
  let x_639 : f32 = u_xlat30;
  u_xlat30 = (x_638 + x_639);
  let x_642 : vec3<f32> = u_xlat15;
  let x_643 : f32 = u_xlat30;
  let x_647 : vec3<f32> = u_xlat6;
  let x_649 : vec3<f32> = ((x_642 * -(vec3<f32>(x_643, x_643, x_643))) + -(x_647));
  let x_650 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec3<f32> = u_xlat15;
  let x_653 : vec3<f32> = u_xlat6;
  u_xlat30 = dot(x_652, x_653);
  let x_655 : f32 = u_xlat30;
  u_xlat30 = clamp(x_655, 0.0f, 1.0f);
  let x_657 : f32 = u_xlat30;
  u_xlat30 = (-(x_657) + 1.0f);
  let x_660 : f32 = u_xlat30;
  let x_661 : f32 = u_xlat30;
  u_xlat30 = (x_660 * x_661);
  let x_663 : f32 = u_xlat30;
  let x_664 : f32 = u_xlat30;
  u_xlat30 = (x_663 * x_664);
  let x_667 : f32 = u_xlat1;
  u_xlat47 = ((-(x_667) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_673 : f32 = u_xlat1;
  let x_674 : f32 = u_xlat47;
  u_xlat1 = (x_673 * x_674);
  let x_676 : f32 = u_xlat1;
  u_xlat1 = (x_676 * 6.0f);
  let x_687 : vec4<f32> = u_xlat7;
  let x_689 : f32 = u_xlat1;
  let x_690 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_687.x, x_687.y, x_687.z), x_689);
  u_xlat7 = x_690;
  let x_692 : f32 = u_xlat7.w;
  u_xlat1 = (x_692 + -1.0f);
  let x_699 : f32 = x_697.unity_SpecCube0_HDR.w;
  let x_700 : f32 = u_xlat1;
  u_xlat1 = ((x_699 * x_700) + 1.0f);
  let x_703 : f32 = u_xlat1;
  u_xlat1 = max(x_703, 0.0f);
  let x_705 : f32 = u_xlat1;
  u_xlat1 = log2(x_705);
  let x_707 : f32 = u_xlat1;
  let x_709 : f32 = x_697.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_707 * x_709);
  let x_711 : f32 = u_xlat1;
  u_xlat1 = exp2(x_711);
  let x_713 : f32 = u_xlat1;
  let x_715 : f32 = x_697.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_713 * x_715);
  let x_717 : vec4<f32> = u_xlat7;
  let x_719 : f32 = u_xlat1;
  let x_721 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) * vec3<f32>(x_719, x_719, x_719));
  let x_722 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_726 : f32 = u_xlat44;
  let x_728 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_726, x_726) * vec2<f32>(x_728, x_728)) + vec2<f32>(-1.0f, 1.0f));
  let x_734 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_734);
  let x_737 : vec4<f32> = u_xlat0;
  let x_740 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_737.x, x_737.y, x_737.z)) + vec3<f32>(x_740, x_740, x_740));
  let x_743 : f32 = u_xlat30;
  let x_745 : vec3<f32> = u_xlat22;
  let x_747 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_743, x_743, x_743) * x_745) + vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : f32 = u_xlat1;
  let x_752 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_750, x_750, x_750) * x_752);
  let x_754 : vec4<f32> = u_xlat7;
  let x_756 : vec3<f32> = u_xlat22;
  let x_757 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) * x_756);
  let x_758 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat3;
  let x_762 : vec3<f32> = u_xlat4;
  let x_764 : vec4<f32> = u_xlat7;
  let x_766 : vec3<f32> = ((vec3<f32>(x_760.x, x_760.y, x_760.z) * x_762) + vec3<f32>(x_764.x, x_764.y, x_764.z));
  let x_767 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_770 : f32 = u_xlat2.x;
  let x_772 : f32 = x_697.unity_LightData.z;
  u_xlat42 = (x_770 * x_772);
  let x_774 : vec3<f32> = u_xlat15;
  let x_776 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1 = dot(x_774, vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : f32 = u_xlat1;
  u_xlat1 = clamp(x_779, 0.0f, 1.0f);
  let x_781 : f32 = u_xlat42;
  let x_782 : f32 = u_xlat1;
  u_xlat42 = (x_781 * x_782);
  let x_784 : f32 = u_xlat42;
  let x_786 : vec4<f32> = u_xlat5;
  let x_788 : vec3<f32> = (vec3<f32>(x_784, x_784, x_784) * vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_789 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_788.x, x_789.y, x_788.y, x_788.z);
  let x_791 : vec3<f32> = u_xlat6;
  let x_793 : vec4<f32> = x_28.x_MainLightPosition;
  let x_795 : vec3<f32> = (x_791 + vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat5;
  let x_800 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(vec3<f32>(x_798.x, x_798.y, x_798.z), vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_803 : f32 = u_xlat42;
  u_xlat42 = max(x_803, 1.17549435e-38f);
  let x_806 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_806);
  let x_808 : f32 = u_xlat42;
  let x_810 : vec4<f32> = u_xlat5;
  let x_812 : vec3<f32> = (vec3<f32>(x_808, x_808, x_808) * vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_815 : vec3<f32> = u_xlat15;
  let x_816 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(x_815, vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : f32 = u_xlat42;
  u_xlat42 = clamp(x_819, 0.0f, 1.0f);
  let x_822 : vec4<f32> = x_28.x_MainLightPosition;
  let x_824 : vec4<f32> = u_xlat5;
  u_xlat1 = dot(vec3<f32>(x_822.x, x_822.y, x_822.z), vec3<f32>(x_824.x, x_824.y, x_824.z));
  let x_827 : f32 = u_xlat1;
  u_xlat1 = clamp(x_827, 0.0f, 1.0f);
  let x_829 : f32 = u_xlat42;
  let x_830 : f32 = u_xlat42;
  u_xlat42 = (x_829 * x_830);
  let x_832 : f32 = u_xlat42;
  let x_834 : f32 = u_xlat8.x;
  u_xlat42 = ((x_832 * x_834) + 1.00001001358032226562f);
  let x_838 : f32 = u_xlat1;
  let x_839 : f32 = u_xlat1;
  u_xlat1 = (x_838 * x_839);
  let x_841 : f32 = u_xlat42;
  let x_842 : f32 = u_xlat42;
  u_xlat42 = (x_841 * x_842);
  let x_844 : f32 = u_xlat1;
  u_xlat1 = max(x_844, 0.10000000149011611938f);
  let x_847 : f32 = u_xlat42;
  let x_848 : f32 = u_xlat1;
  u_xlat42 = (x_847 * x_848);
  let x_850 : f32 = u_xlat45;
  let x_851 : f32 = u_xlat42;
  u_xlat42 = (x_850 * x_851);
  let x_853 : f32 = u_xlat46;
  let x_854 : f32 = u_xlat42;
  u_xlat42 = (x_853 / x_854);
  let x_856 : vec4<f32> = u_xlat0;
  let x_858 : f32 = u_xlat42;
  let x_861 : vec3<f32> = u_xlat4;
  let x_862 : vec3<f32> = ((vec3<f32>(x_856.x, x_856.y, x_856.z) * vec3<f32>(x_858, x_858, x_858)) + x_861);
  let x_863 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_866 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_868 : f32 = x_697.unity_LightData.y;
  u_xlat42 = min(x_866, x_868);
  let x_871 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_871));
  let x_875 : f32 = u_xlat16.x;
  let x_878 : f32 = x_108.x_AdditionalShadowFadeParams.x;
  let x_881 : f32 = x_108.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_875 * x_878) + x_881);
  let x_883 : f32 = u_xlat1;
  u_xlat1 = clamp(x_883, 0.0f, 1.0f);
  let x_887 : f32 = x_503.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_889 : f32 = x_503.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_891 : f32 = x_503.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_893 : f32 = x_503.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_894 : vec4<f32> = vec4<f32>(x_887, x_889, x_891, x_893);
  let x_900 : vec4<bool> = (vec4<f32>(x_894.x, x_894.y, x_894.z, x_894.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_900.x, x_900.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_912 : u32 = u_xlatu_loop_1;
    let x_913 : u32 = u_xlatu42;
    if ((x_912 < x_913)) {
    } else {
      break;
    }
    let x_916 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_916 >> 2u);
    let x_919 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_919 & 3u));
    let x_923 : u32 = u_xlatu47;
    let x_926 : vec4<f32> = x_697.unity_LightIndices[bitcast<i32>(x_923)];
    let x_936 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_941 : vec4<u32> = indexable[x_936];
    u_xlat47 = dot(x_926, bitcast<vec4<f32>>(x_941));
    let x_945 : f32 = u_xlat47;
    u_xlati47 = i32(x_945);
    let x_948 : vec3<f32> = vs_TEXCOORD7;
    let x_959 : i32 = u_xlati47;
    let x_961 : vec4<f32> = x_958.x_AdditionalLightsPosition[x_959];
    let x_964 : i32 = u_xlati47;
    let x_966 : vec4<f32> = x_958.x_AdditionalLightsPosition[x_964];
    u_xlat9 = ((-(x_948) * vec3<f32>(x_961.w, x_961.w, x_961.w)) + vec3<f32>(x_966.x, x_966.y, x_966.z));
    let x_970 : vec3<f32> = u_xlat9;
    let x_971 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_970, x_971);
    let x_973 : f32 = u_xlat48;
    u_xlat48 = max(x_973, 0.00006103515625f);
    let x_977 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_977);
    let x_980 : f32 = u_xlat35;
    let x_982 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_980, x_980, x_980) * x_982);
    let x_985 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_985);
    let x_987 : f32 = u_xlat48;
    let x_988 : i32 = u_xlati47;
    let x_990 : f32 = x_958.x_AdditionalLightsAttenuation[x_988].x;
    u_xlat48 = (x_987 * x_990);
    let x_992 : f32 = u_xlat48;
    let x_994 : f32 = u_xlat48;
    u_xlat48 = ((-(x_992) * x_994) + 1.0f);
    let x_997 : f32 = u_xlat48;
    u_xlat48 = max(x_997, 0.0f);
    let x_999 : f32 = u_xlat48;
    let x_1000 : f32 = u_xlat48;
    u_xlat48 = (x_999 * x_1000);
    let x_1002 : f32 = u_xlat48;
    let x_1003 : f32 = u_xlat49;
    u_xlat48 = (x_1002 * x_1003);
    let x_1005 : i32 = u_xlati47;
    let x_1007 : vec4<f32> = x_958.x_AdditionalLightsSpotDir[x_1005];
    let x_1009 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1007.x, x_1007.y, x_1007.z), x_1009);
    let x_1011 : f32 = u_xlat49;
    let x_1012 : i32 = u_xlati47;
    let x_1014 : f32 = x_958.x_AdditionalLightsAttenuation[x_1012].z;
    let x_1016 : i32 = u_xlati47;
    let x_1018 : f32 = x_958.x_AdditionalLightsAttenuation[x_1016].w;
    u_xlat49 = ((x_1011 * x_1014) + x_1018);
    let x_1020 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1020, 0.0f, 1.0f);
    let x_1022 : f32 = u_xlat49;
    let x_1023 : f32 = u_xlat49;
    u_xlat49 = (x_1022 * x_1023);
    let x_1025 : f32 = u_xlat48;
    let x_1026 : f32 = u_xlat49;
    u_xlat48 = (x_1025 * x_1026);
    let x_1030 : i32 = u_xlati47;
    let x_1032 : f32 = x_108.x_AdditionalShadowParams[x_1030].w;
    u_xlati49 = i32(x_1032);
    let x_1035 : i32 = u_xlati49;
    u_xlatb51 = (x_1035 >= 0i);
    let x_1037 : bool = u_xlatb51;
    if (x_1037) {
      let x_1041 : i32 = u_xlati47;
      let x_1043 : f32 = x_108.x_AdditionalShadowParams[x_1041].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1043, x_1043, x_1043, x_1043))));
      let x_1047 : bool = u_xlatb51;
      if (x_1047) {
        let x_1051 : vec3<f32> = u_xlat10;
        let x_1054 : vec3<f32> = u_xlat10;
        let x_1057 : vec4<bool> = (abs(vec4<f32>(x_1051.z, x_1051.z, x_1051.y, x_1051.z)) >= abs(vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.x)));
        let x_1059 : vec3<bool> = vec3<bool>(x_1057.x, x_1057.y, x_1057.z);
        let x_1060 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
        let x_1063 : bool = u_xlatb11.y;
        let x_1065 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1063 & x_1065);
        let x_1067 : vec3<f32> = u_xlat10;
        let x_1070 : vec4<bool> = (-(vec4<f32>(x_1067.z, x_1067.y, x_1067.z, x_1067.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1071 : vec3<bool> = vec3<bool>(x_1070.x, x_1070.y, x_1070.w);
        let x_1072 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1071.x, x_1071.y, x_1072.z, x_1071.z);
        let x_1076 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1076);
        let x_1081 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1081);
        let x_1086 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1086);
        let x_1089 : bool = u_xlatb11.z;
        if (x_1089) {
          let x_1094 : f32 = u_xlat11.y;
          x_1090 = x_1094;
        } else {
          let x_1096 : f32 = u_xlat52;
          x_1090 = x_1096;
        }
        let x_1097 : f32 = x_1090;
        u_xlat52 = x_1097;
        let x_1099 : bool = u_xlatb51;
        if (x_1099) {
          let x_1104 : f32 = u_xlat11.x;
          x_1100 = x_1104;
        } else {
          let x_1106 : f32 = u_xlat52;
          x_1100 = x_1106;
        }
        let x_1107 : f32 = x_1100;
        u_xlat51 = x_1107;
        let x_1108 : i32 = u_xlati47;
        let x_1110 : f32 = x_108.x_AdditionalShadowParams[x_1108].w;
        u_xlat52 = trunc(x_1110);
        let x_1112 : f32 = u_xlat51;
        let x_1113 : f32 = u_xlat52;
        u_xlat51 = (x_1112 + x_1113);
        let x_1115 : f32 = u_xlat51;
        u_xlati49 = i32(x_1115);
      }
      let x_1117 : i32 = u_xlati49;
      u_xlati49 = (x_1117 << bitcast<u32>(2i));
      let x_1119 : vec3<f32> = vs_TEXCOORD7;
      let x_1122 : i32 = u_xlati49;
      let x_1125 : i32 = u_xlati49;
      let x_1129 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[((x_1122 + 1i) / 4i)][((x_1125 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1119.y, x_1119.y, x_1119.y, x_1119.y) * x_1129);
      let x_1131 : i32 = u_xlati49;
      let x_1133 : i32 = u_xlati49;
      let x_1136 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[(x_1131 / 4i)][(x_1133 % 4i)];
      let x_1137 : vec3<f32> = vs_TEXCOORD7;
      let x_1140 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1136 * vec4<f32>(x_1137.x, x_1137.x, x_1137.x, x_1137.x)) + x_1140);
      let x_1142 : i32 = u_xlati49;
      let x_1145 : i32 = u_xlati49;
      let x_1149 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[((x_1142 + 2i) / 4i)][((x_1145 + 2i) % 4i)];
      let x_1150 : vec3<f32> = vs_TEXCOORD7;
      let x_1153 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1149 * vec4<f32>(x_1150.z, x_1150.z, x_1150.z, x_1150.z)) + x_1153);
      let x_1155 : vec4<f32> = u_xlat11;
      let x_1156 : i32 = u_xlati49;
      let x_1159 : i32 = u_xlati49;
      let x_1163 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[((x_1156 + 3i) / 4i)][((x_1159 + 3i) % 4i)];
      u_xlat11 = (x_1155 + x_1163);
      let x_1165 : vec4<f32> = u_xlat11;
      let x_1167 : vec4<f32> = u_xlat11;
      let x_1169 : vec3<f32> = (vec3<f32>(x_1165.x, x_1165.y, x_1165.z) / vec3<f32>(x_1167.w, x_1167.w, x_1167.w));
      let x_1170 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
      let x_1173 : vec4<f32> = u_xlat11;
      let x_1174 : vec2<f32> = vec2<f32>(x_1173.x, x_1173.y);
      let x_1176 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1174.x, x_1174.y, x_1176);
      let x_1184 : vec3<f32> = txVec1;
      let x_1186 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1184.xy, x_1184.z);
      u_xlat49 = x_1186;
      let x_1187 : i32 = u_xlati47;
      let x_1189 : f32 = x_108.x_AdditionalShadowParams[x_1187].x;
      u_xlat51 = (1.0f + -(x_1189));
      let x_1192 : f32 = u_xlat49;
      let x_1193 : i32 = u_xlati47;
      let x_1195 : f32 = x_108.x_AdditionalShadowParams[x_1193].x;
      let x_1197 : f32 = u_xlat51;
      u_xlat49 = ((x_1192 * x_1195) + x_1197);
      let x_1200 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1200);
      let x_1204 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1204 >= 1.0f);
      let x_1206 : bool = u_xlatb51;
      let x_1207 : bool = u_xlatb52;
      u_xlatb51 = (x_1206 | x_1207);
      let x_1209 : bool = u_xlatb51;
      let x_1210 : f32 = u_xlat49;
      u_xlat49 = select(x_1210, 1.0f, x_1209);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1213 : f32 = u_xlat49;
    u_xlat51 = (-(x_1213) + 1.0f);
    let x_1216 : f32 = u_xlat1;
    let x_1217 : f32 = u_xlat51;
    let x_1219 : f32 = u_xlat49;
    u_xlat49 = ((x_1216 * x_1217) + x_1219);
    let x_1222 : i32 = u_xlati47;
    u_xlati51 = (1i << bitcast<u32>((x_1222 & 31i)));
    let x_1226 : i32 = u_xlati51;
    let x_1229 : f32 = x_503.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1226) & bitcast<u32>(x_1229)));
    let x_1233 : i32 = u_xlati51;
    if ((x_1233 != 0i)) {
      let x_1237 : i32 = u_xlati47;
      let x_1239 : f32 = x_503.x_AdditionalLightsLightTypes[x_1237].el;
      u_xlati51 = i32(x_1239);
      let x_1242 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1242 != 0i));
      let x_1246 : i32 = u_xlati47;
      u_xlati11 = (x_1246 << bitcast<u32>(2i));
      let x_1248 : i32 = u_xlati52;
      if ((x_1248 != 0i)) {
        let x_1253 : vec3<f32> = vs_TEXCOORD7;
        let x_1255 : i32 = u_xlati11;
        let x_1258 : i32 = u_xlati11;
        let x_1262 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1255 + 1i) / 4i)][((x_1258 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1253.y, x_1253.y, x_1253.y) * vec3<f32>(x_1262.x, x_1262.y, x_1262.w));
        let x_1265 : i32 = u_xlati11;
        let x_1267 : i32 = u_xlati11;
        let x_1270 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[(x_1265 / 4i)][(x_1267 % 4i)];
        let x_1272 : vec3<f32> = vs_TEXCOORD7;
        let x_1275 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1270.x, x_1270.y, x_1270.w) * vec3<f32>(x_1272.x, x_1272.x, x_1272.x)) + x_1275);
        let x_1277 : i32 = u_xlati11;
        let x_1280 : i32 = u_xlati11;
        let x_1284 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1277 + 2i) / 4i)][((x_1280 + 2i) % 4i)];
        let x_1286 : vec3<f32> = vs_TEXCOORD7;
        let x_1289 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1284.x, x_1284.y, x_1284.w) * vec3<f32>(x_1286.z, x_1286.z, x_1286.z)) + x_1289);
        let x_1291 : vec3<f32> = u_xlat25;
        let x_1292 : i32 = u_xlati11;
        let x_1295 : i32 = u_xlati11;
        let x_1299 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1292 + 3i) / 4i)][((x_1295 + 3i) % 4i)];
        u_xlat25 = (x_1291 + vec3<f32>(x_1299.x, x_1299.y, x_1299.w));
        let x_1302 : vec3<f32> = u_xlat25;
        let x_1304 : vec3<f32> = u_xlat25;
        let x_1306 : vec2<f32> = (vec2<f32>(x_1302.x, x_1302.y) / vec2<f32>(x_1304.z, x_1304.z));
        let x_1307 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1306.x, x_1306.y, x_1307.z);
        let x_1309 : vec3<f32> = u_xlat25;
        let x_1312 : vec2<f32> = ((vec2<f32>(x_1309.x, x_1309.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1313 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1312.x, x_1312.y, x_1313.z);
        let x_1315 : vec3<f32> = u_xlat25;
        let x_1319 : vec2<f32> = clamp(vec2<f32>(x_1315.x, x_1315.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1320 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1319.x, x_1319.y, x_1320.z);
        let x_1322 : i32 = u_xlati47;
        let x_1324 : vec4<f32> = x_503.x_AdditionalLightsCookieAtlasUVRects[x_1322];
        let x_1326 : vec3<f32> = u_xlat25;
        let x_1329 : i32 = u_xlati47;
        let x_1331 : vec4<f32> = x_503.x_AdditionalLightsCookieAtlasUVRects[x_1329];
        let x_1333 : vec2<f32> = ((vec2<f32>(x_1324.x, x_1324.y) * vec2<f32>(x_1326.x, x_1326.y)) + vec2<f32>(x_1331.z, x_1331.w));
        let x_1334 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1333.x, x_1333.y, x_1334.z);
      } else {
        let x_1337 : i32 = u_xlati51;
        u_xlatb51 = (x_1337 == 1i);
        let x_1339 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1339);
        let x_1341 : i32 = u_xlati51;
        if ((x_1341 != 0i)) {
          let x_1346 : vec3<f32> = vs_TEXCOORD7;
          let x_1348 : i32 = u_xlati11;
          let x_1351 : i32 = u_xlati11;
          let x_1355 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1348 + 1i) / 4i)][((x_1351 + 1i) % 4i)];
          let x_1357 : vec2<f32> = (vec2<f32>(x_1346.y, x_1346.y) * vec2<f32>(x_1355.x, x_1355.y));
          let x_1358 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1357.x, x_1357.y, x_1358.z, x_1358.w);
          let x_1360 : i32 = u_xlati11;
          let x_1362 : i32 = u_xlati11;
          let x_1365 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[(x_1360 / 4i)][(x_1362 % 4i)];
          let x_1367 : vec3<f32> = vs_TEXCOORD7;
          let x_1370 : vec4<f32> = u_xlat12;
          let x_1372 : vec2<f32> = ((vec2<f32>(x_1365.x, x_1365.y) * vec2<f32>(x_1367.x, x_1367.x)) + vec2<f32>(x_1370.x, x_1370.y));
          let x_1373 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
          let x_1375 : i32 = u_xlati11;
          let x_1378 : i32 = u_xlati11;
          let x_1382 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1375 + 2i) / 4i)][((x_1378 + 2i) % 4i)];
          let x_1384 : vec3<f32> = vs_TEXCOORD7;
          let x_1387 : vec4<f32> = u_xlat12;
          let x_1389 : vec2<f32> = ((vec2<f32>(x_1382.x, x_1382.y) * vec2<f32>(x_1384.z, x_1384.z)) + vec2<f32>(x_1387.x, x_1387.y));
          let x_1390 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1389.x, x_1389.y, x_1390.z, x_1390.w);
          let x_1392 : vec4<f32> = u_xlat12;
          let x_1394 : i32 = u_xlati11;
          let x_1397 : i32 = u_xlati11;
          let x_1401 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1394 + 3i) / 4i)][((x_1397 + 3i) % 4i)];
          let x_1403 : vec2<f32> = (vec2<f32>(x_1392.x, x_1392.y) + vec2<f32>(x_1401.x, x_1401.y));
          let x_1404 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1403.x, x_1403.y, x_1404.z, x_1404.w);
          let x_1406 : vec4<f32> = u_xlat12;
          let x_1409 : vec2<f32> = ((vec2<f32>(x_1406.x, x_1406.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1410 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1409.x, x_1409.y, x_1410.z, x_1410.w);
          let x_1412 : vec4<f32> = u_xlat12;
          let x_1414 : vec2<f32> = fract(vec2<f32>(x_1412.x, x_1412.y));
          let x_1415 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1414.x, x_1414.y, x_1415.z, x_1415.w);
          let x_1417 : i32 = u_xlati47;
          let x_1419 : vec4<f32> = x_503.x_AdditionalLightsCookieAtlasUVRects[x_1417];
          let x_1421 : vec4<f32> = u_xlat12;
          let x_1424 : i32 = u_xlati47;
          let x_1426 : vec4<f32> = x_503.x_AdditionalLightsCookieAtlasUVRects[x_1424];
          let x_1428 : vec2<f32> = ((vec2<f32>(x_1419.x, x_1419.y) * vec2<f32>(x_1421.x, x_1421.y)) + vec2<f32>(x_1426.z, x_1426.w));
          let x_1429 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1428.x, x_1428.y, x_1429.z);
        } else {
          let x_1432 : vec3<f32> = vs_TEXCOORD7;
          let x_1434 : i32 = u_xlati11;
          let x_1437 : i32 = u_xlati11;
          let x_1441 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1434 + 1i) / 4i)][((x_1437 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1432.y, x_1432.y, x_1432.y, x_1432.y) * x_1441);
          let x_1443 : i32 = u_xlati11;
          let x_1445 : i32 = u_xlati11;
          let x_1448 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[(x_1443 / 4i)][(x_1445 % 4i)];
          let x_1449 : vec3<f32> = vs_TEXCOORD7;
          let x_1452 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1448 * vec4<f32>(x_1449.x, x_1449.x, x_1449.x, x_1449.x)) + x_1452);
          let x_1454 : i32 = u_xlati11;
          let x_1457 : i32 = u_xlati11;
          let x_1461 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1454 + 2i) / 4i)][((x_1457 + 2i) % 4i)];
          let x_1462 : vec3<f32> = vs_TEXCOORD7;
          let x_1465 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1461 * vec4<f32>(x_1462.z, x_1462.z, x_1462.z, x_1462.z)) + x_1465);
          let x_1467 : vec4<f32> = u_xlat12;
          let x_1468 : i32 = u_xlati11;
          let x_1471 : i32 = u_xlati11;
          let x_1475 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1468 + 3i) / 4i)][((x_1471 + 3i) % 4i)];
          u_xlat12 = (x_1467 + x_1475);
          let x_1477 : vec4<f32> = u_xlat12;
          let x_1479 : vec4<f32> = u_xlat12;
          let x_1481 : vec3<f32> = (vec3<f32>(x_1477.x, x_1477.y, x_1477.z) / vec3<f32>(x_1479.w, x_1479.w, x_1479.w));
          let x_1482 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1481.x, x_1481.y, x_1481.z, x_1482.w);
          let x_1484 : vec4<f32> = u_xlat12;
          let x_1486 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1484.x, x_1484.y, x_1484.z), vec3<f32>(x_1486.x, x_1486.y, x_1486.z));
          let x_1489 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1489);
          let x_1491 : f32 = u_xlat51;
          let x_1493 : vec4<f32> = u_xlat12;
          let x_1495 : vec3<f32> = (vec3<f32>(x_1491, x_1491, x_1491) * vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
          let x_1496 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
          let x_1498 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1498.x, x_1498.y, x_1498.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1503 : f32 = u_xlat51;
          u_xlat51 = max(x_1503, 0.00000099999999747524f);
          let x_1506 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1506);
          let x_1509 : f32 = u_xlat51;
          let x_1511 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1509, x_1509, x_1509) * vec3<f32>(x_1511.z, x_1511.x, x_1511.y));
          let x_1515 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1515);
          let x_1519 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1519, 0.0f, 1.0f);
          let x_1522 : vec3<f32> = u_xlat13;
          let x_1524 : vec4<bool> = (vec4<f32>(x_1522.y, x_1522.y, x_1522.y, x_1522.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1525 : vec2<bool> = vec2<bool>(x_1524.x, x_1524.w);
          let x_1526 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1525.x, x_1526.y, x_1526.z, x_1525.y);
          let x_1529 : bool = u_xlatb11.x;
          if (x_1529) {
            let x_1534 : f32 = u_xlat13.x;
            x_1530 = x_1534;
          } else {
            let x_1537 : f32 = u_xlat13.x;
            x_1530 = -(x_1537);
          }
          let x_1539 : f32 = x_1530;
          u_xlat11.x = x_1539;
          let x_1542 : bool = u_xlatb11.w;
          if (x_1542) {
            let x_1547 : f32 = u_xlat13.x;
            x_1543 = x_1547;
          } else {
            let x_1550 : f32 = u_xlat13.x;
            x_1543 = -(x_1550);
          }
          let x_1552 : f32 = x_1543;
          u_xlat11.w = x_1552;
          let x_1554 : vec4<f32> = u_xlat12;
          let x_1556 : f32 = u_xlat51;
          let x_1559 : vec4<f32> = u_xlat11;
          let x_1561 : vec2<f32> = ((vec2<f32>(x_1554.x, x_1554.y) * vec2<f32>(x_1556, x_1556)) + vec2<f32>(x_1559.x, x_1559.w));
          let x_1562 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1561.x, x_1562.y, x_1562.z, x_1561.y);
          let x_1564 : vec4<f32> = u_xlat11;
          let x_1567 : vec2<f32> = ((vec2<f32>(x_1564.x, x_1564.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1568 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1567.x, x_1568.y, x_1568.z, x_1567.y);
          let x_1570 : vec4<f32> = u_xlat11;
          let x_1574 : vec2<f32> = clamp(vec2<f32>(x_1570.x, x_1570.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1575 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1574.x, x_1575.y, x_1575.z, x_1574.y);
          let x_1577 : i32 = u_xlati47;
          let x_1579 : vec4<f32> = x_503.x_AdditionalLightsCookieAtlasUVRects[x_1577];
          let x_1581 : vec4<f32> = u_xlat11;
          let x_1584 : i32 = u_xlati47;
          let x_1586 : vec4<f32> = x_503.x_AdditionalLightsCookieAtlasUVRects[x_1584];
          let x_1588 : vec2<f32> = ((vec2<f32>(x_1579.x, x_1579.y) * vec2<f32>(x_1581.x, x_1581.w)) + vec2<f32>(x_1586.z, x_1586.w));
          let x_1589 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1588.x, x_1588.y, x_1589.z);
        }
      }
      let x_1596 : vec3<f32> = u_xlat25;
      let x_1598 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1596.x, x_1596.y), 0.0f);
      u_xlat11 = x_1598;
      let x_1600 : bool = u_xlatb7.y;
      if (x_1600) {
        let x_1605 : f32 = u_xlat11.w;
        x_1601 = x_1605;
      } else {
        let x_1608 : f32 = u_xlat11.x;
        x_1601 = x_1608;
      }
      let x_1609 : f32 = x_1601;
      u_xlat51 = x_1609;
      let x_1611 : bool = u_xlatb7.x;
      if (x_1611) {
        let x_1615 : vec4<f32> = u_xlat11;
        x_1612 = vec3<f32>(x_1615.x, x_1615.y, x_1615.z);
      } else {
        let x_1618 : f32 = u_xlat51;
        x_1612 = vec3<f32>(x_1618, x_1618, x_1618);
      }
      let x_1620 : vec3<f32> = x_1612;
      let x_1621 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1621.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1627 : vec4<f32> = u_xlat11;
    let x_1629 : i32 = u_xlati47;
    let x_1631 : vec4<f32> = x_958.x_AdditionalLightsColor[x_1629];
    let x_1633 : vec3<f32> = (vec3<f32>(x_1627.x, x_1627.y, x_1627.z) * vec3<f32>(x_1631.x, x_1631.y, x_1631.z));
    let x_1634 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1633.x, x_1633.y, x_1633.z, x_1634.w);
    let x_1636 : f32 = u_xlat48;
    let x_1637 : f32 = u_xlat49;
    u_xlat47 = (x_1636 * x_1637);
    let x_1639 : vec3<f32> = u_xlat15;
    let x_1640 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(x_1639, x_1640);
    let x_1642 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1642, 0.0f, 1.0f);
    let x_1644 : f32 = u_xlat47;
    let x_1645 : f32 = u_xlat48;
    u_xlat47 = (x_1644 * x_1645);
    let x_1647 : f32 = u_xlat47;
    let x_1649 : vec4<f32> = u_xlat11;
    let x_1651 : vec3<f32> = (vec3<f32>(x_1647, x_1647, x_1647) * vec3<f32>(x_1649.x, x_1649.y, x_1649.z));
    let x_1652 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1651.x, x_1651.y, x_1651.z, x_1652.w);
    let x_1654 : vec3<f32> = u_xlat9;
    let x_1655 : f32 = u_xlat35;
    let x_1658 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1654 * vec3<f32>(x_1655, x_1655, x_1655)) + x_1658);
    let x_1660 : vec3<f32> = u_xlat9;
    let x_1661 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1660, x_1661);
    let x_1663 : f32 = u_xlat47;
    u_xlat47 = max(x_1663, 1.17549435e-38f);
    let x_1665 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1665);
    let x_1667 : f32 = u_xlat47;
    let x_1669 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1667, x_1667, x_1667) * x_1669);
    let x_1671 : vec3<f32> = u_xlat15;
    let x_1672 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1671, x_1672);
    let x_1674 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1674, 0.0f, 1.0f);
    let x_1676 : vec3<f32> = u_xlat10;
    let x_1677 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1676, x_1677);
    let x_1679 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1679, 0.0f, 1.0f);
    let x_1681 : f32 = u_xlat47;
    let x_1682 : f32 = u_xlat47;
    u_xlat47 = (x_1681 * x_1682);
    let x_1684 : f32 = u_xlat47;
    let x_1686 : f32 = u_xlat8.x;
    u_xlat47 = ((x_1684 * x_1686) + 1.00001001358032226562f);
    let x_1689 : f32 = u_xlat48;
    let x_1690 : f32 = u_xlat48;
    u_xlat48 = (x_1689 * x_1690);
    let x_1692 : f32 = u_xlat47;
    let x_1693 : f32 = u_xlat47;
    u_xlat47 = (x_1692 * x_1693);
    let x_1695 : f32 = u_xlat48;
    u_xlat48 = max(x_1695, 0.10000000149011611938f);
    let x_1697 : f32 = u_xlat47;
    let x_1698 : f32 = u_xlat48;
    u_xlat47 = (x_1697 * x_1698);
    let x_1700 : f32 = u_xlat45;
    let x_1701 : f32 = u_xlat47;
    u_xlat47 = (x_1700 * x_1701);
    let x_1703 : f32 = u_xlat46;
    let x_1704 : f32 = u_xlat47;
    u_xlat47 = (x_1703 / x_1704);
    let x_1706 : vec4<f32> = u_xlat0;
    let x_1708 : f32 = u_xlat47;
    let x_1711 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_1706.x, x_1706.y, x_1706.z) * vec3<f32>(x_1708, x_1708, x_1708)) + x_1711);
    let x_1713 : vec3<f32> = u_xlat9;
    let x_1714 : vec4<f32> = u_xlat11;
    let x_1717 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1713 * vec3<f32>(x_1714.x, x_1714.y, x_1714.z)) + x_1717);

    continuing {
      let x_1719 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1719 + bitcast<u32>(1i));
    }
  }
  let x_1721 : vec4<f32> = u_xlat5;
  let x_1723 : vec4<f32> = u_xlat2;
  let x_1726 : vec4<f32> = u_xlat3;
  let x_1728 : vec3<f32> = ((vec3<f32>(x_1721.x, x_1721.y, x_1721.z) * vec3<f32>(x_1723.x, x_1723.z, x_1723.w)) + vec3<f32>(x_1726.x, x_1726.y, x_1726.z));
  let x_1729 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1728.x, x_1728.y, x_1728.z, x_1729.w);
  let x_1733 : vec3<f32> = u_xlat22;
  let x_1734 : vec4<f32> = u_xlat0;
  let x_1736 : vec3<f32> = (x_1733 + vec3<f32>(x_1734.x, x_1734.y, x_1734.z));
  let x_1737 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1736.x, x_1736.y, x_1736.z, x_1737.w);
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


