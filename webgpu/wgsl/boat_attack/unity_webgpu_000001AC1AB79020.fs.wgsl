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
  /* @offset(76) */
  x_DitheringTextureInvSize : f32,
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb23 : bool;

@group(1) @binding(2) var<uniform> x_94 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat67 : f32;

var<private> u_xlatb67 : bool;

@group(1) @binding(4) var<uniform> x_238 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb68 : bool;

var<private> u_xlat47 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat49 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlatb3 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_1564 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlat69 : f32;

var<private> u_xlatu67 : u32;

var<private> u_xlatu48 : u32;

var<private> u_xlati70 : i32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1810 : AdditionalLights;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlati71 : i32;

var<private> u_xlatb72 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat73 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlatb71 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlati72 : i32;

var<private> u_xlati7 : i32;

var<private> u_xlati29 : i32;

var<private> u_xlatb29 : vec3<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearClamp : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb22 : bool;

var<private> u_xlatb48 : bool;

var<private> u_xlatu69 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_102 : f32;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
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
  var x_1651 : f32;
  var x_1662 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1951 : f32;
  var x_1962 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_3578 : f32;
  var x_3591 : f32;
  var x_3649 : f32;
  var x_3660 : vec3<f32>;
  var x_3741 : f32;
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
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_70.x, x_70.y, x_71.z, x_71.w);
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_97 : f32 = x_94.unity_LODFade.x;
  u_xlatb23 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb23;
  if (x_100) {
    let x_106 : f32 = u_xlat1.x;
    x_102 = abs(x_106);
  } else {
    let x_110 : f32 = u_xlat1.x;
    x_102 = -(abs(x_110));
  }
  let x_113 : f32 = x_102;
  u_xlat1.x = x_113;
  let x_116 : f32 = u_xlat1.x;
  let x_119 : f32 = x_94.unity_LODFade.x;
  u_xlat1.x = (-(x_116) + x_119);
  let x_124 : f32 = u_xlat1.x;
  u_xlatb1 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb1;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_136, x_137);
  let x_141 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_141);
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  let x_147 : vec3<f32> = (vec3<f32>(x_144.x, x_144.x, x_144.x) * x_146);
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  u_xlat1.w = 1.0f;
  let x_155 : vec4<f32> = x_94.unity_SHAr;
  let x_156 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_155, x_156);
  let x_161 : vec4<f32> = x_94.unity_SHAg;
  let x_162 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_161, x_162);
  let x_168 : vec4<f32> = x_94.unity_SHAb;
  let x_169 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_168, x_169);
  let x_173 : vec4<f32> = u_xlat1;
  let x_175 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_173.y, x_173.z, x_173.z, x_173.x) * vec4<f32>(x_175.x, x_175.y, x_175.z, x_175.z));
  let x_181 : vec4<f32> = x_94.unity_SHBr;
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_181, x_182);
  let x_187 : vec4<f32> = x_94.unity_SHBg;
  let x_188 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_187, x_188);
  let x_193 : vec4<f32> = x_94.unity_SHBb;
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_193, x_194);
  let x_199 : f32 = u_xlat1.y;
  let x_201 : f32 = u_xlat1.y;
  u_xlat67 = (x_199 * x_201);
  let x_204 : f32 = u_xlat1.x;
  let x_206 : f32 = u_xlat1.x;
  let x_208 : f32 = u_xlat67;
  u_xlat67 = ((x_204 * x_206) + -(x_208));
  let x_213 : vec4<f32> = x_94.unity_SHC;
  let x_215 : f32 = u_xlat67;
  let x_218 : vec4<f32> = u_xlat4;
  let x_220 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.y, x_213.z) * vec3<f32>(x_215, x_215, x_215)) + vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec3<f32> = u_xlat2;
  let x_224 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_223 + vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_227, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_241 : f32 = x_238.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_241);
  let x_243 : bool = u_xlatb67;
  if (x_243) {
    let x_247 : f32 = x_238.x_MainLightShadowParams.y;
    u_xlatb67 = (x_247 == 1.0f);
    let x_249 : bool = u_xlatb67;
    if (x_249) {
      let x_253 : vec4<f32> = vs_TEXCOORD6;
      let x_257 : vec4<f32> = x_238.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_253.x, x_253.y, x_253.x, x_253.y) + x_257);
      let x_261 : vec4<f32> = u_xlat3;
      let x_262 : vec2<f32> = vec2<f32>(x_261.x, x_261.y);
      let x_264 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_262.x, x_262.y, x_264);
      let x_276 : vec3<f32> = txVec0;
      let x_278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_276.xy, x_276.z);
      u_xlat4.x = x_278;
      let x_281 : vec4<f32> = u_xlat3;
      let x_282 : vec2<f32> = vec2<f32>(x_281.z, x_281.w);
      let x_284 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_282.x, x_282.y, x_284);
      let x_291 : vec3<f32> = txVec1;
      let x_293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_291.xy, x_291.z);
      u_xlat4.y = x_293;
      let x_295 : vec4<f32> = vs_TEXCOORD6;
      let x_299 : vec4<f32> = x_238.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_295.x, x_295.y, x_295.x, x_295.y) + x_299);
      let x_302 : vec4<f32> = u_xlat3;
      let x_303 : vec2<f32> = vec2<f32>(x_302.x, x_302.y);
      let x_305 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_303.x, x_303.y, x_305);
      let x_312 : vec3<f32> = txVec2;
      let x_314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_312.xy, x_312.z);
      u_xlat4.z = x_314;
      let x_317 : vec4<f32> = u_xlat3;
      let x_318 : vec2<f32> = vec2<f32>(x_317.z, x_317.w);
      let x_320 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_318.x, x_318.y, x_320);
      let x_327 : vec3<f32> = txVec3;
      let x_329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_327.xy, x_327.z);
      u_xlat4.w = x_329;
      let x_331 : vec4<f32> = u_xlat4;
      u_xlat67 = dot(x_331, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_338 : f32 = x_238.x_MainLightShadowParams.y;
      u_xlatb68 = (x_338 == 2.0f);
      let x_341 : bool = u_xlatb68;
      if (x_341) {
        let x_344 : vec4<f32> = vs_TEXCOORD6;
        let x_348 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_353 : vec2<f32> = ((vec2<f32>(x_344.x, x_344.y) * vec2<f32>(x_348.z, x_348.w)) + vec2<f32>(0.5f, 0.5f));
        let x_354 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_353.x, x_353.y, x_354.z, x_354.w);
        let x_356 : vec4<f32> = u_xlat3;
        let x_358 : vec2<f32> = floor(vec2<f32>(x_356.x, x_356.y));
        let x_359 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_358.x, x_358.y, x_359.z, x_359.w);
        let x_363 : vec4<f32> = vs_TEXCOORD6;
        let x_366 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_369 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_363.x, x_363.y) * vec2<f32>(x_366.z, x_366.w)) + -(vec2<f32>(x_369.x, x_369.y)));
        let x_373 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_373.x, x_373.x, x_373.y, x_373.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_378 : vec4<f32> = u_xlat4;
        let x_380 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_378.x, x_378.x, x_378.z, x_378.z) * vec4<f32>(x_380.x, x_380.x, x_380.z, x_380.z));
        let x_383 : vec4<f32> = u_xlat5;
        let x_387 : vec2<f32> = (vec2<f32>(x_383.y, x_383.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_388 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_387.x, x_388.y, x_387.y, x_388.w);
        let x_390 : vec4<f32> = u_xlat5;
        let x_393 : vec2<f32> = u_xlat47;
        let x_395 : vec2<f32> = ((vec2<f32>(x_390.x, x_390.z) * vec2<f32>(0.5f, 0.5f)) + -(x_393));
        let x_396 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_395.x, x_395.y, x_396.z, x_396.w);
        let x_399 : vec2<f32> = u_xlat47;
        u_xlat49 = (-(x_399) + vec2<f32>(1.0f, 1.0f));
        let x_404 : vec2<f32> = u_xlat47;
        let x_406 : vec2<f32> = min(x_404, vec2<f32>(0.0f, 0.0f));
        let x_407 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
        let x_409 : vec4<f32> = u_xlat6;
        let x_412 : vec4<f32> = u_xlat6;
        let x_415 : vec2<f32> = u_xlat49;
        let x_416 : vec2<f32> = ((-(vec2<f32>(x_409.x, x_409.y)) * vec2<f32>(x_412.x, x_412.y)) + x_415);
        let x_417 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
        let x_419 : vec2<f32> = u_xlat47;
        u_xlat47 = max(x_419, vec2<f32>(0.0f, 0.0f));
        let x_421 : vec2<f32> = u_xlat47;
        let x_423 : vec2<f32> = u_xlat47;
        let x_425 : vec4<f32> = u_xlat4;
        u_xlat47 = ((-(x_421) * x_423) + vec2<f32>(x_425.y, x_425.w));
        let x_428 : vec4<f32> = u_xlat6;
        let x_430 : vec2<f32> = (vec2<f32>(x_428.x, x_428.y) + vec2<f32>(1.0f, 1.0f));
        let x_431 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
        let x_433 : vec2<f32> = u_xlat47;
        u_xlat47 = (x_433 + vec2<f32>(1.0f, 1.0f));
        let x_436 : vec4<f32> = u_xlat5;
        let x_440 : vec2<f32> = (vec2<f32>(x_436.x, x_436.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_441 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
        let x_443 : vec2<f32> = u_xlat49;
        let x_444 : vec2<f32> = (x_443 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_445 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
        let x_447 : vec4<f32> = u_xlat6;
        let x_449 : vec2<f32> = (vec2<f32>(x_447.x, x_447.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_450 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
        let x_453 : vec2<f32> = u_xlat47;
        let x_454 : vec2<f32> = (x_453 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_455 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
        let x_457 : vec4<f32> = u_xlat4;
        u_xlat47 = (vec2<f32>(x_457.y, x_457.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_461 : f32 = u_xlat6.x;
        u_xlat7.z = x_461;
        let x_464 : f32 = u_xlat47.x;
        u_xlat7.w = x_464;
        let x_467 : f32 = u_xlat8.x;
        u_xlat5.z = x_467;
        let x_470 : f32 = u_xlat4.x;
        u_xlat5.w = x_470;
        let x_473 : vec4<f32> = u_xlat5;
        let x_475 : vec4<f32> = u_xlat7;
        u_xlat9 = (vec4<f32>(x_473.z, x_473.w, x_473.x, x_473.z) + vec4<f32>(x_475.z, x_475.w, x_475.x, x_475.z));
        let x_479 : f32 = u_xlat7.y;
        u_xlat6.z = x_479;
        let x_482 : f32 = u_xlat47.y;
        u_xlat6.w = x_482;
        let x_485 : f32 = u_xlat5.y;
        u_xlat8.z = x_485;
        let x_488 : f32 = u_xlat4.z;
        u_xlat8.w = x_488;
        let x_490 : vec4<f32> = u_xlat6;
        let x_492 : vec4<f32> = u_xlat8;
        let x_494 : vec3<f32> = (vec3<f32>(x_490.z, x_490.y, x_490.w) + vec3<f32>(x_492.z, x_492.y, x_492.w));
        let x_495 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
        let x_497 : vec4<f32> = u_xlat5;
        let x_499 : vec4<f32> = u_xlat9;
        let x_501 : vec3<f32> = (vec3<f32>(x_497.x, x_497.z, x_497.w) / vec3<f32>(x_499.z, x_499.w, x_499.y));
        let x_502 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
        let x_504 : vec4<f32> = u_xlat5;
        let x_510 : vec3<f32> = (vec3<f32>(x_504.x, x_504.y, x_504.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_511 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
        let x_513 : vec4<f32> = u_xlat8;
        let x_515 : vec4<f32> = u_xlat4;
        let x_517 : vec3<f32> = (vec3<f32>(x_513.z, x_513.y, x_513.w) / vec3<f32>(x_515.x, x_515.y, x_515.z));
        let x_518 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
        let x_520 : vec4<f32> = u_xlat6;
        let x_522 : vec3<f32> = (vec3<f32>(x_520.x, x_520.y, x_520.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_523 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
        let x_525 : vec4<f32> = u_xlat5;
        let x_528 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_530 : vec3<f32> = (vec3<f32>(x_525.y, x_525.x, x_525.z) * vec3<f32>(x_528.x, x_528.x, x_528.x));
        let x_531 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
        let x_533 : vec4<f32> = u_xlat6;
        let x_536 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_538 : vec3<f32> = (vec3<f32>(x_533.x, x_533.y, x_533.z) * vec3<f32>(x_536.y, x_536.y, x_536.y));
        let x_539 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
        let x_542 : f32 = u_xlat6.x;
        u_xlat5.w = x_542;
        let x_544 : vec4<f32> = u_xlat3;
        let x_547 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_550 : vec4<f32> = u_xlat5;
        u_xlat7 = ((vec4<f32>(x_544.x, x_544.y, x_544.x, x_544.y) * vec4<f32>(x_547.x, x_547.y, x_547.x, x_547.y)) + vec4<f32>(x_550.y, x_550.w, x_550.x, x_550.w));
        let x_553 : vec4<f32> = u_xlat3;
        let x_556 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_559 : vec4<f32> = u_xlat5;
        u_xlat47 = ((vec2<f32>(x_553.x, x_553.y) * vec2<f32>(x_556.x, x_556.y)) + vec2<f32>(x_559.z, x_559.w));
        let x_563 : f32 = u_xlat5.y;
        u_xlat6.w = x_563;
        let x_565 : vec4<f32> = u_xlat6;
        let x_566 : vec2<f32> = vec2<f32>(x_565.y, x_565.z);
        let x_567 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_567.x, x_566.x, x_567.z, x_566.y);
        let x_569 : vec4<f32> = u_xlat3;
        let x_572 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_575 : vec4<f32> = u_xlat5;
        u_xlat8 = ((vec4<f32>(x_569.x, x_569.y, x_569.x, x_569.y) * vec4<f32>(x_572.x, x_572.y, x_572.x, x_572.y)) + vec4<f32>(x_575.x, x_575.y, x_575.z, x_575.y));
        let x_578 : vec4<f32> = u_xlat3;
        let x_581 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_584 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_578.x, x_578.y, x_578.x, x_578.y) * vec4<f32>(x_581.x, x_581.y, x_581.x, x_581.y)) + vec4<f32>(x_584.w, x_584.y, x_584.w, x_584.z));
        let x_587 : vec4<f32> = u_xlat3;
        let x_590 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_593 : vec4<f32> = u_xlat5;
        u_xlat5 = ((vec4<f32>(x_587.x, x_587.y, x_587.x, x_587.y) * vec4<f32>(x_590.x, x_590.y, x_590.x, x_590.y)) + vec4<f32>(x_593.x, x_593.w, x_593.z, x_593.w));
        let x_597 : vec4<f32> = u_xlat4;
        let x_599 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_597.x, x_597.x, x_597.x, x_597.y) * vec4<f32>(x_599.z, x_599.w, x_599.y, x_599.z));
        let x_603 : vec4<f32> = u_xlat4;
        let x_605 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_603.y, x_603.y, x_603.z, x_603.z) * x_605);
        let x_609 : f32 = u_xlat4.z;
        let x_611 : f32 = u_xlat9.y;
        u_xlat68 = (x_609 * x_611);
        let x_614 : vec4<f32> = u_xlat7;
        let x_615 : vec2<f32> = vec2<f32>(x_614.x, x_614.y);
        let x_617 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_615.x, x_615.y, x_617);
        let x_624 : vec3<f32> = txVec4;
        let x_626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_624.xy, x_624.z);
        u_xlat3.x = x_626;
        let x_629 : vec4<f32> = u_xlat7;
        let x_630 : vec2<f32> = vec2<f32>(x_629.z, x_629.w);
        let x_632 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_630.x, x_630.y, x_632);
        let x_640 : vec3<f32> = txVec5;
        let x_642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_640.xy, x_640.z);
        u_xlat25 = x_642;
        let x_643 : f32 = u_xlat25;
        let x_645 : f32 = u_xlat10.y;
        u_xlat25 = (x_643 * x_645);
        let x_648 : f32 = u_xlat10.x;
        let x_650 : f32 = u_xlat3.x;
        let x_652 : f32 = u_xlat25;
        u_xlat3.x = ((x_648 * x_650) + x_652);
        let x_656 : vec2<f32> = u_xlat47;
        let x_658 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_656.x, x_656.y, x_658);
        let x_665 : vec3<f32> = txVec6;
        let x_667 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_665.xy, x_665.z);
        u_xlat25 = x_667;
        let x_669 : f32 = u_xlat10.z;
        let x_670 : f32 = u_xlat25;
        let x_673 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_669 * x_670) + x_673);
        let x_677 : vec4<f32> = u_xlat6;
        let x_678 : vec2<f32> = vec2<f32>(x_677.x, x_677.y);
        let x_680 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_678.x, x_678.y, x_680);
        let x_687 : vec3<f32> = txVec7;
        let x_689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_687.xy, x_687.z);
        u_xlat25 = x_689;
        let x_691 : f32 = u_xlat10.w;
        let x_692 : f32 = u_xlat25;
        let x_695 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_691 * x_692) + x_695);
        let x_699 : vec4<f32> = u_xlat8;
        let x_700 : vec2<f32> = vec2<f32>(x_699.x, x_699.y);
        let x_702 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_700.x, x_700.y, x_702);
        let x_709 : vec3<f32> = txVec8;
        let x_711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_709.xy, x_709.z);
        u_xlat25 = x_711;
        let x_713 : f32 = u_xlat11.x;
        let x_714 : f32 = u_xlat25;
        let x_717 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_713 * x_714) + x_717);
        let x_721 : vec4<f32> = u_xlat8;
        let x_722 : vec2<f32> = vec2<f32>(x_721.z, x_721.w);
        let x_724 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_722.x, x_722.y, x_724);
        let x_731 : vec3<f32> = txVec9;
        let x_733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_731.xy, x_731.z);
        u_xlat25 = x_733;
        let x_735 : f32 = u_xlat11.y;
        let x_736 : f32 = u_xlat25;
        let x_739 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_735 * x_736) + x_739);
        let x_743 : vec4<f32> = u_xlat6;
        let x_744 : vec2<f32> = vec2<f32>(x_743.z, x_743.w);
        let x_746 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_744.x, x_744.y, x_746);
        let x_753 : vec3<f32> = txVec10;
        let x_755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_753.xy, x_753.z);
        u_xlat25 = x_755;
        let x_757 : f32 = u_xlat11.z;
        let x_758 : f32 = u_xlat25;
        let x_761 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_757 * x_758) + x_761);
        let x_765 : vec4<f32> = u_xlat5;
        let x_766 : vec2<f32> = vec2<f32>(x_765.x, x_765.y);
        let x_768 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_766.x, x_766.y, x_768);
        let x_775 : vec3<f32> = txVec11;
        let x_777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_775.xy, x_775.z);
        u_xlat25 = x_777;
        let x_779 : f32 = u_xlat11.w;
        let x_780 : f32 = u_xlat25;
        let x_783 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_779 * x_780) + x_783);
        let x_787 : vec4<f32> = u_xlat5;
        let x_788 : vec2<f32> = vec2<f32>(x_787.z, x_787.w);
        let x_790 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_788.x, x_788.y, x_790);
        let x_797 : vec3<f32> = txVec12;
        let x_799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_797.xy, x_797.z);
        u_xlat25 = x_799;
        let x_800 : f32 = u_xlat68;
        let x_801 : f32 = u_xlat25;
        let x_804 : f32 = u_xlat3.x;
        u_xlat67 = ((x_800 * x_801) + x_804);
      } else {
        let x_807 : vec4<f32> = vs_TEXCOORD6;
        let x_810 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_813 : vec2<f32> = ((vec2<f32>(x_807.x, x_807.y) * vec2<f32>(x_810.z, x_810.w)) + vec2<f32>(0.5f, 0.5f));
        let x_814 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_813.x, x_813.y, x_814.z, x_814.w);
        let x_816 : vec4<f32> = u_xlat3;
        let x_818 : vec2<f32> = floor(vec2<f32>(x_816.x, x_816.y));
        let x_819 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_818.x, x_818.y, x_819.z, x_819.w);
        let x_821 : vec4<f32> = vs_TEXCOORD6;
        let x_824 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_827 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_821.x, x_821.y) * vec2<f32>(x_824.z, x_824.w)) + -(vec2<f32>(x_827.x, x_827.y)));
        let x_831 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_831.x, x_831.x, x_831.y, x_831.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_834 : vec4<f32> = u_xlat4;
        let x_836 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_834.x, x_834.x, x_834.z, x_834.z) * vec4<f32>(x_836.x, x_836.x, x_836.z, x_836.z));
        let x_839 : vec4<f32> = u_xlat5;
        let x_843 : vec2<f32> = (vec2<f32>(x_839.y, x_839.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_844 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_844.x, x_843.x, x_844.z, x_843.y);
        let x_846 : vec4<f32> = u_xlat5;
        let x_849 : vec2<f32> = u_xlat47;
        let x_851 : vec2<f32> = ((vec2<f32>(x_846.x, x_846.z) * vec2<f32>(0.5f, 0.5f)) + -(x_849));
        let x_852 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_851.x, x_852.y, x_851.y, x_852.w);
        let x_854 : vec2<f32> = u_xlat47;
        let x_856 : vec2<f32> = (-(x_854) + vec2<f32>(1.0f, 1.0f));
        let x_857 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_856.x, x_856.y, x_857.z, x_857.w);
        let x_859 : vec2<f32> = u_xlat47;
        u_xlat49 = min(x_859, vec2<f32>(0.0f, 0.0f));
        let x_861 : vec2<f32> = u_xlat49;
        let x_863 : vec2<f32> = u_xlat49;
        let x_865 : vec4<f32> = u_xlat5;
        let x_867 : vec2<f32> = ((-(x_861) * x_863) + vec2<f32>(x_865.x, x_865.y));
        let x_868 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_867.x, x_867.y, x_868.z, x_868.w);
        let x_870 : vec2<f32> = u_xlat47;
        u_xlat49 = max(x_870, vec2<f32>(0.0f, 0.0f));
        let x_873 : vec2<f32> = u_xlat49;
        let x_875 : vec2<f32> = u_xlat49;
        let x_877 : vec4<f32> = u_xlat4;
        let x_879 : vec2<f32> = ((-(x_873) * x_875) + vec2<f32>(x_877.y, x_877.w));
        let x_880 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_879.x, x_880.y, x_879.y);
        let x_882 : vec4<f32> = u_xlat5;
        let x_885 : vec2<f32> = (vec2<f32>(x_882.x, x_882.y) + vec2<f32>(2.0f, 2.0f));
        let x_886 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_885.x, x_885.y, x_886.z, x_886.w);
        let x_888 : vec3<f32> = u_xlat26;
        let x_890 : vec2<f32> = (vec2<f32>(x_888.x, x_888.z) + vec2<f32>(2.0f, 2.0f));
        let x_891 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_891.x, x_890.x, x_891.z, x_890.y);
        let x_894 : f32 = u_xlat4.y;
        u_xlat7.z = (x_894 * 0.08163200318813323975f);
        let x_898 : vec4<f32> = u_xlat4;
        let x_901 : vec3<f32> = (vec3<f32>(x_898.z, x_898.x, x_898.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_902 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
        let x_904 : vec4<f32> = u_xlat5;
        let x_907 : vec2<f32> = (vec2<f32>(x_904.x, x_904.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_908 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
        let x_911 : f32 = u_xlat8.y;
        u_xlat7.x = x_911;
        let x_913 : vec2<f32> = u_xlat47;
        let x_920 : vec2<f32> = ((vec2<f32>(x_913.x, x_913.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_921 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_921.x, x_920.x, x_921.z, x_920.y);
        let x_923 : vec2<f32> = u_xlat47;
        let x_927 : vec2<f32> = ((vec2<f32>(x_923.x, x_923.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_928 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_927.x, x_928.y, x_927.y, x_928.w);
        let x_931 : f32 = u_xlat4.x;
        u_xlat5.y = x_931;
        let x_934 : f32 = u_xlat6.y;
        u_xlat5.w = x_934;
        let x_936 : vec4<f32> = u_xlat5;
        let x_937 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_936 + x_937);
        let x_939 : vec2<f32> = u_xlat47;
        let x_942 : vec2<f32> = ((vec2<f32>(x_939.y, x_939.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_943 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_943.x, x_942.x, x_943.z, x_942.y);
        let x_945 : vec2<f32> = u_xlat47;
        let x_948 : vec2<f32> = ((vec2<f32>(x_945.y, x_945.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_949 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_948.x, x_949.y, x_948.y, x_949.w);
        let x_952 : f32 = u_xlat4.y;
        u_xlat6.y = x_952;
        let x_954 : vec4<f32> = u_xlat6;
        let x_955 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_954 + x_955);
        let x_957 : vec4<f32> = u_xlat5;
        let x_958 : vec4<f32> = u_xlat7;
        u_xlat5 = (x_957 / x_958);
        let x_960 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_960 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_966 : vec4<f32> = u_xlat6;
        let x_967 : vec4<f32> = u_xlat4;
        u_xlat6 = (x_966 / x_967);
        let x_969 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_969 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_971 : vec4<f32> = u_xlat5;
        let x_974 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_971.w, x_971.x, x_971.y, x_971.z) * vec4<f32>(x_974.x, x_974.x, x_974.x, x_974.x));
        let x_977 : vec4<f32> = u_xlat6;
        let x_980 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_977.x, x_977.w, x_977.y, x_977.z) * vec4<f32>(x_980.y, x_980.y, x_980.y, x_980.y));
        let x_983 : vec4<f32> = u_xlat5;
        let x_984 : vec3<f32> = vec3<f32>(x_983.y, x_983.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_984.x, x_985.y, x_984.y, x_984.z);
        let x_988 : f32 = u_xlat6.x;
        u_xlat8.y = x_988;
        let x_990 : vec4<f32> = u_xlat3;
        let x_993 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_996 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_990.x, x_990.y, x_990.x, x_990.y) * vec4<f32>(x_993.x, x_993.y, x_993.x, x_993.y)) + vec4<f32>(x_996.x, x_996.y, x_996.z, x_996.y));
        let x_999 : vec4<f32> = u_xlat3;
        let x_1002 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_1005 : vec4<f32> = u_xlat8;
        u_xlat47 = ((vec2<f32>(x_999.x, x_999.y) * vec2<f32>(x_1002.x, x_1002.y)) + vec2<f32>(x_1005.w, x_1005.y));
        let x_1009 : f32 = u_xlat8.y;
        u_xlat5.y = x_1009;
        let x_1012 : f32 = u_xlat6.z;
        u_xlat8.y = x_1012;
        let x_1014 : vec4<f32> = u_xlat3;
        let x_1017 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_1020 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1014.x, x_1014.y, x_1014.x, x_1014.y) * vec4<f32>(x_1017.x, x_1017.y, x_1017.x, x_1017.y)) + vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1020.y));
        let x_1023 : vec4<f32> = u_xlat3;
        let x_1026 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_1029 : vec4<f32> = u_xlat8;
        let x_1031 : vec2<f32> = ((vec2<f32>(x_1023.x, x_1023.y) * vec2<f32>(x_1026.x, x_1026.y)) + vec2<f32>(x_1029.w, x_1029.y));
        let x_1032 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1031.x, x_1031.y, x_1032.z, x_1032.w);
        let x_1035 : f32 = u_xlat8.y;
        u_xlat5.z = x_1035;
        let x_1038 : vec4<f32> = u_xlat3;
        let x_1041 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_1044 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1038.x, x_1038.y, x_1038.x, x_1038.y) * vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y)) + vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.z));
        let x_1048 : f32 = u_xlat6.w;
        u_xlat8.y = x_1048;
        let x_1051 : vec4<f32> = u_xlat3;
        let x_1054 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_1057 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y) * vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.y)) + vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1057.y));
        let x_1061 : vec4<f32> = u_xlat3;
        let x_1064 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_1067 : vec4<f32> = u_xlat8;
        u_xlat27 = ((vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(x_1064.x, x_1064.y)) + vec2<f32>(x_1067.w, x_1067.y));
        let x_1071 : f32 = u_xlat8.y;
        u_xlat5.w = x_1071;
        let x_1074 : vec4<f32> = u_xlat3;
        let x_1077 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_1074.x, x_1074.y) * vec2<f32>(x_1077.x, x_1077.y)) + vec2<f32>(x_1080.x, x_1080.w));
        let x_1083 : vec4<f32> = u_xlat8;
        let x_1084 : vec3<f32> = vec3<f32>(x_1083.x, x_1083.z, x_1083.w);
        let x_1085 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1084.x, x_1085.y, x_1084.y, x_1084.z);
        let x_1087 : vec4<f32> = u_xlat3;
        let x_1090 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_1093 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y) * vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y)) + vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1093.y));
        let x_1097 : vec4<f32> = u_xlat3;
        let x_1100 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.x, x_1100.y)) + vec2<f32>(x_1103.w, x_1103.y));
        let x_1107 : f32 = u_xlat5.x;
        u_xlat6.x = x_1107;
        let x_1109 : vec4<f32> = u_xlat3;
        let x_1112 : vec4<f32> = x_238.x_MainLightShadowmapSize;
        let x_1115 : vec4<f32> = u_xlat6;
        let x_1117 : vec2<f32> = ((vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(x_1112.x, x_1112.y)) + vec2<f32>(x_1115.x, x_1115.y));
        let x_1118 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1117.x, x_1117.y, x_1118.z, x_1118.w);
        let x_1121 : vec4<f32> = u_xlat4;
        let x_1123 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1121.x, x_1121.x, x_1121.x, x_1121.x) * x_1123);
        let x_1126 : vec4<f32> = u_xlat4;
        let x_1128 : vec4<f32> = u_xlat7;
        u_xlat15 = (vec4<f32>(x_1126.y, x_1126.y, x_1126.y, x_1126.y) * x_1128);
        let x_1131 : vec4<f32> = u_xlat4;
        let x_1133 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1131.z, x_1131.z, x_1131.z, x_1131.z) * x_1133);
        let x_1135 : vec4<f32> = u_xlat4;
        let x_1137 : vec4<f32> = u_xlat7;
        u_xlat4 = (vec4<f32>(x_1135.w, x_1135.w, x_1135.w, x_1135.w) * x_1137);
        let x_1140 : vec4<f32> = u_xlat9;
        let x_1141 : vec2<f32> = vec2<f32>(x_1140.x, x_1140.y);
        let x_1143 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1141.x, x_1141.y, x_1143);
        let x_1150 : vec3<f32> = txVec13;
        let x_1152 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1150.xy, x_1150.z);
        u_xlat68 = x_1152;
        let x_1154 : vec4<f32> = u_xlat9;
        let x_1155 : vec2<f32> = vec2<f32>(x_1154.z, x_1154.w);
        let x_1157 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1155.x, x_1155.y, x_1157);
        let x_1164 : vec3<f32> = txVec14;
        let x_1166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1164.xy, x_1164.z);
        u_xlat5.x = x_1166;
        let x_1169 : f32 = u_xlat5.x;
        let x_1171 : f32 = u_xlat14.y;
        u_xlat5.x = (x_1169 * x_1171);
        let x_1175 : f32 = u_xlat14.x;
        let x_1176 : f32 = u_xlat68;
        let x_1179 : f32 = u_xlat5.x;
        u_xlat68 = ((x_1175 * x_1176) + x_1179);
        let x_1182 : vec2<f32> = u_xlat47;
        let x_1184 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1182.x, x_1182.y, x_1184);
        let x_1191 : vec3<f32> = txVec15;
        let x_1193 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1191.xy, x_1191.z);
        u_xlat47.x = x_1193;
        let x_1196 : f32 = u_xlat14.z;
        let x_1198 : f32 = u_xlat47.x;
        let x_1200 : f32 = u_xlat68;
        u_xlat68 = ((x_1196 * x_1198) + x_1200);
        let x_1203 : vec4<f32> = u_xlat12;
        let x_1204 : vec2<f32> = vec2<f32>(x_1203.x, x_1203.y);
        let x_1206 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1204.x, x_1204.y, x_1206);
        let x_1213 : vec3<f32> = txVec16;
        let x_1215 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1213.xy, x_1213.z);
        u_xlat47.x = x_1215;
        let x_1218 : f32 = u_xlat14.w;
        let x_1220 : f32 = u_xlat47.x;
        let x_1222 : f32 = u_xlat68;
        u_xlat68 = ((x_1218 * x_1220) + x_1222);
        let x_1225 : vec4<f32> = u_xlat10;
        let x_1226 : vec2<f32> = vec2<f32>(x_1225.x, x_1225.y);
        let x_1228 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1226.x, x_1226.y, x_1228);
        let x_1235 : vec3<f32> = txVec17;
        let x_1237 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1235.xy, x_1235.z);
        u_xlat47.x = x_1237;
        let x_1240 : f32 = u_xlat15.x;
        let x_1242 : f32 = u_xlat47.x;
        let x_1244 : f32 = u_xlat68;
        u_xlat68 = ((x_1240 * x_1242) + x_1244);
        let x_1247 : vec4<f32> = u_xlat10;
        let x_1248 : vec2<f32> = vec2<f32>(x_1247.z, x_1247.w);
        let x_1250 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1248.x, x_1248.y, x_1250);
        let x_1257 : vec3<f32> = txVec18;
        let x_1259 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1257.xy, x_1257.z);
        u_xlat47.x = x_1259;
        let x_1262 : f32 = u_xlat15.y;
        let x_1264 : f32 = u_xlat47.x;
        let x_1266 : f32 = u_xlat68;
        u_xlat68 = ((x_1262 * x_1264) + x_1266);
        let x_1269 : vec4<f32> = u_xlat11;
        let x_1270 : vec2<f32> = vec2<f32>(x_1269.x, x_1269.y);
        let x_1272 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1270.x, x_1270.y, x_1272);
        let x_1279 : vec3<f32> = txVec19;
        let x_1281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1279.xy, x_1279.z);
        u_xlat47.x = x_1281;
        let x_1284 : f32 = u_xlat15.z;
        let x_1286 : f32 = u_xlat47.x;
        let x_1288 : f32 = u_xlat68;
        u_xlat68 = ((x_1284 * x_1286) + x_1288);
        let x_1291 : vec4<f32> = u_xlat12;
        let x_1292 : vec2<f32> = vec2<f32>(x_1291.z, x_1291.w);
        let x_1294 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1292.x, x_1292.y, x_1294);
        let x_1301 : vec3<f32> = txVec20;
        let x_1303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1301.xy, x_1301.z);
        u_xlat47.x = x_1303;
        let x_1306 : f32 = u_xlat15.w;
        let x_1308 : f32 = u_xlat47.x;
        let x_1310 : f32 = u_xlat68;
        u_xlat68 = ((x_1306 * x_1308) + x_1310);
        let x_1313 : vec4<f32> = u_xlat13;
        let x_1314 : vec2<f32> = vec2<f32>(x_1313.x, x_1313.y);
        let x_1316 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1314.x, x_1314.y, x_1316);
        let x_1323 : vec3<f32> = txVec21;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1323.xy, x_1323.z);
        u_xlat47.x = x_1325;
        let x_1328 : f32 = u_xlat16.x;
        let x_1330 : f32 = u_xlat47.x;
        let x_1332 : f32 = u_xlat68;
        u_xlat68 = ((x_1328 * x_1330) + x_1332);
        let x_1335 : vec4<f32> = u_xlat13;
        let x_1336 : vec2<f32> = vec2<f32>(x_1335.z, x_1335.w);
        let x_1338 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1336.x, x_1336.y, x_1338);
        let x_1345 : vec3<f32> = txVec22;
        let x_1347 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1345.xy, x_1345.z);
        u_xlat47.x = x_1347;
        let x_1350 : f32 = u_xlat16.y;
        let x_1352 : f32 = u_xlat47.x;
        let x_1354 : f32 = u_xlat68;
        u_xlat68 = ((x_1350 * x_1352) + x_1354);
        let x_1357 : vec2<f32> = u_xlat27;
        let x_1359 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1366 : vec3<f32> = txVec23;
        let x_1368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1366.xy, x_1366.z);
        u_xlat47.x = x_1368;
        let x_1371 : f32 = u_xlat16.z;
        let x_1373 : f32 = u_xlat47.x;
        let x_1375 : f32 = u_xlat68;
        u_xlat68 = ((x_1371 * x_1373) + x_1375);
        let x_1378 : vec2<f32> = u_xlat55;
        let x_1380 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
        let x_1387 : vec3<f32> = txVec24;
        let x_1389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1387.xy, x_1387.z);
        u_xlat47.x = x_1389;
        let x_1392 : f32 = u_xlat16.w;
        let x_1394 : f32 = u_xlat47.x;
        let x_1396 : f32 = u_xlat68;
        u_xlat68 = ((x_1392 * x_1394) + x_1396);
        let x_1399 : vec4<f32> = u_xlat8;
        let x_1400 : vec2<f32> = vec2<f32>(x_1399.x, x_1399.y);
        let x_1402 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1400.x, x_1400.y, x_1402);
        let x_1409 : vec3<f32> = txVec25;
        let x_1411 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1409.xy, x_1409.z);
        u_xlat47.x = x_1411;
        let x_1414 : f32 = u_xlat4.x;
        let x_1416 : f32 = u_xlat47.x;
        let x_1418 : f32 = u_xlat68;
        u_xlat68 = ((x_1414 * x_1416) + x_1418);
        let x_1421 : vec4<f32> = u_xlat8;
        let x_1422 : vec2<f32> = vec2<f32>(x_1421.z, x_1421.w);
        let x_1424 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1422.x, x_1422.y, x_1424);
        let x_1431 : vec3<f32> = txVec26;
        let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1431.xy, x_1431.z);
        u_xlat47.x = x_1433;
        let x_1436 : f32 = u_xlat4.y;
        let x_1438 : f32 = u_xlat47.x;
        let x_1440 : f32 = u_xlat68;
        u_xlat68 = ((x_1436 * x_1438) + x_1440);
        let x_1443 : vec2<f32> = u_xlat50;
        let x_1445 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec27;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1452.xy, x_1452.z);
        u_xlat47.x = x_1454;
        let x_1457 : f32 = u_xlat4.z;
        let x_1459 : f32 = u_xlat47.x;
        let x_1461 : f32 = u_xlat68;
        u_xlat68 = ((x_1457 * x_1459) + x_1461);
        let x_1464 : vec4<f32> = u_xlat3;
        let x_1465 : vec2<f32> = vec2<f32>(x_1464.x, x_1464.y);
        let x_1467 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1465.x, x_1465.y, x_1467);
        let x_1474 : vec3<f32> = txVec28;
        let x_1476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1474.xy, x_1474.z);
        u_xlat3.x = x_1476;
        let x_1479 : f32 = u_xlat4.w;
        let x_1481 : f32 = u_xlat3.x;
        let x_1483 : f32 = u_xlat68;
        u_xlat67 = ((x_1479 * x_1481) + x_1483);
      }
    }
  } else {
    let x_1487 : vec4<f32> = vs_TEXCOORD6;
    let x_1488 : vec2<f32> = vec2<f32>(x_1487.x, x_1487.y);
    let x_1490 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
    let x_1497 : vec3<f32> = txVec29;
    let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1497.xy, x_1497.z);
    u_xlat67 = x_1499;
  }
  let x_1501 : f32 = x_238.x_MainLightShadowParams.x;
  u_xlat68 = (-(x_1501) + 1.0f);
  let x_1504 : f32 = u_xlat67;
  let x_1506 : f32 = x_238.x_MainLightShadowParams.x;
  let x_1508 : f32 = u_xlat68;
  u_xlat67 = ((x_1504 * x_1506) + x_1508);
  let x_1511 : f32 = vs_TEXCOORD6.z;
  u_xlatb68 = (0.0f >= x_1511);
  let x_1515 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (x_1515 >= 1.0f);
  let x_1517 : bool = u_xlatb68;
  let x_1518 : bool = u_xlatb3;
  u_xlatb68 = (x_1517 | x_1518);
  let x_1520 : bool = u_xlatb68;
  let x_1521 : f32 = u_xlat67;
  u_xlat67 = select(x_1521, 1.0f, x_1520);
  let x_1524 : vec3<f32> = vs_TEXCOORD1;
  let x_1528 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1530 : vec3<f32> = (x_1524 + -(x_1528));
  let x_1531 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1531.w);
  let x_1533 : vec4<f32> = u_xlat3;
  let x_1535 : vec4<f32> = u_xlat3;
  u_xlat68 = dot(vec3<f32>(x_1533.x, x_1533.y, x_1533.z), vec3<f32>(x_1535.x, x_1535.y, x_1535.z));
  let x_1538 : f32 = u_xlat68;
  let x_1540 : f32 = x_238.x_MainLightShadowParams.z;
  let x_1543 : f32 = x_238.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_1538 * x_1540) + x_1543);
  let x_1547 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1547, 0.0f, 1.0f);
  let x_1550 : f32 = u_xlat67;
  u_xlat25 = (-(x_1550) + 1.0f);
  let x_1554 : f32 = u_xlat3.x;
  let x_1555 : f32 = u_xlat25;
  let x_1557 : f32 = u_xlat67;
  u_xlat67 = ((x_1554 * x_1555) + x_1557);
  let x_1566 : f32 = x_1564.x_MainLightCookieTextureFormat;
  u_xlatb3 = !((x_1566 == -1.0f));
  let x_1569 : bool = u_xlatb3;
  if (x_1569) {
    let x_1572 : vec3<f32> = vs_TEXCOORD1;
    let x_1575 : vec4<f32> = x_1564.x_MainLightWorldToLight[1i];
    let x_1577 : vec2<f32> = (vec2<f32>(x_1572.y, x_1572.y) * vec2<f32>(x_1575.x, x_1575.y));
    let x_1578 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1577.x, x_1577.y, x_1578.z, x_1578.w);
    let x_1581 : vec4<f32> = x_1564.x_MainLightWorldToLight[0i];
    let x_1583 : vec3<f32> = vs_TEXCOORD1;
    let x_1586 : vec4<f32> = u_xlat3;
    let x_1588 : vec2<f32> = ((vec2<f32>(x_1581.x, x_1581.y) * vec2<f32>(x_1583.x, x_1583.x)) + vec2<f32>(x_1586.x, x_1586.y));
    let x_1589 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1588.x, x_1588.y, x_1589.z, x_1589.w);
    let x_1592 : vec4<f32> = x_1564.x_MainLightWorldToLight[2i];
    let x_1594 : vec3<f32> = vs_TEXCOORD1;
    let x_1597 : vec4<f32> = u_xlat3;
    let x_1599 : vec2<f32> = ((vec2<f32>(x_1592.x, x_1592.y) * vec2<f32>(x_1594.z, x_1594.z)) + vec2<f32>(x_1597.x, x_1597.y));
    let x_1600 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1599.x, x_1599.y, x_1600.z, x_1600.w);
    let x_1602 : vec4<f32> = u_xlat3;
    let x_1606 : vec4<f32> = x_1564.x_MainLightWorldToLight[3i];
    let x_1608 : vec2<f32> = (vec2<f32>(x_1602.x, x_1602.y) + vec2<f32>(x_1606.x, x_1606.y));
    let x_1609 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1608.x, x_1608.y, x_1609.z, x_1609.w);
    let x_1611 : vec4<f32> = u_xlat3;
    let x_1614 : vec2<f32> = ((vec2<f32>(x_1611.x, x_1611.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1615 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1614.x, x_1614.y, x_1615.z, x_1615.w);
    let x_1622 : vec4<f32> = u_xlat3;
    let x_1625 : f32 = x_44.x_GlobalMipBias.x;
    let x_1626 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1622.x, x_1622.y), x_1625);
    u_xlat3 = x_1626;
    let x_1631 : f32 = x_1564.x_MainLightCookieTextureFormat;
    let x_1633 : f32 = x_1564.x_MainLightCookieTextureFormat;
    let x_1635 : f32 = x_1564.x_MainLightCookieTextureFormat;
    let x_1637 : f32 = x_1564.x_MainLightCookieTextureFormat;
    let x_1638 : vec4<f32> = vec4<f32>(x_1631, x_1633, x_1635, x_1637);
    let x_1646 : vec4<bool> = (vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1638.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb4 = vec2<bool>(x_1646.x, x_1646.y);
    let x_1650 : bool = u_xlatb4.y;
    if (x_1650) {
      let x_1655 : f32 = u_xlat3.w;
      x_1651 = x_1655;
    } else {
      let x_1658 : f32 = u_xlat3.x;
      x_1651 = x_1658;
    }
    let x_1659 : f32 = x_1651;
    u_xlat69 = x_1659;
    let x_1661 : bool = u_xlatb4.x;
    if (x_1661) {
      let x_1665 : vec4<f32> = u_xlat3;
      x_1662 = vec3<f32>(x_1665.x, x_1665.y, x_1665.z);
    } else {
      let x_1668 : f32 = u_xlat69;
      x_1662 = vec3<f32>(x_1668, x_1668, x_1668);
    }
    let x_1670 : vec3<f32> = x_1662;
    let x_1671 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1670.x, x_1670.y, x_1670.z, x_1671.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1677 : vec4<f32> = u_xlat3;
  let x_1680 : vec4<f32> = x_44.x_MainLightColor;
  let x_1682 : vec3<f32> = (vec3<f32>(x_1677.x, x_1677.y, x_1677.z) * vec3<f32>(x_1680.x, x_1680.y, x_1680.z));
  let x_1683 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1682.x, x_1682.y, x_1682.z, x_1683.w);
  let x_1685 : f32 = u_xlat67;
  let x_1687 : f32 = x_94.unity_LightData.z;
  u_xlat67 = (x_1685 * x_1687);
  let x_1689 : f32 = u_xlat67;
  let x_1691 : vec4<f32> = u_xlat3;
  let x_1693 : vec3<f32> = (vec3<f32>(x_1689, x_1689, x_1689) * vec3<f32>(x_1691.x, x_1691.y, x_1691.z));
  let x_1694 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1693.x, x_1693.y, x_1693.z, x_1694.w);
  let x_1696 : vec4<f32> = u_xlat1;
  let x_1699 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat67 = dot(vec3<f32>(x_1696.x, x_1696.y, x_1696.z), vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
  let x_1702 : f32 = u_xlat67;
  u_xlat67 = clamp(x_1702, 0.0f, 1.0f);
  let x_1704 : f32 = u_xlat67;
  let x_1706 : vec4<f32> = u_xlat3;
  let x_1708 : vec3<f32> = (vec3<f32>(x_1704, x_1704, x_1704) * vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
  let x_1709 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1709.w);
  let x_1711 : vec4<f32> = u_xlat0;
  let x_1713 : vec4<f32> = u_xlat3;
  let x_1715 : vec3<f32> = (vec3<f32>(x_1711.y, x_1711.z, x_1711.w) * vec3<f32>(x_1713.x, x_1713.y, x_1713.z));
  let x_1716 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1715.x, x_1715.y, x_1715.z, x_1716.w);
  let x_1719 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1721 : f32 = x_94.unity_LightData.y;
  u_xlat67 = min(x_1719, x_1721);
  let x_1725 : f32 = u_xlat67;
  u_xlatu67 = bitcast<u32>(i32(x_1725));
  let x_1728 : f32 = u_xlat68;
  let x_1731 : f32 = x_238.x_AdditionalShadowFadeParams.x;
  let x_1734 : f32 = x_238.x_AdditionalShadowFadeParams.y;
  u_xlat68 = ((x_1728 * x_1731) + x_1734);
  let x_1736 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1736, 0.0f, 1.0f);
  let x_1739 : f32 = x_1564.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1741 : f32 = x_1564.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1743 : f32 = x_1564.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1745 : f32 = x_1564.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1746 : vec4<f32> = vec4<f32>(x_1739, x_1741, x_1743, x_1745);
  let x_1752 : vec4<bool> = (vec4<f32>(x_1746.x, x_1746.y, x_1746.z, x_1746.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1752.x, x_1752.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1764 : u32 = u_xlatu_loop_1;
    let x_1765 : u32 = u_xlatu67;
    if ((x_1764 < x_1765)) {
    } else {
      break;
    }
    let x_1768 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1768 >> 2u);
    let x_1772 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_1772 & 3u));
    let x_1776 : u32 = u_xlatu48;
    let x_1779 : vec4<f32> = x_94.unity_LightIndices[bitcast<i32>(x_1776)];
    let x_1789 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1794 : vec4<u32> = indexable[x_1789];
    u_xlat48 = dot(x_1779, bitcast<vec4<f32>>(x_1794));
    let x_1798 : f32 = u_xlat48;
    u_xlati48 = i32(x_1798);
    let x_1800 : vec3<f32> = vs_TEXCOORD1;
    let x_1811 : i32 = u_xlati48;
    let x_1813 : vec4<f32> = x_1810.x_AdditionalLightsPosition[x_1811];
    let x_1816 : i32 = u_xlati48;
    let x_1818 : vec4<f32> = x_1810.x_AdditionalLightsPosition[x_1816];
    let x_1820 : vec3<f32> = ((-(x_1800) * vec3<f32>(x_1813.w, x_1813.w, x_1813.w)) + vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
    let x_1821 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1821.w);
    let x_1824 : vec4<f32> = u_xlat6;
    let x_1826 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1824.x, x_1824.y, x_1824.z), vec3<f32>(x_1826.x, x_1826.y, x_1826.z));
    let x_1829 : f32 = u_xlat70;
    u_xlat70 = max(x_1829, 0.00006103515625f);
    let x_1833 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_1833);
    let x_1835 : f32 = u_xlat71;
    let x_1837 : vec4<f32> = u_xlat6;
    let x_1839 : vec3<f32> = (vec3<f32>(x_1835, x_1835, x_1835) * vec3<f32>(x_1837.x, x_1837.y, x_1837.z));
    let x_1840 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1839.x, x_1839.y, x_1839.z, x_1840.w);
    let x_1842 : f32 = u_xlat70;
    u_xlat71 = (1.0f / x_1842);
    let x_1844 : f32 = u_xlat70;
    let x_1845 : i32 = u_xlati48;
    let x_1847 : f32 = x_1810.x_AdditionalLightsAttenuation[x_1845].x;
    u_xlat70 = (x_1844 * x_1847);
    let x_1849 : f32 = u_xlat70;
    let x_1851 : f32 = u_xlat70;
    u_xlat70 = ((-(x_1849) * x_1851) + 1.0f);
    let x_1854 : f32 = u_xlat70;
    u_xlat70 = max(x_1854, 0.0f);
    let x_1856 : f32 = u_xlat70;
    let x_1857 : f32 = u_xlat70;
    u_xlat70 = (x_1856 * x_1857);
    let x_1859 : f32 = u_xlat70;
    let x_1860 : f32 = u_xlat71;
    u_xlat70 = (x_1859 * x_1860);
    let x_1862 : i32 = u_xlati48;
    let x_1864 : vec4<f32> = x_1810.x_AdditionalLightsSpotDir[x_1862];
    let x_1866 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_1864.x, x_1864.y, x_1864.z), vec3<f32>(x_1866.x, x_1866.y, x_1866.z));
    let x_1869 : f32 = u_xlat71;
    let x_1870 : i32 = u_xlati48;
    let x_1872 : f32 = x_1810.x_AdditionalLightsAttenuation[x_1870].z;
    let x_1874 : i32 = u_xlati48;
    let x_1876 : f32 = x_1810.x_AdditionalLightsAttenuation[x_1874].w;
    u_xlat71 = ((x_1869 * x_1872) + x_1876);
    let x_1878 : f32 = u_xlat71;
    u_xlat71 = clamp(x_1878, 0.0f, 1.0f);
    let x_1880 : f32 = u_xlat71;
    let x_1881 : f32 = u_xlat71;
    u_xlat71 = (x_1880 * x_1881);
    let x_1883 : f32 = u_xlat70;
    let x_1884 : f32 = u_xlat71;
    u_xlat70 = (x_1883 * x_1884);
    let x_1888 : i32 = u_xlati48;
    let x_1890 : f32 = x_238.x_AdditionalShadowParams[x_1888].w;
    u_xlati71 = i32(x_1890);
    let x_1893 : i32 = u_xlati71;
    u_xlatb72 = (x_1893 >= 0i);
    let x_1895 : bool = u_xlatb72;
    if (x_1895) {
      let x_1899 : i32 = u_xlati48;
      let x_1901 : f32 = x_238.x_AdditionalShadowParams[x_1899].z;
      u_xlatb72 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1901, x_1901, x_1901, x_1901))));
      let x_1905 : bool = u_xlatb72;
      if (x_1905) {
        let x_1910 : vec4<f32> = u_xlat6;
        let x_1913 : vec4<f32> = u_xlat6;
        let x_1916 : vec4<bool> = (abs(vec4<f32>(x_1910.z, x_1910.z, x_1910.y, x_1910.z)) >= abs(vec4<f32>(x_1913.x, x_1913.y, x_1913.x, x_1913.x)));
        let x_1918 : vec3<bool> = vec3<bool>(x_1916.x, x_1916.y, x_1916.z);
        let x_1919 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1918.x, x_1918.y, x_1918.z, x_1919.w);
        let x_1922 : bool = u_xlatb7.y;
        let x_1924 : bool = u_xlatb7.x;
        u_xlatb72 = (x_1922 & x_1924);
        let x_1926 : vec4<f32> = u_xlat6;
        let x_1929 : vec4<bool> = (-(vec4<f32>(x_1926.z, x_1926.y, x_1926.z, x_1926.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1930 : vec3<bool> = vec3<bool>(x_1929.x, x_1929.y, x_1929.w);
        let x_1931 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1930.x, x_1930.y, x_1931.z, x_1930.z);
        let x_1934 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1934);
        let x_1940 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1940);
        let x_1946 : bool = u_xlatb7.w;
        u_xlat73 = select(0.0f, 1.0f, x_1946);
        let x_1950 : bool = u_xlatb7.z;
        if (x_1950) {
          let x_1955 : f32 = u_xlat7.y;
          x_1951 = x_1955;
        } else {
          let x_1957 : f32 = u_xlat73;
          x_1951 = x_1957;
        }
        let x_1958 : f32 = x_1951;
        u_xlat29.x = x_1958;
        let x_1961 : bool = u_xlatb72;
        if (x_1961) {
          let x_1966 : f32 = u_xlat7.x;
          x_1962 = x_1966;
        } else {
          let x_1969 : f32 = u_xlat29.x;
          x_1962 = x_1969;
        }
        let x_1970 : f32 = x_1962;
        u_xlat72 = x_1970;
        let x_1971 : i32 = u_xlati48;
        let x_1973 : f32 = x_238.x_AdditionalShadowParams[x_1971].w;
        u_xlat7.x = trunc(x_1973);
        let x_1976 : f32 = u_xlat72;
        let x_1978 : f32 = u_xlat7.x;
        u_xlat72 = (x_1976 + x_1978);
        let x_1980 : f32 = u_xlat72;
        u_xlati71 = i32(x_1980);
      }
      let x_1982 : i32 = u_xlati71;
      u_xlati71 = (x_1982 << bitcast<u32>(2i));
      let x_1984 : vec3<f32> = vs_TEXCOORD1;
      let x_1987 : i32 = u_xlati71;
      let x_1990 : i32 = u_xlati71;
      let x_1994 : vec4<f32> = x_238.x_AdditionalLightsWorldToShadow[((x_1987 + 1i) / 4i)][((x_1990 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1984.y, x_1984.y, x_1984.y, x_1984.y) * x_1994);
      let x_1996 : i32 = u_xlati71;
      let x_1998 : i32 = u_xlati71;
      let x_2001 : vec4<f32> = x_238.x_AdditionalLightsWorldToShadow[(x_1996 / 4i)][(x_1998 % 4i)];
      let x_2002 : vec3<f32> = vs_TEXCOORD1;
      let x_2005 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2001 * vec4<f32>(x_2002.x, x_2002.x, x_2002.x, x_2002.x)) + x_2005);
      let x_2007 : i32 = u_xlati71;
      let x_2010 : i32 = u_xlati71;
      let x_2014 : vec4<f32> = x_238.x_AdditionalLightsWorldToShadow[((x_2007 + 2i) / 4i)][((x_2010 + 2i) % 4i)];
      let x_2015 : vec3<f32> = vs_TEXCOORD1;
      let x_2018 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2014 * vec4<f32>(x_2015.z, x_2015.z, x_2015.z, x_2015.z)) + x_2018);
      let x_2020 : vec4<f32> = u_xlat7;
      let x_2021 : i32 = u_xlati71;
      let x_2024 : i32 = u_xlati71;
      let x_2028 : vec4<f32> = x_238.x_AdditionalLightsWorldToShadow[((x_2021 + 3i) / 4i)][((x_2024 + 3i) % 4i)];
      u_xlat7 = (x_2020 + x_2028);
      let x_2030 : vec4<f32> = u_xlat7;
      let x_2032 : vec4<f32> = u_xlat7;
      let x_2034 : vec3<f32> = (vec3<f32>(x_2030.x, x_2030.y, x_2030.z) / vec3<f32>(x_2032.w, x_2032.w, x_2032.w));
      let x_2035 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2034.x, x_2034.y, x_2034.z, x_2035.w);
      let x_2038 : i32 = u_xlati48;
      let x_2040 : f32 = x_238.x_AdditionalShadowParams[x_2038].y;
      u_xlatb71 = (0.0f < x_2040);
      let x_2042 : bool = u_xlatb71;
      if (x_2042) {
        let x_2045 : i32 = u_xlati48;
        let x_2047 : f32 = x_238.x_AdditionalShadowParams[x_2045].y;
        u_xlatb71 = (1.0f == x_2047);
        let x_2049 : bool = u_xlatb71;
        if (x_2049) {
          let x_2052 : vec4<f32> = u_xlat7;
          let x_2056 : vec4<f32> = x_238.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2052.x, x_2052.y, x_2052.x, x_2052.y) + x_2056);
          let x_2059 : vec4<f32> = u_xlat8;
          let x_2060 : vec2<f32> = vec2<f32>(x_2059.x, x_2059.y);
          let x_2062 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2060.x, x_2060.y, x_2062);
          let x_2070 : vec3<f32> = txVec30;
          let x_2072 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2070.xy, x_2070.z);
          u_xlat9.x = x_2072;
          let x_2075 : vec4<f32> = u_xlat8;
          let x_2076 : vec2<f32> = vec2<f32>(x_2075.z, x_2075.w);
          let x_2078 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2076.x, x_2076.y, x_2078);
          let x_2085 : vec3<f32> = txVec31;
          let x_2087 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2085.xy, x_2085.z);
          u_xlat9.y = x_2087;
          let x_2089 : vec4<f32> = u_xlat7;
          let x_2093 : vec4<f32> = x_238.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2089.x, x_2089.y, x_2089.x, x_2089.y) + x_2093);
          let x_2096 : vec4<f32> = u_xlat8;
          let x_2097 : vec2<f32> = vec2<f32>(x_2096.x, x_2096.y);
          let x_2099 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2097.x, x_2097.y, x_2099);
          let x_2106 : vec3<f32> = txVec32;
          let x_2108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2106.xy, x_2106.z);
          u_xlat9.z = x_2108;
          let x_2111 : vec4<f32> = u_xlat8;
          let x_2112 : vec2<f32> = vec2<f32>(x_2111.z, x_2111.w);
          let x_2114 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2112.x, x_2112.y, x_2114);
          let x_2121 : vec3<f32> = txVec33;
          let x_2123 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2121.xy, x_2121.z);
          u_xlat9.w = x_2123;
          let x_2125 : vec4<f32> = u_xlat9;
          u_xlat71 = dot(x_2125, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2128 : i32 = u_xlati48;
          let x_2130 : f32 = x_238.x_AdditionalShadowParams[x_2128].y;
          u_xlatb72 = (2.0f == x_2130);
          let x_2132 : bool = u_xlatb72;
          if (x_2132) {
            let x_2135 : vec4<f32> = u_xlat7;
            let x_2139 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2142 : vec2<f32> = ((vec2<f32>(x_2135.x, x_2135.y) * vec2<f32>(x_2139.z, x_2139.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2143 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2142.x, x_2142.y, x_2143.z, x_2143.w);
            let x_2145 : vec4<f32> = u_xlat8;
            let x_2147 : vec2<f32> = floor(vec2<f32>(x_2145.x, x_2145.y));
            let x_2148 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2147.x, x_2147.y, x_2148.z, x_2148.w);
            let x_2151 : vec4<f32> = u_xlat7;
            let x_2154 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2157 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2151.x, x_2151.y) * vec2<f32>(x_2154.z, x_2154.w)) + -(vec2<f32>(x_2157.x, x_2157.y)));
            let x_2161 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2161.x, x_2161.x, x_2161.y, x_2161.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2164 : vec4<f32> = u_xlat9;
            let x_2166 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2164.x, x_2164.x, x_2164.z, x_2164.z) * vec4<f32>(x_2166.x, x_2166.x, x_2166.z, x_2166.z));
            let x_2169 : vec4<f32> = u_xlat10;
            let x_2171 : vec2<f32> = (vec2<f32>(x_2169.y, x_2169.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2172 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2171.x, x_2172.y, x_2171.y, x_2172.w);
            let x_2174 : vec4<f32> = u_xlat10;
            let x_2177 : vec2<f32> = u_xlat52;
            let x_2179 : vec2<f32> = ((vec2<f32>(x_2174.x, x_2174.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2177));
            let x_2180 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2179.x, x_2179.y, x_2180.z, x_2180.w);
            let x_2183 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2183) + vec2<f32>(1.0f, 1.0f));
            let x_2186 : vec2<f32> = u_xlat52;
            let x_2187 : vec2<f32> = min(x_2186, vec2<f32>(0.0f, 0.0f));
            let x_2188 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2187.x, x_2187.y, x_2188.z, x_2188.w);
            let x_2190 : vec4<f32> = u_xlat11;
            let x_2193 : vec4<f32> = u_xlat11;
            let x_2196 : vec2<f32> = u_xlat54;
            let x_2197 : vec2<f32> = ((-(vec2<f32>(x_2190.x, x_2190.y)) * vec2<f32>(x_2193.x, x_2193.y)) + x_2196);
            let x_2198 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2197.x, x_2197.y, x_2198.z, x_2198.w);
            let x_2200 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2200, vec2<f32>(0.0f, 0.0f));
            let x_2202 : vec2<f32> = u_xlat52;
            let x_2204 : vec2<f32> = u_xlat52;
            let x_2206 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2202) * x_2204) + vec2<f32>(x_2206.y, x_2206.w));
            let x_2209 : vec4<f32> = u_xlat11;
            let x_2211 : vec2<f32> = (vec2<f32>(x_2209.x, x_2209.y) + vec2<f32>(1.0f, 1.0f));
            let x_2212 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2211.x, x_2211.y, x_2212.z, x_2212.w);
            let x_2214 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2214 + vec2<f32>(1.0f, 1.0f));
            let x_2216 : vec4<f32> = u_xlat10;
            let x_2218 : vec2<f32> = (vec2<f32>(x_2216.x, x_2216.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2219 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2218.x, x_2218.y, x_2219.z, x_2219.w);
            let x_2221 : vec2<f32> = u_xlat54;
            let x_2222 : vec2<f32> = (x_2221 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2223 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2222.x, x_2222.y, x_2223.z, x_2223.w);
            let x_2225 : vec4<f32> = u_xlat11;
            let x_2227 : vec2<f32> = (vec2<f32>(x_2225.x, x_2225.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2228 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2227.x, x_2227.y, x_2228.z, x_2228.w);
            let x_2230 : vec2<f32> = u_xlat52;
            let x_2231 : vec2<f32> = (x_2230 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2232 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2231.x, x_2231.y, x_2232.z, x_2232.w);
            let x_2234 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2234.y, x_2234.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2238 : f32 = u_xlat11.x;
            u_xlat12.z = x_2238;
            let x_2241 : f32 = u_xlat52.x;
            u_xlat12.w = x_2241;
            let x_2244 : f32 = u_xlat13.x;
            u_xlat10.z = x_2244;
            let x_2247 : f32 = u_xlat9.x;
            u_xlat10.w = x_2247;
            let x_2249 : vec4<f32> = u_xlat10;
            let x_2251 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2249.z, x_2249.w, x_2249.x, x_2249.z) + vec4<f32>(x_2251.z, x_2251.w, x_2251.x, x_2251.z));
            let x_2255 : f32 = u_xlat12.y;
            u_xlat11.z = x_2255;
            let x_2258 : f32 = u_xlat52.y;
            u_xlat11.w = x_2258;
            let x_2261 : f32 = u_xlat10.y;
            u_xlat13.z = x_2261;
            let x_2264 : f32 = u_xlat9.z;
            u_xlat13.w = x_2264;
            let x_2266 : vec4<f32> = u_xlat11;
            let x_2268 : vec4<f32> = u_xlat13;
            let x_2270 : vec3<f32> = (vec3<f32>(x_2266.z, x_2266.y, x_2266.w) + vec3<f32>(x_2268.z, x_2268.y, x_2268.w));
            let x_2271 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2270.x, x_2270.y, x_2270.z, x_2271.w);
            let x_2273 : vec4<f32> = u_xlat10;
            let x_2275 : vec4<f32> = u_xlat14;
            let x_2277 : vec3<f32> = (vec3<f32>(x_2273.x, x_2273.z, x_2273.w) / vec3<f32>(x_2275.z, x_2275.w, x_2275.y));
            let x_2278 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2277.x, x_2277.y, x_2277.z, x_2278.w);
            let x_2280 : vec4<f32> = u_xlat10;
            let x_2282 : vec3<f32> = (vec3<f32>(x_2280.x, x_2280.y, x_2280.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2283 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
            let x_2285 : vec4<f32> = u_xlat13;
            let x_2287 : vec4<f32> = u_xlat9;
            let x_2289 : vec3<f32> = (vec3<f32>(x_2285.z, x_2285.y, x_2285.w) / vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
            let x_2290 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2289.x, x_2289.y, x_2289.z, x_2290.w);
            let x_2292 : vec4<f32> = u_xlat11;
            let x_2294 : vec3<f32> = (vec3<f32>(x_2292.x, x_2292.y, x_2292.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2295 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2294.x, x_2294.y, x_2294.z, x_2295.w);
            let x_2297 : vec4<f32> = u_xlat10;
            let x_2300 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2302 : vec3<f32> = (vec3<f32>(x_2297.y, x_2297.x, x_2297.z) * vec3<f32>(x_2300.x, x_2300.x, x_2300.x));
            let x_2303 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2302.x, x_2302.y, x_2302.z, x_2303.w);
            let x_2305 : vec4<f32> = u_xlat11;
            let x_2308 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2310 : vec3<f32> = (vec3<f32>(x_2305.x, x_2305.y, x_2305.z) * vec3<f32>(x_2308.y, x_2308.y, x_2308.y));
            let x_2311 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2310.x, x_2310.y, x_2310.z, x_2311.w);
            let x_2314 : f32 = u_xlat11.x;
            u_xlat10.w = x_2314;
            let x_2316 : vec4<f32> = u_xlat8;
            let x_2319 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2322 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2316.x, x_2316.y, x_2316.x, x_2316.y) * vec4<f32>(x_2319.x, x_2319.y, x_2319.x, x_2319.y)) + vec4<f32>(x_2322.y, x_2322.w, x_2322.x, x_2322.w));
            let x_2325 : vec4<f32> = u_xlat8;
            let x_2328 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2331 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2325.x, x_2325.y) * vec2<f32>(x_2328.x, x_2328.y)) + vec2<f32>(x_2331.z, x_2331.w));
            let x_2335 : f32 = u_xlat10.y;
            u_xlat11.w = x_2335;
            let x_2337 : vec4<f32> = u_xlat11;
            let x_2338 : vec2<f32> = vec2<f32>(x_2337.y, x_2337.z);
            let x_2339 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2339.x, x_2338.x, x_2339.z, x_2338.y);
            let x_2341 : vec4<f32> = u_xlat8;
            let x_2344 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2347 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2341.x, x_2341.y, x_2341.x, x_2341.y) * vec4<f32>(x_2344.x, x_2344.y, x_2344.x, x_2344.y)) + vec4<f32>(x_2347.x, x_2347.y, x_2347.z, x_2347.y));
            let x_2350 : vec4<f32> = u_xlat8;
            let x_2353 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2356 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2350.x, x_2350.y, x_2350.x, x_2350.y) * vec4<f32>(x_2353.x, x_2353.y, x_2353.x, x_2353.y)) + vec4<f32>(x_2356.w, x_2356.y, x_2356.w, x_2356.z));
            let x_2359 : vec4<f32> = u_xlat8;
            let x_2362 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2365 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2359.x, x_2359.y, x_2359.x, x_2359.y) * vec4<f32>(x_2362.x, x_2362.y, x_2362.x, x_2362.y)) + vec4<f32>(x_2365.x, x_2365.w, x_2365.z, x_2365.w));
            let x_2368 : vec4<f32> = u_xlat9;
            let x_2370 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2368.x, x_2368.x, x_2368.x, x_2368.y) * vec4<f32>(x_2370.z, x_2370.w, x_2370.y, x_2370.z));
            let x_2373 : vec4<f32> = u_xlat9;
            let x_2375 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2373.y, x_2373.y, x_2373.z, x_2373.z) * x_2375);
            let x_2378 : f32 = u_xlat9.z;
            let x_2380 : f32 = u_xlat14.y;
            u_xlat72 = (x_2378 * x_2380);
            let x_2383 : vec4<f32> = u_xlat12;
            let x_2384 : vec2<f32> = vec2<f32>(x_2383.x, x_2383.y);
            let x_2386 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2384.x, x_2384.y, x_2386);
            let x_2393 : vec3<f32> = txVec34;
            let x_2395 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2393.xy, x_2393.z);
            u_xlat73 = x_2395;
            let x_2397 : vec4<f32> = u_xlat12;
            let x_2398 : vec2<f32> = vec2<f32>(x_2397.z, x_2397.w);
            let x_2400 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2398.x, x_2398.y, x_2400);
            let x_2407 : vec3<f32> = txVec35;
            let x_2409 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2407.xy, x_2407.z);
            u_xlat8.x = x_2409;
            let x_2412 : f32 = u_xlat8.x;
            let x_2414 : f32 = u_xlat15.y;
            u_xlat8.x = (x_2412 * x_2414);
            let x_2418 : f32 = u_xlat15.x;
            let x_2419 : f32 = u_xlat73;
            let x_2422 : f32 = u_xlat8.x;
            u_xlat73 = ((x_2418 * x_2419) + x_2422);
            let x_2425 : vec2<f32> = u_xlat52;
            let x_2427 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2425.x, x_2425.y, x_2427);
            let x_2434 : vec3<f32> = txVec36;
            let x_2436 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2434.xy, x_2434.z);
            u_xlat8.x = x_2436;
            let x_2439 : f32 = u_xlat15.z;
            let x_2441 : f32 = u_xlat8.x;
            let x_2443 : f32 = u_xlat73;
            u_xlat73 = ((x_2439 * x_2441) + x_2443);
            let x_2446 : vec4<f32> = u_xlat11;
            let x_2447 : vec2<f32> = vec2<f32>(x_2446.x, x_2446.y);
            let x_2449 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2447.x, x_2447.y, x_2449);
            let x_2456 : vec3<f32> = txVec37;
            let x_2458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2456.xy, x_2456.z);
            u_xlat8.x = x_2458;
            let x_2461 : f32 = u_xlat15.w;
            let x_2463 : f32 = u_xlat8.x;
            let x_2465 : f32 = u_xlat73;
            u_xlat73 = ((x_2461 * x_2463) + x_2465);
            let x_2468 : vec4<f32> = u_xlat13;
            let x_2469 : vec2<f32> = vec2<f32>(x_2468.x, x_2468.y);
            let x_2471 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2469.x, x_2469.y, x_2471);
            let x_2478 : vec3<f32> = txVec38;
            let x_2480 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2478.xy, x_2478.z);
            u_xlat8.x = x_2480;
            let x_2483 : f32 = u_xlat16.x;
            let x_2485 : f32 = u_xlat8.x;
            let x_2487 : f32 = u_xlat73;
            u_xlat73 = ((x_2483 * x_2485) + x_2487);
            let x_2490 : vec4<f32> = u_xlat13;
            let x_2491 : vec2<f32> = vec2<f32>(x_2490.z, x_2490.w);
            let x_2493 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2491.x, x_2491.y, x_2493);
            let x_2500 : vec3<f32> = txVec39;
            let x_2502 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2500.xy, x_2500.z);
            u_xlat8.x = x_2502;
            let x_2505 : f32 = u_xlat16.y;
            let x_2507 : f32 = u_xlat8.x;
            let x_2509 : f32 = u_xlat73;
            u_xlat73 = ((x_2505 * x_2507) + x_2509);
            let x_2512 : vec4<f32> = u_xlat11;
            let x_2513 : vec2<f32> = vec2<f32>(x_2512.z, x_2512.w);
            let x_2515 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2513.x, x_2513.y, x_2515);
            let x_2522 : vec3<f32> = txVec40;
            let x_2524 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2522.xy, x_2522.z);
            u_xlat8.x = x_2524;
            let x_2527 : f32 = u_xlat16.z;
            let x_2529 : f32 = u_xlat8.x;
            let x_2531 : f32 = u_xlat73;
            u_xlat73 = ((x_2527 * x_2529) + x_2531);
            let x_2534 : vec4<f32> = u_xlat10;
            let x_2535 : vec2<f32> = vec2<f32>(x_2534.x, x_2534.y);
            let x_2537 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2535.x, x_2535.y, x_2537);
            let x_2544 : vec3<f32> = txVec41;
            let x_2546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2544.xy, x_2544.z);
            u_xlat8.x = x_2546;
            let x_2549 : f32 = u_xlat16.w;
            let x_2551 : f32 = u_xlat8.x;
            let x_2553 : f32 = u_xlat73;
            u_xlat73 = ((x_2549 * x_2551) + x_2553);
            let x_2556 : vec4<f32> = u_xlat10;
            let x_2557 : vec2<f32> = vec2<f32>(x_2556.z, x_2556.w);
            let x_2559 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2557.x, x_2557.y, x_2559);
            let x_2566 : vec3<f32> = txVec42;
            let x_2568 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2566.xy, x_2566.z);
            u_xlat8.x = x_2568;
            let x_2570 : f32 = u_xlat72;
            let x_2572 : f32 = u_xlat8.x;
            let x_2574 : f32 = u_xlat73;
            u_xlat71 = ((x_2570 * x_2572) + x_2574);
          } else {
            let x_2577 : vec4<f32> = u_xlat7;
            let x_2580 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2583 : vec2<f32> = ((vec2<f32>(x_2577.x, x_2577.y) * vec2<f32>(x_2580.z, x_2580.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2584 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2583.x, x_2583.y, x_2584.z, x_2584.w);
            let x_2586 : vec4<f32> = u_xlat8;
            let x_2588 : vec2<f32> = floor(vec2<f32>(x_2586.x, x_2586.y));
            let x_2589 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2588.x, x_2588.y, x_2589.z, x_2589.w);
            let x_2591 : vec4<f32> = u_xlat7;
            let x_2594 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2597 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2591.x, x_2591.y) * vec2<f32>(x_2594.z, x_2594.w)) + -(vec2<f32>(x_2597.x, x_2597.y)));
            let x_2601 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2601.x, x_2601.x, x_2601.y, x_2601.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2604 : vec4<f32> = u_xlat9;
            let x_2606 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2604.x, x_2604.x, x_2604.z, x_2604.z) * vec4<f32>(x_2606.x, x_2606.x, x_2606.z, x_2606.z));
            let x_2609 : vec4<f32> = u_xlat10;
            let x_2611 : vec2<f32> = (vec2<f32>(x_2609.y, x_2609.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2612 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2612.x, x_2611.x, x_2612.z, x_2611.y);
            let x_2614 : vec4<f32> = u_xlat10;
            let x_2617 : vec2<f32> = u_xlat52;
            let x_2619 : vec2<f32> = ((vec2<f32>(x_2614.x, x_2614.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2617));
            let x_2620 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2619.x, x_2620.y, x_2619.y, x_2620.w);
            let x_2622 : vec2<f32> = u_xlat52;
            let x_2624 : vec2<f32> = (-(x_2622) + vec2<f32>(1.0f, 1.0f));
            let x_2625 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2624.x, x_2624.y, x_2625.z, x_2625.w);
            let x_2627 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2627, vec2<f32>(0.0f, 0.0f));
            let x_2629 : vec2<f32> = u_xlat54;
            let x_2631 : vec2<f32> = u_xlat54;
            let x_2633 : vec4<f32> = u_xlat10;
            let x_2635 : vec2<f32> = ((-(x_2629) * x_2631) + vec2<f32>(x_2633.x, x_2633.y));
            let x_2636 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
            let x_2638 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2638, vec2<f32>(0.0f, 0.0f));
            let x_2641 : vec2<f32> = u_xlat54;
            let x_2643 : vec2<f32> = u_xlat54;
            let x_2645 : vec4<f32> = u_xlat9;
            let x_2647 : vec2<f32> = ((-(x_2641) * x_2643) + vec2<f32>(x_2645.y, x_2645.w));
            let x_2648 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2647.x, x_2648.y, x_2647.y);
            let x_2650 : vec4<f32> = u_xlat10;
            let x_2652 : vec2<f32> = (vec2<f32>(x_2650.x, x_2650.y) + vec2<f32>(2.0f, 2.0f));
            let x_2653 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2652.x, x_2652.y, x_2653.z, x_2653.w);
            let x_2655 : vec3<f32> = u_xlat31;
            let x_2657 : vec2<f32> = (vec2<f32>(x_2655.x, x_2655.z) + vec2<f32>(2.0f, 2.0f));
            let x_2658 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2658.x, x_2657.x, x_2658.z, x_2657.y);
            let x_2661 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2661 * 0.08163200318813323975f);
            let x_2664 : vec4<f32> = u_xlat9;
            let x_2666 : vec3<f32> = (vec3<f32>(x_2664.z, x_2664.x, x_2664.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2667 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2666.x, x_2666.y, x_2666.z, x_2667.w);
            let x_2669 : vec4<f32> = u_xlat10;
            let x_2671 : vec2<f32> = (vec2<f32>(x_2669.x, x_2669.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2672 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2671.x, x_2671.y, x_2672.z, x_2672.w);
            let x_2675 : f32 = u_xlat13.y;
            u_xlat12.x = x_2675;
            let x_2677 : vec2<f32> = u_xlat52;
            let x_2680 : vec2<f32> = ((vec2<f32>(x_2677.x, x_2677.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2681 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2681.x, x_2680.x, x_2681.z, x_2680.y);
            let x_2683 : vec2<f32> = u_xlat52;
            let x_2686 : vec2<f32> = ((vec2<f32>(x_2683.x, x_2683.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2687 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2686.x, x_2687.y, x_2686.y, x_2687.w);
            let x_2690 : f32 = u_xlat9.x;
            u_xlat10.y = x_2690;
            let x_2693 : f32 = u_xlat11.y;
            u_xlat10.w = x_2693;
            let x_2695 : vec4<f32> = u_xlat10;
            let x_2696 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2695 + x_2696);
            let x_2698 : vec2<f32> = u_xlat52;
            let x_2701 : vec2<f32> = ((vec2<f32>(x_2698.y, x_2698.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2702 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2702.x, x_2701.x, x_2702.z, x_2701.y);
            let x_2704 : vec2<f32> = u_xlat52;
            let x_2707 : vec2<f32> = ((vec2<f32>(x_2704.y, x_2704.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2708 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2707.x, x_2708.y, x_2707.y, x_2708.w);
            let x_2711 : f32 = u_xlat9.y;
            u_xlat11.y = x_2711;
            let x_2713 : vec4<f32> = u_xlat11;
            let x_2714 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2713 + x_2714);
            let x_2716 : vec4<f32> = u_xlat10;
            let x_2717 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2716 / x_2717);
            let x_2719 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2719 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2721 : vec4<f32> = u_xlat11;
            let x_2722 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2721 / x_2722);
            let x_2724 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2724 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2726 : vec4<f32> = u_xlat10;
            let x_2729 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2726.w, x_2726.x, x_2726.y, x_2726.z) * vec4<f32>(x_2729.x, x_2729.x, x_2729.x, x_2729.x));
            let x_2732 : vec4<f32> = u_xlat11;
            let x_2735 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2732.x, x_2732.w, x_2732.y, x_2732.z) * vec4<f32>(x_2735.y, x_2735.y, x_2735.y, x_2735.y));
            let x_2738 : vec4<f32> = u_xlat10;
            let x_2739 : vec3<f32> = vec3<f32>(x_2738.y, x_2738.z, x_2738.w);
            let x_2740 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2739.x, x_2740.y, x_2739.y, x_2739.z);
            let x_2743 : f32 = u_xlat11.x;
            u_xlat13.y = x_2743;
            let x_2745 : vec4<f32> = u_xlat8;
            let x_2748 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2751 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2745.x, x_2745.y, x_2745.x, x_2745.y) * vec4<f32>(x_2748.x, x_2748.y, x_2748.x, x_2748.y)) + vec4<f32>(x_2751.x, x_2751.y, x_2751.z, x_2751.y));
            let x_2754 : vec4<f32> = u_xlat8;
            let x_2757 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2760 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2754.x, x_2754.y) * vec2<f32>(x_2757.x, x_2757.y)) + vec2<f32>(x_2760.w, x_2760.y));
            let x_2764 : f32 = u_xlat13.y;
            u_xlat10.y = x_2764;
            let x_2767 : f32 = u_xlat11.z;
            u_xlat13.y = x_2767;
            let x_2769 : vec4<f32> = u_xlat8;
            let x_2772 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2775 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2769.x, x_2769.y, x_2769.x, x_2769.y) * vec4<f32>(x_2772.x, x_2772.y, x_2772.x, x_2772.y)) + vec4<f32>(x_2775.x, x_2775.y, x_2775.z, x_2775.y));
            let x_2778 : vec4<f32> = u_xlat8;
            let x_2781 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2784 : vec4<f32> = u_xlat13;
            let x_2786 : vec2<f32> = ((vec2<f32>(x_2778.x, x_2778.y) * vec2<f32>(x_2781.x, x_2781.y)) + vec2<f32>(x_2784.w, x_2784.y));
            let x_2787 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2786.x, x_2786.y, x_2787.z, x_2787.w);
            let x_2790 : f32 = u_xlat13.y;
            u_xlat10.z = x_2790;
            let x_2793 : vec4<f32> = u_xlat8;
            let x_2796 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2799 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2793.x, x_2793.y, x_2793.x, x_2793.y) * vec4<f32>(x_2796.x, x_2796.y, x_2796.x, x_2796.y)) + vec4<f32>(x_2799.x, x_2799.y, x_2799.x, x_2799.z));
            let x_2803 : f32 = u_xlat11.w;
            u_xlat13.y = x_2803;
            let x_2806 : vec4<f32> = u_xlat8;
            let x_2809 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2812 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2806.x, x_2806.y, x_2806.x, x_2806.y) * vec4<f32>(x_2809.x, x_2809.y, x_2809.x, x_2809.y)) + vec4<f32>(x_2812.x, x_2812.y, x_2812.z, x_2812.y));
            let x_2816 : vec4<f32> = u_xlat8;
            let x_2819 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2822 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2816.x, x_2816.y) * vec2<f32>(x_2819.x, x_2819.y)) + vec2<f32>(x_2822.w, x_2822.y));
            let x_2826 : f32 = u_xlat13.y;
            u_xlat10.w = x_2826;
            let x_2829 : vec4<f32> = u_xlat8;
            let x_2832 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2835 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2829.x, x_2829.y) * vec2<f32>(x_2832.x, x_2832.y)) + vec2<f32>(x_2835.x, x_2835.w));
            let x_2838 : vec4<f32> = u_xlat13;
            let x_2839 : vec3<f32> = vec3<f32>(x_2838.x, x_2838.z, x_2838.w);
            let x_2840 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2839.x, x_2840.y, x_2839.y, x_2839.z);
            let x_2842 : vec4<f32> = u_xlat8;
            let x_2845 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2848 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2842.x, x_2842.y, x_2842.x, x_2842.y) * vec4<f32>(x_2845.x, x_2845.y, x_2845.x, x_2845.y)) + vec4<f32>(x_2848.x, x_2848.y, x_2848.z, x_2848.y));
            let x_2851 : vec4<f32> = u_xlat8;
            let x_2854 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2857 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2851.x, x_2851.y) * vec2<f32>(x_2854.x, x_2854.y)) + vec2<f32>(x_2857.w, x_2857.y));
            let x_2861 : f32 = u_xlat10.x;
            u_xlat11.x = x_2861;
            let x_2863 : vec4<f32> = u_xlat8;
            let x_2866 : vec4<f32> = x_238.x_AdditionalShadowmapSize;
            let x_2869 : vec4<f32> = u_xlat11;
            let x_2871 : vec2<f32> = ((vec2<f32>(x_2863.x, x_2863.y) * vec2<f32>(x_2866.x, x_2866.y)) + vec2<f32>(x_2869.x, x_2869.y));
            let x_2872 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2871.x, x_2871.y, x_2872.z, x_2872.w);
            let x_2875 : vec4<f32> = u_xlat9;
            let x_2877 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2875.x, x_2875.x, x_2875.x, x_2875.x) * x_2877);
            let x_2880 : vec4<f32> = u_xlat9;
            let x_2882 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2880.y, x_2880.y, x_2880.y, x_2880.y) * x_2882);
            let x_2885 : vec4<f32> = u_xlat9;
            let x_2887 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2885.z, x_2885.z, x_2885.z, x_2885.z) * x_2887);
            let x_2889 : vec4<f32> = u_xlat9;
            let x_2891 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2889.w, x_2889.w, x_2889.w, x_2889.w) * x_2891);
            let x_2894 : vec4<f32> = u_xlat14;
            let x_2895 : vec2<f32> = vec2<f32>(x_2894.x, x_2894.y);
            let x_2897 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2895.x, x_2895.y, x_2897);
            let x_2904 : vec3<f32> = txVec43;
            let x_2906 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2904.xy, x_2904.z);
            u_xlat72 = x_2906;
            let x_2908 : vec4<f32> = u_xlat14;
            let x_2909 : vec2<f32> = vec2<f32>(x_2908.z, x_2908.w);
            let x_2911 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2909.x, x_2909.y, x_2911);
            let x_2918 : vec3<f32> = txVec44;
            let x_2920 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2918.xy, x_2918.z);
            u_xlat73 = x_2920;
            let x_2921 : f32 = u_xlat73;
            let x_2923 : f32 = u_xlat19.y;
            u_xlat73 = (x_2921 * x_2923);
            let x_2926 : f32 = u_xlat19.x;
            let x_2927 : f32 = u_xlat72;
            let x_2929 : f32 = u_xlat73;
            u_xlat72 = ((x_2926 * x_2927) + x_2929);
            let x_2932 : vec2<f32> = u_xlat52;
            let x_2934 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2932.x, x_2932.y, x_2934);
            let x_2941 : vec3<f32> = txVec45;
            let x_2943 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2941.xy, x_2941.z);
            u_xlat73 = x_2943;
            let x_2945 : f32 = u_xlat19.z;
            let x_2946 : f32 = u_xlat73;
            let x_2948 : f32 = u_xlat72;
            u_xlat72 = ((x_2945 * x_2946) + x_2948);
            let x_2951 : vec4<f32> = u_xlat17;
            let x_2952 : vec2<f32> = vec2<f32>(x_2951.x, x_2951.y);
            let x_2954 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2952.x, x_2952.y, x_2954);
            let x_2961 : vec3<f32> = txVec46;
            let x_2963 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2961.xy, x_2961.z);
            u_xlat73 = x_2963;
            let x_2965 : f32 = u_xlat19.w;
            let x_2966 : f32 = u_xlat73;
            let x_2968 : f32 = u_xlat72;
            u_xlat72 = ((x_2965 * x_2966) + x_2968);
            let x_2971 : vec4<f32> = u_xlat15;
            let x_2972 : vec2<f32> = vec2<f32>(x_2971.x, x_2971.y);
            let x_2974 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2972.x, x_2972.y, x_2974);
            let x_2981 : vec3<f32> = txVec47;
            let x_2983 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2981.xy, x_2981.z);
            u_xlat73 = x_2983;
            let x_2985 : f32 = u_xlat20.x;
            let x_2986 : f32 = u_xlat73;
            let x_2988 : f32 = u_xlat72;
            u_xlat72 = ((x_2985 * x_2986) + x_2988);
            let x_2991 : vec4<f32> = u_xlat15;
            let x_2992 : vec2<f32> = vec2<f32>(x_2991.z, x_2991.w);
            let x_2994 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2992.x, x_2992.y, x_2994);
            let x_3001 : vec3<f32> = txVec48;
            let x_3003 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3001.xy, x_3001.z);
            u_xlat73 = x_3003;
            let x_3005 : f32 = u_xlat20.y;
            let x_3006 : f32 = u_xlat73;
            let x_3008 : f32 = u_xlat72;
            u_xlat72 = ((x_3005 * x_3006) + x_3008);
            let x_3011 : vec4<f32> = u_xlat16;
            let x_3012 : vec2<f32> = vec2<f32>(x_3011.x, x_3011.y);
            let x_3014 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_3012.x, x_3012.y, x_3014);
            let x_3021 : vec3<f32> = txVec49;
            let x_3023 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3021.xy, x_3021.z);
            u_xlat73 = x_3023;
            let x_3025 : f32 = u_xlat20.z;
            let x_3026 : f32 = u_xlat73;
            let x_3028 : f32 = u_xlat72;
            u_xlat72 = ((x_3025 * x_3026) + x_3028);
            let x_3031 : vec4<f32> = u_xlat17;
            let x_3032 : vec2<f32> = vec2<f32>(x_3031.z, x_3031.w);
            let x_3034 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3032.x, x_3032.y, x_3034);
            let x_3041 : vec3<f32> = txVec50;
            let x_3043 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3041.xy, x_3041.z);
            u_xlat73 = x_3043;
            let x_3045 : f32 = u_xlat20.w;
            let x_3046 : f32 = u_xlat73;
            let x_3048 : f32 = u_xlat72;
            u_xlat72 = ((x_3045 * x_3046) + x_3048);
            let x_3051 : vec4<f32> = u_xlat18;
            let x_3052 : vec2<f32> = vec2<f32>(x_3051.x, x_3051.y);
            let x_3054 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3052.x, x_3052.y, x_3054);
            let x_3061 : vec3<f32> = txVec51;
            let x_3063 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3061.xy, x_3061.z);
            u_xlat73 = x_3063;
            let x_3065 : f32 = u_xlat21.x;
            let x_3066 : f32 = u_xlat73;
            let x_3068 : f32 = u_xlat72;
            u_xlat72 = ((x_3065 * x_3066) + x_3068);
            let x_3071 : vec4<f32> = u_xlat18;
            let x_3072 : vec2<f32> = vec2<f32>(x_3071.z, x_3071.w);
            let x_3074 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3072.x, x_3072.y, x_3074);
            let x_3081 : vec3<f32> = txVec52;
            let x_3083 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3081.xy, x_3081.z);
            u_xlat73 = x_3083;
            let x_3085 : f32 = u_xlat21.y;
            let x_3086 : f32 = u_xlat73;
            let x_3088 : f32 = u_xlat72;
            u_xlat72 = ((x_3085 * x_3086) + x_3088);
            let x_3091 : vec2<f32> = u_xlat32;
            let x_3093 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3091.x, x_3091.y, x_3093);
            let x_3100 : vec3<f32> = txVec53;
            let x_3102 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3100.xy, x_3100.z);
            u_xlat73 = x_3102;
            let x_3104 : f32 = u_xlat21.z;
            let x_3105 : f32 = u_xlat73;
            let x_3107 : f32 = u_xlat72;
            u_xlat72 = ((x_3104 * x_3105) + x_3107);
            let x_3110 : vec2<f32> = u_xlat60;
            let x_3112 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3110.x, x_3110.y, x_3112);
            let x_3119 : vec3<f32> = txVec54;
            let x_3121 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3119.xy, x_3119.z);
            u_xlat73 = x_3121;
            let x_3123 : f32 = u_xlat21.w;
            let x_3124 : f32 = u_xlat73;
            let x_3126 : f32 = u_xlat72;
            u_xlat72 = ((x_3123 * x_3124) + x_3126);
            let x_3129 : vec4<f32> = u_xlat13;
            let x_3130 : vec2<f32> = vec2<f32>(x_3129.x, x_3129.y);
            let x_3132 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3130.x, x_3130.y, x_3132);
            let x_3139 : vec3<f32> = txVec55;
            let x_3141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3139.xy, x_3139.z);
            u_xlat73 = x_3141;
            let x_3143 : f32 = u_xlat9.x;
            let x_3144 : f32 = u_xlat73;
            let x_3146 : f32 = u_xlat72;
            u_xlat72 = ((x_3143 * x_3144) + x_3146);
            let x_3149 : vec4<f32> = u_xlat13;
            let x_3150 : vec2<f32> = vec2<f32>(x_3149.z, x_3149.w);
            let x_3152 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3150.x, x_3150.y, x_3152);
            let x_3159 : vec3<f32> = txVec56;
            let x_3161 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3159.xy, x_3159.z);
            u_xlat73 = x_3161;
            let x_3163 : f32 = u_xlat9.y;
            let x_3164 : f32 = u_xlat73;
            let x_3166 : f32 = u_xlat72;
            u_xlat72 = ((x_3163 * x_3164) + x_3166);
            let x_3169 : vec2<f32> = u_xlat55;
            let x_3171 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3169.x, x_3169.y, x_3171);
            let x_3178 : vec3<f32> = txVec57;
            let x_3180 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3178.xy, x_3178.z);
            u_xlat73 = x_3180;
            let x_3182 : f32 = u_xlat9.z;
            let x_3183 : f32 = u_xlat73;
            let x_3185 : f32 = u_xlat72;
            u_xlat72 = ((x_3182 * x_3183) + x_3185);
            let x_3188 : vec4<f32> = u_xlat8;
            let x_3189 : vec2<f32> = vec2<f32>(x_3188.x, x_3188.y);
            let x_3191 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3189.x, x_3189.y, x_3191);
            let x_3198 : vec3<f32> = txVec58;
            let x_3200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3198.xy, x_3198.z);
            u_xlat73 = x_3200;
            let x_3202 : f32 = u_xlat9.w;
            let x_3203 : f32 = u_xlat73;
            let x_3205 : f32 = u_xlat72;
            u_xlat71 = ((x_3202 * x_3203) + x_3205);
          }
        }
      } else {
        let x_3209 : vec4<f32> = u_xlat7;
        let x_3210 : vec2<f32> = vec2<f32>(x_3209.x, x_3209.y);
        let x_3212 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3210.x, x_3210.y, x_3212);
        let x_3219 : vec3<f32> = txVec59;
        let x_3221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3219.xy, x_3219.z);
        u_xlat71 = x_3221;
      }
      let x_3222 : i32 = u_xlati48;
      let x_3224 : f32 = x_238.x_AdditionalShadowParams[x_3222].x;
      u_xlat72 = (1.0f + -(x_3224));
      let x_3227 : f32 = u_xlat71;
      let x_3228 : i32 = u_xlati48;
      let x_3230 : f32 = x_238.x_AdditionalShadowParams[x_3228].x;
      let x_3232 : f32 = u_xlat72;
      u_xlat71 = ((x_3227 * x_3230) + x_3232);
      let x_3235 : f32 = u_xlat7.z;
      u_xlatb72 = (0.0f >= x_3235);
      let x_3238 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_3238 >= 1.0f);
      let x_3241 : bool = u_xlatb72;
      let x_3243 : bool = u_xlatb7.x;
      u_xlatb72 = (x_3241 | x_3243);
      let x_3245 : bool = u_xlatb72;
      let x_3246 : f32 = u_xlat71;
      u_xlat71 = select(x_3246, 1.0f, x_3245);
    } else {
      u_xlat71 = 1.0f;
    }
    let x_3249 : f32 = u_xlat71;
    u_xlat72 = (-(x_3249) + 1.0f);
    let x_3252 : f32 = u_xlat68;
    let x_3253 : f32 = u_xlat72;
    let x_3255 : f32 = u_xlat71;
    u_xlat71 = ((x_3252 * x_3253) + x_3255);
    let x_3258 : i32 = u_xlati48;
    u_xlati72 = (1i << bitcast<u32>((x_3258 & 31i)));
    let x_3262 : i32 = u_xlati72;
    let x_3265 : f32 = x_1564.x_AdditionalLightsCookieEnableBits;
    u_xlati72 = bitcast<i32>((bitcast<u32>(x_3262) & bitcast<u32>(x_3265)));
    let x_3269 : i32 = u_xlati72;
    if ((x_3269 != 0i)) {
      let x_3273 : i32 = u_xlati48;
      let x_3275 : f32 = x_1564.x_AdditionalLightsLightTypes[x_3273].el;
      u_xlati72 = i32(x_3275);
      let x_3278 : i32 = u_xlati72;
      u_xlati7 = select(1i, 0i, (x_3278 != 0i));
      let x_3282 : i32 = u_xlati48;
      u_xlati29 = (x_3282 << bitcast<u32>(2i));
      let x_3284 : i32 = u_xlati7;
      if ((x_3284 != 0i)) {
        let x_3288 : vec3<f32> = vs_TEXCOORD1;
        let x_3290 : i32 = u_xlati29;
        let x_3293 : i32 = u_xlati29;
        let x_3297 : vec4<f32> = x_1564.x_AdditionalLightsWorldToLights[((x_3290 + 1i) / 4i)][((x_3293 + 1i) % 4i)];
        let x_3299 : vec3<f32> = (vec3<f32>(x_3288.y, x_3288.y, x_3288.y) * vec3<f32>(x_3297.x, x_3297.y, x_3297.w));
        let x_3300 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3299.x, x_3300.y, x_3299.y, x_3299.z);
        let x_3302 : i32 = u_xlati29;
        let x_3304 : i32 = u_xlati29;
        let x_3307 : vec4<f32> = x_1564.x_AdditionalLightsWorldToLights[(x_3302 / 4i)][(x_3304 % 4i)];
        let x_3309 : vec3<f32> = vs_TEXCOORD1;
        let x_3312 : vec4<f32> = u_xlat7;
        let x_3314 : vec3<f32> = ((vec3<f32>(x_3307.x, x_3307.y, x_3307.w) * vec3<f32>(x_3309.x, x_3309.x, x_3309.x)) + vec3<f32>(x_3312.x, x_3312.z, x_3312.w));
        let x_3315 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3314.x, x_3315.y, x_3314.y, x_3314.z);
        let x_3317 : i32 = u_xlati29;
        let x_3320 : i32 = u_xlati29;
        let x_3324 : vec4<f32> = x_1564.x_AdditionalLightsWorldToLights[((x_3317 + 2i) / 4i)][((x_3320 + 2i) % 4i)];
        let x_3326 : vec3<f32> = vs_TEXCOORD1;
        let x_3329 : vec4<f32> = u_xlat7;
        let x_3331 : vec3<f32> = ((vec3<f32>(x_3324.x, x_3324.y, x_3324.w) * vec3<f32>(x_3326.z, x_3326.z, x_3326.z)) + vec3<f32>(x_3329.x, x_3329.z, x_3329.w));
        let x_3332 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3331.x, x_3332.y, x_3331.y, x_3331.z);
        let x_3334 : vec4<f32> = u_xlat7;
        let x_3336 : i32 = u_xlati29;
        let x_3339 : i32 = u_xlati29;
        let x_3343 : vec4<f32> = x_1564.x_AdditionalLightsWorldToLights[((x_3336 + 3i) / 4i)][((x_3339 + 3i) % 4i)];
        let x_3345 : vec3<f32> = (vec3<f32>(x_3334.x, x_3334.z, x_3334.w) + vec3<f32>(x_3343.x, x_3343.y, x_3343.w));
        let x_3346 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3345.x, x_3346.y, x_3345.y, x_3345.z);
        let x_3348 : vec4<f32> = u_xlat7;
        let x_3350 : vec4<f32> = u_xlat7;
        let x_3352 : vec2<f32> = (vec2<f32>(x_3348.x, x_3348.z) / vec2<f32>(x_3350.w, x_3350.w));
        let x_3353 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3352.x, x_3353.y, x_3352.y, x_3353.w);
        let x_3355 : vec4<f32> = u_xlat7;
        let x_3358 : vec2<f32> = ((vec2<f32>(x_3355.x, x_3355.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3359 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3358.x, x_3359.y, x_3358.y, x_3359.w);
        let x_3361 : vec4<f32> = u_xlat7;
        let x_3365 : vec2<f32> = clamp(vec2<f32>(x_3361.x, x_3361.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3366 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3365.x, x_3366.y, x_3365.y, x_3366.w);
        let x_3368 : i32 = u_xlati48;
        let x_3370 : vec4<f32> = x_1564.x_AdditionalLightsCookieAtlasUVRects[x_3368];
        let x_3372 : vec4<f32> = u_xlat7;
        let x_3375 : i32 = u_xlati48;
        let x_3377 : vec4<f32> = x_1564.x_AdditionalLightsCookieAtlasUVRects[x_3375];
        let x_3379 : vec2<f32> = ((vec2<f32>(x_3370.x, x_3370.y) * vec2<f32>(x_3372.x, x_3372.z)) + vec2<f32>(x_3377.z, x_3377.w));
        let x_3380 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3379.x, x_3380.y, x_3379.y, x_3380.w);
      } else {
        let x_3383 : i32 = u_xlati72;
        u_xlatb72 = (x_3383 == 1i);
        let x_3385 : bool = u_xlatb72;
        u_xlati72 = select(0i, 1i, x_3385);
        let x_3387 : i32 = u_xlati72;
        if ((x_3387 != 0i)) {
          let x_3391 : vec3<f32> = vs_TEXCOORD1;
          let x_3393 : i32 = u_xlati29;
          let x_3396 : i32 = u_xlati29;
          let x_3400 : vec4<f32> = x_1564.x_AdditionalLightsWorldToLights[((x_3393 + 1i) / 4i)][((x_3396 + 1i) % 4i)];
          let x_3402 : vec2<f32> = (vec2<f32>(x_3391.y, x_3391.y) * vec2<f32>(x_3400.x, x_3400.y));
          let x_3403 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3402.x, x_3402.y, x_3403.z, x_3403.w);
          let x_3405 : i32 = u_xlati29;
          let x_3407 : i32 = u_xlati29;
          let x_3410 : vec4<f32> = x_1564.x_AdditionalLightsWorldToLights[(x_3405 / 4i)][(x_3407 % 4i)];
          let x_3412 : vec3<f32> = vs_TEXCOORD1;
          let x_3415 : vec4<f32> = u_xlat8;
          let x_3417 : vec2<f32> = ((vec2<f32>(x_3410.x, x_3410.y) * vec2<f32>(x_3412.x, x_3412.x)) + vec2<f32>(x_3415.x, x_3415.y));
          let x_3418 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3417.x, x_3417.y, x_3418.z, x_3418.w);
          let x_3420 : i32 = u_xlati29;
          let x_3423 : i32 = u_xlati29;
          let x_3427 : vec4<f32> = x_1564.x_AdditionalLightsWorldToLights[((x_3420 + 2i) / 4i)][((x_3423 + 2i) % 4i)];
          let x_3429 : vec3<f32> = vs_TEXCOORD1;
          let x_3432 : vec4<f32> = u_xlat8;
          let x_3434 : vec2<f32> = ((vec2<f32>(x_3427.x, x_3427.y) * vec2<f32>(x_3429.z, x_3429.z)) + vec2<f32>(x_3432.x, x_3432.y));
          let x_3435 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3434.x, x_3434.y, x_3435.z, x_3435.w);
          let x_3437 : vec4<f32> = u_xlat8;
          let x_3439 : i32 = u_xlati29;
          let x_3442 : i32 = u_xlati29;
          let x_3446 : vec4<f32> = x_1564.x_AdditionalLightsWorldToLights[((x_3439 + 3i) / 4i)][((x_3442 + 3i) % 4i)];
          let x_3448 : vec2<f32> = (vec2<f32>(x_3437.x, x_3437.y) + vec2<f32>(x_3446.x, x_3446.y));
          let x_3449 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3448.x, x_3448.y, x_3449.z, x_3449.w);
          let x_3451 : vec4<f32> = u_xlat8;
          let x_3454 : vec2<f32> = ((vec2<f32>(x_3451.x, x_3451.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3455 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3454.x, x_3454.y, x_3455.z, x_3455.w);
          let x_3457 : vec4<f32> = u_xlat8;
          let x_3459 : vec2<f32> = fract(vec2<f32>(x_3457.x, x_3457.y));
          let x_3460 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3459.x, x_3459.y, x_3460.z, x_3460.w);
          let x_3462 : i32 = u_xlati48;
          let x_3464 : vec4<f32> = x_1564.x_AdditionalLightsCookieAtlasUVRects[x_3462];
          let x_3466 : vec4<f32> = u_xlat8;
          let x_3469 : i32 = u_xlati48;
          let x_3471 : vec4<f32> = x_1564.x_AdditionalLightsCookieAtlasUVRects[x_3469];
          let x_3473 : vec2<f32> = ((vec2<f32>(x_3464.x, x_3464.y) * vec2<f32>(x_3466.x, x_3466.y)) + vec2<f32>(x_3471.z, x_3471.w));
          let x_3474 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3473.x, x_3474.y, x_3473.y, x_3474.w);
        } else {
          let x_3477 : vec3<f32> = vs_TEXCOORD1;
          let x_3479 : i32 = u_xlati29;
          let x_3482 : i32 = u_xlati29;
          let x_3486 : vec4<f32> = x_1564.x_AdditionalLightsWorldToLights[((x_3479 + 1i) / 4i)][((x_3482 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_3477.y, x_3477.y, x_3477.y, x_3477.y) * x_3486);
          let x_3488 : i32 = u_xlati29;
          let x_3490 : i32 = u_xlati29;
          let x_3493 : vec4<f32> = x_1564.x_AdditionalLightsWorldToLights[(x_3488 / 4i)][(x_3490 % 4i)];
          let x_3494 : vec3<f32> = vs_TEXCOORD1;
          let x_3497 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_3493 * vec4<f32>(x_3494.x, x_3494.x, x_3494.x, x_3494.x)) + x_3497);
          let x_3499 : i32 = u_xlati29;
          let x_3502 : i32 = u_xlati29;
          let x_3506 : vec4<f32> = x_1564.x_AdditionalLightsWorldToLights[((x_3499 + 2i) / 4i)][((x_3502 + 2i) % 4i)];
          let x_3507 : vec3<f32> = vs_TEXCOORD1;
          let x_3510 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_3506 * vec4<f32>(x_3507.z, x_3507.z, x_3507.z, x_3507.z)) + x_3510);
          let x_3512 : vec4<f32> = u_xlat8;
          let x_3513 : i32 = u_xlati29;
          let x_3516 : i32 = u_xlati29;
          let x_3520 : vec4<f32> = x_1564.x_AdditionalLightsWorldToLights[((x_3513 + 3i) / 4i)][((x_3516 + 3i) % 4i)];
          u_xlat8 = (x_3512 + x_3520);
          let x_3522 : vec4<f32> = u_xlat8;
          let x_3524 : vec4<f32> = u_xlat8;
          let x_3526 : vec3<f32> = (vec3<f32>(x_3522.x, x_3522.y, x_3522.z) / vec3<f32>(x_3524.w, x_3524.w, x_3524.w));
          let x_3527 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3526.x, x_3526.y, x_3526.z, x_3527.w);
          let x_3529 : vec4<f32> = u_xlat8;
          let x_3531 : vec4<f32> = u_xlat8;
          u_xlat72 = dot(vec3<f32>(x_3529.x, x_3529.y, x_3529.z), vec3<f32>(x_3531.x, x_3531.y, x_3531.z));
          let x_3534 : f32 = u_xlat72;
          u_xlat72 = inverseSqrt(x_3534);
          let x_3536 : f32 = u_xlat72;
          let x_3538 : vec4<f32> = u_xlat8;
          let x_3540 : vec3<f32> = (vec3<f32>(x_3536, x_3536, x_3536) * vec3<f32>(x_3538.x, x_3538.y, x_3538.z));
          let x_3541 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3540.x, x_3540.y, x_3540.z, x_3541.w);
          let x_3543 : vec4<f32> = u_xlat8;
          u_xlat72 = dot(abs(vec3<f32>(x_3543.x, x_3543.y, x_3543.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3548 : f32 = u_xlat72;
          u_xlat72 = max(x_3548, 0.00000099999999747524f);
          let x_3551 : f32 = u_xlat72;
          u_xlat72 = (1.0f / x_3551);
          let x_3553 : f32 = u_xlat72;
          let x_3555 : vec4<f32> = u_xlat8;
          let x_3557 : vec3<f32> = (vec3<f32>(x_3553, x_3553, x_3553) * vec3<f32>(x_3555.z, x_3555.x, x_3555.y));
          let x_3558 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3557.x, x_3557.y, x_3557.z, x_3558.w);
          let x_3561 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_3561);
          let x_3565 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_3565, 0.0f, 1.0f);
          let x_3570 : vec4<f32> = u_xlat9;
          let x_3572 : vec4<bool> = (vec4<f32>(x_3570.y, x_3570.y, x_3570.z, x_3570.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3573 : vec2<bool> = vec2<bool>(x_3572.x, x_3572.z);
          let x_3574 : vec3<bool> = u_xlatb29;
          u_xlatb29 = vec3<bool>(x_3573.x, x_3574.y, x_3573.y);
          let x_3577 : bool = u_xlatb29.x;
          if (x_3577) {
            let x_3582 : f32 = u_xlat9.x;
            x_3578 = x_3582;
          } else {
            let x_3585 : f32 = u_xlat9.x;
            x_3578 = -(x_3585);
          }
          let x_3587 : f32 = x_3578;
          u_xlat29.x = x_3587;
          let x_3590 : bool = u_xlatb29.z;
          if (x_3590) {
            let x_3595 : f32 = u_xlat9.x;
            x_3591 = x_3595;
          } else {
            let x_3598 : f32 = u_xlat9.x;
            x_3591 = -(x_3598);
          }
          let x_3600 : f32 = x_3591;
          u_xlat29.z = x_3600;
          let x_3602 : vec4<f32> = u_xlat8;
          let x_3604 : f32 = u_xlat72;
          let x_3607 : vec3<f32> = u_xlat29;
          let x_3609 : vec2<f32> = ((vec2<f32>(x_3602.x, x_3602.y) * vec2<f32>(x_3604, x_3604)) + vec2<f32>(x_3607.x, x_3607.z));
          let x_3610 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3609.x, x_3610.y, x_3609.y);
          let x_3612 : vec3<f32> = u_xlat29;
          let x_3615 : vec2<f32> = ((vec2<f32>(x_3612.x, x_3612.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3616 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3615.x, x_3616.y, x_3615.y);
          let x_3618 : vec3<f32> = u_xlat29;
          let x_3622 : vec2<f32> = clamp(vec2<f32>(x_3618.x, x_3618.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3623 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3622.x, x_3623.y, x_3622.y);
          let x_3625 : i32 = u_xlati48;
          let x_3627 : vec4<f32> = x_1564.x_AdditionalLightsCookieAtlasUVRects[x_3625];
          let x_3629 : vec3<f32> = u_xlat29;
          let x_3632 : i32 = u_xlati48;
          let x_3634 : vec4<f32> = x_1564.x_AdditionalLightsCookieAtlasUVRects[x_3632];
          let x_3636 : vec2<f32> = ((vec2<f32>(x_3627.x, x_3627.y) * vec2<f32>(x_3629.x, x_3629.z)) + vec2<f32>(x_3634.z, x_3634.w));
          let x_3637 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3636.x, x_3637.y, x_3636.y, x_3637.w);
        }
      }
      let x_3644 : vec4<f32> = u_xlat7;
      let x_3646 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3644.x, x_3644.z), 0.0f);
      u_xlat7 = x_3646;
      let x_3648 : bool = u_xlatb4.y;
      if (x_3648) {
        let x_3653 : f32 = u_xlat7.w;
        x_3649 = x_3653;
      } else {
        let x_3656 : f32 = u_xlat7.x;
        x_3649 = x_3656;
      }
      let x_3657 : f32 = x_3649;
      u_xlat72 = x_3657;
      let x_3659 : bool = u_xlatb4.x;
      if (x_3659) {
        let x_3663 : vec4<f32> = u_xlat7;
        x_3660 = vec3<f32>(x_3663.x, x_3663.y, x_3663.z);
      } else {
        let x_3666 : f32 = u_xlat72;
        x_3660 = vec3<f32>(x_3666, x_3666, x_3666);
      }
      let x_3668 : vec3<f32> = x_3660;
      let x_3669 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_3668.x, x_3668.y, x_3668.z, x_3669.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_3675 : vec4<f32> = u_xlat7;
    let x_3677 : i32 = u_xlati48;
    let x_3679 : vec4<f32> = x_1810.x_AdditionalLightsColor[x_3677];
    let x_3681 : vec3<f32> = (vec3<f32>(x_3675.x, x_3675.y, x_3675.z) * vec3<f32>(x_3679.x, x_3679.y, x_3679.z));
    let x_3682 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3681.x, x_3681.y, x_3681.z, x_3682.w);
    let x_3684 : f32 = u_xlat70;
    let x_3685 : f32 = u_xlat71;
    u_xlat48 = (x_3684 * x_3685);
    let x_3687 : f32 = u_xlat48;
    let x_3689 : vec4<f32> = u_xlat7;
    let x_3691 : vec3<f32> = (vec3<f32>(x_3687, x_3687, x_3687) * vec3<f32>(x_3689.x, x_3689.y, x_3689.z));
    let x_3692 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3691.x, x_3691.y, x_3691.z, x_3692.w);
    let x_3694 : vec4<f32> = u_xlat1;
    let x_3696 : vec4<f32> = u_xlat6;
    u_xlat48 = dot(vec3<f32>(x_3694.x, x_3694.y, x_3694.z), vec3<f32>(x_3696.x, x_3696.y, x_3696.z));
    let x_3699 : f32 = u_xlat48;
    u_xlat48 = clamp(x_3699, 0.0f, 1.0f);
    let x_3701 : f32 = u_xlat48;
    let x_3703 : vec4<f32> = u_xlat7;
    let x_3705 : vec3<f32> = (vec3<f32>(x_3701, x_3701, x_3701) * vec3<f32>(x_3703.x, x_3703.y, x_3703.z));
    let x_3706 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3705.x, x_3705.y, x_3705.z, x_3706.w);
    let x_3708 : vec4<f32> = u_xlat6;
    let x_3710 : vec4<f32> = u_xlat0;
    let x_3713 : vec4<f32> = u_xlat5;
    let x_3715 : vec3<f32> = ((vec3<f32>(x_3708.x, x_3708.y, x_3708.z) * vec3<f32>(x_3710.y, x_3710.z, x_3710.w)) + vec3<f32>(x_3713.x, x_3713.y, x_3713.z));
    let x_3716 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3715.x, x_3715.y, x_3715.z, x_3716.w);

    continuing {
      let x_3718 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3718 + bitcast<u32>(1i));
    }
  }
  let x_3721 : vec3<f32> = u_xlat2;
  let x_3722 : vec4<f32> = u_xlat0;
  let x_3725 : vec4<f32> = u_xlat3;
  u_xlat22 = ((x_3721 * vec3<f32>(x_3722.y, x_3722.z, x_3722.w)) + vec3<f32>(x_3725.x, x_3725.y, x_3725.z));
  let x_3730 : vec4<f32> = u_xlat5;
  let x_3732 : vec3<f32> = u_xlat22;
  let x_3733 : vec3<f32> = (vec3<f32>(x_3730.x, x_3730.y, x_3730.z) + x_3732);
  let x_3734 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3733.x, x_3733.y, x_3733.z, x_3734.w);
  let x_3738 : f32 = x_56.x_Surface;
  u_xlatb22 = (x_3738 == 1.0f);
  let x_3740 : bool = u_xlatb22;
  if (x_3740) {
    let x_3745 : f32 = u_xlat0.x;
    x_3741 = x_3745;
  } else {
    x_3741 = 1.0f;
  }
  let x_3747 : f32 = x_3741;
  SV_Target0.w = x_3747;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


