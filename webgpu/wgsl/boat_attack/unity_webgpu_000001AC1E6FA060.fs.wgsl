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
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
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

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat11 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlatb11 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_159 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu11 : u32;

var<private> u_xlati11 : i32;

@group(1) @binding(2) var<uniform> x_352 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb33 : bool;

var<private> u_xlatb1 : bool;

var<private> u_xlat35 : f32;

@group(1) @binding(5) var<uniform> x_515 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu35 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlati35 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_757 : AdditionalLights;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlati37 : i32;

var<private> u_xlatb27 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat27 : vec2<f32>;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb38 : bool;

var<private> u_xlati27 : i32;

var<private> u_xlati38 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb30 : vec2<bool>;

var<private> u_xlat30 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb35 : bool;

fn main_1() {
  var x_60 : f32;
  var x_110 : f32;
  var txVec0 : vec3<f32>;
  var x_599 : f32;
  var x_611 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_887 : f32;
  var x_898 : f32;
  var txVec1 : vec3<f32>;
  var x_1336 : f32;
  var x_1349 : f32;
  var x_1397 : f32;
  var x_1409 : vec3<f32>;
  var x_1487 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_41.x_BaseColor.w;
  let x_77 : f32 = x_41.x_Cutoff;
  u_xlat11 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat33;
  let x_90 : f32 = u_xlat22;
  u_xlat22 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat22;
  u_xlat22 = max(x_93, 0.00009999999747378752f);
  let x_96 : f32 = u_xlat11;
  let x_97 : f32 = u_xlat22;
  u_xlat11 = (x_96 / x_97);
  let x_99 : f32 = u_xlat11;
  u_xlat11 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat11;
  u_xlat11 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb22;
  if (x_109) {
    let x_113 : f32 = u_xlat11;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat11 = (x_120 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat11;
  u_xlatb11 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb11;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_139);
  let x_142 : f32 = u_xlat11;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = (vec3<f32>(x_142, x_142, x_142) * x_144);
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_150 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres0;
  let x_164 : vec3<f32> = (x_150 + -(vec3<f32>(x_161.x, x_161.y, x_161.z)));
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec3<f32> = vs_TEXCOORD1;
  let x_171 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres1;
  let x_174 : vec3<f32> = (x_168 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD1;
  let x_181 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres2;
  let x_184 : vec3<f32> = (x_178 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_189 : vec3<f32> = vs_TEXCOORD1;
  let x_191 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_189 + -(vec3<f32>(x_191.x, x_191.y, x_191.z)));
  let x_195 : vec4<f32> = u_xlat3;
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_208 : vec4<f32> = u_xlat5;
  let x_210 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_208.x, x_208.y, x_208.z), vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_215 : vec3<f32> = u_xlat6;
  let x_216 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_215, x_216);
  let x_222 : vec4<f32> = u_xlat3;
  let x_225 : vec4<f32> = x_159.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_222 < x_225);
  let x_228 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_228);
  let x_232 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_232);
  let x_236 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_236);
  let x_240 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_240);
  let x_244 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_244);
  let x_250 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_250);
  let x_254 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_254);
  let x_257 : vec4<f32> = u_xlat3;
  let x_259 : vec4<f32> = u_xlat4;
  let x_261 : vec3<f32> = (vec3<f32>(x_257.x, x_257.y, x_257.z) + vec3<f32>(x_259.y, x_259.z, x_259.w));
  let x_262 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_264 : vec4<f32> = u_xlat3;
  let x_267 : vec3<f32> = max(vec3<f32>(x_264.x, x_264.y, x_264.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_268.x, x_267.x, x_267.y, x_267.z);
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat11 = dot(x_270, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_276 : f32 = u_xlat11;
  u_xlat11 = (-(x_276) + 4.0f);
  let x_281 : f32 = u_xlat11;
  u_xlatu11 = u32(x_281);
  let x_285 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_285) << bitcast<u32>(2i));
  let x_288 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : i32 = u_xlati11;
  let x_293 : i32 = u_xlati11;
  let x_297 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_290 + 1i) / 4i)][((x_293 + 1i) % 4i)];
  let x_299 : vec3<f32> = (vec3<f32>(x_288.y, x_288.y, x_288.y) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : i32 = u_xlati11;
  let x_304 : i32 = u_xlati11;
  let x_307 : vec4<f32> = x_159.x_MainLightWorldToShadow[(x_302 / 4i)][(x_304 % 4i)];
  let x_309 : vec3<f32> = vs_TEXCOORD1;
  let x_312 : vec4<f32> = u_xlat3;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.x, x_309.x)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : i32 = u_xlati11;
  let x_320 : i32 = u_xlati11;
  let x_324 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_317 + 2i) / 4i)][((x_320 + 2i) % 4i)];
  let x_326 : vec3<f32> = vs_TEXCOORD1;
  let x_329 : vec4<f32> = u_xlat3;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_326.z, x_326.z, x_326.z)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat3;
  let x_336 : i32 = u_xlati11;
  let x_339 : i32 = u_xlati11;
  let x_343 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_336 + 3i) / 4i)][((x_339 + 3i) % 4i)];
  let x_345 : vec3<f32> = (vec3<f32>(x_334.x, x_334.y, x_334.z) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  u_xlat2.w = 1.0f;
  let x_355 : vec4<f32> = x_352.unity_SHAr;
  let x_356 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_355, x_356);
  let x_361 : vec4<f32> = x_352.unity_SHAg;
  let x_362 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_361, x_362);
  let x_367 : vec4<f32> = x_352.unity_SHAb;
  let x_368 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_367, x_368);
  let x_371 : vec4<f32> = u_xlat2;
  let x_373 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_371.y, x_371.z, x_371.z, x_371.x) * vec4<f32>(x_373.x, x_373.y, x_373.z, x_373.z));
  let x_378 : vec4<f32> = x_352.unity_SHBr;
  let x_379 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_378, x_379);
  let x_384 : vec4<f32> = x_352.unity_SHBg;
  let x_385 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_384, x_385);
  let x_390 : vec4<f32> = x_352.unity_SHBb;
  let x_391 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_390, x_391);
  let x_395 : f32 = u_xlat2.y;
  let x_397 : f32 = u_xlat2.y;
  u_xlat11 = (x_395 * x_397);
  let x_400 : f32 = u_xlat2.x;
  let x_402 : f32 = u_xlat2.x;
  let x_404 : f32 = u_xlat11;
  u_xlat11 = ((x_400 * x_402) + -(x_404));
  let x_409 : vec4<f32> = x_352.unity_SHC;
  let x_411 : f32 = u_xlat11;
  let x_414 : vec3<f32> = u_xlat6;
  let x_415 : vec3<f32> = ((vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(x_411, x_411, x_411)) + x_414);
  let x_416 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat4;
  let x_420 : vec4<f32> = u_xlat5;
  let x_422 : vec3<f32> = (vec3<f32>(x_418.x, x_418.y, x_418.z) + vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat4;
  let x_427 : vec3<f32> = max(vec3<f32>(x_425.x, x_425.y, x_425.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_428 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_432 : vec4<f32> = u_xlat3;
  let x_433 : vec2<f32> = vec2<f32>(x_432.x, x_432.y);
  let x_435 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_433.x, x_433.y, x_435);
  let x_447 : vec3<f32> = txVec0;
  let x_449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_447.xy, x_447.z);
  u_xlat11 = x_449;
  let x_452 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_452) + 1.0f);
  let x_455 : f32 = u_xlat11;
  let x_457 : f32 = x_159.x_MainLightShadowParams.x;
  let x_459 : f32 = u_xlat33;
  u_xlat11 = ((x_455 * x_457) + x_459);
  let x_463 : f32 = u_xlat3.z;
  u_xlatb33 = (0.0f >= x_463);
  let x_467 : f32 = u_xlat3.z;
  u_xlatb1 = (x_467 >= 1.0f);
  let x_469 : bool = u_xlatb33;
  let x_470 : bool = u_xlatb1;
  u_xlatb33 = (x_469 | x_470);
  let x_472 : bool = u_xlatb33;
  let x_473 : f32 = u_xlat11;
  u_xlat11 = select(x_473, 1.0f, x_472);
  let x_475 : vec3<f32> = vs_TEXCOORD1;
  let x_478 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_480 : vec3<f32> = (x_475 + -(x_478));
  let x_481 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_483 : vec4<f32> = u_xlat3;
  let x_485 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(vec3<f32>(x_483.x, x_483.y, x_483.z), vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : f32 = u_xlat33;
  let x_490 : f32 = x_159.x_MainLightShadowParams.z;
  let x_493 : f32 = x_159.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_488 * x_490) + x_493);
  let x_497 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_497, 0.0f, 1.0f);
  let x_501 : f32 = u_xlat11;
  u_xlat35 = (-(x_501) + 1.0f);
  let x_505 : f32 = u_xlat1.x;
  let x_506 : f32 = u_xlat35;
  let x_508 : f32 = u_xlat11;
  u_xlat11 = ((x_505 * x_506) + x_508);
  let x_517 : f32 = x_515.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_517 == -1.0f));
  let x_519 : bool = u_xlatb1;
  if (x_519) {
    let x_522 : vec3<f32> = vs_TEXCOORD1;
    let x_525 : vec4<f32> = x_515.x_MainLightWorldToLight[1i];
    let x_527 : vec2<f32> = (vec2<f32>(x_522.y, x_522.y) * vec2<f32>(x_525.x, x_525.y));
    let x_528 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_527.x, x_527.y, x_528.z, x_528.w);
    let x_531 : vec4<f32> = x_515.x_MainLightWorldToLight[0i];
    let x_533 : vec3<f32> = vs_TEXCOORD1;
    let x_536 : vec4<f32> = u_xlat3;
    let x_538 : vec2<f32> = ((vec2<f32>(x_531.x, x_531.y) * vec2<f32>(x_533.x, x_533.x)) + vec2<f32>(x_536.x, x_536.y));
    let x_539 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
    let x_542 : vec4<f32> = x_515.x_MainLightWorldToLight[2i];
    let x_544 : vec3<f32> = vs_TEXCOORD1;
    let x_547 : vec4<f32> = u_xlat3;
    let x_549 : vec2<f32> = ((vec2<f32>(x_542.x, x_542.y) * vec2<f32>(x_544.z, x_544.z)) + vec2<f32>(x_547.x, x_547.y));
    let x_550 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
    let x_552 : vec4<f32> = u_xlat3;
    let x_555 : vec4<f32> = x_515.x_MainLightWorldToLight[3i];
    let x_557 : vec2<f32> = (vec2<f32>(x_552.x, x_552.y) + vec2<f32>(x_555.x, x_555.y));
    let x_558 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
    let x_560 : vec4<f32> = u_xlat3;
    let x_564 : vec2<f32> = ((vec2<f32>(x_560.x, x_560.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_565 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
    let x_572 : vec4<f32> = u_xlat3;
    let x_575 : f32 = x_27.x_GlobalMipBias.x;
    let x_576 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_572.x, x_572.y), x_575);
    u_xlat3 = x_576;
    let x_581 : f32 = x_515.x_MainLightCookieTextureFormat;
    let x_583 : f32 = x_515.x_MainLightCookieTextureFormat;
    let x_585 : f32 = x_515.x_MainLightCookieTextureFormat;
    let x_587 : f32 = x_515.x_MainLightCookieTextureFormat;
    let x_588 : vec4<f32> = vec4<f32>(x_581, x_583, x_585, x_587);
    let x_595 : vec4<bool> = (vec4<f32>(x_588.x, x_588.y, x_588.z, x_588.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_595.x, x_595.y);
    let x_598 : bool = u_xlatb5.y;
    if (x_598) {
      let x_603 : f32 = u_xlat3.w;
      x_599 = x_603;
    } else {
      let x_606 : f32 = u_xlat3.x;
      x_599 = x_606;
    }
    let x_607 : f32 = x_599;
    u_xlat1.x = x_607;
    let x_610 : bool = u_xlatb5.x;
    if (x_610) {
      let x_614 : vec4<f32> = u_xlat3;
      x_611 = vec3<f32>(x_614.x, x_614.y, x_614.z);
    } else {
      let x_617 : vec4<f32> = u_xlat1;
      x_611 = vec3<f32>(x_617.x, x_617.x, x_617.x);
    }
    let x_619 : vec3<f32> = x_611;
    let x_620 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_626 : vec4<f32> = u_xlat3;
  let x_629 : vec4<f32> = x_27.x_MainLightColor;
  let x_631 : vec3<f32> = (vec3<f32>(x_626.x, x_626.y, x_626.z) * vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : f32 = u_xlat11;
  let x_636 : f32 = x_352.unity_LightData.z;
  u_xlat11 = (x_634 * x_636);
  let x_638 : f32 = u_xlat11;
  let x_640 : vec4<f32> = u_xlat3;
  let x_642 : vec3<f32> = (vec3<f32>(x_638, x_638, x_638) * vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec4<f32> = u_xlat2;
  let x_648 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat11 = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : f32 = u_xlat11;
  u_xlat11 = clamp(x_651, 0.0f, 1.0f);
  let x_653 : f32 = u_xlat11;
  let x_655 : vec4<f32> = u_xlat3;
  let x_657 : vec3<f32> = (vec3<f32>(x_653, x_653, x_653) * vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_658 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec4<f32> = u_xlat1;
  let x_662 : vec4<f32> = u_xlat3;
  let x_664 : vec3<f32> = (vec3<f32>(x_660.y, x_660.z, x_660.w) * vec3<f32>(x_662.x, x_662.y, x_662.z));
  let x_665 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_668 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_670 : f32 = x_352.unity_LightData.y;
  u_xlat11 = min(x_668, x_670);
  let x_672 : f32 = u_xlat11;
  u_xlatu11 = bitcast<u32>(i32(x_672));
  let x_675 : f32 = u_xlat33;
  let x_678 : f32 = x_159.x_AdditionalShadowFadeParams.x;
  let x_681 : f32 = x_159.x_AdditionalShadowFadeParams.y;
  u_xlat33 = ((x_675 * x_678) + x_681);
  let x_683 : f32 = u_xlat33;
  u_xlat33 = clamp(x_683, 0.0f, 1.0f);
  let x_686 : f32 = x_515.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_688 : f32 = x_515.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_690 : f32 = x_515.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_692 : f32 = x_515.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_693 : vec4<f32> = vec4<f32>(x_686, x_688, x_690, x_692);
  let x_699 : vec4<bool> = (vec4<f32>(x_693.x, x_693.y, x_693.z, x_693.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_699.x, x_699.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_711 : u32 = u_xlatu_loop_1;
    let x_712 : u32 = u_xlatu11;
    if ((x_711 < x_712)) {
    } else {
      break;
    }
    let x_715 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_715 >> 2u);
    let x_718 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_718 & 3u));
    let x_722 : u32 = u_xlatu35;
    let x_725 : vec4<f32> = x_352.unity_LightIndices[bitcast<i32>(x_722)];
    let x_735 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_740 : vec4<u32> = indexable[x_735];
    u_xlat35 = dot(x_725, bitcast<vec4<f32>>(x_740));
    let x_744 : f32 = u_xlat35;
    u_xlati35 = i32(x_744);
    let x_747 : vec3<f32> = vs_TEXCOORD1;
    let x_758 : i32 = u_xlati35;
    let x_760 : vec4<f32> = x_757.x_AdditionalLightsPosition[x_758];
    let x_763 : i32 = u_xlati35;
    let x_765 : vec4<f32> = x_757.x_AdditionalLightsPosition[x_763];
    u_xlat7 = ((-(x_747) * vec3<f32>(x_760.w, x_760.w, x_760.w)) + vec3<f32>(x_765.x, x_765.y, x_765.z));
    let x_769 : vec3<f32> = u_xlat7;
    let x_770 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_769, x_770);
    let x_772 : f32 = u_xlat36;
    u_xlat36 = max(x_772, 0.00006103515625f);
    let x_776 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_776);
    let x_778 : f32 = u_xlat37;
    let x_780 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_778, x_778, x_778) * x_780);
    let x_782 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_782);
    let x_784 : f32 = u_xlat36;
    let x_785 : i32 = u_xlati35;
    let x_787 : f32 = x_757.x_AdditionalLightsAttenuation[x_785].x;
    u_xlat36 = (x_784 * x_787);
    let x_789 : f32 = u_xlat36;
    let x_791 : f32 = u_xlat36;
    u_xlat36 = ((-(x_789) * x_791) + 1.0f);
    let x_794 : f32 = u_xlat36;
    u_xlat36 = max(x_794, 0.0f);
    let x_796 : f32 = u_xlat36;
    let x_797 : f32 = u_xlat36;
    u_xlat36 = (x_796 * x_797);
    let x_799 : f32 = u_xlat36;
    let x_800 : f32 = u_xlat37;
    u_xlat36 = (x_799 * x_800);
    let x_802 : i32 = u_xlati35;
    let x_804 : vec4<f32> = x_757.x_AdditionalLightsSpotDir[x_802];
    let x_806 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_804.x, x_804.y, x_804.z), x_806);
    let x_808 : f32 = u_xlat37;
    let x_809 : i32 = u_xlati35;
    let x_811 : f32 = x_757.x_AdditionalLightsAttenuation[x_809].z;
    let x_813 : i32 = u_xlati35;
    let x_815 : f32 = x_757.x_AdditionalLightsAttenuation[x_813].w;
    u_xlat37 = ((x_808 * x_811) + x_815);
    let x_817 : f32 = u_xlat37;
    u_xlat37 = clamp(x_817, 0.0f, 1.0f);
    let x_819 : f32 = u_xlat37;
    let x_820 : f32 = u_xlat37;
    u_xlat37 = (x_819 * x_820);
    let x_822 : f32 = u_xlat36;
    let x_823 : f32 = u_xlat37;
    u_xlat36 = (x_822 * x_823);
    let x_827 : i32 = u_xlati35;
    let x_829 : f32 = x_159.x_AdditionalShadowParams[x_827].w;
    u_xlati37 = i32(x_829);
    let x_832 : i32 = u_xlati37;
    u_xlatb27 = (x_832 >= 0i);
    let x_834 : bool = u_xlatb27;
    if (x_834) {
      let x_838 : i32 = u_xlati35;
      let x_840 : f32 = x_159.x_AdditionalShadowParams[x_838].z;
      u_xlatb27 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_840, x_840, x_840, x_840))));
      let x_844 : bool = u_xlatb27;
      if (x_844) {
        let x_848 : vec3<f32> = u_xlat7;
        let x_851 : vec3<f32> = u_xlat7;
        let x_854 : vec4<bool> = (abs(vec4<f32>(x_848.z, x_848.z, x_848.y, x_848.z)) >= abs(vec4<f32>(x_851.x, x_851.y, x_851.x, x_851.x)));
        let x_856 : vec3<bool> = vec3<bool>(x_854.x, x_854.y, x_854.z);
        let x_857 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_856.x, x_856.y, x_856.z, x_857.w);
        let x_860 : bool = u_xlatb8.y;
        let x_862 : bool = u_xlatb8.x;
        u_xlatb27 = (x_860 & x_862);
        let x_864 : vec3<f32> = u_xlat7;
        let x_867 : vec4<bool> = (-(vec4<f32>(x_864.z, x_864.y, x_864.z, x_864.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_868 : vec3<bool> = vec3<bool>(x_867.x, x_867.y, x_867.w);
        let x_869 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_868.x, x_868.y, x_869.z, x_868.z);
        let x_873 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_873);
        let x_878 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_878);
        let x_883 : bool = u_xlatb8.w;
        u_xlat38 = select(0.0f, 1.0f, x_883);
        let x_886 : bool = u_xlatb8.z;
        if (x_886) {
          let x_891 : f32 = u_xlat8.y;
          x_887 = x_891;
        } else {
          let x_893 : f32 = u_xlat38;
          x_887 = x_893;
        }
        let x_894 : f32 = x_887;
        u_xlat38 = x_894;
        let x_897 : bool = u_xlatb27;
        if (x_897) {
          let x_902 : f32 = u_xlat8.x;
          x_898 = x_902;
        } else {
          let x_904 : f32 = u_xlat38;
          x_898 = x_904;
        }
        let x_905 : f32 = x_898;
        u_xlat27.x = x_905;
        let x_907 : i32 = u_xlati35;
        let x_909 : f32 = x_159.x_AdditionalShadowParams[x_907].w;
        u_xlat38 = trunc(x_909);
        let x_912 : f32 = u_xlat27.x;
        let x_913 : f32 = u_xlat38;
        u_xlat27.x = (x_912 + x_913);
        let x_917 : f32 = u_xlat27.x;
        u_xlati37 = i32(x_917);
      }
      let x_919 : i32 = u_xlati37;
      u_xlati37 = (x_919 << bitcast<u32>(2i));
      let x_921 : vec3<f32> = vs_TEXCOORD1;
      let x_924 : i32 = u_xlati37;
      let x_927 : i32 = u_xlati37;
      let x_931 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_924 + 1i) / 4i)][((x_927 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_921.y, x_921.y, x_921.y, x_921.y) * x_931);
      let x_933 : i32 = u_xlati37;
      let x_935 : i32 = u_xlati37;
      let x_938 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[(x_933 / 4i)][(x_935 % 4i)];
      let x_939 : vec3<f32> = vs_TEXCOORD1;
      let x_942 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_938 * vec4<f32>(x_939.x, x_939.x, x_939.x, x_939.x)) + x_942);
      let x_944 : i32 = u_xlati37;
      let x_947 : i32 = u_xlati37;
      let x_951 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_944 + 2i) / 4i)][((x_947 + 2i) % 4i)];
      let x_952 : vec3<f32> = vs_TEXCOORD1;
      let x_955 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_951 * vec4<f32>(x_952.z, x_952.z, x_952.z, x_952.z)) + x_955);
      let x_957 : vec4<f32> = u_xlat8;
      let x_958 : i32 = u_xlati37;
      let x_961 : i32 = u_xlati37;
      let x_965 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_958 + 3i) / 4i)][((x_961 + 3i) % 4i)];
      u_xlat8 = (x_957 + x_965);
      let x_967 : vec4<f32> = u_xlat8;
      let x_969 : vec4<f32> = u_xlat8;
      let x_971 : vec3<f32> = (vec3<f32>(x_967.x, x_967.y, x_967.z) / vec3<f32>(x_969.w, x_969.w, x_969.w));
      let x_972 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
      let x_975 : vec4<f32> = u_xlat8;
      let x_976 : vec2<f32> = vec2<f32>(x_975.x, x_975.y);
      let x_978 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_976.x, x_976.y, x_978);
      let x_986 : vec3<f32> = txVec1;
      let x_988 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_986.xy, x_986.z);
      u_xlat37 = x_988;
      let x_989 : i32 = u_xlati35;
      let x_991 : f32 = x_159.x_AdditionalShadowParams[x_989].x;
      u_xlat27.x = (1.0f + -(x_991));
      let x_995 : f32 = u_xlat37;
      let x_996 : i32 = u_xlati35;
      let x_998 : f32 = x_159.x_AdditionalShadowParams[x_996].x;
      let x_1001 : f32 = u_xlat27.x;
      u_xlat37 = ((x_995 * x_998) + x_1001);
      let x_1004 : f32 = u_xlat8.z;
      u_xlatb27 = (0.0f >= x_1004);
      let x_1008 : f32 = u_xlat8.z;
      u_xlatb38 = (x_1008 >= 1.0f);
      let x_1010 : bool = u_xlatb38;
      let x_1011 : bool = u_xlatb27;
      u_xlatb27 = (x_1010 | x_1011);
      let x_1013 : bool = u_xlatb27;
      let x_1014 : f32 = u_xlat37;
      u_xlat37 = select(x_1014, 1.0f, x_1013);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_1017 : f32 = u_xlat37;
    u_xlat27.x = (-(x_1017) + 1.0f);
    let x_1021 : f32 = u_xlat33;
    let x_1023 : f32 = u_xlat27.x;
    let x_1025 : f32 = u_xlat37;
    u_xlat37 = ((x_1021 * x_1023) + x_1025);
    let x_1028 : i32 = u_xlati35;
    u_xlati27 = (1i << bitcast<u32>((x_1028 & 31i)));
    let x_1032 : i32 = u_xlati27;
    let x_1035 : f32 = x_515.x_AdditionalLightsCookieEnableBits;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_1032) & bitcast<u32>(x_1035)));
    let x_1039 : i32 = u_xlati27;
    if ((x_1039 != 0i)) {
      let x_1043 : i32 = u_xlati35;
      let x_1045 : f32 = x_515.x_AdditionalLightsLightTypes[x_1043].el;
      u_xlati27 = i32(x_1045);
      let x_1048 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_1048 != 0i));
      let x_1052 : i32 = u_xlati35;
      u_xlati39 = (x_1052 << bitcast<u32>(2i));
      let x_1054 : i32 = u_xlati38;
      if ((x_1054 != 0i)) {
        let x_1058 : vec3<f32> = vs_TEXCOORD1;
        let x_1060 : i32 = u_xlati39;
        let x_1063 : i32 = u_xlati39;
        let x_1067 : vec4<f32> = x_515.x_AdditionalLightsWorldToLights[((x_1060 + 1i) / 4i)][((x_1063 + 1i) % 4i)];
        let x_1069 : vec3<f32> = (vec3<f32>(x_1058.y, x_1058.y, x_1058.y) * vec3<f32>(x_1067.x, x_1067.y, x_1067.w));
        let x_1070 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
        let x_1072 : i32 = u_xlati39;
        let x_1074 : i32 = u_xlati39;
        let x_1077 : vec4<f32> = x_515.x_AdditionalLightsWorldToLights[(x_1072 / 4i)][(x_1074 % 4i)];
        let x_1079 : vec3<f32> = vs_TEXCOORD1;
        let x_1082 : vec4<f32> = u_xlat8;
        let x_1084 : vec3<f32> = ((vec3<f32>(x_1077.x, x_1077.y, x_1077.w) * vec3<f32>(x_1079.x, x_1079.x, x_1079.x)) + vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
        let x_1085 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1085.w);
        let x_1087 : i32 = u_xlati39;
        let x_1090 : i32 = u_xlati39;
        let x_1094 : vec4<f32> = x_515.x_AdditionalLightsWorldToLights[((x_1087 + 2i) / 4i)][((x_1090 + 2i) % 4i)];
        let x_1096 : vec3<f32> = vs_TEXCOORD1;
        let x_1099 : vec4<f32> = u_xlat8;
        let x_1101 : vec3<f32> = ((vec3<f32>(x_1094.x, x_1094.y, x_1094.w) * vec3<f32>(x_1096.z, x_1096.z, x_1096.z)) + vec3<f32>(x_1099.x, x_1099.y, x_1099.z));
        let x_1102 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
        let x_1104 : vec4<f32> = u_xlat8;
        let x_1106 : i32 = u_xlati39;
        let x_1109 : i32 = u_xlati39;
        let x_1113 : vec4<f32> = x_515.x_AdditionalLightsWorldToLights[((x_1106 + 3i) / 4i)][((x_1109 + 3i) % 4i)];
        let x_1115 : vec3<f32> = (vec3<f32>(x_1104.x, x_1104.y, x_1104.z) + vec3<f32>(x_1113.x, x_1113.y, x_1113.w));
        let x_1116 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
        let x_1118 : vec4<f32> = u_xlat8;
        let x_1120 : vec4<f32> = u_xlat8;
        let x_1122 : vec2<f32> = (vec2<f32>(x_1118.x, x_1118.y) / vec2<f32>(x_1120.z, x_1120.z));
        let x_1123 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1122.x, x_1122.y, x_1123.z, x_1123.w);
        let x_1125 : vec4<f32> = u_xlat8;
        let x_1128 : vec2<f32> = ((vec2<f32>(x_1125.x, x_1125.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
        let x_1131 : vec4<f32> = u_xlat8;
        let x_1135 : vec2<f32> = clamp(vec2<f32>(x_1131.x, x_1131.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1136 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1135.x, x_1135.y, x_1136.z, x_1136.w);
        let x_1138 : i32 = u_xlati35;
        let x_1140 : vec4<f32> = x_515.x_AdditionalLightsCookieAtlasUVRects[x_1138];
        let x_1142 : vec4<f32> = u_xlat8;
        let x_1145 : i32 = u_xlati35;
        let x_1147 : vec4<f32> = x_515.x_AdditionalLightsCookieAtlasUVRects[x_1145];
        let x_1149 : vec2<f32> = ((vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(x_1142.x, x_1142.y)) + vec2<f32>(x_1147.z, x_1147.w));
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
      } else {
        let x_1153 : i32 = u_xlati27;
        u_xlatb27 = (x_1153 == 1i);
        let x_1155 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_1155);
        let x_1157 : i32 = u_xlati27;
        if ((x_1157 != 0i)) {
          let x_1161 : vec3<f32> = vs_TEXCOORD1;
          let x_1163 : i32 = u_xlati39;
          let x_1166 : i32 = u_xlati39;
          let x_1170 : vec4<f32> = x_515.x_AdditionalLightsWorldToLights[((x_1163 + 1i) / 4i)][((x_1166 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_1161.y, x_1161.y) * vec2<f32>(x_1170.x, x_1170.y));
          let x_1173 : i32 = u_xlati39;
          let x_1175 : i32 = u_xlati39;
          let x_1178 : vec4<f32> = x_515.x_AdditionalLightsWorldToLights[(x_1173 / 4i)][(x_1175 % 4i)];
          let x_1180 : vec3<f32> = vs_TEXCOORD1;
          let x_1183 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1180.x, x_1180.x)) + x_1183);
          let x_1185 : i32 = u_xlati39;
          let x_1188 : i32 = u_xlati39;
          let x_1192 : vec4<f32> = x_515.x_AdditionalLightsWorldToLights[((x_1185 + 2i) / 4i)][((x_1188 + 2i) % 4i)];
          let x_1194 : vec3<f32> = vs_TEXCOORD1;
          let x_1197 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(x_1194.z, x_1194.z)) + x_1197);
          let x_1199 : vec2<f32> = u_xlat27;
          let x_1200 : i32 = u_xlati39;
          let x_1203 : i32 = u_xlati39;
          let x_1207 : vec4<f32> = x_515.x_AdditionalLightsWorldToLights[((x_1200 + 3i) / 4i)][((x_1203 + 3i) % 4i)];
          u_xlat27 = (x_1199 + vec2<f32>(x_1207.x, x_1207.y));
          let x_1210 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1210 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1213 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_1213);
          let x_1215 : i32 = u_xlati35;
          let x_1217 : vec4<f32> = x_515.x_AdditionalLightsCookieAtlasUVRects[x_1215];
          let x_1219 : vec2<f32> = u_xlat27;
          let x_1221 : i32 = u_xlati35;
          let x_1223 : vec4<f32> = x_515.x_AdditionalLightsCookieAtlasUVRects[x_1221];
          let x_1225 : vec2<f32> = ((vec2<f32>(x_1217.x, x_1217.y) * x_1219) + vec2<f32>(x_1223.z, x_1223.w));
          let x_1226 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1225.x, x_1225.y, x_1226.z, x_1226.w);
        } else {
          let x_1230 : vec3<f32> = vs_TEXCOORD1;
          let x_1232 : i32 = u_xlati39;
          let x_1235 : i32 = u_xlati39;
          let x_1239 : vec4<f32> = x_515.x_AdditionalLightsWorldToLights[((x_1232 + 1i) / 4i)][((x_1235 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1230.y, x_1230.y, x_1230.y, x_1230.y) * x_1239);
          let x_1241 : i32 = u_xlati39;
          let x_1243 : i32 = u_xlati39;
          let x_1246 : vec4<f32> = x_515.x_AdditionalLightsWorldToLights[(x_1241 / 4i)][(x_1243 % 4i)];
          let x_1247 : vec3<f32> = vs_TEXCOORD1;
          let x_1250 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1246 * vec4<f32>(x_1247.x, x_1247.x, x_1247.x, x_1247.x)) + x_1250);
          let x_1252 : i32 = u_xlati39;
          let x_1255 : i32 = u_xlati39;
          let x_1259 : vec4<f32> = x_515.x_AdditionalLightsWorldToLights[((x_1252 + 2i) / 4i)][((x_1255 + 2i) % 4i)];
          let x_1260 : vec3<f32> = vs_TEXCOORD1;
          let x_1263 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1259 * vec4<f32>(x_1260.z, x_1260.z, x_1260.z, x_1260.z)) + x_1263);
          let x_1265 : vec4<f32> = u_xlat9;
          let x_1266 : i32 = u_xlati39;
          let x_1269 : i32 = u_xlati39;
          let x_1273 : vec4<f32> = x_515.x_AdditionalLightsWorldToLights[((x_1266 + 3i) / 4i)][((x_1269 + 3i) % 4i)];
          u_xlat9 = (x_1265 + x_1273);
          let x_1275 : vec4<f32> = u_xlat9;
          let x_1277 : vec4<f32> = u_xlat9;
          let x_1279 : vec3<f32> = (vec3<f32>(x_1275.x, x_1275.y, x_1275.z) / vec3<f32>(x_1277.w, x_1277.w, x_1277.w));
          let x_1280 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
          let x_1282 : vec4<f32> = u_xlat9;
          let x_1284 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1282.x, x_1282.y, x_1282.z), vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
          let x_1289 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1289);
          let x_1292 : vec2<f32> = u_xlat27;
          let x_1294 : vec4<f32> = u_xlat9;
          let x_1296 : vec3<f32> = (vec3<f32>(x_1292.x, x_1292.x, x_1292.x) * vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
          let x_1297 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
          let x_1299 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1299.x, x_1299.y, x_1299.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1306 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1306, 0.00000099999999747524f);
          let x_1311 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1311);
          let x_1315 : vec2<f32> = u_xlat27;
          let x_1317 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1315.x, x_1315.x, x_1315.x) * vec3<f32>(x_1317.z, x_1317.x, x_1317.y));
          let x_1321 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1321);
          let x_1325 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1325, 0.0f, 1.0f);
          let x_1329 : vec3<f32> = u_xlat10;
          let x_1331 : vec4<bool> = (vec4<f32>(x_1329.y, x_1329.z, x_1329.y, x_1329.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1331.x, x_1331.y);
          let x_1335 : bool = u_xlatb30.x;
          if (x_1335) {
            let x_1340 : f32 = u_xlat10.x;
            x_1336 = x_1340;
          } else {
            let x_1343 : f32 = u_xlat10.x;
            x_1336 = -(x_1343);
          }
          let x_1345 : f32 = x_1336;
          u_xlat30.x = x_1345;
          let x_1348 : bool = u_xlatb30.y;
          if (x_1348) {
            let x_1353 : f32 = u_xlat10.x;
            x_1349 = x_1353;
          } else {
            let x_1356 : f32 = u_xlat10.x;
            x_1349 = -(x_1356);
          }
          let x_1358 : f32 = x_1349;
          u_xlat30.y = x_1358;
          let x_1360 : vec4<f32> = u_xlat9;
          let x_1362 : vec2<f32> = u_xlat27;
          let x_1365 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1360.x, x_1360.y) * vec2<f32>(x_1362.x, x_1362.x)) + x_1365);
          let x_1367 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1367 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1370 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1370, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1374 : i32 = u_xlati35;
          let x_1376 : vec4<f32> = x_515.x_AdditionalLightsCookieAtlasUVRects[x_1374];
          let x_1378 : vec2<f32> = u_xlat27;
          let x_1380 : i32 = u_xlati35;
          let x_1382 : vec4<f32> = x_515.x_AdditionalLightsCookieAtlasUVRects[x_1380];
          let x_1384 : vec2<f32> = ((vec2<f32>(x_1376.x, x_1376.y) * x_1378) + vec2<f32>(x_1382.z, x_1382.w));
          let x_1385 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1384.x, x_1384.y, x_1385.z, x_1385.w);
        }
      }
      let x_1392 : vec4<f32> = u_xlat8;
      let x_1394 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1392.x, x_1392.y), 0.0f);
      u_xlat8 = x_1394;
      let x_1396 : bool = u_xlatb5.y;
      if (x_1396) {
        let x_1401 : f32 = u_xlat8.w;
        x_1397 = x_1401;
      } else {
        let x_1404 : f32 = u_xlat8.x;
        x_1397 = x_1404;
      }
      let x_1405 : f32 = x_1397;
      u_xlat27.x = x_1405;
      let x_1408 : bool = u_xlatb5.x;
      if (x_1408) {
        let x_1412 : vec4<f32> = u_xlat8;
        x_1409 = vec3<f32>(x_1412.x, x_1412.y, x_1412.z);
      } else {
        let x_1415 : vec2<f32> = u_xlat27;
        x_1409 = vec3<f32>(x_1415.x, x_1415.x, x_1415.x);
      }
      let x_1417 : vec3<f32> = x_1409;
      let x_1418 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1424 : vec4<f32> = u_xlat8;
    let x_1426 : i32 = u_xlati35;
    let x_1428 : vec4<f32> = x_757.x_AdditionalLightsColor[x_1426];
    let x_1430 : vec3<f32> = (vec3<f32>(x_1424.x, x_1424.y, x_1424.z) * vec3<f32>(x_1428.x, x_1428.y, x_1428.z));
    let x_1431 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1431.w);
    let x_1433 : f32 = u_xlat36;
    let x_1434 : f32 = u_xlat37;
    u_xlat35 = (x_1433 * x_1434);
    let x_1436 : f32 = u_xlat35;
    let x_1438 : vec4<f32> = u_xlat8;
    let x_1440 : vec3<f32> = (vec3<f32>(x_1436, x_1436, x_1436) * vec3<f32>(x_1438.x, x_1438.y, x_1438.z));
    let x_1441 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1440.x, x_1440.y, x_1440.z, x_1441.w);
    let x_1443 : vec4<f32> = u_xlat2;
    let x_1445 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1443.x, x_1443.y, x_1443.z), x_1445);
    let x_1447 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1447, 0.0f, 1.0f);
    let x_1449 : f32 = u_xlat35;
    let x_1451 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1449, x_1449, x_1449) * vec3<f32>(x_1451.x, x_1451.y, x_1451.z));
    let x_1454 : vec3<f32> = u_xlat7;
    let x_1455 : vec4<f32> = u_xlat1;
    let x_1458 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1454 * vec3<f32>(x_1455.y, x_1455.z, x_1455.w)) + x_1458);

    continuing {
      let x_1460 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1460 + bitcast<u32>(1i));
    }
  }
  let x_1462 : vec4<f32> = u_xlat4;
  let x_1464 : vec4<f32> = u_xlat1;
  let x_1467 : vec4<f32> = u_xlat3;
  let x_1469 : vec3<f32> = ((vec3<f32>(x_1462.x, x_1462.y, x_1462.z) * vec3<f32>(x_1464.y, x_1464.z, x_1464.w)) + vec3<f32>(x_1467.x, x_1467.y, x_1467.z));
  let x_1470 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
  let x_1474 : vec3<f32> = u_xlat6;
  let x_1475 : vec4<f32> = u_xlat1;
  let x_1477 : vec3<f32> = (x_1474 + vec3<f32>(x_1475.x, x_1475.y, x_1475.z));
  let x_1478 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1477.x, x_1477.y, x_1477.z, x_1478.w);
  let x_1481 : f32 = x_41.x_Surface;
  u_xlatb11 = (x_1481 == 1.0f);
  let x_1483 : bool = u_xlatb11;
  let x_1484 : bool = u_xlatb22;
  u_xlatb11 = (x_1483 | x_1484);
  let x_1486 : bool = u_xlatb11;
  if (x_1486) {
    let x_1491 : f32 = u_xlat0.x;
    x_1487 = x_1491;
  } else {
    x_1487 = 1.0f;
  }
  let x_1493 : f32 = x_1487;
  SV_Target0.w = x_1493;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


