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
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat11 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlatb11 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_158 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu11 : u32;

var<private> u_xlati11 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlatb35 : bool;

var<private> u_xlat35 : f32;

@group(1) @binding(5) var<uniform> x_516 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

@group(1) @binding(2) var<uniform> x_638 : UnityPerDraw;

var<private> u_xlatu33 : u32;

var<private> u_xlatu36 : u32;

var<private> u_xlati37 : i32;

var<private> u_xlat36 : f32;

var<private> u_xlati36 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_772 : AdditionalLights;

var<private> u_xlat37 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlati27 : i32;

var<private> u_xlatb38 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat38 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb39 : bool;

var<private> u_xlati38 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlati40 : i32;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb30 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu35 : u32;

var<private> u_xlatb36 : bool;

fn main_1() {
  var x_61 : f32;
  var x_111 : f32;
  var txVec0 : vec3<f32>;
  var x_600 : f32;
  var x_611 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_902 : f32;
  var x_912 : f32;
  var txVec1 : vec3<f32>;
  var x_1336 : f32;
  var x_1349 : f32;
  var x_1397 : f32;
  var x_1408 : vec3<f32>;
  var x_1515 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_65 : f32 = u_xlat1.x;
    x_61 = x_65;
  } else {
    x_61 = 0.0f;
  }
  let x_68 : f32 = x_61;
  u_xlat0.x = x_68;
  let x_73 : f32 = u_xlat0.w;
  let x_75 : f32 = x_42.x_BaseColor.w;
  let x_78 : f32 = x_42.x_Cutoff;
  u_xlat11 = ((x_73 * x_75) + -(x_78));
  let x_83 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_83);
  let x_87 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_87);
  let x_89 : f32 = u_xlat33;
  let x_91 : f32 = u_xlat22;
  u_xlat22 = (abs(x_89) + abs(x_91));
  let x_94 : f32 = u_xlat22;
  u_xlat22 = max(x_94, 0.00009999999747378752f);
  let x_97 : f32 = u_xlat11;
  let x_98 : f32 = u_xlat22;
  u_xlat11 = (x_97 / x_98);
  let x_100 : f32 = u_xlat11;
  u_xlat11 = (x_100 + 0.5f);
  let x_103 : f32 = u_xlat11;
  u_xlat11 = clamp(x_103, 0.0f, 1.0f);
  let x_108 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_108 == 0.0f));
  let x_110 : bool = u_xlatb22;
  if (x_110) {
    let x_114 : f32 = u_xlat11;
    x_111 = x_114;
  } else {
    let x_117 : f32 = u_xlat0.x;
    x_111 = x_117;
  }
  let x_118 : f32 = x_111;
  u_xlat0.x = x_118;
  let x_121 : f32 = u_xlat0.x;
  u_xlat11 = (x_121 + -0.00009999999747378752f);
  let x_125 : f32 = u_xlat11;
  u_xlatb11 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb11;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11 = dot(x_137, x_138);
  let x_140 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_140);
  let x_144 : f32 = u_xlat11;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_144, x_144, x_144) * x_146);
  let x_150 : vec3<f32> = vs_TEXCOORD1;
  let x_160 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres0;
  let x_163 : vec3<f32> = (x_150 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_TEXCOORD1;
  let x_170 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres1;
  let x_173 : vec3<f32> = (x_167 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec3<f32> = vs_TEXCOORD1;
  let x_180 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_177 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_185 : vec3<f32> = vs_TEXCOORD1;
  let x_187 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_185 + -(vec3<f32>(x_187.x, x_187.y, x_187.z)));
  let x_191 : vec4<f32> = u_xlat3;
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_197 : vec4<f32> = u_xlat4;
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_197.x, x_197.y, x_197.z), vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_204 : vec3<f32> = u_xlat5;
  let x_205 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_204, x_205);
  let x_209 : vec3<f32> = u_xlat6;
  let x_210 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_209, x_210);
  let x_216 : vec4<f32> = u_xlat3;
  let x_219 : vec4<f32> = x_158.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_216 < x_219);
  let x_222 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_222);
  let x_226 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_238);
  let x_244 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_244);
  let x_248 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_248);
  let x_251 : vec4<f32> = u_xlat3;
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) + vec3<f32>(x_253.y, x_253.z, x_253.w));
  let x_256 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat3;
  let x_261 : vec3<f32> = max(vec3<f32>(x_258.x, x_258.y, x_258.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_262 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_262.x, x_261.x, x_261.y, x_261.z);
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat11 = dot(x_264, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_270 : f32 = u_xlat11;
  u_xlat11 = (-(x_270) + 4.0f);
  let x_275 : f32 = u_xlat11;
  u_xlatu11 = u32(x_275);
  let x_279 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_279) << bitcast<u32>(2i));
  let x_282 : vec3<f32> = vs_TEXCOORD1;
  let x_284 : i32 = u_xlati11;
  let x_287 : i32 = u_xlati11;
  let x_291 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_284 + 1i) / 4i)][((x_287 + 1i) % 4i)];
  let x_293 : vec3<f32> = (vec3<f32>(x_282.y, x_282.y, x_282.y) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : i32 = u_xlati11;
  let x_298 : i32 = u_xlati11;
  let x_301 : vec4<f32> = x_158.x_MainLightWorldToShadow[(x_296 / 4i)][(x_298 % 4i)];
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_306 : vec4<f32> = u_xlat3;
  let x_308 : vec3<f32> = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.x, x_303.x)) + vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : i32 = u_xlati11;
  let x_314 : i32 = u_xlati11;
  let x_318 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_311 + 2i) / 4i)][((x_314 + 2i) % 4i)];
  let x_320 : vec3<f32> = vs_TEXCOORD1;
  let x_323 : vec4<f32> = u_xlat3;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.z, x_320.z, x_320.z)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat3;
  let x_330 : i32 = u_xlati11;
  let x_333 : i32 = u_xlati11;
  let x_337 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_330 + 3i) / 4i)][((x_333 + 3i) % 4i)];
  let x_339 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_344 : f32 = vs_TEXCOORD1.y;
  let x_347 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat11 = (x_344 * x_347);
  let x_350 : f32 = x_28.unity_MatrixV[0i].z;
  let x_352 : f32 = vs_TEXCOORD1.x;
  let x_354 : f32 = u_xlat11;
  u_xlat11 = ((x_350 * x_352) + x_354);
  let x_357 : f32 = x_28.unity_MatrixV[2i].z;
  let x_359 : f32 = vs_TEXCOORD1.z;
  let x_361 : f32 = u_xlat11;
  u_xlat11 = ((x_357 * x_359) + x_361);
  let x_363 : f32 = u_xlat11;
  let x_365 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat11 = (x_363 + x_365);
  let x_367 : f32 = u_xlat11;
  let x_371 : f32 = x_28.x_ProjectionParams.y;
  u_xlat11 = (-(x_367) + -(x_371));
  let x_374 : f32 = u_xlat11;
  u_xlat11 = max(x_374, 0.0f);
  let x_376 : f32 = u_xlat11;
  let x_379 : f32 = x_28.unity_FogParams.x;
  u_xlat11 = (x_376 * x_379);
  let x_387 : vec2<f32> = vs_TEXCOORD7;
  let x_389 : f32 = x_28.x_GlobalMipBias.x;
  let x_390 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_387, x_389);
  u_xlat4 = x_390;
  let x_395 : vec2<f32> = vs_TEXCOORD7;
  let x_397 : f32 = x_28.x_GlobalMipBias.x;
  let x_398 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_395, x_397);
  u_xlat5 = vec3<f32>(x_398.x, x_398.y, x_398.z);
  let x_400 : vec4<f32> = u_xlat4;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.y, x_400.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_405 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec3<f32> = u_xlat2;
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(x_407, vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : f32 = u_xlat33;
  u_xlat33 = (x_411 + 0.5f);
  let x_413 : f32 = u_xlat33;
  let x_415 : vec3<f32> = u_xlat5;
  let x_416 : vec3<f32> = (vec3<f32>(x_413, x_413, x_413) * x_415);
  let x_417 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_420 : f32 = u_xlat4.w;
  u_xlat33 = max(x_420, 0.00009999999747378752f);
  let x_422 : vec4<f32> = u_xlat4;
  let x_424 : f32 = u_xlat33;
  let x_426 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) / vec3<f32>(x_424, x_424, x_424));
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_431 : vec4<f32> = u_xlat3;
  let x_432 : vec2<f32> = vec2<f32>(x_431.x, x_431.y);
  let x_434 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_432.x, x_432.y, x_434);
  let x_446 : vec3<f32> = txVec0;
  let x_448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_446.xy, x_446.z);
  u_xlat33 = x_448;
  let x_451 : f32 = x_158.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_451) + 1.0f);
  let x_455 : f32 = u_xlat33;
  let x_457 : f32 = x_158.x_MainLightShadowParams.x;
  let x_460 : f32 = u_xlat1.x;
  u_xlat33 = ((x_455 * x_457) + x_460);
  let x_464 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_464);
  let x_468 : f32 = u_xlat3.z;
  u_xlatb35 = (x_468 >= 1.0f);
  let x_470 : bool = u_xlatb1;
  let x_471 : bool = u_xlatb35;
  u_xlatb1 = (x_470 | x_471);
  let x_473 : bool = u_xlatb1;
  let x_474 : f32 = u_xlat33;
  u_xlat33 = select(x_474, 1.0f, x_473);
  let x_476 : vec3<f32> = vs_TEXCOORD1;
  let x_479 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_481 : vec3<f32> = (x_476 + -(x_479));
  let x_482 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat3;
  let x_486 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_484.x, x_484.y, x_484.z), vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_492 : f32 = u_xlat1.x;
  let x_494 : f32 = x_158.x_MainLightShadowParams.z;
  let x_497 : f32 = x_158.x_MainLightShadowParams.w;
  u_xlat35 = ((x_492 * x_494) + x_497);
  let x_499 : f32 = u_xlat35;
  u_xlat35 = clamp(x_499, 0.0f, 1.0f);
  let x_501 : f32 = u_xlat33;
  u_xlat3.x = (-(x_501) + 1.0f);
  let x_505 : f32 = u_xlat35;
  let x_507 : f32 = u_xlat3.x;
  let x_509 : f32 = u_xlat33;
  u_xlat33 = ((x_505 * x_507) + x_509);
  let x_518 : f32 = x_516.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_518 == -1.0f));
  let x_520 : bool = u_xlatb35;
  if (x_520) {
    let x_523 : vec3<f32> = vs_TEXCOORD1;
    let x_526 : vec4<f32> = x_516.x_MainLightWorldToLight[1i];
    let x_528 : vec2<f32> = (vec2<f32>(x_523.y, x_523.y) * vec2<f32>(x_526.x, x_526.y));
    let x_529 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
    let x_532 : vec4<f32> = x_516.x_MainLightWorldToLight[0i];
    let x_534 : vec3<f32> = vs_TEXCOORD1;
    let x_537 : vec4<f32> = u_xlat3;
    let x_539 : vec2<f32> = ((vec2<f32>(x_532.x, x_532.y) * vec2<f32>(x_534.x, x_534.x)) + vec2<f32>(x_537.x, x_537.y));
    let x_540 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_539.x, x_539.y, x_540.z, x_540.w);
    let x_543 : vec4<f32> = x_516.x_MainLightWorldToLight[2i];
    let x_545 : vec3<f32> = vs_TEXCOORD1;
    let x_548 : vec4<f32> = u_xlat3;
    let x_550 : vec2<f32> = ((vec2<f32>(x_543.x, x_543.y) * vec2<f32>(x_545.z, x_545.z)) + vec2<f32>(x_548.x, x_548.y));
    let x_551 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
    let x_553 : vec4<f32> = u_xlat3;
    let x_556 : vec4<f32> = x_516.x_MainLightWorldToLight[3i];
    let x_558 : vec2<f32> = (vec2<f32>(x_553.x, x_553.y) + vec2<f32>(x_556.x, x_556.y));
    let x_559 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_558.x, x_558.y, x_559.z, x_559.w);
    let x_561 : vec4<f32> = u_xlat3;
    let x_565 : vec2<f32> = ((vec2<f32>(x_561.x, x_561.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_566 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
    let x_573 : vec4<f32> = u_xlat3;
    let x_576 : f32 = x_28.x_GlobalMipBias.x;
    let x_577 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_573.x, x_573.y), x_576);
    u_xlat3 = x_577;
    let x_582 : f32 = x_516.x_MainLightCookieTextureFormat;
    let x_584 : f32 = x_516.x_MainLightCookieTextureFormat;
    let x_586 : f32 = x_516.x_MainLightCookieTextureFormat;
    let x_588 : f32 = x_516.x_MainLightCookieTextureFormat;
    let x_589 : vec4<f32> = vec4<f32>(x_582, x_584, x_586, x_588);
    let x_596 : vec4<bool> = (vec4<f32>(x_589.x, x_589.y, x_589.z, x_589.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_596.x, x_596.y);
    let x_599 : bool = u_xlatb5.y;
    if (x_599) {
      let x_604 : f32 = u_xlat3.w;
      x_600 = x_604;
    } else {
      let x_607 : f32 = u_xlat3.x;
      x_600 = x_607;
    }
    let x_608 : f32 = x_600;
    u_xlat35 = x_608;
    let x_610 : bool = u_xlatb5.x;
    if (x_610) {
      let x_614 : vec4<f32> = u_xlat3;
      x_611 = vec3<f32>(x_614.x, x_614.y, x_614.z);
    } else {
      let x_617 : f32 = u_xlat35;
      x_611 = vec3<f32>(x_617, x_617, x_617);
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
  let x_629 : vec4<f32> = x_28.x_MainLightColor;
  let x_631 : vec3<f32> = (vec3<f32>(x_626.x, x_626.y, x_626.z) * vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : f32 = u_xlat33;
  let x_640 : f32 = x_638.unity_LightData.z;
  u_xlat33 = (x_634 * x_640);
  let x_642 : f32 = u_xlat33;
  let x_644 : vec4<f32> = u_xlat3;
  let x_646 : vec3<f32> = (vec3<f32>(x_642, x_642, x_642) * vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec3<f32> = u_xlat2;
  let x_651 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat33 = dot(x_649, vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_654 : f32 = u_xlat33;
  u_xlat33 = clamp(x_654, 0.0f, 1.0f);
  let x_656 : f32 = u_xlat33;
  let x_658 : vec4<f32> = u_xlat3;
  let x_660 : vec3<f32> = (vec3<f32>(x_656, x_656, x_656) * vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : vec4<f32> = u_xlat1;
  let x_665 : vec4<f32> = u_xlat3;
  let x_667 : vec3<f32> = (vec3<f32>(x_663.y, x_663.z, x_663.w) * vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat0;
  let x_672 : vec4<f32> = u_xlat3;
  let x_674 : vec3<f32> = (vec3<f32>(x_670.x, x_670.x, x_670.x) * vec3<f32>(x_672.x, x_672.y, x_672.z));
  let x_675 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_678 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_680 : f32 = x_638.unity_LightData.y;
  u_xlat33 = min(x_678, x_680);
  let x_683 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_683));
  let x_687 : f32 = u_xlat1.x;
  let x_690 : f32 = x_158.x_AdditionalShadowFadeParams.x;
  let x_693 : f32 = x_158.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_687 * x_690) + x_693);
  let x_697 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_697, 0.0f, 1.0f);
  let x_701 : f32 = x_516.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_703 : f32 = x_516.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_705 : f32 = x_516.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_707 : f32 = x_516.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_708 : vec4<f32> = vec4<f32>(x_701, x_703, x_705, x_707);
  let x_714 : vec4<bool> = (vec4<f32>(x_708.x, x_708.y, x_708.z, x_708.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_714.x, x_714.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_726 : u32 = u_xlatu_loop_1;
    let x_727 : u32 = u_xlatu33;
    if ((x_726 < x_727)) {
    } else {
      break;
    }
    let x_730 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_730 >> 2u);
    let x_733 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_733 & 3u));
    let x_737 : u32 = u_xlatu36;
    let x_740 : vec4<f32> = x_638.unity_LightIndices[bitcast<i32>(x_737)];
    let x_750 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_755 : vec4<u32> = indexable[x_750];
    u_xlat36 = dot(x_740, bitcast<vec4<f32>>(x_755));
    let x_759 : f32 = u_xlat36;
    u_xlati36 = i32(x_759);
    let x_762 : vec3<f32> = vs_TEXCOORD1;
    let x_773 : i32 = u_xlati36;
    let x_775 : vec4<f32> = x_772.x_AdditionalLightsPosition[x_773];
    let x_778 : i32 = u_xlati36;
    let x_780 : vec4<f32> = x_772.x_AdditionalLightsPosition[x_778];
    u_xlat7 = ((-(x_762) * vec3<f32>(x_775.w, x_775.w, x_775.w)) + vec3<f32>(x_780.x, x_780.y, x_780.z));
    let x_784 : vec3<f32> = u_xlat7;
    let x_785 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_784, x_785);
    let x_787 : f32 = u_xlat37;
    u_xlat37 = max(x_787, 0.00006103515625f);
    let x_791 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_791);
    let x_793 : f32 = u_xlat27;
    let x_795 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_793, x_793, x_793) * x_795);
    let x_797 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_797);
    let x_799 : f32 = u_xlat37;
    let x_800 : i32 = u_xlati36;
    let x_802 : f32 = x_772.x_AdditionalLightsAttenuation[x_800].x;
    u_xlat37 = (x_799 * x_802);
    let x_804 : f32 = u_xlat37;
    let x_806 : f32 = u_xlat37;
    u_xlat37 = ((-(x_804) * x_806) + 1.0f);
    let x_809 : f32 = u_xlat37;
    u_xlat37 = max(x_809, 0.0f);
    let x_811 : f32 = u_xlat37;
    let x_812 : f32 = u_xlat37;
    u_xlat37 = (x_811 * x_812);
    let x_814 : f32 = u_xlat37;
    let x_815 : f32 = u_xlat27;
    u_xlat37 = (x_814 * x_815);
    let x_817 : i32 = u_xlati36;
    let x_819 : vec4<f32> = x_772.x_AdditionalLightsSpotDir[x_817];
    let x_821 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_819.x, x_819.y, x_819.z), x_821);
    let x_823 : f32 = u_xlat27;
    let x_824 : i32 = u_xlati36;
    let x_826 : f32 = x_772.x_AdditionalLightsAttenuation[x_824].z;
    let x_828 : i32 = u_xlati36;
    let x_830 : f32 = x_772.x_AdditionalLightsAttenuation[x_828].w;
    u_xlat27 = ((x_823 * x_826) + x_830);
    let x_832 : f32 = u_xlat27;
    u_xlat27 = clamp(x_832, 0.0f, 1.0f);
    let x_834 : f32 = u_xlat27;
    let x_835 : f32 = u_xlat27;
    u_xlat27 = (x_834 * x_835);
    let x_837 : f32 = u_xlat37;
    let x_838 : f32 = u_xlat27;
    u_xlat37 = (x_837 * x_838);
    let x_842 : i32 = u_xlati36;
    let x_844 : f32 = x_158.x_AdditionalShadowParams[x_842].w;
    u_xlati27 = i32(x_844);
    let x_847 : i32 = u_xlati27;
    u_xlatb38 = (x_847 >= 0i);
    let x_849 : bool = u_xlatb38;
    if (x_849) {
      let x_853 : i32 = u_xlati36;
      let x_855 : f32 = x_158.x_AdditionalShadowParams[x_853].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_855, x_855, x_855, x_855))));
      let x_859 : bool = u_xlatb38;
      if (x_859) {
        let x_863 : vec3<f32> = u_xlat7;
        let x_866 : vec3<f32> = u_xlat7;
        let x_869 : vec4<bool> = (abs(vec4<f32>(x_863.z, x_863.z, x_863.y, x_863.z)) >= abs(vec4<f32>(x_866.x, x_866.y, x_866.x, x_866.x)));
        let x_871 : vec3<bool> = vec3<bool>(x_869.x, x_869.y, x_869.z);
        let x_872 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_871.x, x_871.y, x_871.z, x_872.w);
        let x_875 : bool = u_xlatb8.y;
        let x_877 : bool = u_xlatb8.x;
        u_xlatb38 = (x_875 & x_877);
        let x_879 : vec3<f32> = u_xlat7;
        let x_882 : vec4<bool> = (-(vec4<f32>(x_879.z, x_879.y, x_879.z, x_879.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_883 : vec3<bool> = vec3<bool>(x_882.x, x_882.y, x_882.w);
        let x_884 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_883.x, x_883.y, x_884.z, x_883.z);
        let x_888 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_888);
        let x_893 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_893);
        let x_898 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_898);
        let x_901 : bool = u_xlatb8.z;
        if (x_901) {
          let x_906 : f32 = u_xlat8.y;
          x_902 = x_906;
        } else {
          let x_908 : f32 = u_xlat39;
          x_902 = x_908;
        }
        let x_909 : f32 = x_902;
        u_xlat39 = x_909;
        let x_911 : bool = u_xlatb38;
        if (x_911) {
          let x_916 : f32 = u_xlat8.x;
          x_912 = x_916;
        } else {
          let x_918 : f32 = u_xlat39;
          x_912 = x_918;
        }
        let x_919 : f32 = x_912;
        u_xlat38 = x_919;
        let x_920 : i32 = u_xlati36;
        let x_922 : f32 = x_158.x_AdditionalShadowParams[x_920].w;
        u_xlat39 = trunc(x_922);
        let x_924 : f32 = u_xlat38;
        let x_925 : f32 = u_xlat39;
        u_xlat38 = (x_924 + x_925);
        let x_927 : f32 = u_xlat38;
        u_xlati27 = i32(x_927);
      }
      let x_929 : i32 = u_xlati27;
      u_xlati27 = (x_929 << bitcast<u32>(2i));
      let x_931 : vec3<f32> = vs_TEXCOORD1;
      let x_934 : i32 = u_xlati27;
      let x_937 : i32 = u_xlati27;
      let x_941 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_934 + 1i) / 4i)][((x_937 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_931.y, x_931.y, x_931.y, x_931.y) * x_941);
      let x_943 : i32 = u_xlati27;
      let x_945 : i32 = u_xlati27;
      let x_948 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[(x_943 / 4i)][(x_945 % 4i)];
      let x_949 : vec3<f32> = vs_TEXCOORD1;
      let x_952 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_948 * vec4<f32>(x_949.x, x_949.x, x_949.x, x_949.x)) + x_952);
      let x_954 : i32 = u_xlati27;
      let x_957 : i32 = u_xlati27;
      let x_961 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_954 + 2i) / 4i)][((x_957 + 2i) % 4i)];
      let x_962 : vec3<f32> = vs_TEXCOORD1;
      let x_965 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_961 * vec4<f32>(x_962.z, x_962.z, x_962.z, x_962.z)) + x_965);
      let x_967 : vec4<f32> = u_xlat8;
      let x_968 : i32 = u_xlati27;
      let x_971 : i32 = u_xlati27;
      let x_975 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_968 + 3i) / 4i)][((x_971 + 3i) % 4i)];
      u_xlat8 = (x_967 + x_975);
      let x_977 : vec4<f32> = u_xlat8;
      let x_979 : vec4<f32> = u_xlat8;
      let x_981 : vec3<f32> = (vec3<f32>(x_977.x, x_977.y, x_977.z) / vec3<f32>(x_979.w, x_979.w, x_979.w));
      let x_982 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
      let x_985 : vec4<f32> = u_xlat8;
      let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
      let x_988 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_986.x, x_986.y, x_988);
      let x_996 : vec3<f32> = txVec1;
      let x_998 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_996.xy, x_996.z);
      u_xlat27 = x_998;
      let x_999 : i32 = u_xlati36;
      let x_1001 : f32 = x_158.x_AdditionalShadowParams[x_999].x;
      u_xlat38 = (1.0f + -(x_1001));
      let x_1004 : f32 = u_xlat27;
      let x_1005 : i32 = u_xlati36;
      let x_1007 : f32 = x_158.x_AdditionalShadowParams[x_1005].x;
      let x_1009 : f32 = u_xlat38;
      u_xlat27 = ((x_1004 * x_1007) + x_1009);
      let x_1012 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_1012);
      let x_1016 : f32 = u_xlat8.z;
      u_xlatb39 = (x_1016 >= 1.0f);
      let x_1018 : bool = u_xlatb38;
      let x_1019 : bool = u_xlatb39;
      u_xlatb38 = (x_1018 | x_1019);
      let x_1021 : bool = u_xlatb38;
      let x_1022 : f32 = u_xlat27;
      u_xlat27 = select(x_1022, 1.0f, x_1021);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_1025 : f32 = u_xlat27;
    u_xlat38 = (-(x_1025) + 1.0f);
    let x_1029 : f32 = u_xlat1.x;
    let x_1030 : f32 = u_xlat38;
    let x_1032 : f32 = u_xlat27;
    u_xlat27 = ((x_1029 * x_1030) + x_1032);
    let x_1035 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_1035 & 31i)));
    let x_1039 : i32 = u_xlati38;
    let x_1042 : f32 = x_516.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_1039) & bitcast<u32>(x_1042)));
    let x_1046 : i32 = u_xlati38;
    if ((x_1046 != 0i)) {
      let x_1050 : i32 = u_xlati36;
      let x_1052 : f32 = x_516.x_AdditionalLightsLightTypes[x_1050].el;
      u_xlati38 = i32(x_1052);
      let x_1055 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_1055 != 0i));
      let x_1059 : i32 = u_xlati36;
      u_xlati40 = (x_1059 << bitcast<u32>(2i));
      let x_1061 : i32 = u_xlati39;
      if ((x_1061 != 0i)) {
        let x_1065 : vec3<f32> = vs_TEXCOORD1;
        let x_1067 : i32 = u_xlati40;
        let x_1070 : i32 = u_xlati40;
        let x_1074 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1067 + 1i) / 4i)][((x_1070 + 1i) % 4i)];
        let x_1076 : vec3<f32> = (vec3<f32>(x_1065.y, x_1065.y, x_1065.y) * vec3<f32>(x_1074.x, x_1074.y, x_1074.w));
        let x_1077 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
        let x_1079 : i32 = u_xlati40;
        let x_1081 : i32 = u_xlati40;
        let x_1084 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[(x_1079 / 4i)][(x_1081 % 4i)];
        let x_1086 : vec3<f32> = vs_TEXCOORD1;
        let x_1089 : vec4<f32> = u_xlat8;
        let x_1091 : vec3<f32> = ((vec3<f32>(x_1084.x, x_1084.y, x_1084.w) * vec3<f32>(x_1086.x, x_1086.x, x_1086.x)) + vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
        let x_1092 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
        let x_1094 : i32 = u_xlati40;
        let x_1097 : i32 = u_xlati40;
        let x_1101 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1094 + 2i) / 4i)][((x_1097 + 2i) % 4i)];
        let x_1103 : vec3<f32> = vs_TEXCOORD1;
        let x_1106 : vec4<f32> = u_xlat8;
        let x_1108 : vec3<f32> = ((vec3<f32>(x_1101.x, x_1101.y, x_1101.w) * vec3<f32>(x_1103.z, x_1103.z, x_1103.z)) + vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
        let x_1109 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
        let x_1111 : vec4<f32> = u_xlat8;
        let x_1113 : i32 = u_xlati40;
        let x_1116 : i32 = u_xlati40;
        let x_1120 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1113 + 3i) / 4i)][((x_1116 + 3i) % 4i)];
        let x_1122 : vec3<f32> = (vec3<f32>(x_1111.x, x_1111.y, x_1111.z) + vec3<f32>(x_1120.x, x_1120.y, x_1120.w));
        let x_1123 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
        let x_1125 : vec4<f32> = u_xlat8;
        let x_1127 : vec4<f32> = u_xlat8;
        let x_1129 : vec2<f32> = (vec2<f32>(x_1125.x, x_1125.y) / vec2<f32>(x_1127.z, x_1127.z));
        let x_1130 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1129.x, x_1129.y, x_1130.z, x_1130.w);
        let x_1132 : vec4<f32> = u_xlat8;
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1136 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1135.x, x_1135.y, x_1136.z, x_1136.w);
        let x_1138 : vec4<f32> = u_xlat8;
        let x_1142 : vec2<f32> = clamp(vec2<f32>(x_1138.x, x_1138.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
        let x_1145 : i32 = u_xlati36;
        let x_1147 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1145];
        let x_1149 : vec4<f32> = u_xlat8;
        let x_1152 : i32 = u_xlati36;
        let x_1154 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1152];
        let x_1156 : vec2<f32> = ((vec2<f32>(x_1147.x, x_1147.y) * vec2<f32>(x_1149.x, x_1149.y)) + vec2<f32>(x_1154.z, x_1154.w));
        let x_1157 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1156.x, x_1156.y, x_1157.z, x_1157.w);
      } else {
        let x_1160 : i32 = u_xlati38;
        u_xlatb38 = (x_1160 == 1i);
        let x_1162 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1162);
        let x_1164 : i32 = u_xlati38;
        if ((x_1164 != 0i)) {
          let x_1170 : vec3<f32> = vs_TEXCOORD1;
          let x_1172 : i32 = u_xlati40;
          let x_1175 : i32 = u_xlati40;
          let x_1179 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1172 + 1i) / 4i)][((x_1175 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1170.y, x_1170.y) * vec2<f32>(x_1179.x, x_1179.y));
          let x_1182 : i32 = u_xlati40;
          let x_1184 : i32 = u_xlati40;
          let x_1187 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[(x_1182 / 4i)][(x_1184 % 4i)];
          let x_1189 : vec3<f32> = vs_TEXCOORD1;
          let x_1192 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1187.x, x_1187.y) * vec2<f32>(x_1189.x, x_1189.x)) + x_1192);
          let x_1194 : i32 = u_xlati40;
          let x_1197 : i32 = u_xlati40;
          let x_1201 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1194 + 2i) / 4i)][((x_1197 + 2i) % 4i)];
          let x_1203 : vec3<f32> = vs_TEXCOORD1;
          let x_1206 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1201.x, x_1201.y) * vec2<f32>(x_1203.z, x_1203.z)) + x_1206);
          let x_1208 : vec2<f32> = u_xlat30;
          let x_1209 : i32 = u_xlati40;
          let x_1212 : i32 = u_xlati40;
          let x_1216 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1209 + 3i) / 4i)][((x_1212 + 3i) % 4i)];
          u_xlat30 = (x_1208 + vec2<f32>(x_1216.x, x_1216.y));
          let x_1219 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1219 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1222 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1222);
          let x_1224 : i32 = u_xlati36;
          let x_1226 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1224];
          let x_1228 : vec2<f32> = u_xlat30;
          let x_1230 : i32 = u_xlati36;
          let x_1232 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1230];
          let x_1234 : vec2<f32> = ((vec2<f32>(x_1226.x, x_1226.y) * x_1228) + vec2<f32>(x_1232.z, x_1232.w));
          let x_1235 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1234.x, x_1234.y, x_1235.z, x_1235.w);
        } else {
          let x_1239 : vec3<f32> = vs_TEXCOORD1;
          let x_1241 : i32 = u_xlati40;
          let x_1244 : i32 = u_xlati40;
          let x_1248 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1241 + 1i) / 4i)][((x_1244 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1239.y, x_1239.y, x_1239.y, x_1239.y) * x_1248);
          let x_1250 : i32 = u_xlati40;
          let x_1252 : i32 = u_xlati40;
          let x_1255 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[(x_1250 / 4i)][(x_1252 % 4i)];
          let x_1256 : vec3<f32> = vs_TEXCOORD1;
          let x_1259 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1255 * vec4<f32>(x_1256.x, x_1256.x, x_1256.x, x_1256.x)) + x_1259);
          let x_1261 : i32 = u_xlati40;
          let x_1264 : i32 = u_xlati40;
          let x_1268 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1261 + 2i) / 4i)][((x_1264 + 2i) % 4i)];
          let x_1269 : vec3<f32> = vs_TEXCOORD1;
          let x_1272 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1268 * vec4<f32>(x_1269.z, x_1269.z, x_1269.z, x_1269.z)) + x_1272);
          let x_1274 : vec4<f32> = u_xlat9;
          let x_1275 : i32 = u_xlati40;
          let x_1278 : i32 = u_xlati40;
          let x_1282 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1275 + 3i) / 4i)][((x_1278 + 3i) % 4i)];
          u_xlat9 = (x_1274 + x_1282);
          let x_1284 : vec4<f32> = u_xlat9;
          let x_1286 : vec4<f32> = u_xlat9;
          let x_1288 : vec3<f32> = (vec3<f32>(x_1284.x, x_1284.y, x_1284.z) / vec3<f32>(x_1286.w, x_1286.w, x_1286.w));
          let x_1289 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
          let x_1291 : vec4<f32> = u_xlat9;
          let x_1293 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1291.x, x_1291.y, x_1291.z), vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
          let x_1296 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1296);
          let x_1298 : f32 = u_xlat38;
          let x_1300 : vec4<f32> = u_xlat9;
          let x_1302 : vec3<f32> = (vec3<f32>(x_1298, x_1298, x_1298) * vec3<f32>(x_1300.x, x_1300.y, x_1300.z));
          let x_1303 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1303.w);
          let x_1305 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1305.x, x_1305.y, x_1305.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1310 : f32 = u_xlat38;
          u_xlat38 = max(x_1310, 0.00000099999999747524f);
          let x_1313 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1313);
          let x_1316 : f32 = u_xlat38;
          let x_1318 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1316, x_1316, x_1316) * vec3<f32>(x_1318.z, x_1318.x, x_1318.y));
          let x_1322 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1322);
          let x_1326 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1326, 0.0f, 1.0f);
          let x_1330 : vec3<f32> = u_xlat10;
          let x_1332 : vec4<bool> = (vec4<f32>(x_1330.y, x_1330.z, x_1330.y, x_1330.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1332.x, x_1332.y);
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
          let x_1362 : f32 = u_xlat38;
          let x_1365 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1360.x, x_1360.y) * vec2<f32>(x_1362, x_1362)) + x_1365);
          let x_1367 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1367 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1370 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1370, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1374 : i32 = u_xlati36;
          let x_1376 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1374];
          let x_1378 : vec2<f32> = u_xlat30;
          let x_1380 : i32 = u_xlati36;
          let x_1382 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1380];
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
      u_xlat38 = x_1405;
      let x_1407 : bool = u_xlatb5.x;
      if (x_1407) {
        let x_1411 : vec4<f32> = u_xlat8;
        x_1408 = vec3<f32>(x_1411.x, x_1411.y, x_1411.z);
      } else {
        let x_1414 : f32 = u_xlat38;
        x_1408 = vec3<f32>(x_1414, x_1414, x_1414);
      }
      let x_1416 : vec3<f32> = x_1408;
      let x_1417 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1417.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1423 : vec4<f32> = u_xlat8;
    let x_1425 : i32 = u_xlati36;
    let x_1427 : vec4<f32> = x_772.x_AdditionalLightsColor[x_1425];
    let x_1429 : vec3<f32> = (vec3<f32>(x_1423.x, x_1423.y, x_1423.z) * vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
    let x_1430 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
    let x_1432 : f32 = u_xlat37;
    let x_1433 : f32 = u_xlat27;
    u_xlat36 = (x_1432 * x_1433);
    let x_1435 : f32 = u_xlat36;
    let x_1437 : vec4<f32> = u_xlat8;
    let x_1439 : vec3<f32> = (vec3<f32>(x_1435, x_1435, x_1435) * vec3<f32>(x_1437.x, x_1437.y, x_1437.z));
    let x_1440 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
    let x_1442 : vec3<f32> = u_xlat2;
    let x_1443 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_1442, x_1443);
    let x_1445 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1445, 0.0f, 1.0f);
    let x_1447 : f32 = u_xlat36;
    let x_1449 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1447, x_1447, x_1447) * vec3<f32>(x_1449.x, x_1449.y, x_1449.z));
    let x_1452 : vec4<f32> = u_xlat1;
    let x_1454 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1452.y, x_1452.z, x_1452.w) * x_1454);
    let x_1456 : vec3<f32> = u_xlat7;
    let x_1457 : vec4<f32> = u_xlat0;
    let x_1460 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1456 * vec3<f32>(x_1457.x, x_1457.x, x_1457.x)) + x_1460);

    continuing {
      let x_1462 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1462 + bitcast<u32>(1i));
    }
  }
  let x_1464 : vec4<f32> = u_xlat4;
  let x_1466 : vec4<f32> = u_xlat1;
  let x_1469 : vec4<f32> = u_xlat3;
  let x_1471 : vec3<f32> = ((vec3<f32>(x_1464.x, x_1464.y, x_1464.z) * vec3<f32>(x_1466.y, x_1466.z, x_1466.w)) + vec3<f32>(x_1469.x, x_1469.y, x_1469.z));
  let x_1472 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1472.w);
  let x_1474 : vec3<f32> = u_xlat6;
  let x_1475 : vec4<f32> = u_xlat1;
  let x_1477 : vec3<f32> = (x_1474 + vec3<f32>(x_1475.x, x_1475.y, x_1475.z));
  let x_1478 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1477.x, x_1477.y, x_1477.z, x_1478.w);
  let x_1480 : f32 = u_xlat11;
  let x_1481 : f32 = u_xlat11;
  u_xlat11 = (x_1480 * -(x_1481));
  let x_1484 : f32 = u_xlat11;
  u_xlat11 = exp2(x_1484);
  let x_1486 : vec4<f32> = u_xlat1;
  let x_1489 : vec4<f32> = x_28.unity_FogColor;
  let x_1492 : vec3<f32> = (vec3<f32>(x_1486.x, x_1486.y, x_1486.z) + -(vec3<f32>(x_1489.x, x_1489.y, x_1489.z)));
  let x_1493 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1492.x, x_1492.y, x_1492.z, x_1493.w);
  let x_1497 : f32 = u_xlat11;
  let x_1499 : vec4<f32> = u_xlat1;
  let x_1503 : vec4<f32> = x_28.unity_FogColor;
  let x_1505 : vec3<f32> = ((vec3<f32>(x_1497, x_1497, x_1497) * vec3<f32>(x_1499.x, x_1499.y, x_1499.z)) + vec3<f32>(x_1503.x, x_1503.y, x_1503.z));
  let x_1506 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1506.w);
  let x_1509 : f32 = x_42.x_Surface;
  u_xlatb11 = (x_1509 == 1.0f);
  let x_1511 : bool = u_xlatb11;
  let x_1512 : bool = u_xlatb22;
  u_xlatb11 = (x_1511 | x_1512);
  let x_1514 : bool = u_xlatb11;
  if (x_1514) {
    let x_1519 : f32 = u_xlat0.x;
    x_1515 = x_1519;
  } else {
    x_1515 = 1.0f;
  }
  let x_1521 : f32 = x_1515;
  SV_Target0.w = x_1521;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


