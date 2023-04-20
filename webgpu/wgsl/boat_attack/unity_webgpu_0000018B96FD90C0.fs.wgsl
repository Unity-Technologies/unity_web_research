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
  /* @offset(208) */
  x_NightFade : f32,
}

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
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
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(7) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(9) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_8BA53EED : sampler;

var<private> u_xlat45 : f32;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(10) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(19) var samplerTexture2D_AB84E4D0 : sampler;

var<private> u_xlat31 : f32;

@group(1) @binding(2) var<uniform> x_107 : UnityPerDraw;

var<private> u_xlatb31 : bool;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(8) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_F0A81025 : sampler;

var<private> u_xlatb46 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlatb47 : bool;

var<private> u_xlat47 : f32;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb45 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_276 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu45 : u32;

var<private> u_xlati45 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat33 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatb20 : bool;

var<private> u_xlatb35 : vec2<bool>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat50 : f32;

@group(1) @binding(4) var<uniform> x_719 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlatu47 : u32;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlatu20 : u32;

var<private> u_xlati51 : i32;

var<private> u_xlati20 : i32;

@group(1) @binding(1) var<uniform> x_1184 : AdditionalLights;

var<private> u_xlat51 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlati38 : i32;

var<private> u_xlatb53 : bool;

var<private> u_xlatb12 : vec4<bool>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat54 : f32;

var<private> u_xlat53 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb54 : bool;

var<private> u_xlati53 : i32;

var<private> u_xlati54 : i32;

var<private> u_xlati56 : i32;

var<private> u_xlat42 : vec2<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb42 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu48 : u32;

