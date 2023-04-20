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

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_152 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat44 : f32;

var<private> u_xlatu44 : u32;

var<private> u_xlati44 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

@group(1) @binding(4) var<uniform> x_579 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_760 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatu48 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati48 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1018 : AdditionalLights;

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

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu17 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var x_123 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_531 : f32;
  var x_663 : f32;
  var x_674 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1151 : f32;
  var x_1162 : f32;
  var txVec1 : vec3<f32>;
  var x_1608 : f32;
  var x_1621 : f32;
  var x_1679 : f32;
  var x_1690 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_29.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1 = x_77.x;
  let x_83 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb15 = (x_83 == 0.0f);
  let x_89 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_89) + x_94);
  let x_97 : vec3<f32> = u_xlat2;
  let x_98 : vec3<f32> = u_xlat2;
  u_xlat29 = dot(x_97, x_98);
  let x_100 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_100);
  let x_102 : f32 = u_xlat29;
  let x_104 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_102, x_102, x_102) * x_104);
  let x_110 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_110;
  let x_113 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_113;
  let x_118 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_118;
  let x_121 : bool = u_xlatb15;
  if (x_121) {
    let x_126 : vec3<f32> = u_xlat2;
    x_123 = x_126;
  } else {
    let x_128 : vec4<f32> = u_xlat3;
    x_123 = vec3<f32>(x_128.x, x_128.y, x_128.z);
  }
  let x_130 : vec3<f32> = x_123;
  u_xlat15 = x_130;
  let x_132 : vec3<f32> = vs_TEXCOORD3;
  let x_133 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_132, x_133);
  let x_137 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_137);
  let x_140 : vec3<f32> = u_xlat2;
  let x_142 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_140.x, x_140.x, x_140.x) * x_142);
  let x_144 : vec3<f32> = vs_TEXCOORD7;
  let x_155 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres0;
  let x_158 : vec3<f32> = (x_144 + -(vec3<f32>(x_155.x, x_155.y, x_155.z)));
  let x_159 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_162 : vec3<f32> = vs_TEXCOORD7;
  let x_164 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres1;
  let x_167 : vec3<f32> = (x_162 + -(vec3<f32>(x_164.x, x_164.y, x_164.z)));
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_171 : vec3<f32> = vs_TEXCOORD7;
  let x_174 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_171 + -(vec3<f32>(x_174.x, x_174.y, x_174.z)));
  let x_179 : vec3<f32> = vs_TEXCOORD7;
  let x_181 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres3;
  let x_184 : vec3<f32> = (x_179 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : vec4<f32> = u_xlat3;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : vec4<f32> = u_xlat4;
  let x_195 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_199 : vec3<f32> = u_xlat5;
  let x_200 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_199, x_200);
  let x_203 : vec4<f32> = u_xlat6;
  let x_205 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_203.x, x_203.y, x_203.z), vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_212 : vec4<f32> = u_xlat3;
  let x_215 : vec4<f32> = x_152.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_212 < x_215);
  let x_218 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_218);
  let x_223 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_223);
  let x_227 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_227);
  let x_231 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_231);
  let x_235 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_235);
  let x_241 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_241);
  let x_245 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_245);
  let x_248 : vec4<f32> = u_xlat3;
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec3<f32> = (vec3<f32>(x_248.x, x_248.y, x_248.z) + vec3<f32>(x_250.y, x_250.z, x_250.w));
  let x_253 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat3;
  let x_258 : vec3<f32> = max(vec3<f32>(x_255.x, x_255.y, x_255.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_259 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_259.x, x_258.x, x_258.y, x_258.z);
  let x_262 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_262, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_268 : f32 = u_xlat44;
  u_xlat44 = (-(x_268) + 4.0f);
  let x_273 : f32 = u_xlat44;
  u_xlatu44 = u32(x_273);
  let x_277 : u32 = u_xlatu44;
  u_xlati44 = (bitcast<i32>(x_277) << bitcast<u32>(2i));
  let x_280 : vec3<f32> = vs_TEXCOORD7;
  let x_282 : i32 = u_xlati44;
  let x_285 : i32 = u_xlati44;
  let x_289 : vec4<f32> = x_152.x_MainLightWorldToShadow[((x_282 + 1i) / 4i)][((x_285 + 1i) % 4i)];
  let x_291 : vec3<f32> = (vec3<f32>(x_280.y, x_280.y, x_280.y) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : i32 = u_xlati44;
  let x_296 : i32 = u_xlati44;
  let x_299 : vec4<f32> = x_152.x_MainLightWorldToShadow[(x_294 / 4i)][(x_296 % 4i)];
  let x_301 : vec3<f32> = vs_TEXCOORD7;
  let x_304 : vec4<f32> = u_xlat3;
  let x_306 : vec3<f32> = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.x, x_301.x, x_301.x)) + vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : i32 = u_xlati44;
  let x_312 : i32 = u_xlati44;
  let x_316 : vec4<f32> = x_152.x_MainLightWorldToShadow[((x_309 + 2i) / 4i)][((x_312 + 2i) % 4i)];
  let x_318 : vec3<f32> = vs_TEXCOORD7;
  let x_321 : vec4<f32> = u_xlat3;
  let x_323 : vec3<f32> = ((vec3<f32>(x_316.x, x_316.y, x_316.z) * vec3<f32>(x_318.z, x_318.z, x_318.z)) + vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat3;
  let x_328 : i32 = u_xlati44;
  let x_331 : i32 = u_xlati44;
  let x_335 : vec4<f32> = x_152.x_MainLightWorldToShadow[((x_328 + 3i) / 4i)][((x_331 + 3i) % 4i)];
  let x_337 : vec3<f32> = (vec3<f32>(x_326.x, x_326.y, x_326.z) + vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_342 : f32 = vs_TEXCOORD7.y;
  let x_344 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat44 = (x_342 * x_344);
  let x_347 : f32 = x_29.unity_MatrixV[0i].z;
  let x_349 : f32 = vs_TEXCOORD7.x;
  let x_351 : f32 = u_xlat44;
  u_xlat44 = ((x_347 * x_349) + x_351);
  let x_354 : f32 = x_29.unity_MatrixV[2i].z;
  let x_356 : f32 = vs_TEXCOORD7.z;
  let x_358 : f32 = u_xlat44;
  u_xlat44 = ((x_354 * x_356) + x_358);
  let x_360 : f32 = u_xlat44;
  let x_362 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat44 = (x_360 + x_362);
  let x_364 : f32 = u_xlat44;
  let x_367 : f32 = x_29.x_ProjectionParams.y;
  u_xlat44 = (-(x_364) + -(x_367));
  let x_370 : f32 = u_xlat44;
  u_xlat44 = max(x_370, 0.0f);
  let x_372 : f32 = u_xlat44;
  let x_375 : f32 = x_29.unity_FogParams.x;
  u_xlat44 = (x_372 * x_375);
  let x_382 : vec4<f32> = vs_TEXCOORD0;
  let x_385 : f32 = x_29.x_GlobalMipBias.x;
  let x_386 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_382.z, x_382.w), x_385);
  u_xlat4 = x_386;
  let x_391 : vec4<f32> = vs_TEXCOORD0;
  let x_394 : f32 = x_29.x_GlobalMipBias.x;
  let x_395 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_391.z, x_391.w), x_394);
  u_xlat5 = vec3<f32>(x_395.x, x_395.y, x_395.z);
  let x_397 : vec4<f32> = u_xlat4;
  let x_401 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_405 : vec3<f32> = u_xlat2;
  let x_406 : vec4<f32> = u_xlat4;
  u_xlat45 = dot(x_405, vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : f32 = u_xlat45;
  u_xlat45 = (x_409 + 0.5f);
  let x_412 : f32 = u_xlat45;
  let x_414 : vec3<f32> = u_xlat5;
  let x_415 : vec3<f32> = (vec3<f32>(x_412, x_412, x_412) * x_414);
  let x_416 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_419 : f32 = u_xlat4.w;
  u_xlat45 = max(x_419, 0.00009999999747378752f);
  let x_422 : vec4<f32> = u_xlat4;
  let x_424 : f32 = u_xlat45;
  let x_426 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) / vec3<f32>(x_424, x_424, x_424));
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : f32 = u_xlat1;
  u_xlat45 = ((-(x_429) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_435 : f32 = u_xlat45;
  u_xlat46 = (-(x_435) + 1.0f);
  let x_438 : vec4<f32> = u_xlat0;
  let x_440 : f32 = u_xlat45;
  u_xlat5 = (vec3<f32>(x_438.x, x_438.y, x_438.z) * vec3<f32>(x_440, x_440, x_440));
  let x_443 : vec4<f32> = u_xlat0;
  let x_447 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_448 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : f32 = u_xlat1;
  let x_452 : vec4<f32> = u_xlat0;
  let x_457 : vec3<f32> = ((vec3<f32>(x_450, x_450, x_450) * vec3<f32>(x_452.x, x_452.y, x_452.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_458 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_461 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_461) + 1.0f);
  let x_464 : f32 = u_xlat1;
  let x_465 : f32 = u_xlat1;
  u_xlat45 = (x_464 * x_465);
  let x_467 : f32 = u_xlat45;
  u_xlat45 = max(x_467, 0.0078125f);
  let x_471 : f32 = u_xlat45;
  let x_472 : f32 = u_xlat45;
  u_xlat47 = (x_471 * x_472);
  let x_476 : f32 = u_xlat0.w;
  let x_477 : f32 = u_xlat46;
  u_xlat42 = (x_476 + x_477);
  let x_479 : f32 = u_xlat42;
  u_xlat42 = clamp(x_479, 0.0f, 1.0f);
  let x_481 : f32 = u_xlat45;
  u_xlat46 = ((x_481 * 4.0f) + 2.0f);
  let x_485 : vec4<f32> = u_xlat3;
  let x_486 : vec2<f32> = vec2<f32>(x_485.x, x_485.y);
  let x_488 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_486.x, x_486.y, x_488);
  let x_500 : vec3<f32> = txVec0;
  let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_500.xy, x_500.z);
  u_xlat3.x = x_502;
  let x_507 : f32 = x_152.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_507) + 1.0f);
  let x_511 : f32 = u_xlat3.x;
  let x_513 : f32 = x_152.x_MainLightShadowParams.x;
  let x_515 : f32 = u_xlat17;
  u_xlat3.x = ((x_511 * x_513) + x_515);
  let x_520 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_520);
  let x_524 : f32 = u_xlat3.z;
  u_xlatb31 = (x_524 >= 1.0f);
  let x_526 : bool = u_xlatb31;
  let x_527 : bool = u_xlatb17;
  u_xlatb17 = (x_526 | x_527);
  let x_529 : bool = u_xlatb17;
  if (x_529) {
    x_531 = 1.0f;
  } else {
    let x_536 : f32 = u_xlat3.x;
    x_531 = x_536;
  }
  let x_537 : f32 = x_531;
  u_xlat3.x = x_537;
  let x_539 : vec3<f32> = vs_TEXCOORD7;
  let x_541 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_543 : vec3<f32> = (x_539 + -(x_541));
  let x_544 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec4<f32> = u_xlat6;
  u_xlat17 = dot(vec3<f32>(x_546.x, x_546.y, x_546.z), vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_552 : f32 = u_xlat17;
  let x_554 : f32 = x_152.x_MainLightShadowParams.z;
  let x_557 : f32 = x_152.x_MainLightShadowParams.w;
  u_xlat31 = ((x_552 * x_554) + x_557);
  let x_559 : f32 = u_xlat31;
  u_xlat31 = clamp(x_559, 0.0f, 1.0f);
  let x_562 : f32 = u_xlat3.x;
  u_xlat6.x = (-(x_562) + 1.0f);
  let x_566 : f32 = u_xlat31;
  let x_568 : f32 = u_xlat6.x;
  let x_571 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_566 * x_568) + x_571);
  let x_581 : f32 = x_579.x_MainLightCookieTextureFormat;
  u_xlatb31 = !((x_581 == -1.0f));
  let x_583 : bool = u_xlatb31;
  if (x_583) {
    let x_586 : vec3<f32> = vs_TEXCOORD7;
    let x_589 : vec4<f32> = x_579.x_MainLightWorldToLight[1i];
    let x_591 : vec2<f32> = (vec2<f32>(x_586.y, x_586.y) * vec2<f32>(x_589.x, x_589.y));
    let x_592 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
    let x_595 : vec4<f32> = x_579.x_MainLightWorldToLight[0i];
    let x_597 : vec3<f32> = vs_TEXCOORD7;
    let x_600 : vec4<f32> = u_xlat6;
    let x_602 : vec2<f32> = ((vec2<f32>(x_595.x, x_595.y) * vec2<f32>(x_597.x, x_597.x)) + vec2<f32>(x_600.x, x_600.y));
    let x_603 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_602.x, x_602.y, x_603.z, x_603.w);
    let x_606 : vec4<f32> = x_579.x_MainLightWorldToLight[2i];
    let x_608 : vec3<f32> = vs_TEXCOORD7;
    let x_611 : vec4<f32> = u_xlat6;
    let x_613 : vec2<f32> = ((vec2<f32>(x_606.x, x_606.y) * vec2<f32>(x_608.z, x_608.z)) + vec2<f32>(x_611.x, x_611.y));
    let x_614 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
    let x_616 : vec4<f32> = u_xlat6;
    let x_619 : vec4<f32> = x_579.x_MainLightWorldToLight[3i];
    let x_621 : vec2<f32> = (vec2<f32>(x_616.x, x_616.y) + vec2<f32>(x_619.x, x_619.y));
    let x_622 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
    let x_624 : vec4<f32> = u_xlat6;
    let x_628 : vec2<f32> = ((vec2<f32>(x_624.x, x_624.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_629 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_628.x, x_628.y, x_629.z, x_629.w);
    let x_636 : vec4<f32> = u_xlat6;
    let x_639 : f32 = x_29.x_GlobalMipBias.x;
    let x_640 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_636.x, x_636.y), x_639);
    u_xlat6 = x_640;
    let x_645 : f32 = x_579.x_MainLightCookieTextureFormat;
    let x_647 : f32 = x_579.x_MainLightCookieTextureFormat;
    let x_649 : f32 = x_579.x_MainLightCookieTextureFormat;
    let x_651 : f32 = x_579.x_MainLightCookieTextureFormat;
    let x_652 : vec4<f32> = vec4<f32>(x_645, x_647, x_649, x_651);
    let x_659 : vec4<bool> = (vec4<f32>(x_652.x, x_652.y, x_652.z, x_652.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_659.x, x_659.y);
    let x_662 : bool = u_xlatb7.y;
    if (x_662) {
      let x_667 : f32 = u_xlat6.w;
      x_663 = x_667;
    } else {
      let x_670 : f32 = u_xlat6.x;
      x_663 = x_670;
    }
    let x_671 : f32 = x_663;
    u_xlat31 = x_671;
    let x_673 : bool = u_xlatb7.x;
    if (x_673) {
      let x_677 : vec4<f32> = u_xlat6;
      x_674 = vec3<f32>(x_677.x, x_677.y, x_677.z);
    } else {
      let x_680 : f32 = u_xlat31;
      x_674 = vec3<f32>(x_680, x_680, x_680);
    }
    let x_682 : vec3<f32> = x_674;
    let x_683 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_689 : vec4<f32> = u_xlat6;
  let x_692 : vec4<f32> = x_29.x_MainLightColor;
  let x_694 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) * vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec3<f32> = u_xlat15;
  let x_699 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(-(x_697), x_699);
  let x_701 : f32 = u_xlat31;
  let x_702 : f32 = u_xlat31;
  u_xlat31 = (x_701 + x_702);
  let x_705 : vec3<f32> = u_xlat2;
  let x_706 : f32 = u_xlat31;
  let x_710 : vec3<f32> = u_xlat15;
  let x_712 : vec3<f32> = ((x_705 * -(vec3<f32>(x_706, x_706, x_706))) + -(x_710));
  let x_713 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : vec3<f32> = u_xlat2;
  let x_716 : vec3<f32> = u_xlat15;
  u_xlat31 = dot(x_715, x_716);
  let x_718 : f32 = u_xlat31;
  u_xlat31 = clamp(x_718, 0.0f, 1.0f);
  let x_720 : f32 = u_xlat31;
  u_xlat31 = (-(x_720) + 1.0f);
  let x_723 : f32 = u_xlat31;
  let x_724 : f32 = u_xlat31;
  u_xlat31 = (x_723 * x_724);
  let x_726 : f32 = u_xlat31;
  let x_727 : f32 = u_xlat31;
  u_xlat31 = (x_726 * x_727);
  let x_730 : f32 = u_xlat1;
  u_xlat48 = ((-(x_730) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_736 : f32 = u_xlat1;
  let x_737 : f32 = u_xlat48;
  u_xlat1 = (x_736 * x_737);
  let x_739 : f32 = u_xlat1;
  u_xlat1 = (x_739 * 6.0f);
  let x_750 : vec4<f32> = u_xlat7;
  let x_752 : f32 = u_xlat1;
  let x_753 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_750.x, x_750.y, x_750.z), x_752);
  u_xlat7 = x_753;
  let x_755 : f32 = u_xlat7.w;
  u_xlat1 = (x_755 + -1.0f);
  let x_762 : f32 = x_760.unity_SpecCube0_HDR.w;
  let x_763 : f32 = u_xlat1;
  u_xlat1 = ((x_762 * x_763) + 1.0f);
  let x_766 : f32 = u_xlat1;
  u_xlat1 = max(x_766, 0.0f);
  let x_768 : f32 = u_xlat1;
  u_xlat1 = log2(x_768);
  let x_770 : f32 = u_xlat1;
  let x_772 : f32 = x_760.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_770 * x_772);
  let x_774 : f32 = u_xlat1;
  u_xlat1 = exp2(x_774);
  let x_776 : f32 = u_xlat1;
  let x_778 : f32 = x_760.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_776 * x_778);
  let x_780 : vec4<f32> = u_xlat7;
  let x_782 : f32 = u_xlat1;
  let x_784 : vec3<f32> = (vec3<f32>(x_780.x, x_780.y, x_780.z) * vec3<f32>(x_782, x_782, x_782));
  let x_785 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_789 : f32 = u_xlat45;
  let x_791 : f32 = u_xlat45;
  u_xlat8 = ((vec2<f32>(x_789, x_789) * vec2<f32>(x_791, x_791)) + vec2<f32>(-1.0f, 1.0f));
  let x_797 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_797);
  let x_800 : vec4<f32> = u_xlat0;
  let x_803 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_800.x, x_800.y, x_800.z)) + vec3<f32>(x_803, x_803, x_803));
  let x_806 : f32 = u_xlat31;
  let x_808 : vec3<f32> = u_xlat22;
  let x_810 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_806, x_806, x_806) * x_808) + vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : f32 = u_xlat1;
  let x_815 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_813, x_813, x_813) * x_815);
  let x_817 : vec4<f32> = u_xlat7;
  let x_819 : vec3<f32> = u_xlat22;
  let x_820 : vec3<f32> = (vec3<f32>(x_817.x, x_817.y, x_817.z) * x_819);
  let x_821 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_823 : vec4<f32> = u_xlat4;
  let x_825 : vec3<f32> = u_xlat5;
  let x_827 : vec4<f32> = u_xlat7;
  let x_829 : vec3<f32> = ((vec3<f32>(x_823.x, x_823.y, x_823.z) * x_825) + vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_833 : f32 = u_xlat3.x;
  let x_835 : f32 = x_760.unity_LightData.z;
  u_xlat42 = (x_833 * x_835);
  let x_837 : vec3<f32> = u_xlat2;
  let x_839 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_837, vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : f32 = u_xlat1;
  u_xlat1 = clamp(x_842, 0.0f, 1.0f);
  let x_844 : f32 = u_xlat42;
  let x_845 : f32 = u_xlat1;
  u_xlat42 = (x_844 * x_845);
  let x_847 : f32 = u_xlat42;
  let x_849 : vec4<f32> = u_xlat6;
  let x_851 : vec3<f32> = (vec3<f32>(x_847, x_847, x_847) * vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_851.x, x_852.y, x_851.y, x_851.z);
  let x_854 : vec3<f32> = u_xlat15;
  let x_856 : vec4<f32> = x_29.x_MainLightPosition;
  let x_858 : vec3<f32> = (x_854 + vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat6;
  let x_863 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_861.x, x_861.y, x_861.z), vec3<f32>(x_863.x, x_863.y, x_863.z));
  let x_866 : f32 = u_xlat42;
  u_xlat42 = max(x_866, 1.17549435e-38f);
  let x_869 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_869);
  let x_871 : f32 = u_xlat42;
  let x_873 : vec4<f32> = u_xlat6;
  let x_875 : vec3<f32> = (vec3<f32>(x_871, x_871, x_871) * vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_876 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec3<f32> = u_xlat2;
  let x_879 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_878, vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : f32 = u_xlat42;
  u_xlat42 = clamp(x_882, 0.0f, 1.0f);
  let x_885 : vec4<f32> = x_29.x_MainLightPosition;
  let x_887 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_885.x, x_885.y, x_885.z), vec3<f32>(x_887.x, x_887.y, x_887.z));
  let x_890 : f32 = u_xlat1;
  u_xlat1 = clamp(x_890, 0.0f, 1.0f);
  let x_892 : f32 = u_xlat42;
  let x_893 : f32 = u_xlat42;
  u_xlat42 = (x_892 * x_893);
  let x_895 : f32 = u_xlat42;
  let x_897 : f32 = u_xlat8.x;
  u_xlat42 = ((x_895 * x_897) + 1.00001001358032226562f);
  let x_901 : f32 = u_xlat1;
  let x_902 : f32 = u_xlat1;
  u_xlat1 = (x_901 * x_902);
  let x_904 : f32 = u_xlat42;
  let x_905 : f32 = u_xlat42;
  u_xlat42 = (x_904 * x_905);
  let x_907 : f32 = u_xlat1;
  u_xlat1 = max(x_907, 0.10000000149011611938f);
  let x_910 : f32 = u_xlat42;
  let x_911 : f32 = u_xlat1;
  u_xlat42 = (x_910 * x_911);
  let x_913 : f32 = u_xlat46;
  let x_914 : f32 = u_xlat42;
  u_xlat42 = (x_913 * x_914);
  let x_916 : f32 = u_xlat47;
  let x_917 : f32 = u_xlat42;
  u_xlat42 = (x_916 / x_917);
  let x_919 : vec4<f32> = u_xlat0;
  let x_921 : f32 = u_xlat42;
  let x_924 : vec3<f32> = u_xlat5;
  let x_925 : vec3<f32> = ((vec3<f32>(x_919.x, x_919.y, x_919.z) * vec3<f32>(x_921, x_921, x_921)) + x_924);
  let x_926 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_929 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_931 : f32 = x_760.unity_LightData.y;
  u_xlat42 = min(x_929, x_931);
  let x_934 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_934));
  let x_937 : f32 = u_xlat17;
  let x_940 : f32 = x_152.x_AdditionalShadowFadeParams.x;
  let x_943 : f32 = x_152.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_937 * x_940) + x_943);
  let x_945 : f32 = u_xlat1;
  u_xlat1 = clamp(x_945, 0.0f, 1.0f);
  let x_948 : f32 = x_579.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_950 : f32 = x_579.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_952 : f32 = x_579.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_954 : f32 = x_579.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_955 : vec4<f32> = vec4<f32>(x_948, x_950, x_952, x_954);
  let x_961 : vec4<bool> = (vec4<f32>(x_955.x, x_955.y, x_955.z, x_955.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_961.x, x_961.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_973 : u32 = u_xlatu_loop_1;
    let x_974 : u32 = u_xlatu42;
    if ((x_973 < x_974)) {
    } else {
      break;
    }
    let x_977 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_977 >> 2u);
    let x_980 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_980 & 3u));
    let x_983 : u32 = u_xlatu48;
    let x_986 : vec4<f32> = x_760.unity_LightIndices[bitcast<i32>(x_983)];
    let x_996 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1001 : vec4<u32> = indexable[x_996];
    u_xlat48 = dot(x_986, bitcast<vec4<f32>>(x_1001));
    let x_1005 : f32 = u_xlat48;
    u_xlati48 = i32(x_1005);
    let x_1008 : vec3<f32> = vs_TEXCOORD7;
    let x_1019 : i32 = u_xlati48;
    let x_1021 : vec4<f32> = x_1018.x_AdditionalLightsPosition[x_1019];
    let x_1024 : i32 = u_xlati48;
    let x_1026 : vec4<f32> = x_1018.x_AdditionalLightsPosition[x_1024];
    u_xlat9 = ((-(x_1008) * vec3<f32>(x_1021.w, x_1021.w, x_1021.w)) + vec3<f32>(x_1026.x, x_1026.y, x_1026.z));
    let x_1030 : vec3<f32> = u_xlat9;
    let x_1031 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1030, x_1031);
    let x_1033 : f32 = u_xlat35;
    u_xlat35 = max(x_1033, 0.00006103515625f);
    let x_1037 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1037);
    let x_1040 : f32 = u_xlat49;
    let x_1042 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1040, x_1040, x_1040) * x_1042);
    let x_1045 : f32 = u_xlat35;
    u_xlat51 = (1.0f / x_1045);
    let x_1047 : f32 = u_xlat35;
    let x_1048 : i32 = u_xlati48;
    let x_1050 : f32 = x_1018.x_AdditionalLightsAttenuation[x_1048].x;
    u_xlat35 = (x_1047 * x_1050);
    let x_1052 : f32 = u_xlat35;
    let x_1054 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1052) * x_1054) + 1.0f);
    let x_1057 : f32 = u_xlat35;
    u_xlat35 = max(x_1057, 0.0f);
    let x_1059 : f32 = u_xlat35;
    let x_1060 : f32 = u_xlat35;
    u_xlat35 = (x_1059 * x_1060);
    let x_1062 : f32 = u_xlat35;
    let x_1063 : f32 = u_xlat51;
    u_xlat35 = (x_1062 * x_1063);
    let x_1065 : i32 = u_xlati48;
    let x_1067 : vec4<f32> = x_1018.x_AdditionalLightsSpotDir[x_1065];
    let x_1069 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1067.x, x_1067.y, x_1067.z), x_1069);
    let x_1071 : f32 = u_xlat51;
    let x_1072 : i32 = u_xlati48;
    let x_1074 : f32 = x_1018.x_AdditionalLightsAttenuation[x_1072].z;
    let x_1076 : i32 = u_xlati48;
    let x_1078 : f32 = x_1018.x_AdditionalLightsAttenuation[x_1076].w;
    u_xlat51 = ((x_1071 * x_1074) + x_1078);
    let x_1080 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1080, 0.0f, 1.0f);
    let x_1082 : f32 = u_xlat51;
    let x_1083 : f32 = u_xlat51;
    u_xlat51 = (x_1082 * x_1083);
    let x_1085 : f32 = u_xlat35;
    let x_1086 : f32 = u_xlat51;
    u_xlat35 = (x_1085 * x_1086);
    let x_1090 : i32 = u_xlati48;
    let x_1092 : f32 = x_152.x_AdditionalShadowParams[x_1090].w;
    u_xlati51 = i32(x_1092);
    let x_1095 : i32 = u_xlati51;
    u_xlatb52 = (x_1095 >= 0i);
    let x_1097 : bool = u_xlatb52;
    if (x_1097) {
      let x_1101 : i32 = u_xlati48;
      let x_1103 : f32 = x_152.x_AdditionalShadowParams[x_1101].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1103, x_1103, x_1103, x_1103))));
      let x_1107 : bool = u_xlatb52;
      if (x_1107) {
        let x_1111 : vec3<f32> = u_xlat10;
        let x_1114 : vec3<f32> = u_xlat10;
        let x_1117 : vec4<bool> = (abs(vec4<f32>(x_1111.z, x_1111.z, x_1111.y, x_1111.z)) >= abs(vec4<f32>(x_1114.x, x_1114.y, x_1114.x, x_1114.x)));
        let x_1119 : vec3<bool> = vec3<bool>(x_1117.x, x_1117.y, x_1117.z);
        let x_1120 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
        let x_1123 : bool = u_xlatb11.y;
        let x_1125 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1123 & x_1125);
        let x_1127 : vec3<f32> = u_xlat10;
        let x_1130 : vec4<bool> = (-(vec4<f32>(x_1127.z, x_1127.y, x_1127.z, x_1127.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1131 : vec3<bool> = vec3<bool>(x_1130.x, x_1130.y, x_1130.w);
        let x_1132 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1131.x, x_1131.y, x_1132.z, x_1131.z);
        let x_1136 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1136);
        let x_1141 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1141);
        let x_1146 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1146);
        let x_1150 : bool = u_xlatb11.z;
        if (x_1150) {
          let x_1155 : f32 = u_xlat11.y;
          x_1151 = x_1155;
        } else {
          let x_1157 : f32 = u_xlat53;
          x_1151 = x_1157;
        }
        let x_1158 : f32 = x_1151;
        u_xlat25.x = x_1158;
        let x_1161 : bool = u_xlatb52;
        if (x_1161) {
          let x_1166 : f32 = u_xlat11.x;
          x_1162 = x_1166;
        } else {
          let x_1169 : f32 = u_xlat25.x;
          x_1162 = x_1169;
        }
        let x_1170 : f32 = x_1162;
        u_xlat52 = x_1170;
        let x_1171 : i32 = u_xlati48;
        let x_1173 : f32 = x_152.x_AdditionalShadowParams[x_1171].w;
        u_xlat11.x = trunc(x_1173);
        let x_1176 : f32 = u_xlat52;
        let x_1178 : f32 = u_xlat11.x;
        u_xlat52 = (x_1176 + x_1178);
        let x_1180 : f32 = u_xlat52;
        u_xlati51 = i32(x_1180);
      }
      let x_1182 : i32 = u_xlati51;
      u_xlati51 = (x_1182 << bitcast<u32>(2i));
      let x_1184 : vec3<f32> = vs_TEXCOORD7;
      let x_1187 : i32 = u_xlati51;
      let x_1190 : i32 = u_xlati51;
      let x_1194 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_1187 + 1i) / 4i)][((x_1190 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1184.y, x_1184.y, x_1184.y, x_1184.y) * x_1194);
      let x_1196 : i32 = u_xlati51;
      let x_1198 : i32 = u_xlati51;
      let x_1201 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[(x_1196 / 4i)][(x_1198 % 4i)];
      let x_1202 : vec3<f32> = vs_TEXCOORD7;
      let x_1205 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1201 * vec4<f32>(x_1202.x, x_1202.x, x_1202.x, x_1202.x)) + x_1205);
      let x_1207 : i32 = u_xlati51;
      let x_1210 : i32 = u_xlati51;
      let x_1214 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_1207 + 2i) / 4i)][((x_1210 + 2i) % 4i)];
      let x_1215 : vec3<f32> = vs_TEXCOORD7;
      let x_1218 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1214 * vec4<f32>(x_1215.z, x_1215.z, x_1215.z, x_1215.z)) + x_1218);
      let x_1220 : vec4<f32> = u_xlat11;
      let x_1221 : i32 = u_xlati51;
      let x_1224 : i32 = u_xlati51;
      let x_1228 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_1221 + 3i) / 4i)][((x_1224 + 3i) % 4i)];
      u_xlat11 = (x_1220 + x_1228);
      let x_1230 : vec4<f32> = u_xlat11;
      let x_1232 : vec4<f32> = u_xlat11;
      let x_1234 : vec3<f32> = (vec3<f32>(x_1230.x, x_1230.y, x_1230.z) / vec3<f32>(x_1232.w, x_1232.w, x_1232.w));
      let x_1235 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
      let x_1238 : vec4<f32> = u_xlat11;
      let x_1239 : vec2<f32> = vec2<f32>(x_1238.x, x_1238.y);
      let x_1241 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
      let x_1249 : vec3<f32> = txVec1;
      let x_1251 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1249.xy, x_1249.z);
      u_xlat51 = x_1251;
      let x_1252 : i32 = u_xlati48;
      let x_1254 : f32 = x_152.x_AdditionalShadowParams[x_1252].x;
      u_xlat52 = (1.0f + -(x_1254));
      let x_1257 : f32 = u_xlat51;
      let x_1258 : i32 = u_xlati48;
      let x_1260 : f32 = x_152.x_AdditionalShadowParams[x_1258].x;
      let x_1262 : f32 = u_xlat52;
      u_xlat51 = ((x_1257 * x_1260) + x_1262);
      let x_1265 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1265);
      let x_1268 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1268 >= 1.0f);
      let x_1271 : bool = u_xlatb52;
      let x_1273 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1271 | x_1273);
      let x_1275 : bool = u_xlatb52;
      let x_1276 : f32 = u_xlat51;
      u_xlat51 = select(x_1276, 1.0f, x_1275);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1279 : f32 = u_xlat51;
    u_xlat52 = (-(x_1279) + 1.0f);
    let x_1282 : f32 = u_xlat1;
    let x_1283 : f32 = u_xlat52;
    let x_1285 : f32 = u_xlat51;
    u_xlat51 = ((x_1282 * x_1283) + x_1285);
    let x_1288 : i32 = u_xlati48;
    u_xlati52 = (1i << bitcast<u32>((x_1288 & 31i)));
    let x_1292 : i32 = u_xlati52;
    let x_1295 : f32 = x_579.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1292) & bitcast<u32>(x_1295)));
    let x_1299 : i32 = u_xlati52;
    if ((x_1299 != 0i)) {
      let x_1303 : i32 = u_xlati48;
      let x_1305 : f32 = x_579.x_AdditionalLightsLightTypes[x_1303].el;
      u_xlati52 = i32(x_1305);
      let x_1308 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1308 != 0i));
      let x_1312 : i32 = u_xlati48;
      u_xlati25 = (x_1312 << bitcast<u32>(2i));
      let x_1314 : i32 = u_xlati11;
      if ((x_1314 != 0i)) {
        let x_1318 : vec3<f32> = vs_TEXCOORD7;
        let x_1320 : i32 = u_xlati25;
        let x_1323 : i32 = u_xlati25;
        let x_1327 : vec4<f32> = x_579.x_AdditionalLightsWorldToLights[((x_1320 + 1i) / 4i)][((x_1323 + 1i) % 4i)];
        let x_1329 : vec3<f32> = (vec3<f32>(x_1318.y, x_1318.y, x_1318.y) * vec3<f32>(x_1327.x, x_1327.y, x_1327.w));
        let x_1330 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1329.x, x_1330.y, x_1329.y, x_1329.z);
        let x_1332 : i32 = u_xlati25;
        let x_1334 : i32 = u_xlati25;
        let x_1337 : vec4<f32> = x_579.x_AdditionalLightsWorldToLights[(x_1332 / 4i)][(x_1334 % 4i)];
        let x_1339 : vec3<f32> = vs_TEXCOORD7;
        let x_1342 : vec4<f32> = u_xlat11;
        let x_1344 : vec3<f32> = ((vec3<f32>(x_1337.x, x_1337.y, x_1337.w) * vec3<f32>(x_1339.x, x_1339.x, x_1339.x)) + vec3<f32>(x_1342.x, x_1342.z, x_1342.w));
        let x_1345 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1344.x, x_1345.y, x_1344.y, x_1344.z);
        let x_1347 : i32 = u_xlati25;
        let x_1350 : i32 = u_xlati25;
        let x_1354 : vec4<f32> = x_579.x_AdditionalLightsWorldToLights[((x_1347 + 2i) / 4i)][((x_1350 + 2i) % 4i)];
        let x_1356 : vec3<f32> = vs_TEXCOORD7;
        let x_1359 : vec4<f32> = u_xlat11;
        let x_1361 : vec3<f32> = ((vec3<f32>(x_1354.x, x_1354.y, x_1354.w) * vec3<f32>(x_1356.z, x_1356.z, x_1356.z)) + vec3<f32>(x_1359.x, x_1359.z, x_1359.w));
        let x_1362 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1361.x, x_1362.y, x_1361.y, x_1361.z);
        let x_1364 : vec4<f32> = u_xlat11;
        let x_1366 : i32 = u_xlati25;
        let x_1369 : i32 = u_xlati25;
        let x_1373 : vec4<f32> = x_579.x_AdditionalLightsWorldToLights[((x_1366 + 3i) / 4i)][((x_1369 + 3i) % 4i)];
        let x_1375 : vec3<f32> = (vec3<f32>(x_1364.x, x_1364.z, x_1364.w) + vec3<f32>(x_1373.x, x_1373.y, x_1373.w));
        let x_1376 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1375.x, x_1376.y, x_1375.y, x_1375.z);
        let x_1378 : vec4<f32> = u_xlat11;
        let x_1380 : vec4<f32> = u_xlat11;
        let x_1382 : vec2<f32> = (vec2<f32>(x_1378.x, x_1378.z) / vec2<f32>(x_1380.w, x_1380.w));
        let x_1383 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1382.x, x_1383.y, x_1382.y, x_1383.w);
        let x_1385 : vec4<f32> = u_xlat11;
        let x_1388 : vec2<f32> = ((vec2<f32>(x_1385.x, x_1385.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1389 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1388.x, x_1389.y, x_1388.y, x_1389.w);
        let x_1391 : vec4<f32> = u_xlat11;
        let x_1395 : vec2<f32> = clamp(vec2<f32>(x_1391.x, x_1391.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1396 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1395.x, x_1396.y, x_1395.y, x_1396.w);
        let x_1398 : i32 = u_xlati48;
        let x_1400 : vec4<f32> = x_579.x_AdditionalLightsCookieAtlasUVRects[x_1398];
        let x_1402 : vec4<f32> = u_xlat11;
        let x_1405 : i32 = u_xlati48;
        let x_1407 : vec4<f32> = x_579.x_AdditionalLightsCookieAtlasUVRects[x_1405];
        let x_1409 : vec2<f32> = ((vec2<f32>(x_1400.x, x_1400.y) * vec2<f32>(x_1402.x, x_1402.z)) + vec2<f32>(x_1407.z, x_1407.w));
        let x_1410 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1409.x, x_1410.y, x_1409.y, x_1410.w);
      } else {
        let x_1413 : i32 = u_xlati52;
        u_xlatb52 = (x_1413 == 1i);
        let x_1415 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1415);
        let x_1417 : i32 = u_xlati52;
        if ((x_1417 != 0i)) {
          let x_1422 : vec3<f32> = vs_TEXCOORD7;
          let x_1424 : i32 = u_xlati25;
          let x_1427 : i32 = u_xlati25;
          let x_1431 : vec4<f32> = x_579.x_AdditionalLightsWorldToLights[((x_1424 + 1i) / 4i)][((x_1427 + 1i) % 4i)];
          let x_1433 : vec2<f32> = (vec2<f32>(x_1422.y, x_1422.y) * vec2<f32>(x_1431.x, x_1431.y));
          let x_1434 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1433.x, x_1433.y, x_1434.z, x_1434.w);
          let x_1436 : i32 = u_xlati25;
          let x_1438 : i32 = u_xlati25;
          let x_1441 : vec4<f32> = x_579.x_AdditionalLightsWorldToLights[(x_1436 / 4i)][(x_1438 % 4i)];
          let x_1443 : vec3<f32> = vs_TEXCOORD7;
          let x_1446 : vec4<f32> = u_xlat12;
          let x_1448 : vec2<f32> = ((vec2<f32>(x_1441.x, x_1441.y) * vec2<f32>(x_1443.x, x_1443.x)) + vec2<f32>(x_1446.x, x_1446.y));
          let x_1449 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1448.x, x_1448.y, x_1449.z, x_1449.w);
          let x_1451 : i32 = u_xlati25;
          let x_1454 : i32 = u_xlati25;
          let x_1458 : vec4<f32> = x_579.x_AdditionalLightsWorldToLights[((x_1451 + 2i) / 4i)][((x_1454 + 2i) % 4i)];
          let x_1460 : vec3<f32> = vs_TEXCOORD7;
          let x_1463 : vec4<f32> = u_xlat12;
          let x_1465 : vec2<f32> = ((vec2<f32>(x_1458.x, x_1458.y) * vec2<f32>(x_1460.z, x_1460.z)) + vec2<f32>(x_1463.x, x_1463.y));
          let x_1466 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1465.x, x_1465.y, x_1466.z, x_1466.w);
          let x_1468 : vec4<f32> = u_xlat12;
          let x_1470 : i32 = u_xlati25;
          let x_1473 : i32 = u_xlati25;
          let x_1477 : vec4<f32> = x_579.x_AdditionalLightsWorldToLights[((x_1470 + 3i) / 4i)][((x_1473 + 3i) % 4i)];
          let x_1479 : vec2<f32> = (vec2<f32>(x_1468.x, x_1468.y) + vec2<f32>(x_1477.x, x_1477.y));
          let x_1480 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1479.x, x_1479.y, x_1480.z, x_1480.w);
          let x_1482 : vec4<f32> = u_xlat12;
          let x_1485 : vec2<f32> = ((vec2<f32>(x_1482.x, x_1482.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1486 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1485.x, x_1485.y, x_1486.z, x_1486.w);
          let x_1488 : vec4<f32> = u_xlat12;
          let x_1490 : vec2<f32> = fract(vec2<f32>(x_1488.x, x_1488.y));
          let x_1491 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1490.x, x_1490.y, x_1491.z, x_1491.w);
          let x_1493 : i32 = u_xlati48;
          let x_1495 : vec4<f32> = x_579.x_AdditionalLightsCookieAtlasUVRects[x_1493];
          let x_1497 : vec4<f32> = u_xlat12;
          let x_1500 : i32 = u_xlati48;
          let x_1502 : vec4<f32> = x_579.x_AdditionalLightsCookieAtlasUVRects[x_1500];
          let x_1504 : vec2<f32> = ((vec2<f32>(x_1495.x, x_1495.y) * vec2<f32>(x_1497.x, x_1497.y)) + vec2<f32>(x_1502.z, x_1502.w));
          let x_1505 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1504.x, x_1505.y, x_1504.y, x_1505.w);
        } else {
          let x_1508 : vec3<f32> = vs_TEXCOORD7;
          let x_1510 : i32 = u_xlati25;
          let x_1513 : i32 = u_xlati25;
          let x_1517 : vec4<f32> = x_579.x_AdditionalLightsWorldToLights[((x_1510 + 1i) / 4i)][((x_1513 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1508.y, x_1508.y, x_1508.y, x_1508.y) * x_1517);
          let x_1519 : i32 = u_xlati25;
          let x_1521 : i32 = u_xlati25;
          let x_1524 : vec4<f32> = x_579.x_AdditionalLightsWorldToLights[(x_1519 / 4i)][(x_1521 % 4i)];
          let x_1525 : vec3<f32> = vs_TEXCOORD7;
          let x_1528 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1524 * vec4<f32>(x_1525.x, x_1525.x, x_1525.x, x_1525.x)) + x_1528);
          let x_1530 : i32 = u_xlati25;
          let x_1533 : i32 = u_xlati25;
          let x_1537 : vec4<f32> = x_579.x_AdditionalLightsWorldToLights[((x_1530 + 2i) / 4i)][((x_1533 + 2i) % 4i)];
          let x_1538 : vec3<f32> = vs_TEXCOORD7;
          let x_1541 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1537 * vec4<f32>(x_1538.z, x_1538.z, x_1538.z, x_1538.z)) + x_1541);
          let x_1543 : vec4<f32> = u_xlat12;
          let x_1544 : i32 = u_xlati25;
          let x_1547 : i32 = u_xlati25;
          let x_1551 : vec4<f32> = x_579.x_AdditionalLightsWorldToLights[((x_1544 + 3i) / 4i)][((x_1547 + 3i) % 4i)];
          u_xlat12 = (x_1543 + x_1551);
          let x_1553 : vec4<f32> = u_xlat12;
          let x_1555 : vec4<f32> = u_xlat12;
          let x_1557 : vec3<f32> = (vec3<f32>(x_1553.x, x_1553.y, x_1553.z) / vec3<f32>(x_1555.w, x_1555.w, x_1555.w));
          let x_1558 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1557.x, x_1557.y, x_1557.z, x_1558.w);
          let x_1560 : vec4<f32> = u_xlat12;
          let x_1562 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1560.x, x_1560.y, x_1560.z), vec3<f32>(x_1562.x, x_1562.y, x_1562.z));
          let x_1565 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1565);
          let x_1567 : f32 = u_xlat52;
          let x_1569 : vec4<f32> = u_xlat12;
          let x_1571 : vec3<f32> = (vec3<f32>(x_1567, x_1567, x_1567) * vec3<f32>(x_1569.x, x_1569.y, x_1569.z));
          let x_1572 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1571.x, x_1571.y, x_1571.z, x_1572.w);
          let x_1574 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1574.x, x_1574.y, x_1574.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1579 : f32 = u_xlat52;
          u_xlat52 = max(x_1579, 0.00000099999999747524f);
          let x_1582 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1582);
          let x_1585 : f32 = u_xlat52;
          let x_1587 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1585, x_1585, x_1585) * vec3<f32>(x_1587.z, x_1587.x, x_1587.y));
          let x_1591 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1591);
          let x_1595 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1595, 0.0f, 1.0f);
          let x_1600 : vec3<f32> = u_xlat13;
          let x_1602 : vec4<bool> = (vec4<f32>(x_1600.y, x_1600.y, x_1600.z, x_1600.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1603 : vec2<bool> = vec2<bool>(x_1602.x, x_1602.z);
          let x_1604 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1603.x, x_1604.y, x_1603.y);
          let x_1607 : bool = u_xlatb25.x;
          if (x_1607) {
            let x_1612 : f32 = u_xlat13.x;
            x_1608 = x_1612;
          } else {
            let x_1615 : f32 = u_xlat13.x;
            x_1608 = -(x_1615);
          }
          let x_1617 : f32 = x_1608;
          u_xlat25.x = x_1617;
          let x_1620 : bool = u_xlatb25.z;
          if (x_1620) {
            let x_1625 : f32 = u_xlat13.x;
            x_1621 = x_1625;
          } else {
            let x_1628 : f32 = u_xlat13.x;
            x_1621 = -(x_1628);
          }
          let x_1630 : f32 = x_1621;
          u_xlat25.z = x_1630;
          let x_1632 : vec4<f32> = u_xlat12;
          let x_1634 : f32 = u_xlat52;
          let x_1637 : vec3<f32> = u_xlat25;
          let x_1639 : vec2<f32> = ((vec2<f32>(x_1632.x, x_1632.y) * vec2<f32>(x_1634, x_1634)) + vec2<f32>(x_1637.x, x_1637.z));
          let x_1640 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1639.x, x_1640.y, x_1639.y);
          let x_1642 : vec3<f32> = u_xlat25;
          let x_1645 : vec2<f32> = ((vec2<f32>(x_1642.x, x_1642.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1646 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1645.x, x_1646.y, x_1645.y);
          let x_1648 : vec3<f32> = u_xlat25;
          let x_1652 : vec2<f32> = clamp(vec2<f32>(x_1648.x, x_1648.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1653 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1652.x, x_1653.y, x_1652.y);
          let x_1655 : i32 = u_xlati48;
          let x_1657 : vec4<f32> = x_579.x_AdditionalLightsCookieAtlasUVRects[x_1655];
          let x_1659 : vec3<f32> = u_xlat25;
          let x_1662 : i32 = u_xlati48;
          let x_1664 : vec4<f32> = x_579.x_AdditionalLightsCookieAtlasUVRects[x_1662];
          let x_1666 : vec2<f32> = ((vec2<f32>(x_1657.x, x_1657.y) * vec2<f32>(x_1659.x, x_1659.z)) + vec2<f32>(x_1664.z, x_1664.w));
          let x_1667 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1666.x, x_1667.y, x_1666.y, x_1667.w);
        }
      }
      let x_1674 : vec4<f32> = u_xlat11;
      let x_1676 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1674.x, x_1674.z), 0.0f);
      u_xlat11 = x_1676;
      let x_1678 : bool = u_xlatb7.y;
      if (x_1678) {
        let x_1683 : f32 = u_xlat11.w;
        x_1679 = x_1683;
      } else {
        let x_1686 : f32 = u_xlat11.x;
        x_1679 = x_1686;
      }
      let x_1687 : f32 = x_1679;
      u_xlat52 = x_1687;
      let x_1689 : bool = u_xlatb7.x;
      if (x_1689) {
        let x_1693 : vec4<f32> = u_xlat11;
        x_1690 = vec3<f32>(x_1693.x, x_1693.y, x_1693.z);
      } else {
        let x_1696 : f32 = u_xlat52;
        x_1690 = vec3<f32>(x_1696, x_1696, x_1696);
      }
      let x_1698 : vec3<f32> = x_1690;
      let x_1699 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1698.x, x_1698.y, x_1698.z, x_1699.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1705 : vec4<f32> = u_xlat11;
    let x_1707 : i32 = u_xlati48;
    let x_1709 : vec4<f32> = x_1018.x_AdditionalLightsColor[x_1707];
    let x_1711 : vec3<f32> = (vec3<f32>(x_1705.x, x_1705.y, x_1705.z) * vec3<f32>(x_1709.x, x_1709.y, x_1709.z));
    let x_1712 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1711.x, x_1711.y, x_1711.z, x_1712.w);
    let x_1714 : f32 = u_xlat35;
    let x_1715 : f32 = u_xlat51;
    u_xlat48 = (x_1714 * x_1715);
    let x_1717 : vec3<f32> = u_xlat2;
    let x_1718 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(x_1717, x_1718);
    let x_1720 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1720, 0.0f, 1.0f);
    let x_1722 : f32 = u_xlat48;
    let x_1723 : f32 = u_xlat35;
    u_xlat48 = (x_1722 * x_1723);
    let x_1725 : f32 = u_xlat48;
    let x_1727 : vec4<f32> = u_xlat11;
    let x_1729 : vec3<f32> = (vec3<f32>(x_1725, x_1725, x_1725) * vec3<f32>(x_1727.x, x_1727.y, x_1727.z));
    let x_1730 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
    let x_1732 : vec3<f32> = u_xlat9;
    let x_1733 : f32 = u_xlat49;
    let x_1736 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1732 * vec3<f32>(x_1733, x_1733, x_1733)) + x_1736);
    let x_1738 : vec3<f32> = u_xlat9;
    let x_1739 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1738, x_1739);
    let x_1741 : f32 = u_xlat48;
    u_xlat48 = max(x_1741, 1.17549435e-38f);
    let x_1743 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1743);
    let x_1745 : f32 = u_xlat48;
    let x_1747 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1745, x_1745, x_1745) * x_1747);
    let x_1749 : vec3<f32> = u_xlat2;
    let x_1750 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1749, x_1750);
    let x_1752 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1752, 0.0f, 1.0f);
    let x_1754 : vec3<f32> = u_xlat10;
    let x_1755 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1754, x_1755);
    let x_1757 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1757, 0.0f, 1.0f);
    let x_1759 : f32 = u_xlat48;
    let x_1760 : f32 = u_xlat48;
    u_xlat48 = (x_1759 * x_1760);
    let x_1762 : f32 = u_xlat48;
    let x_1764 : f32 = u_xlat8.x;
    u_xlat48 = ((x_1762 * x_1764) + 1.00001001358032226562f);
    let x_1767 : f32 = u_xlat35;
    let x_1768 : f32 = u_xlat35;
    u_xlat35 = (x_1767 * x_1768);
    let x_1770 : f32 = u_xlat48;
    let x_1771 : f32 = u_xlat48;
    u_xlat48 = (x_1770 * x_1771);
    let x_1773 : f32 = u_xlat35;
    u_xlat35 = max(x_1773, 0.10000000149011611938f);
    let x_1775 : f32 = u_xlat48;
    let x_1776 : f32 = u_xlat35;
    u_xlat48 = (x_1775 * x_1776);
    let x_1778 : f32 = u_xlat46;
    let x_1779 : f32 = u_xlat48;
    u_xlat48 = (x_1778 * x_1779);
    let x_1781 : f32 = u_xlat47;
    let x_1782 : f32 = u_xlat48;
    u_xlat48 = (x_1781 / x_1782);
    let x_1784 : vec4<f32> = u_xlat0;
    let x_1786 : f32 = u_xlat48;
    let x_1789 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1784.x, x_1784.y, x_1784.z) * vec3<f32>(x_1786, x_1786, x_1786)) + x_1789);
    let x_1791 : vec3<f32> = u_xlat9;
    let x_1792 : vec4<f32> = u_xlat11;
    let x_1795 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1791 * vec3<f32>(x_1792.x, x_1792.y, x_1792.z)) + x_1795);

    continuing {
      let x_1797 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1797 + bitcast<u32>(1i));
    }
  }
  let x_1799 : vec4<f32> = u_xlat6;
  let x_1801 : vec4<f32> = u_xlat3;
  let x_1804 : vec4<f32> = u_xlat4;
  let x_1806 : vec3<f32> = ((vec3<f32>(x_1799.x, x_1799.y, x_1799.z) * vec3<f32>(x_1801.x, x_1801.z, x_1801.w)) + vec3<f32>(x_1804.x, x_1804.y, x_1804.z));
  let x_1807 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1806.x, x_1806.y, x_1806.z, x_1807.w);
  let x_1809 : vec3<f32> = u_xlat22;
  let x_1810 : vec4<f32> = u_xlat0;
  let x_1812 : vec3<f32> = (x_1809 + vec3<f32>(x_1810.x, x_1810.y, x_1810.z));
  let x_1813 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1812.x, x_1812.y, x_1812.z, x_1813.w);
  let x_1815 : f32 = u_xlat44;
  let x_1816 : f32 = u_xlat44;
  u_xlat42 = (x_1815 * -(x_1816));
  let x_1819 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1819);
  let x_1821 : vec4<f32> = u_xlat0;
  let x_1824 : vec4<f32> = x_29.unity_FogColor;
  let x_1827 : vec3<f32> = (vec3<f32>(x_1821.x, x_1821.y, x_1821.z) + -(vec3<f32>(x_1824.x, x_1824.y, x_1824.z)));
  let x_1828 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1828.w);
  let x_1832 : f32 = u_xlat42;
  let x_1834 : vec4<f32> = u_xlat0;
  let x_1838 : vec4<f32> = x_29.unity_FogColor;
  let x_1840 : vec3<f32> = ((vec3<f32>(x_1832, x_1832, x_1832) * vec3<f32>(x_1834.x, x_1834.y, x_1834.z)) + vec3<f32>(x_1838.x, x_1838.y, x_1838.z));
  let x_1841 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1841.w);
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