fn main_1() {
  var x_260 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_669 : f32;
  var x_787 : f32;
  var x_798 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1316 : f32;
  var x_1326 : f32;
  var txVec1 : vec3<f32>;
  var x_1749 : f32;
  var x_1762 : f32;
  var x_1810 : f32;
  var x_1821 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(Texture2D_52571568, samplerTexture2D_52571568, vec2<f32>(x_24.x, x_24.y), x_36);
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_37.z);
  let x_46 : vec4<f32> = vs_INTERP5;
  let x_49 : f32 = x_29.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(Texture2D_8BA53EED, samplerTexture2D_8BA53EED, vec2<f32>(x_46.x, x_46.y), x_49);
  let x_51 : vec3<f32> = vec3<f32>(x_50.x, x_50.y, x_50.w);
  let x_52 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_51.x, x_51.y, x_51.z, x_52.w);
  let x_56 : f32 = u_xlat1.x;
  let x_59 : f32 = u_xlat1.z;
  u_xlat1.x = (x_56 * x_59);
  let x_62 : vec4<f32> = u_xlat1;
  let x_69 : vec2<f32> = ((vec2<f32>(x_62.x, x_62.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat1;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat45 = dot(vec2<f32>(x_73.x, x_73.y), vec2<f32>(x_75.x, x_75.y));
  let x_78 : f32 = u_xlat45;
  u_xlat45 = min(x_78, 1.0f);
  let x_81 : f32 = u_xlat45;
  u_xlat45 = (-(x_81) + 1.0f);
  let x_84 : f32 = u_xlat45;
  u_xlat45 = sqrt(x_84);
  let x_86 : f32 = u_xlat45;
  u_xlat45 = max(x_86, 0.0000000000000001f);
  let x_95 : vec4<f32> = vs_INTERP5;
  let x_98 : f32 = x_29.x_GlobalMipBias.x;
  let x_99 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_95.x, x_95.y), x_98);
  let x_100 : vec3<f32> = vec3<f32>(x_99.x, x_99.y, x_99.z);
  let x_101 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_111 : vec4<f32> = x_107.unity_ObjectToWorld[3i];
  let x_114 : vec4<f32> = x_107.unity_ObjectToWorld[3i];
  u_xlat31 = dot(vec3<f32>(x_111.x, x_111.y, x_111.z), vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : f32 = u_xlat31;
  u_xlat31 = sqrt(x_117);
  let x_119 : f32 = u_xlat31;
  u_xlat31 = fract(x_119);
  let x_121 : f32 = u_xlat31;
  let x_124 : f32 = x_29.x_NightFade;
  u_xlat31 = (x_121 + x_124);
  let x_129 : f32 = u_xlat31;
  u_xlatb31 = (x_129 >= 1.0f);
  let x_131 : bool = u_xlatb31;
  u_xlat31 = select(0.0f, 1.0f, x_131);
  let x_140 : vec4<f32> = vs_INTERP5;
  let x_143 : f32 = x_29.x_GlobalMipBias.x;
  let x_144 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_140.x, x_140.y), x_143);
  u_xlat3 = vec3<f32>(x_144.x, x_144.w, x_144.y);
  let x_151 : f32 = vs_INTERP4.w;
  u_xlatb46 = (0.0f < x_151);
  let x_154 : bool = u_xlatb46;
  u_xlat46 = select(-1.0f, 1.0f, x_154);
  let x_158 : f32 = x_107.unity_WorldTransformParams.w;
  u_xlatb47 = (x_158 >= 0.0f);
  let x_161 : bool = u_xlatb47;
  u_xlat47 = select(-1.0f, 1.0f, x_161);
  let x_163 : f32 = u_xlat46;
  let x_164 : f32 = u_xlat47;
  u_xlat46 = (x_163 * x_164);
  let x_167 : vec4<f32> = vs_INTERP4;
  let x_171 : vec3<f32> = vs_INTERP8;
  u_xlat4 = (vec3<f32>(x_167.y, x_167.z, x_167.x) * vec3<f32>(x_171.z, x_171.x, x_171.y));
  let x_174 : vec3<f32> = vs_INTERP8;
  let x_176 : vec4<f32> = vs_INTERP4;
  let x_179 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_174.y, x_174.z, x_174.x) * vec3<f32>(x_176.z, x_176.x, x_176.y)) + -(x_179));
  let x_182 : f32 = u_xlat46;
  let x_184 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_182, x_182, x_182) * x_184);
  let x_186 : vec4<f32> = u_xlat1;
  let x_188 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_186.y, x_186.y, x_186.y) * x_188);
  let x_190 : vec4<f32> = u_xlat1;
  let x_192 : vec4<f32> = vs_INTERP4;
  let x_195 : vec3<f32> = u_xlat4;
  let x_196 : vec3<f32> = ((vec3<f32>(x_190.x, x_190.x, x_190.x) * vec3<f32>(x_192.x, x_192.y, x_192.z)) + x_195);
  let x_197 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_196.x, x_196.y, x_197.z, x_196.z);
  let x_199 : f32 = u_xlat45;
  let x_201 : vec3<f32> = vs_INTERP8;
  let x_203 : vec4<f32> = u_xlat1;
  let x_205 : vec3<f32> = ((vec3<f32>(x_199, x_199, x_199) * x_201) + vec3<f32>(x_203.x, x_203.y, x_203.w));
  let x_206 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_205.x, x_205.y, x_206.z, x_205.z);
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat45 = dot(vec3<f32>(x_208.x, x_208.y, x_208.w), vec3<f32>(x_210.x, x_210.y, x_210.w));
  let x_213 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_213);
  let x_215 : f32 = u_xlat45;
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = (vec3<f32>(x_215, x_215, x_215) * vec3<f32>(x_217.x, x_217.y, x_217.w));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_219.z);
  let x_225 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb45 = (x_225 == 0.0f);
  let x_228 : vec3<f32> = vs_INTERP7;
  let x_233 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_228) + x_233);
  let x_235 : vec3<f32> = u_xlat4;
  let x_236 : vec3<f32> = u_xlat4;
  u_xlat47 = dot(x_235, x_236);
  let x_238 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_238);
  let x_240 : f32 = u_xlat47;
  let x_242 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_240, x_240, x_240) * x_242);
  let x_247 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat5.x = x_247;
  let x_251 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat5.y = x_251;
  let x_256 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat5.z = x_256;
  let x_258 : bool = u_xlatb45;
  if (x_258) {
    let x_263 : vec3<f32> = u_xlat4;
    x_260 = x_263;
  } else {
    let x_265 : vec4<f32> = u_xlat5;
    x_260 = vec3<f32>(x_265.x, x_265.y, x_265.z);
  }
  let x_267 : vec3<f32> = x_260;
  u_xlat4 = x_267;
  let x_268 : vec3<f32> = vs_INTERP7;
  let x_278 : vec4<f32> = x_276.x_CascadeShadowSplitSpheres0;
  let x_281 : vec3<f32> = (x_268 + -(vec3<f32>(x_278.x, x_278.y, x_278.z)));
  let x_282 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_285 : vec3<f32> = vs_INTERP7;
  let x_287 : vec4<f32> = x_276.x_CascadeShadowSplitSpheres1;
  let x_290 : vec3<f32> = (x_285 + -(vec3<f32>(x_287.x, x_287.y, x_287.z)));
  let x_291 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_294 : vec3<f32> = vs_INTERP7;
  let x_296 : vec4<f32> = x_276.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_294 + -(vec3<f32>(x_296.x, x_296.y, x_296.z)));
  let x_301 : vec3<f32> = vs_INTERP7;
  let x_303 : vec4<f32> = x_276.x_CascadeShadowSplitSpheres3;
  let x_306 : vec3<f32> = (x_301 + -(vec3<f32>(x_303.x, x_303.y, x_303.z)));
  let x_307 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat5;
  let x_311 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_309.x, x_309.y, x_309.z), vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_315 : vec4<f32> = u_xlat6;
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_315.x, x_315.y, x_315.z), vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_321 : vec3<f32> = u_xlat7;
  let x_322 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_321, x_322);
  let x_325 : vec4<f32> = u_xlat8;
  let x_327 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_334 : vec4<f32> = u_xlat5;
  let x_337 : vec4<f32> = x_276.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_334 < x_337);
  let x_340 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_340);
  let x_344 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_344);
  let x_348 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_348);
  let x_352 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_352);
  let x_356 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_356);
  let x_361 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_361);
  let x_365 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_365);
  let x_368 : vec4<f32> = u_xlat5;
  let x_370 : vec4<f32> = u_xlat6;
  let x_372 : vec3<f32> = (vec3<f32>(x_368.x, x_368.y, x_368.z) + vec3<f32>(x_370.y, x_370.z, x_370.w));
  let x_373 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_375 : vec4<f32> = u_xlat5;
  let x_378 : vec3<f32> = max(vec3<f32>(x_375.x, x_375.y, x_375.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_379.x, x_378.x, x_378.y, x_378.z);
  let x_381 : vec4<f32> = u_xlat6;
  u_xlat45 = dot(x_381, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_386 : f32 = u_xlat45;
  u_xlat45 = (-(x_386) + 4.0f);
  let x_391 : f32 = u_xlat45;
  u_xlatu45 = u32(x_391);
  let x_395 : u32 = u_xlatu45;
  u_xlati45 = (bitcast<i32>(x_395) << bitcast<u32>(2i));
  let x_398 : vec3<f32> = vs_INTERP7;
  let x_400 : i32 = u_xlati45;
  let x_403 : i32 = u_xlati45;
  let x_407 : vec4<f32> = x_276.x_MainLightWorldToShadow[((x_400 + 1i) / 4i)][((x_403 + 1i) % 4i)];
  let x_409 : vec3<f32> = (vec3<f32>(x_398.y, x_398.y, x_398.y) * vec3<f32>(x_407.x, x_407.y, x_407.z));
  let x_410 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_412 : i32 = u_xlati45;
  let x_414 : i32 = u_xlati45;
  let x_417 : vec4<f32> = x_276.x_MainLightWorldToShadow[(x_412 / 4i)][(x_414 % 4i)];
  let x_419 : vec3<f32> = vs_INTERP7;
  let x_422 : vec4<f32> = u_xlat5;
  let x_424 : vec3<f32> = ((vec3<f32>(x_417.x, x_417.y, x_417.z) * vec3<f32>(x_419.x, x_419.x, x_419.x)) + vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : i32 = u_xlati45;
  let x_430 : i32 = u_xlati45;
  let x_434 : vec4<f32> = x_276.x_MainLightWorldToShadow[((x_427 + 2i) / 4i)][((x_430 + 2i) % 4i)];
  let x_436 : vec3<f32> = vs_INTERP7;
  let x_439 : vec4<f32> = u_xlat5;
  let x_441 : vec3<f32> = ((vec3<f32>(x_434.x, x_434.y, x_434.z) * vec3<f32>(x_436.z, x_436.z, x_436.z)) + vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat5;
  let x_446 : i32 = u_xlati45;
  let x_449 : i32 = u_xlati45;
  let x_453 : vec4<f32> = x_276.x_MainLightWorldToShadow[((x_446 + 3i) / 4i)][((x_449 + 3i) % 4i)];
  let x_455 : vec3<f32> = (vec3<f32>(x_444.x, x_444.y, x_444.z) + vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_456 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_459 : f32 = vs_INTERP7.y;
  let x_461 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat45 = (x_459 * x_461);
  let x_464 : f32 = x_29.unity_MatrixV[0i].z;
  let x_466 : f32 = vs_INTERP7.x;
  let x_468 : f32 = u_xlat45;
  u_xlat45 = ((x_464 * x_466) + x_468);
  let x_471 : f32 = x_29.unity_MatrixV[2i].z;
  let x_473 : f32 = vs_INTERP7.z;
  let x_475 : f32 = u_xlat45;
  u_xlat45 = ((x_471 * x_473) + x_475);
  let x_477 : f32 = u_xlat45;
  let x_479 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat45 = (x_477 + x_479);
  let x_481 : f32 = u_xlat45;
  let x_484 : f32 = x_29.x_ProjectionParams.y;
  u_xlat45 = (-(x_481) + -(x_484));
  let x_487 : f32 = u_xlat45;
  u_xlat45 = max(x_487, 0.0f);
  let x_489 : f32 = u_xlat45;
  let x_492 : f32 = x_29.unity_FogParams.x;
  u_xlat45 = (x_489 * x_492);
  let x_501 : vec2<f32> = vs_INTERP0;
  let x_503 : f32 = x_29.x_GlobalMipBias.x;
  let x_504 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_501, x_503);
  u_xlat6 = x_504;
  let x_509 : vec2<f32> = vs_INTERP0;
  let x_511 : f32 = x_29.x_GlobalMipBias.x;
  let x_512 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_509, x_511);
  u_xlat7 = vec3<f32>(x_512.x, x_512.y, x_512.z);
  let x_514 : vec4<f32> = u_xlat6;
  let x_518 : vec3<f32> = (vec3<f32>(x_514.x, x_514.y, x_514.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_519 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat1;
  let x_523 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_521.x, x_521.y, x_521.w), vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_526 : f32 = u_xlat47;
  u_xlat47 = (x_526 + 0.5f);
  let x_529 : f32 = u_xlat47;
  let x_531 : vec3<f32> = u_xlat7;
  let x_532 : vec3<f32> = (vec3<f32>(x_529, x_529, x_529) * x_531);
  let x_533 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_536 : f32 = u_xlat6.w;
  u_xlat47 = max(x_536, 0.00009999999747378752f);
  let x_539 : vec4<f32> = u_xlat6;
  let x_541 : f32 = u_xlat47;
  let x_543 : vec3<f32> = (vec3<f32>(x_539.x, x_539.y, x_539.z) / vec3<f32>(x_541, x_541, x_541));
  let x_544 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec3<f32> = u_xlat3;
  let x_547 : vec2<f32> = vec2<f32>(x_546.x, x_546.y);
  let x_548 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_547.x, x_547.y, x_548.z);
  let x_550 : vec3<f32> = u_xlat3;
  let x_554 : vec2<f32> = clamp(vec2<f32>(x_550.x, x_550.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_555 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_554.x, x_554.y, x_555.z);
  let x_558 : f32 = u_xlat3.x;
  u_xlat47 = ((-(x_558) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_564 : f32 = u_xlat47;
  let x_567 : f32 = u_xlat3.y;
  u_xlat48 = (-(x_564) + x_567);
  let x_569 : vec3<f32> = u_xlat0;
  let x_570 : f32 = u_xlat47;
  u_xlat7 = (x_569 * vec3<f32>(x_570, x_570, x_570));
  let x_573 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_573 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_577 : vec3<f32> = u_xlat3;
  let x_579 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_577.x, x_577.x, x_577.x) * x_579) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_585 : f32 = u_xlat3.y;
  u_xlat47 = (-(x_585) + 1.0f);
  let x_588 : f32 = u_xlat47;
  let x_589 : f32 = u_xlat47;
  u_xlat3.x = (x_588 * x_589);
  let x_593 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_593, 0.0078125f);
  let x_599 : f32 = u_xlat3.x;
  let x_601 : f32 = u_xlat3.x;
  u_xlat18 = (x_599 * x_601);
  let x_603 : f32 = u_xlat48;
  u_xlat48 = (x_603 + 1.0f);
  let x_605 : f32 = u_xlat48;
  u_xlat48 = min(x_605, 1.0f);
  let x_609 : f32 = u_xlat3.x;
  u_xlat49 = ((x_609 * 4.0f) + 2.0f);
  let x_614 : f32 = u_xlat3.z;
  u_xlat33 = min(x_614, 1.0f);
  let x_617 : vec4<f32> = u_xlat5;
  let x_618 : vec2<f32> = vec2<f32>(x_617.x, x_617.y);
  let x_620 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_618.x, x_618.y, x_620);
  let x_632 : vec3<f32> = txVec0;
  let x_634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_632.xy, x_632.z);
  u_xlat5.x = x_634;
  let x_639 : f32 = x_276.x_MainLightShadowParams.x;
  u_xlat20.x = (-(x_639) + 1.0f);
  let x_644 : f32 = u_xlat5.x;
  let x_646 : f32 = x_276.x_MainLightShadowParams.x;
  let x_649 : f32 = u_xlat20.x;
  u_xlat5.x = ((x_644 * x_646) + x_649);
  let x_654 : f32 = u_xlat5.z;
  u_xlatb20 = (0.0f >= x_654);
  let x_660 : f32 = u_xlat5.z;
  u_xlatb35.x = (x_660 >= 1.0f);
  let x_664 : bool = u_xlatb35.x;
  let x_665 : bool = u_xlatb20;
  u_xlatb20 = (x_664 | x_665);
  let x_667 : bool = u_xlatb20;
  if (x_667) {
    x_669 = 1.0f;
  } else {
    let x_674 : f32 = u_xlat5.x;
    x_669 = x_674;
  }
  let x_675 : f32 = x_669;
  u_xlat5.x = x_675;
  let x_677 : vec3<f32> = vs_INTERP7;
  let x_679 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat20 = (x_677 + -(x_679));
  let x_682 : vec3<f32> = u_xlat20;
  let x_683 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_682, x_683);
  let x_689 : f32 = u_xlat20.x;
  let x_691 : f32 = x_276.x_MainLightShadowParams.z;
  let x_694 : f32 = x_276.x_MainLightShadowParams.w;
  u_xlat35.x = ((x_689 * x_691) + x_694);
  let x_698 : f32 = u_xlat35.x;
  u_xlat35.x = clamp(x_698, 0.0f, 1.0f);
  let x_703 : f32 = u_xlat5.x;
  u_xlat50 = (-(x_703) + 1.0f);
  let x_707 : f32 = u_xlat35.x;
  let x_708 : f32 = u_xlat50;
  let x_711 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_707 * x_708) + x_711);
  let x_721 : f32 = x_719.x_MainLightCookieTextureFormat;
  u_xlatb35.x = !((x_721 == -1.0f));
  let x_725 : bool = u_xlatb35.x;
  if (x_725) {
    let x_728 : vec3<f32> = vs_INTERP7;
    let x_731 : vec4<f32> = x_719.x_MainLightWorldToLight[1i];
    u_xlat35 = (vec2<f32>(x_728.y, x_728.y) * vec2<f32>(x_731.x, x_731.y));
    let x_735 : vec4<f32> = x_719.x_MainLightWorldToLight[0i];
    let x_737 : vec3<f32> = vs_INTERP7;
    let x_740 : vec2<f32> = u_xlat35;
    u_xlat35 = ((vec2<f32>(x_735.x, x_735.y) * vec2<f32>(x_737.x, x_737.x)) + x_740);
    let x_743 : vec4<f32> = x_719.x_MainLightWorldToLight[2i];
    let x_745 : vec3<f32> = vs_INTERP7;
    let x_748 : vec2<f32> = u_xlat35;
    u_xlat35 = ((vec2<f32>(x_743.x, x_743.y) * vec2<f32>(x_745.z, x_745.z)) + x_748);
    let x_750 : vec2<f32> = u_xlat35;
    let x_752 : vec4<f32> = x_719.x_MainLightWorldToLight[3i];
    u_xlat35 = (x_750 + vec2<f32>(x_752.x, x_752.y));
    let x_755 : vec2<f32> = u_xlat35;
    u_xlat35 = ((x_755 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_764 : vec2<f32> = u_xlat35;
    let x_766 : f32 = x_29.x_GlobalMipBias.x;
    let x_767 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_764, x_766);
    u_xlat8 = x_767;
    let x_769 : f32 = x_719.x_MainLightCookieTextureFormat;
    let x_771 : f32 = x_719.x_MainLightCookieTextureFormat;
    let x_773 : f32 = x_719.x_MainLightCookieTextureFormat;
    let x_775 : f32 = x_719.x_MainLightCookieTextureFormat;
    let x_776 : vec4<f32> = vec4<f32>(x_769, x_771, x_773, x_775);
    let x_783 : vec4<bool> = (vec4<f32>(x_776.x, x_776.y, x_776.z, x_776.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb35 = vec2<bool>(x_783.x, x_783.y);
    let x_786 : bool = u_xlatb35.y;
    if (x_786) {
      let x_791 : f32 = u_xlat8.w;
      x_787 = x_791;
    } else {
      let x_794 : f32 = u_xlat8.x;
      x_787 = x_794;
    }
    let x_795 : f32 = x_787;
    u_xlat50 = x_795;
    let x_797 : bool = u_xlatb35.x;
    if (x_797) {
      let x_801 : vec4<f32> = u_xlat8;
      x_798 = vec3<f32>(x_801.x, x_801.y, x_801.z);
    } else {
      let x_804 : f32 = u_xlat50;
      x_798 = vec3<f32>(x_804, x_804, x_804);
    }
    let x_806 : vec3<f32> = x_798;
    let x_807 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
  }
  let x_813 : vec4<f32> = u_xlat8;
  let x_816 : vec4<f32> = x_29.x_MainLightColor;
  let x_818 : vec3<f32> = (vec3<f32>(x_813.x, x_813.y, x_813.z) * vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec3<f32> = u_xlat4;
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat35.x = dot(-(x_821), vec3<f32>(x_823.x, x_823.y, x_823.w));
  let x_828 : f32 = u_xlat35.x;
  let x_830 : f32 = u_xlat35.x;
  u_xlat35.x = (x_828 + x_830);
  let x_834 : vec4<f32> = u_xlat1;
  let x_836 : vec2<f32> = u_xlat35;
  let x_840 : vec3<f32> = u_xlat4;
  let x_842 : vec3<f32> = ((vec3<f32>(x_834.x, x_834.y, x_834.w) * -(vec3<f32>(x_836.x, x_836.x, x_836.x))) + -(x_840));
  let x_843 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec4<f32> = u_xlat1;
  let x_847 : vec3<f32> = u_xlat4;
  u_xlat35.x = dot(vec3<f32>(x_845.x, x_845.y, x_845.w), x_847);
  let x_851 : f32 = u_xlat35.x;
  u_xlat35.x = clamp(x_851, 0.0f, 1.0f);
  let x_855 : f32 = u_xlat35.x;
  u_xlat35.x = (-(x_855) + 1.0f);
  let x_860 : f32 = u_xlat35.x;
  let x_862 : f32 = u_xlat35.x;
  u_xlat35.x = (x_860 * x_862);
  let x_866 : f32 = u_xlat35.x;
  let x_868 : f32 = u_xlat35.x;
  u_xlat35.x = (x_866 * x_868);
  let x_871 : f32 = u_xlat47;
  u_xlat50 = ((-(x_871) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_877 : f32 = u_xlat47;
  let x_878 : f32 = u_xlat50;
  u_xlat2.w = (x_877 * x_878);
  let x_881 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_881 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_894 : vec4<f32> = u_xlat9;
  let x_897 : f32 = u_xlat2.w;
  let x_898 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_894.x, x_894.y, x_894.z), x_897);
  u_xlat9 = x_898;
  let x_900 : f32 = u_xlat9.w;
  u_xlat47 = (x_900 + -1.0f);
  let x_903 : f32 = x_107.unity_SpecCube0_HDR.w;
  let x_904 : f32 = u_xlat47;
  u_xlat47 = ((x_903 * x_904) + 1.0f);
  let x_907 : f32 = u_xlat47;
  u_xlat47 = max(x_907, 0.0f);
  let x_909 : f32 = u_xlat47;
  u_xlat47 = log2(x_909);
  let x_911 : f32 = u_xlat47;
  let x_913 : f32 = x_107.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_911 * x_913);
  let x_915 : f32 = u_xlat47;
  u_xlat47 = exp2(x_915);
  let x_917 : f32 = u_xlat47;
  let x_919 : f32 = x_107.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_917 * x_919);
  let x_921 : vec4<f32> = u_xlat9;
  let x_923 : f32 = u_xlat47;
  let x_925 : vec3<f32> = (vec3<f32>(x_921.x, x_921.y, x_921.z) * vec3<f32>(x_923, x_923, x_923));
  let x_926 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_929 : vec3<f32> = u_xlat3;
  let x_931 : vec3<f32> = u_xlat3;
  u_xlat10 = ((vec2<f32>(x_929.x, x_929.x) * vec2<f32>(x_931.x, x_931.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_937 : f32 = u_xlat10.y;
  u_xlat47 = (1.0f / x_937);
  let x_940 : vec3<f32> = u_xlat0;
  let x_942 : f32 = u_xlat48;
  u_xlat25 = (-(x_940) + vec3<f32>(x_942, x_942, x_942));
  let x_945 : vec2<f32> = u_xlat35;
  let x_947 : vec3<f32> = u_xlat25;
  let x_949 : vec3<f32> = u_xlat0;
  u_xlat25 = ((vec3<f32>(x_945.x, x_945.x, x_945.x) * x_947) + x_949);
  let x_951 : f32 = u_xlat47;
  let x_953 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_951, x_951, x_951) * x_953);
  let x_955 : vec4<f32> = u_xlat9;
  let x_957 : vec3<f32> = u_xlat25;
  let x_958 : vec3<f32> = (vec3<f32>(x_955.x, x_955.y, x_955.z) * x_957);
  let x_959 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
  let x_961 : vec4<f32> = u_xlat6;
  let x_963 : vec3<f32> = u_xlat7;
  let x_965 : vec4<f32> = u_xlat9;
  let x_967 : vec3<f32> = ((vec3<f32>(x_961.x, x_961.y, x_961.z) * x_963) + vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_968 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  let x_971 : f32 = u_xlat5.x;
  let x_973 : f32 = x_107.unity_LightData.z;
  u_xlat47 = (x_971 * x_973);
  let x_975 : vec4<f32> = u_xlat1;
  let x_978 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_975.x, x_975.y, x_975.w), vec3<f32>(x_978.x, x_978.y, x_978.z));
  let x_983 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_983, 0.0f, 1.0f);
  let x_986 : f32 = u_xlat47;
  let x_988 : f32 = u_xlat3.x;
  u_xlat47 = (x_986 * x_988);
  let x_990 : f32 = u_xlat47;
  let x_992 : vec4<f32> = u_xlat8;
  let x_994 : vec3<f32> = (vec3<f32>(x_990, x_990, x_990) * vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_994.x, x_995.y, x_994.y, x_994.z);
  let x_997 : vec3<f32> = u_xlat4;
  let x_999 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1001 : vec3<f32> = (x_997 + vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1002 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1004 : vec4<f32> = u_xlat8;
  let x_1006 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_1004.x, x_1004.y, x_1004.z), vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : f32 = u_xlat47;
  u_xlat47 = max(x_1009, 1.17549435e-38f);
  let x_1012 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_1012);
  let x_1014 : f32 = u_xlat47;
  let x_1016 : vec4<f32> = u_xlat8;
  let x_1018 : vec3<f32> = (vec3<f32>(x_1014, x_1014, x_1014) * vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec4<f32> = u_xlat1;
  let x_1023 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_1021.x, x_1021.y, x_1021.w), vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
  let x_1026 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1026, 0.0f, 1.0f);
  let x_1029 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1031 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
  let x_1036 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1036, 0.0f, 1.0f);
  let x_1039 : f32 = u_xlat47;
  let x_1040 : f32 = u_xlat47;
  u_xlat47 = (x_1039 * x_1040);
  let x_1042 : f32 = u_xlat47;
  let x_1044 : f32 = u_xlat10.x;
  u_xlat47 = ((x_1042 * x_1044) + 1.00001001358032226562f);
  let x_1049 : f32 = u_xlat3.x;
  let x_1051 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1049 * x_1051);
  let x_1054 : f32 = u_xlat47;
  let x_1055 : f32 = u_xlat47;
  u_xlat47 = (x_1054 * x_1055);
  let x_1058 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1058, 0.10000000149011611938f);
  let x_1062 : f32 = u_xlat47;
  let x_1064 : f32 = u_xlat3.x;
  u_xlat47 = (x_1062 * x_1064);
  let x_1066 : f32 = u_xlat49;
  let x_1067 : f32 = u_xlat47;
  u_xlat47 = (x_1066 * x_1067);
  let x_1069 : f32 = u_xlat18;
  let x_1070 : f32 = u_xlat47;
  u_xlat47 = (x_1069 / x_1070);
  let x_1072 : vec3<f32> = u_xlat0;
  let x_1073 : f32 = u_xlat47;
  let x_1076 : vec3<f32> = u_xlat7;
  let x_1077 : vec3<f32> = ((x_1072 * vec3<f32>(x_1073, x_1073, x_1073)) + x_1076);
  let x_1078 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
  let x_1080 : vec4<f32> = u_xlat5;
  let x_1082 : vec4<f32> = u_xlat8;
  let x_1084 : vec3<f32> = (vec3<f32>(x_1080.x, x_1080.z, x_1080.w) * vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
  let x_1085 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1084.x, x_1085.y, x_1084.y, x_1084.z);
  let x_1088 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1090 : f32 = x_107.unity_LightData.y;
  u_xlat47 = min(x_1088, x_1090);
  let x_1093 : f32 = u_xlat47;
  u_xlatu47 = bitcast<u32>(i32(x_1093));
  let x_1097 : f32 = u_xlat20.x;
  let x_1100 : f32 = x_276.x_AdditionalShadowFadeParams.x;
  let x_1103 : f32 = x_276.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1097 * x_1100) + x_1103);
  let x_1107 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1107, 0.0f, 1.0f);
  let x_1112 : f32 = x_719.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1114 : f32 = x_719.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1116 : f32 = x_719.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1118 : f32 = x_719.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1119 : vec4<f32> = vec4<f32>(x_1112, x_1114, x_1116, x_1118);
  let x_1126 : vec4<bool> = (vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1119.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_1126.x, x_1126.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1138 : u32 = u_xlatu_loop_1;
    let x_1139 : u32 = u_xlatu47;
    if ((x_1138 < x_1139)) {
    } else {
      break;
    }
    let x_1142 : u32 = u_xlatu_loop_1;
    u_xlatu20 = (x_1142 >> 2u);
    let x_1145 : u32 = u_xlatu_loop_1;
    u_xlati51 = bitcast<i32>((x_1145 & 3u));
    let x_1148 : u32 = u_xlatu20;
    let x_1151 : vec4<f32> = x_107.unity_LightIndices[bitcast<i32>(x_1148)];
    let x_1161 : i32 = u_xlati51;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1166 : vec4<u32> = indexable[x_1161];
    u_xlat20.x = dot(x_1151, bitcast<vec4<f32>>(x_1166));
    let x_1172 : f32 = u_xlat20.x;
    u_xlati20 = i32(x_1172);
    let x_1174 : vec3<f32> = vs_INTERP7;
    let x_1185 : i32 = u_xlati20;
    let x_1187 : vec4<f32> = x_1184.x_AdditionalLightsPosition[x_1185];
    let x_1190 : i32 = u_xlati20;
    let x_1192 : vec4<f32> = x_1184.x_AdditionalLightsPosition[x_1190];
    u_xlat25 = ((-(x_1174) * vec3<f32>(x_1187.w, x_1187.w, x_1187.w)) + vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
    let x_1196 : vec3<f32> = u_xlat25;
    let x_1197 : vec3<f32> = u_xlat25;
    u_xlat51 = dot(x_1196, x_1197);
    let x_1199 : f32 = u_xlat51;
    u_xlat51 = max(x_1199, 0.00006103515625f);
    let x_1203 : f32 = u_xlat51;
    u_xlat52 = inverseSqrt(x_1203);
    let x_1206 : f32 = u_xlat52;
    let x_1208 : vec3<f32> = u_xlat25;
    u_xlat11 = (vec3<f32>(x_1206, x_1206, x_1206) * x_1208);
    let x_1211 : f32 = u_xlat51;
    u_xlat38 = (1.0f / x_1211);
    let x_1213 : f32 = u_xlat51;
    let x_1214 : i32 = u_xlati20;
    let x_1216 : f32 = x_1184.x_AdditionalLightsAttenuation[x_1214].x;
    u_xlat51 = (x_1213 * x_1216);
    let x_1218 : f32 = u_xlat51;
    let x_1220 : f32 = u_xlat51;
    u_xlat51 = ((-(x_1218) * x_1220) + 1.0f);
    let x_1223 : f32 = u_xlat51;
    u_xlat51 = max(x_1223, 0.0f);
    let x_1225 : f32 = u_xlat51;
    let x_1226 : f32 = u_xlat51;
    u_xlat51 = (x_1225 * x_1226);
    let x_1228 : f32 = u_xlat51;
    let x_1229 : f32 = u_xlat38;
    u_xlat51 = (x_1228 * x_1229);
    let x_1231 : i32 = u_xlati20;
    let x_1233 : vec4<f32> = x_1184.x_AdditionalLightsSpotDir[x_1231];
    let x_1235 : vec3<f32> = u_xlat11;
    u_xlat38 = dot(vec3<f32>(x_1233.x, x_1233.y, x_1233.z), x_1235);
    let x_1237 : f32 = u_xlat38;
    let x_1238 : i32 = u_xlati20;
    let x_1240 : f32 = x_1184.x_AdditionalLightsAttenuation[x_1238].z;
    let x_1242 : i32 = u_xlati20;
    let x_1244 : f32 = x_1184.x_AdditionalLightsAttenuation[x_1242].w;
    u_xlat38 = ((x_1237 * x_1240) + x_1244);
    let x_1246 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1246, 0.0f, 1.0f);
    let x_1248 : f32 = u_xlat38;
    let x_1249 : f32 = u_xlat38;
    u_xlat38 = (x_1248 * x_1249);
    let x_1251 : f32 = u_xlat51;
    let x_1252 : f32 = u_xlat38;
    u_xlat51 = (x_1251 * x_1252);
    let x_1256 : i32 = u_xlati20;
    let x_1258 : f32 = x_276.x_AdditionalShadowParams[x_1256].w;
    u_xlati38 = i32(x_1258);
    let x_1261 : i32 = u_xlati38;
    u_xlatb53 = (x_1261 >= 0i);
    let x_1263 : bool = u_xlatb53;
    if (x_1263) {
      let x_1267 : i32 = u_xlati20;
      let x_1269 : f32 = x_276.x_AdditionalShadowParams[x_1267].z;
      u_xlatb53 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1269, x_1269, x_1269, x_1269))));
      let x_1273 : bool = u_xlatb53;
      if (x_1273) {
        let x_1277 : vec3<f32> = u_xlat11;
        let x_1280 : vec3<f32> = u_xlat11;
        let x_1283 : vec4<bool> = (abs(vec4<f32>(x_1277.z, x_1277.z, x_1277.y, x_1277.z)) >= abs(vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.x)));
        let x_1285 : vec3<bool> = vec3<bool>(x_1283.x, x_1283.y, x_1283.z);
        let x_1286 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);
        let x_1289 : bool = u_xlatb12.y;
        let x_1291 : bool = u_xlatb12.x;
        u_xlatb53 = (x_1289 & x_1291);
        let x_1293 : vec3<f32> = u_xlat11;
        let x_1296 : vec4<bool> = (-(vec4<f32>(x_1293.z, x_1293.y, x_1293.z, x_1293.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1297 : vec3<bool> = vec3<bool>(x_1296.x, x_1296.y, x_1296.w);
        let x_1298 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_1297.x, x_1297.y, x_1298.z, x_1297.z);
        let x_1302 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_1302);
        let x_1307 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_1307);
        let x_1312 : bool = u_xlatb12.w;
        u_xlat54 = select(0.0f, 1.0f, x_1312);
        let x_1315 : bool = u_xlatb12.z;
        if (x_1315) {
          let x_1320 : f32 = u_xlat12.y;
          x_1316 = x_1320;
        } else {
          let x_1322 : f32 = u_xlat54;
          x_1316 = x_1322;
        }
        let x_1323 : f32 = x_1316;
        u_xlat54 = x_1323;
        let x_1325 : bool = u_xlatb53;
        if (x_1325) {
          let x_1330 : f32 = u_xlat12.x;
          x_1326 = x_1330;
        } else {
          let x_1332 : f32 = u_xlat54;
          x_1326 = x_1332;
        }
        let x_1333 : f32 = x_1326;
        u_xlat53 = x_1333;
        let x_1334 : i32 = u_xlati20;
        let x_1336 : f32 = x_276.x_AdditionalShadowParams[x_1334].w;
        u_xlat54 = trunc(x_1336);
        let x_1338 : f32 = u_xlat53;
        let x_1339 : f32 = u_xlat54;
        u_xlat53 = (x_1338 + x_1339);
        let x_1341 : f32 = u_xlat53;
        u_xlati38 = i32(x_1341);
      }
      let x_1343 : i32 = u_xlati38;
      u_xlati38 = (x_1343 << bitcast<u32>(2i));
      let x_1345 : vec3<f32> = vs_INTERP7;
      let x_1348 : i32 = u_xlati38;
      let x_1351 : i32 = u_xlati38;
      let x_1355 : vec4<f32> = x_276.x_AdditionalLightsWorldToShadow[((x_1348 + 1i) / 4i)][((x_1351 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_1345.y, x_1345.y, x_1345.y, x_1345.y) * x_1355);
      let x_1357 : i32 = u_xlati38;
      let x_1359 : i32 = u_xlati38;
      let x_1362 : vec4<f32> = x_276.x_AdditionalLightsWorldToShadow[(x_1357 / 4i)][(x_1359 % 4i)];
      let x_1363 : vec3<f32> = vs_INTERP7;
      let x_1366 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_1362 * vec4<f32>(x_1363.x, x_1363.x, x_1363.x, x_1363.x)) + x_1366);
      let x_1368 : i32 = u_xlati38;
      let x_1371 : i32 = u_xlati38;
      let x_1375 : vec4<f32> = x_276.x_AdditionalLightsWorldToShadow[((x_1368 + 2i) / 4i)][((x_1371 + 2i) % 4i)];
      let x_1376 : vec3<f32> = vs_INTERP7;
      let x_1379 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_1375 * vec4<f32>(x_1376.z, x_1376.z, x_1376.z, x_1376.z)) + x_1379);
      let x_1381 : vec4<f32> = u_xlat12;
      let x_1382 : i32 = u_xlati38;
      let x_1385 : i32 = u_xlati38;
      let x_1389 : vec4<f32> = x_276.x_AdditionalLightsWorldToShadow[((x_1382 + 3i) / 4i)][((x_1385 + 3i) % 4i)];
      u_xlat12 = (x_1381 + x_1389);
      let x_1391 : vec4<f32> = u_xlat12;
      let x_1393 : vec4<f32> = u_xlat12;
      let x_1395 : vec3<f32> = (vec3<f32>(x_1391.x, x_1391.y, x_1391.z) / vec3<f32>(x_1393.w, x_1393.w, x_1393.w));
      let x_1396 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
      let x_1399 : vec4<f32> = u_xlat12;
      let x_1400 : vec2<f32> = vec2<f32>(x_1399.x, x_1399.y);
      let x_1402 : f32 = u_xlat12.z;
      txVec1 = vec3<f32>(x_1400.x, x_1400.y, x_1402);
      let x_1410 : vec3<f32> = txVec1;
      let x_1412 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1410.xy, x_1410.z);
      u_xlat38 = x_1412;
      let x_1413 : i32 = u_xlati20;
      let x_1415 : f32 = x_276.x_AdditionalShadowParams[x_1413].x;
      u_xlat53 = (1.0f + -(x_1415));
      let x_1418 : f32 = u_xlat38;
      let x_1419 : i32 = u_xlati20;
      let x_1421 : f32 = x_276.x_AdditionalShadowParams[x_1419].x;
      let x_1423 : f32 = u_xlat53;
      u_xlat38 = ((x_1418 * x_1421) + x_1423);
      let x_1426 : f32 = u_xlat12.z;
      u_xlatb53 = (0.0f >= x_1426);
      let x_1430 : f32 = u_xlat12.z;
      u_xlatb54 = (x_1430 >= 1.0f);
      let x_1432 : bool = u_xlatb53;
      let x_1433 : bool = u_xlatb54;
      u_xlatb53 = (x_1432 | x_1433);
      let x_1435 : bool = u_xlatb53;
      let x_1436 : f32 = u_xlat38;
      u_xlat38 = select(x_1436, 1.0f, x_1435);
    } else {
      u_xlat38 = 1.0f;
    }
    let x_1439 : f32 = u_xlat38;
    u_xlat53 = (-(x_1439) + 1.0f);
    let x_1443 : f32 = u_xlat3.x;
    let x_1444 : f32 = u_xlat53;
    let x_1446 : f32 = u_xlat38;
    u_xlat38 = ((x_1443 * x_1444) + x_1446);
    let x_1449 : i32 = u_xlati20;
    u_xlati53 = (1i << bitcast<u32>((x_1449 & 31i)));
    let x_1453 : i32 = u_xlati53;
    let x_1456 : f32 = x_719.x_AdditionalLightsCookieEnableBits;
    u_xlati53 = bitcast<i32>((bitcast<u32>(x_1453) & bitcast<u32>(x_1456)));
    let x_1460 : i32 = u_xlati53;
    if ((x_1460 != 0i)) {
      let x_1464 : i32 = u_xlati20;
      let x_1466 : f32 = x_719.x_AdditionalLightsLightTypes[x_1464].el;
      u_xlati53 = i32(x_1466);
      let x_1469 : i32 = u_xlati53;
      u_xlati54 = select(1i, 0i, (x_1469 != 0i));
      let x_1473 : i32 = u_xlati20;
      u_xlati56 = (x_1473 << bitcast<u32>(2i));
      let x_1475 : i32 = u_xlati54;
      if ((x_1475 != 0i)) {
        let x_1479 : vec3<f32> = vs_INTERP7;
        let x_1481 : i32 = u_xlati56;
        let x_1484 : i32 = u_xlati56;
        let x_1488 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1481 + 1i) / 4i)][((x_1484 + 1i) % 4i)];
        let x_1490 : vec3<f32> = (vec3<f32>(x_1479.y, x_1479.y, x_1479.y) * vec3<f32>(x_1488.x, x_1488.y, x_1488.w));
        let x_1491 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1491.w);
        let x_1493 : i32 = u_xlati56;
        let x_1495 : i32 = u_xlati56;
        let x_1498 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[(x_1493 / 4i)][(x_1495 % 4i)];
        let x_1500 : vec3<f32> = vs_INTERP7;
        let x_1503 : vec4<f32> = u_xlat12;
        let x_1505 : vec3<f32> = ((vec3<f32>(x_1498.x, x_1498.y, x_1498.w) * vec3<f32>(x_1500.x, x_1500.x, x_1500.x)) + vec3<f32>(x_1503.x, x_1503.y, x_1503.z));
        let x_1506 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1506.w);
        let x_1508 : i32 = u_xlati56;
        let x_1511 : i32 = u_xlati56;
        let x_1515 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1508 + 2i) / 4i)][((x_1511 + 2i) % 4i)];
        let x_1517 : vec3<f32> = vs_INTERP7;
        let x_1520 : vec4<f32> = u_xlat12;
        let x_1522 : vec3<f32> = ((vec3<f32>(x_1515.x, x_1515.y, x_1515.w) * vec3<f32>(x_1517.z, x_1517.z, x_1517.z)) + vec3<f32>(x_1520.x, x_1520.y, x_1520.z));
        let x_1523 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1522.x, x_1522.y, x_1522.z, x_1523.w);
        let x_1525 : vec4<f32> = u_xlat12;
        let x_1527 : i32 = u_xlati56;
        let x_1530 : i32 = u_xlati56;
        let x_1534 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1527 + 3i) / 4i)][((x_1530 + 3i) % 4i)];
        let x_1536 : vec3<f32> = (vec3<f32>(x_1525.x, x_1525.y, x_1525.z) + vec3<f32>(x_1534.x, x_1534.y, x_1534.w));
        let x_1537 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1536.x, x_1536.y, x_1536.z, x_1537.w);
        let x_1539 : vec4<f32> = u_xlat12;
        let x_1541 : vec4<f32> = u_xlat12;
        let x_1543 : vec2<f32> = (vec2<f32>(x_1539.x, x_1539.y) / vec2<f32>(x_1541.z, x_1541.z));
        let x_1544 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1543.x, x_1543.y, x_1544.z, x_1544.w);
        let x_1546 : vec4<f32> = u_xlat12;
        let x_1549 : vec2<f32> = ((vec2<f32>(x_1546.x, x_1546.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1550 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1549.x, x_1549.y, x_1550.z, x_1550.w);
        let x_1552 : vec4<f32> = u_xlat12;
        let x_1556 : vec2<f32> = clamp(vec2<f32>(x_1552.x, x_1552.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1557 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1556.x, x_1556.y, x_1557.z, x_1557.w);
        let x_1559 : i32 = u_xlati20;
        let x_1561 : vec4<f32> = x_719.x_AdditionalLightsCookieAtlasUVRects[x_1559];
        let x_1563 : vec4<f32> = u_xlat12;
        let x_1566 : i32 = u_xlati20;
        let x_1568 : vec4<f32> = x_719.x_AdditionalLightsCookieAtlasUVRects[x_1566];
        let x_1570 : vec2<f32> = ((vec2<f32>(x_1561.x, x_1561.y) * vec2<f32>(x_1563.x, x_1563.y)) + vec2<f32>(x_1568.z, x_1568.w));
        let x_1571 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1570.x, x_1570.y, x_1571.z, x_1571.w);
      } else {
        let x_1574 : i32 = u_xlati53;
        u_xlatb53 = (x_1574 == 1i);
        let x_1576 : bool = u_xlatb53;
        u_xlati53 = select(0i, 1i, x_1576);
        let x_1578 : i32 = u_xlati53;
        if ((x_1578 != 0i)) {
          let x_1583 : vec3<f32> = vs_INTERP7;
          let x_1585 : i32 = u_xlati56;
          let x_1588 : i32 = u_xlati56;
          let x_1592 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1585 + 1i) / 4i)][((x_1588 + 1i) % 4i)];
          u_xlat42 = (vec2<f32>(x_1583.y, x_1583.y) * vec2<f32>(x_1592.x, x_1592.y));
          let x_1595 : i32 = u_xlati56;
          let x_1597 : i32 = u_xlati56;
          let x_1600 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[(x_1595 / 4i)][(x_1597 % 4i)];
          let x_1602 : vec3<f32> = vs_INTERP7;
          let x_1605 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1600.x, x_1600.y) * vec2<f32>(x_1602.x, x_1602.x)) + x_1605);
          let x_1607 : i32 = u_xlati56;
          let x_1610 : i32 = u_xlati56;
          let x_1614 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1607 + 2i) / 4i)][((x_1610 + 2i) % 4i)];
          let x_1616 : vec3<f32> = vs_INTERP7;
          let x_1619 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1614.x, x_1614.y) * vec2<f32>(x_1616.z, x_1616.z)) + x_1619);
          let x_1621 : vec2<f32> = u_xlat42;
          let x_1622 : i32 = u_xlati56;
          let x_1625 : i32 = u_xlati56;
          let x_1629 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1622 + 3i) / 4i)][((x_1625 + 3i) % 4i)];
          u_xlat42 = (x_1621 + vec2<f32>(x_1629.x, x_1629.y));
          let x_1632 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_1632 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1635 : vec2<f32> = u_xlat42;
          u_xlat42 = fract(x_1635);
          let x_1637 : i32 = u_xlati20;
          let x_1639 : vec4<f32> = x_719.x_AdditionalLightsCookieAtlasUVRects[x_1637];
          let x_1641 : vec2<f32> = u_xlat42;
          let x_1643 : i32 = u_xlati20;
          let x_1645 : vec4<f32> = x_719.x_AdditionalLightsCookieAtlasUVRects[x_1643];
          let x_1647 : vec2<f32> = ((vec2<f32>(x_1639.x, x_1639.y) * x_1641) + vec2<f32>(x_1645.z, x_1645.w));
          let x_1648 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1647.x, x_1647.y, x_1648.z, x_1648.w);
        } else {
          let x_1652 : vec3<f32> = vs_INTERP7;
          let x_1654 : i32 = u_xlati56;
          let x_1657 : i32 = u_xlati56;
          let x_1661 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1654 + 1i) / 4i)][((x_1657 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1652.y, x_1652.y, x_1652.y, x_1652.y) * x_1661);
          let x_1663 : i32 = u_xlati56;
          let x_1665 : i32 = u_xlati56;
          let x_1668 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[(x_1663 / 4i)][(x_1665 % 4i)];
          let x_1669 : vec3<f32> = vs_INTERP7;
          let x_1672 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1668 * vec4<f32>(x_1669.x, x_1669.x, x_1669.x, x_1669.x)) + x_1672);
          let x_1674 : i32 = u_xlati56;
          let x_1677 : i32 = u_xlati56;
          let x_1681 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1674 + 2i) / 4i)][((x_1677 + 2i) % 4i)];
          let x_1682 : vec3<f32> = vs_INTERP7;
          let x_1685 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1681 * vec4<f32>(x_1682.z, x_1682.z, x_1682.z, x_1682.z)) + x_1685);
          let x_1687 : vec4<f32> = u_xlat13;
          let x_1688 : i32 = u_xlati56;
          let x_1691 : i32 = u_xlati56;
          let x_1695 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1688 + 3i) / 4i)][((x_1691 + 3i) % 4i)];
          u_xlat13 = (x_1687 + x_1695);
          let x_1697 : vec4<f32> = u_xlat13;
          let x_1699 : vec4<f32> = u_xlat13;
          let x_1701 : vec3<f32> = (vec3<f32>(x_1697.x, x_1697.y, x_1697.z) / vec3<f32>(x_1699.w, x_1699.w, x_1699.w));
          let x_1702 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
          let x_1704 : vec4<f32> = u_xlat13;
          let x_1706 : vec4<f32> = u_xlat13;
          u_xlat53 = dot(vec3<f32>(x_1704.x, x_1704.y, x_1704.z), vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
          let x_1709 : f32 = u_xlat53;
          u_xlat53 = inverseSqrt(x_1709);
          let x_1711 : f32 = u_xlat53;
          let x_1713 : vec4<f32> = u_xlat13;
          let x_1715 : vec3<f32> = (vec3<f32>(x_1711, x_1711, x_1711) * vec3<f32>(x_1713.x, x_1713.y, x_1713.z));
          let x_1716 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1715.x, x_1715.y, x_1715.z, x_1716.w);
          let x_1718 : vec4<f32> = u_xlat13;
          u_xlat53 = dot(abs(vec3<f32>(x_1718.x, x_1718.y, x_1718.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1723 : f32 = u_xlat53;
          u_xlat53 = max(x_1723, 0.00000099999999747524f);
          let x_1726 : f32 = u_xlat53;
          u_xlat53 = (1.0f / x_1726);
          let x_1729 : f32 = u_xlat53;
          let x_1731 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1729, x_1729, x_1729) * vec3<f32>(x_1731.z, x_1731.x, x_1731.y));
          let x_1735 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1735);
          let x_1739 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1739, 0.0f, 1.0f);
          let x_1743 : vec3<f32> = u_xlat14;
          let x_1745 : vec4<bool> = (vec4<f32>(x_1743.y, x_1743.z, x_1743.y, x_1743.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb42 = vec2<bool>(x_1745.x, x_1745.y);
          let x_1748 : bool = u_xlatb42.x;
          if (x_1748) {
            let x_1753 : f32 = u_xlat14.x;
            x_1749 = x_1753;
          } else {
            let x_1756 : f32 = u_xlat14.x;
            x_1749 = -(x_1756);
          }
          let x_1758 : f32 = x_1749;
          u_xlat42.x = x_1758;
          let x_1761 : bool = u_xlatb42.y;
          if (x_1761) {
            let x_1766 : f32 = u_xlat14.x;
            x_1762 = x_1766;
          } else {
            let x_1769 : f32 = u_xlat14.x;
            x_1762 = -(x_1769);
          }
          let x_1771 : f32 = x_1762;
          u_xlat42.y = x_1771;
          let x_1773 : vec4<f32> = u_xlat13;
          let x_1775 : f32 = u_xlat53;
          let x_1778 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1773.x, x_1773.y) * vec2<f32>(x_1775, x_1775)) + x_1778);
          let x_1780 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_1780 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1783 : vec2<f32> = u_xlat42;
          u_xlat42 = clamp(x_1783, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1787 : i32 = u_xlati20;
          let x_1789 : vec4<f32> = x_719.x_AdditionalLightsCookieAtlasUVRects[x_1787];
          let x_1791 : vec2<f32> = u_xlat42;
          let x_1793 : i32 = u_xlati20;
          let x_1795 : vec4<f32> = x_719.x_AdditionalLightsCookieAtlasUVRects[x_1793];
          let x_1797 : vec2<f32> = ((vec2<f32>(x_1789.x, x_1789.y) * x_1791) + vec2<f32>(x_1795.z, x_1795.w));
          let x_1798 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1797.x, x_1797.y, x_1798.z, x_1798.w);
        }
      }
      let x_1805 : vec4<f32> = u_xlat12;
      let x_1807 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1805.x, x_1805.y), 0.0f);
      u_xlat12 = x_1807;
      let x_1809 : bool = u_xlatb8.y;
      if (x_1809) {
        let x_1814 : f32 = u_xlat12.w;
        x_1810 = x_1814;
      } else {
        let x_1817 : f32 = u_xlat12.x;
        x_1810 = x_1817;
      }
      let x_1818 : f32 = x_1810;
      u_xlat53 = x_1818;
      let x_1820 : bool = u_xlatb8.x;
      if (x_1820) {
        let x_1824 : vec4<f32> = u_xlat12;
        x_1821 = vec3<f32>(x_1824.x, x_1824.y, x_1824.z);
      } else {
        let x_1827 : f32 = u_xlat53;
        x_1821 = vec3<f32>(x_1827, x_1827, x_1827);
      }
      let x_1829 : vec3<f32> = x_1821;
      let x_1830 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1830.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1836 : vec4<f32> = u_xlat12;
    let x_1838 : i32 = u_xlati20;
    let x_1840 : vec4<f32> = x_1184.x_AdditionalLightsColor[x_1838];
    let x_1842 : vec3<f32> = (vec3<f32>(x_1836.x, x_1836.y, x_1836.z) * vec3<f32>(x_1840.x, x_1840.y, x_1840.z));
    let x_1843 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1842.x, x_1842.y, x_1842.z, x_1843.w);
    let x_1845 : f32 = u_xlat51;
    let x_1846 : f32 = u_xlat38;
    u_xlat20.x = (x_1845 * x_1846);
    let x_1849 : vec4<f32> = u_xlat1;
    let x_1851 : vec3<f32> = u_xlat11;
    u_xlat51 = dot(vec3<f32>(x_1849.x, x_1849.y, x_1849.w), x_1851);
    let x_1853 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1853, 0.0f, 1.0f);
    let x_1856 : f32 = u_xlat20.x;
    let x_1857 : f32 = u_xlat51;
    u_xlat20.x = (x_1856 * x_1857);
    let x_1860 : vec3<f32> = u_xlat20;
    let x_1862 : vec4<f32> = u_xlat12;
    let x_1864 : vec3<f32> = (vec3<f32>(x_1860.x, x_1860.x, x_1860.x) * vec3<f32>(x_1862.x, x_1862.y, x_1862.z));
    let x_1865 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1864.x, x_1864.y, x_1864.z, x_1865.w);
    let x_1867 : vec3<f32> = u_xlat25;
    let x_1868 : f32 = u_xlat52;
    let x_1871 : vec3<f32> = u_xlat4;
    u_xlat25 = ((x_1867 * vec3<f32>(x_1868, x_1868, x_1868)) + x_1871);
    let x_1873 : vec3<f32> = u_xlat25;
    let x_1874 : vec3<f32> = u_xlat25;
    u_xlat20.x = dot(x_1873, x_1874);
    let x_1878 : f32 = u_xlat20.x;
    u_xlat20.x = max(x_1878, 1.17549435e-38f);
    let x_1882 : f32 = u_xlat20.x;
    u_xlat20.x = inverseSqrt(x_1882);
    let x_1885 : vec3<f32> = u_xlat20;
    let x_1887 : vec3<f32> = u_xlat25;
    u_xlat25 = (vec3<f32>(x_1885.x, x_1885.x, x_1885.x) * x_1887);
    let x_1889 : vec4<f32> = u_xlat1;
    let x_1891 : vec3<f32> = u_xlat25;
    u_xlat20.x = dot(vec3<f32>(x_1889.x, x_1889.y, x_1889.w), x_1891);
    let x_1895 : f32 = u_xlat20.x;
    u_xlat20.x = clamp(x_1895, 0.0f, 1.0f);
    let x_1898 : vec3<f32> = u_xlat11;
    let x_1899 : vec3<f32> = u_xlat25;
    u_xlat51 = dot(x_1898, x_1899);
    let x_1901 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1901, 0.0f, 1.0f);
    let x_1904 : f32 = u_xlat20.x;
    let x_1906 : f32 = u_xlat20.x;
    u_xlat20.x = (x_1904 * x_1906);
    let x_1910 : f32 = u_xlat20.x;
    let x_1912 : f32 = u_xlat10.x;
    u_xlat20.x = ((x_1910 * x_1912) + 1.00001001358032226562f);
    let x_1916 : f32 = u_xlat51;
    let x_1917 : f32 = u_xlat51;
    u_xlat51 = (x_1916 * x_1917);
    let x_1920 : f32 = u_xlat20.x;
    let x_1922 : f32 = u_xlat20.x;
    u_xlat20.x = (x_1920 * x_1922);
    let x_1925 : f32 = u_xlat51;
    u_xlat51 = max(x_1925, 0.10000000149011611938f);
    let x_1928 : f32 = u_xlat20.x;
    let x_1929 : f32 = u_xlat51;
    u_xlat20.x = (x_1928 * x_1929);
    let x_1932 : f32 = u_xlat49;
    let x_1934 : f32 = u_xlat20.x;
    u_xlat20.x = (x_1932 * x_1934);
    let x_1937 : f32 = u_xlat18;
    let x_1939 : f32 = u_xlat20.x;
    u_xlat20.x = (x_1937 / x_1939);
    let x_1942 : vec3<f32> = u_xlat0;
    let x_1943 : vec3<f32> = u_xlat20;
    let x_1946 : vec3<f32> = u_xlat7;
    u_xlat25 = ((x_1942 * vec3<f32>(x_1943.x, x_1943.x, x_1943.x)) + x_1946);
    let x_1948 : vec3<f32> = u_xlat25;
    let x_1949 : vec4<f32> = u_xlat12;
    let x_1952 : vec4<f32> = u_xlat9;
    let x_1954 : vec3<f32> = ((x_1948 * vec3<f32>(x_1949.x, x_1949.y, x_1949.z)) + vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
    let x_1955 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);

    continuing {
      let x_1957 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1957 + bitcast<u32>(1i));
    }
  }
  let x_1959 : vec4<f32> = u_xlat6;
  let x_1961 : f32 = u_xlat33;
  let x_1964 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1959.x, x_1959.y, x_1959.z) * vec3<f32>(x_1961, x_1961, x_1961)) + vec3<f32>(x_1964.x, x_1964.z, x_1964.w));
  let x_1967 : vec4<f32> = u_xlat9;
  let x_1969 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1967.x, x_1967.y, x_1967.z) + x_1969);
  let x_1971 : vec4<f32> = u_xlat2;
  let x_1973 : f32 = u_xlat31;
  let x_1976 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1971.x, x_1971.y, x_1971.z) * vec3<f32>(x_1973, x_1973, x_1973)) + x_1976);
  let x_1978 : f32 = u_xlat45;
  let x_1979 : f32 = u_xlat45;
  u_xlat45 = (x_1978 * -(x_1979));
  let x_1982 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1982);
  let x_1984 : vec3<f32> = u_xlat0;
  let x_1986 : vec4<f32> = x_29.unity_FogColor;
  u_xlat0 = (x_1984 + -(vec3<f32>(x_1986.x, x_1986.y, x_1986.z)));
  let x_1992 : f32 = u_xlat45;
  let x_1994 : vec3<f32> = u_xlat0;
  let x_1997 : vec4<f32> = x_29.unity_FogColor;
  let x_1999 : vec3<f32> = ((vec3<f32>(x_1992, x_1992, x_1992) * x_1994) + vec3<f32>(x_1997.x, x_1997.y, x_1997.z));
  let x_2000 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


