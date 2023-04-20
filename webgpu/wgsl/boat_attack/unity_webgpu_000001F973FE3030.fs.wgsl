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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_PointRepeat : sampler;

var<private> u_xlatb23 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat67 : f32;

var<private> u_xlatb67 : bool;

@group(1) @binding(4) var<uniform> x_213 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_1539 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlat69 : f32;

var<private> u_xlatu67 : u32;

var<private> u_xlatu48 : u32;

var<private> u_xlati70 : i32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1784 : AdditionalLights;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlati71 : i32;

var<private> u_xlatb72 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat73 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlatb71 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb22 : bool;

var<private> u_xlatb48 : bool;

var<private> u_xlatu69 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
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
  var x_1626 : f32;
  var x_1637 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1925 : f32;
  var x_1936 : f32;
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
  var x_3552 : f32;
  var x_3565 : f32;
  var x_3623 : f32;
  var x_3634 : vec3<f32>;
  var x_3715 : f32;
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
  let x_65 : vec4<f32> = hlslcc_FragCoord;
  let x_69 : f32 = x_44.x_DitheringTextureInvSize;
  let x_71 : vec2<f32> = (vec2<f32>(x_65.x, x_65.y) * vec2<f32>(x_69, x_69));
  let x_72 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_71.x, x_71.y, x_72.z);
  let x_79 : vec3<f32> = u_xlat1;
  let x_82 : f32 = x_44.x_GlobalMipBias.x;
  let x_83 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_79.x, x_79.y), x_82);
  u_xlat1.x = x_83.w;
  let x_98 : f32 = x_95.unity_LODFade.x;
  u_xlatb23 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb23;
  if (x_101) {
    let x_107 : f32 = u_xlat1.x;
    x_103 = abs(x_107);
  } else {
    let x_111 : f32 = u_xlat1.x;
    x_103 = -(abs(x_111));
  }
  let x_114 : f32 = x_103;
  u_xlat1.x = x_114;
  let x_117 : f32 = u_xlat1.x;
  let x_120 : f32 = x_95.unity_LODFade.x;
  u_xlat1.x = (-(x_117) + x_120);
  let x_125 : f32 = u_xlat1.x;
  u_xlatb1 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb1;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_137, x_138);
  let x_142 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_142);
  let x_145 : vec3<f32> = u_xlat1;
  let x_147 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_145.x, x_145.x, x_145.x) * x_147);
  let x_156 : vec2<f32> = vs_TEXCOORD7;
  let x_158 : f32 = x_44.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_156, x_158);
  u_xlat2 = x_159;
  let x_165 : vec2<f32> = vs_TEXCOORD7;
  let x_167 : f32 = x_44.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_165, x_167);
  let x_169 : vec3<f32> = vec3<f32>(x_168.x, x_168.y, x_168.z);
  let x_170 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_172 : vec4<f32> = u_xlat2;
  let x_176 : vec3<f32> = (vec3<f32>(x_172.x, x_172.y, x_172.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec3<f32> = u_xlat1;
  let x_181 : vec4<f32> = u_xlat2;
  u_xlat67 = dot(x_180, vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : f32 = u_xlat67;
  u_xlat67 = (x_184 + 0.5f);
  let x_187 : f32 = u_xlat67;
  let x_189 : vec4<f32> = u_xlat3;
  let x_191 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : f32 = u_xlat2.w;
  u_xlat67 = max(x_195, 0.00009999999747378752f);
  let x_198 : vec4<f32> = u_xlat2;
  let x_200 : f32 = u_xlat67;
  let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.y, x_198.z) / vec3<f32>(x_200, x_200, x_200));
  let x_203 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_217 : f32 = x_213.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_217);
  let x_219 : bool = u_xlatb67;
  if (x_219) {
    let x_223 : f32 = x_213.x_MainLightShadowParams.y;
    u_xlatb67 = (x_223 == 1.0f);
    let x_225 : bool = u_xlatb67;
    if (x_225) {
      let x_229 : vec4<f32> = vs_TEXCOORD6;
      let x_233 : vec4<f32> = x_213.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_229.x, x_229.y, x_229.x, x_229.y) + x_233);
      let x_237 : vec4<f32> = u_xlat3;
      let x_238 : vec2<f32> = vec2<f32>(x_237.x, x_237.y);
      let x_240 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_238.x, x_238.y, x_240);
      let x_253 : vec3<f32> = txVec0;
      let x_255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_253.xy, x_253.z);
      u_xlat4.x = x_255;
      let x_258 : vec4<f32> = u_xlat3;
      let x_259 : vec2<f32> = vec2<f32>(x_258.z, x_258.w);
      let x_261 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_259.x, x_259.y, x_261);
      let x_268 : vec3<f32> = txVec1;
      let x_270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_268.xy, x_268.z);
      u_xlat4.y = x_270;
      let x_272 : vec4<f32> = vs_TEXCOORD6;
      let x_276 : vec4<f32> = x_213.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_272.x, x_272.y, x_272.x, x_272.y) + x_276);
      let x_279 : vec4<f32> = u_xlat3;
      let x_280 : vec2<f32> = vec2<f32>(x_279.x, x_279.y);
      let x_282 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_280.x, x_280.y, x_282);
      let x_289 : vec3<f32> = txVec2;
      let x_291 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_289.xy, x_289.z);
      u_xlat4.z = x_291;
      let x_294 : vec4<f32> = u_xlat3;
      let x_295 : vec2<f32> = vec2<f32>(x_294.z, x_294.w);
      let x_297 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_295.x, x_295.y, x_297);
      let x_304 : vec3<f32> = txVec3;
      let x_306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_304.xy, x_304.z);
      u_xlat4.w = x_306;
      let x_308 : vec4<f32> = u_xlat4;
      u_xlat67 = dot(x_308, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_315 : f32 = x_213.x_MainLightShadowParams.y;
      u_xlatb68 = (x_315 == 2.0f);
      let x_318 : bool = u_xlatb68;
      if (x_318) {
        let x_321 : vec4<f32> = vs_TEXCOORD6;
        let x_325 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_329 : vec2<f32> = ((vec2<f32>(x_321.x, x_321.y) * vec2<f32>(x_325.z, x_325.w)) + vec2<f32>(0.5f, 0.5f));
        let x_330 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_329.x, x_329.y, x_330.z, x_330.w);
        let x_332 : vec4<f32> = u_xlat3;
        let x_334 : vec2<f32> = floor(vec2<f32>(x_332.x, x_332.y));
        let x_335 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_334.x, x_334.y, x_335.z, x_335.w);
        let x_339 : vec4<f32> = vs_TEXCOORD6;
        let x_342 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_345 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_339.x, x_339.y) * vec2<f32>(x_342.z, x_342.w)) + -(vec2<f32>(x_345.x, x_345.y)));
        let x_349 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_349.x, x_349.x, x_349.y, x_349.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_354 : vec4<f32> = u_xlat4;
        let x_356 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_354.x, x_354.x, x_354.z, x_354.z) * vec4<f32>(x_356.x, x_356.x, x_356.z, x_356.z));
        let x_359 : vec4<f32> = u_xlat5;
        let x_363 : vec2<f32> = (vec2<f32>(x_359.y, x_359.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_364 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_363.x, x_364.y, x_363.y, x_364.w);
        let x_366 : vec4<f32> = u_xlat5;
        let x_369 : vec2<f32> = u_xlat47;
        let x_371 : vec2<f32> = ((vec2<f32>(x_366.x, x_366.z) * vec2<f32>(0.5f, 0.5f)) + -(x_369));
        let x_372 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_372.w);
        let x_375 : vec2<f32> = u_xlat47;
        u_xlat49 = (-(x_375) + vec2<f32>(1.0f, 1.0f));
        let x_380 : vec2<f32> = u_xlat47;
        let x_382 : vec2<f32> = min(x_380, vec2<f32>(0.0f, 0.0f));
        let x_383 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
        let x_385 : vec4<f32> = u_xlat6;
        let x_388 : vec4<f32> = u_xlat6;
        let x_391 : vec2<f32> = u_xlat49;
        let x_392 : vec2<f32> = ((-(vec2<f32>(x_385.x, x_385.y)) * vec2<f32>(x_388.x, x_388.y)) + x_391);
        let x_393 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
        let x_395 : vec2<f32> = u_xlat47;
        u_xlat47 = max(x_395, vec2<f32>(0.0f, 0.0f));
        let x_397 : vec2<f32> = u_xlat47;
        let x_399 : vec2<f32> = u_xlat47;
        let x_401 : vec4<f32> = u_xlat4;
        u_xlat47 = ((-(x_397) * x_399) + vec2<f32>(x_401.y, x_401.w));
        let x_404 : vec4<f32> = u_xlat6;
        let x_406 : vec2<f32> = (vec2<f32>(x_404.x, x_404.y) + vec2<f32>(1.0f, 1.0f));
        let x_407 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
        let x_409 : vec2<f32> = u_xlat47;
        u_xlat47 = (x_409 + vec2<f32>(1.0f, 1.0f));
        let x_412 : vec4<f32> = u_xlat5;
        let x_416 : vec2<f32> = (vec2<f32>(x_412.x, x_412.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_417 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
        let x_419 : vec2<f32> = u_xlat49;
        let x_420 : vec2<f32> = (x_419 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_421 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_420.x, x_420.y, x_421.z, x_421.w);
        let x_423 : vec4<f32> = u_xlat6;
        let x_425 : vec2<f32> = (vec2<f32>(x_423.x, x_423.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_426 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
        let x_429 : vec2<f32> = u_xlat47;
        let x_430 : vec2<f32> = (x_429 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_431 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
        let x_433 : vec4<f32> = u_xlat4;
        u_xlat47 = (vec2<f32>(x_433.y, x_433.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_437 : f32 = u_xlat6.x;
        u_xlat7.z = x_437;
        let x_440 : f32 = u_xlat47.x;
        u_xlat7.w = x_440;
        let x_443 : f32 = u_xlat8.x;
        u_xlat5.z = x_443;
        let x_446 : f32 = u_xlat4.x;
        u_xlat5.w = x_446;
        let x_449 : vec4<f32> = u_xlat5;
        let x_451 : vec4<f32> = u_xlat7;
        u_xlat9 = (vec4<f32>(x_449.z, x_449.w, x_449.x, x_449.z) + vec4<f32>(x_451.z, x_451.w, x_451.x, x_451.z));
        let x_455 : f32 = u_xlat7.y;
        u_xlat6.z = x_455;
        let x_458 : f32 = u_xlat47.y;
        u_xlat6.w = x_458;
        let x_461 : f32 = u_xlat5.y;
        u_xlat8.z = x_461;
        let x_464 : f32 = u_xlat4.z;
        u_xlat8.w = x_464;
        let x_466 : vec4<f32> = u_xlat6;
        let x_468 : vec4<f32> = u_xlat8;
        let x_470 : vec3<f32> = (vec3<f32>(x_466.z, x_466.y, x_466.w) + vec3<f32>(x_468.z, x_468.y, x_468.w));
        let x_471 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
        let x_473 : vec4<f32> = u_xlat5;
        let x_475 : vec4<f32> = u_xlat9;
        let x_477 : vec3<f32> = (vec3<f32>(x_473.x, x_473.z, x_473.w) / vec3<f32>(x_475.z, x_475.w, x_475.y));
        let x_478 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
        let x_480 : vec4<f32> = u_xlat5;
        let x_485 : vec3<f32> = (vec3<f32>(x_480.x, x_480.y, x_480.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_486 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
        let x_488 : vec4<f32> = u_xlat8;
        let x_490 : vec4<f32> = u_xlat4;
        let x_492 : vec3<f32> = (vec3<f32>(x_488.z, x_488.y, x_488.w) / vec3<f32>(x_490.x, x_490.y, x_490.z));
        let x_493 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
        let x_495 : vec4<f32> = u_xlat6;
        let x_497 : vec3<f32> = (vec3<f32>(x_495.x, x_495.y, x_495.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_498 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
        let x_500 : vec4<f32> = u_xlat5;
        let x_503 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_505 : vec3<f32> = (vec3<f32>(x_500.y, x_500.x, x_500.z) * vec3<f32>(x_503.x, x_503.x, x_503.x));
        let x_506 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
        let x_508 : vec4<f32> = u_xlat6;
        let x_511 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_513 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) * vec3<f32>(x_511.y, x_511.y, x_511.y));
        let x_514 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
        let x_517 : f32 = u_xlat6.x;
        u_xlat5.w = x_517;
        let x_519 : vec4<f32> = u_xlat3;
        let x_522 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_525 : vec4<f32> = u_xlat5;
        u_xlat7 = ((vec4<f32>(x_519.x, x_519.y, x_519.x, x_519.y) * vec4<f32>(x_522.x, x_522.y, x_522.x, x_522.y)) + vec4<f32>(x_525.y, x_525.w, x_525.x, x_525.w));
        let x_528 : vec4<f32> = u_xlat3;
        let x_531 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_534 : vec4<f32> = u_xlat5;
        u_xlat47 = ((vec2<f32>(x_528.x, x_528.y) * vec2<f32>(x_531.x, x_531.y)) + vec2<f32>(x_534.z, x_534.w));
        let x_538 : f32 = u_xlat5.y;
        u_xlat6.w = x_538;
        let x_540 : vec4<f32> = u_xlat6;
        let x_541 : vec2<f32> = vec2<f32>(x_540.y, x_540.z);
        let x_542 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_542.x, x_541.x, x_542.z, x_541.y);
        let x_544 : vec4<f32> = u_xlat3;
        let x_547 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_550 : vec4<f32> = u_xlat5;
        u_xlat8 = ((vec4<f32>(x_544.x, x_544.y, x_544.x, x_544.y) * vec4<f32>(x_547.x, x_547.y, x_547.x, x_547.y)) + vec4<f32>(x_550.x, x_550.y, x_550.z, x_550.y));
        let x_553 : vec4<f32> = u_xlat3;
        let x_556 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_559 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_553.x, x_553.y, x_553.x, x_553.y) * vec4<f32>(x_556.x, x_556.y, x_556.x, x_556.y)) + vec4<f32>(x_559.w, x_559.y, x_559.w, x_559.z));
        let x_562 : vec4<f32> = u_xlat3;
        let x_565 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_568 : vec4<f32> = u_xlat5;
        u_xlat5 = ((vec4<f32>(x_562.x, x_562.y, x_562.x, x_562.y) * vec4<f32>(x_565.x, x_565.y, x_565.x, x_565.y)) + vec4<f32>(x_568.x, x_568.w, x_568.z, x_568.w));
        let x_572 : vec4<f32> = u_xlat4;
        let x_574 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_572.x, x_572.x, x_572.x, x_572.y) * vec4<f32>(x_574.z, x_574.w, x_574.y, x_574.z));
        let x_578 : vec4<f32> = u_xlat4;
        let x_580 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_578.y, x_578.y, x_578.z, x_578.z) * x_580);
        let x_584 : f32 = u_xlat4.z;
        let x_586 : f32 = u_xlat9.y;
        u_xlat68 = (x_584 * x_586);
        let x_589 : vec4<f32> = u_xlat7;
        let x_590 : vec2<f32> = vec2<f32>(x_589.x, x_589.y);
        let x_592 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_590.x, x_590.y, x_592);
        let x_599 : vec3<f32> = txVec4;
        let x_601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_599.xy, x_599.z);
        u_xlat3.x = x_601;
        let x_604 : vec4<f32> = u_xlat7;
        let x_605 : vec2<f32> = vec2<f32>(x_604.z, x_604.w);
        let x_607 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_605.x, x_605.y, x_607);
        let x_615 : vec3<f32> = txVec5;
        let x_617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_615.xy, x_615.z);
        u_xlat25 = x_617;
        let x_618 : f32 = u_xlat25;
        let x_620 : f32 = u_xlat10.y;
        u_xlat25 = (x_618 * x_620);
        let x_623 : f32 = u_xlat10.x;
        let x_625 : f32 = u_xlat3.x;
        let x_627 : f32 = u_xlat25;
        u_xlat3.x = ((x_623 * x_625) + x_627);
        let x_631 : vec2<f32> = u_xlat47;
        let x_633 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_631.x, x_631.y, x_633);
        let x_640 : vec3<f32> = txVec6;
        let x_642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_640.xy, x_640.z);
        u_xlat25 = x_642;
        let x_644 : f32 = u_xlat10.z;
        let x_645 : f32 = u_xlat25;
        let x_648 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_644 * x_645) + x_648);
        let x_652 : vec4<f32> = u_xlat6;
        let x_653 : vec2<f32> = vec2<f32>(x_652.x, x_652.y);
        let x_655 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_653.x, x_653.y, x_655);
        let x_662 : vec3<f32> = txVec7;
        let x_664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_662.xy, x_662.z);
        u_xlat25 = x_664;
        let x_666 : f32 = u_xlat10.w;
        let x_667 : f32 = u_xlat25;
        let x_670 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_666 * x_667) + x_670);
        let x_674 : vec4<f32> = u_xlat8;
        let x_675 : vec2<f32> = vec2<f32>(x_674.x, x_674.y);
        let x_677 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_675.x, x_675.y, x_677);
        let x_684 : vec3<f32> = txVec8;
        let x_686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_684.xy, x_684.z);
        u_xlat25 = x_686;
        let x_688 : f32 = u_xlat11.x;
        let x_689 : f32 = u_xlat25;
        let x_692 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_688 * x_689) + x_692);
        let x_696 : vec4<f32> = u_xlat8;
        let x_697 : vec2<f32> = vec2<f32>(x_696.z, x_696.w);
        let x_699 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_697.x, x_697.y, x_699);
        let x_706 : vec3<f32> = txVec9;
        let x_708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_706.xy, x_706.z);
        u_xlat25 = x_708;
        let x_710 : f32 = u_xlat11.y;
        let x_711 : f32 = u_xlat25;
        let x_714 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_710 * x_711) + x_714);
        let x_718 : vec4<f32> = u_xlat6;
        let x_719 : vec2<f32> = vec2<f32>(x_718.z, x_718.w);
        let x_721 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_719.x, x_719.y, x_721);
        let x_728 : vec3<f32> = txVec10;
        let x_730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_728.xy, x_728.z);
        u_xlat25 = x_730;
        let x_732 : f32 = u_xlat11.z;
        let x_733 : f32 = u_xlat25;
        let x_736 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_732 * x_733) + x_736);
        let x_740 : vec4<f32> = u_xlat5;
        let x_741 : vec2<f32> = vec2<f32>(x_740.x, x_740.y);
        let x_743 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_741.x, x_741.y, x_743);
        let x_750 : vec3<f32> = txVec11;
        let x_752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_750.xy, x_750.z);
        u_xlat25 = x_752;
        let x_754 : f32 = u_xlat11.w;
        let x_755 : f32 = u_xlat25;
        let x_758 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_754 * x_755) + x_758);
        let x_762 : vec4<f32> = u_xlat5;
        let x_763 : vec2<f32> = vec2<f32>(x_762.z, x_762.w);
        let x_765 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_763.x, x_763.y, x_765);
        let x_772 : vec3<f32> = txVec12;
        let x_774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_772.xy, x_772.z);
        u_xlat25 = x_774;
        let x_775 : f32 = u_xlat68;
        let x_776 : f32 = u_xlat25;
        let x_779 : f32 = u_xlat3.x;
        u_xlat67 = ((x_775 * x_776) + x_779);
      } else {
        let x_782 : vec4<f32> = vs_TEXCOORD6;
        let x_785 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_788 : vec2<f32> = ((vec2<f32>(x_782.x, x_782.y) * vec2<f32>(x_785.z, x_785.w)) + vec2<f32>(0.5f, 0.5f));
        let x_789 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_788.x, x_788.y, x_789.z, x_789.w);
        let x_791 : vec4<f32> = u_xlat3;
        let x_793 : vec2<f32> = floor(vec2<f32>(x_791.x, x_791.y));
        let x_794 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_793.x, x_793.y, x_794.z, x_794.w);
        let x_796 : vec4<f32> = vs_TEXCOORD6;
        let x_799 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_802 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_796.x, x_796.y) * vec2<f32>(x_799.z, x_799.w)) + -(vec2<f32>(x_802.x, x_802.y)));
        let x_806 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_806.x, x_806.x, x_806.y, x_806.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_809 : vec4<f32> = u_xlat4;
        let x_811 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_809.x, x_809.x, x_809.z, x_809.z) * vec4<f32>(x_811.x, x_811.x, x_811.z, x_811.z));
        let x_814 : vec4<f32> = u_xlat5;
        let x_818 : vec2<f32> = (vec2<f32>(x_814.y, x_814.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_819 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_819.x, x_818.x, x_819.z, x_818.y);
        let x_821 : vec4<f32> = u_xlat5;
        let x_824 : vec2<f32> = u_xlat47;
        let x_826 : vec2<f32> = ((vec2<f32>(x_821.x, x_821.z) * vec2<f32>(0.5f, 0.5f)) + -(x_824));
        let x_827 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_826.x, x_827.y, x_826.y, x_827.w);
        let x_829 : vec2<f32> = u_xlat47;
        let x_831 : vec2<f32> = (-(x_829) + vec2<f32>(1.0f, 1.0f));
        let x_832 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_831.x, x_831.y, x_832.z, x_832.w);
        let x_834 : vec2<f32> = u_xlat47;
        u_xlat49 = min(x_834, vec2<f32>(0.0f, 0.0f));
        let x_836 : vec2<f32> = u_xlat49;
        let x_838 : vec2<f32> = u_xlat49;
        let x_840 : vec4<f32> = u_xlat5;
        let x_842 : vec2<f32> = ((-(x_836) * x_838) + vec2<f32>(x_840.x, x_840.y));
        let x_843 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_842.x, x_842.y, x_843.z, x_843.w);
        let x_845 : vec2<f32> = u_xlat47;
        u_xlat49 = max(x_845, vec2<f32>(0.0f, 0.0f));
        let x_848 : vec2<f32> = u_xlat49;
        let x_850 : vec2<f32> = u_xlat49;
        let x_852 : vec4<f32> = u_xlat4;
        let x_854 : vec2<f32> = ((-(x_848) * x_850) + vec2<f32>(x_852.y, x_852.w));
        let x_855 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_854.x, x_855.y, x_854.y);
        let x_857 : vec4<f32> = u_xlat5;
        let x_860 : vec2<f32> = (vec2<f32>(x_857.x, x_857.y) + vec2<f32>(2.0f, 2.0f));
        let x_861 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_860.x, x_860.y, x_861.z, x_861.w);
        let x_863 : vec3<f32> = u_xlat26;
        let x_865 : vec2<f32> = (vec2<f32>(x_863.x, x_863.z) + vec2<f32>(2.0f, 2.0f));
        let x_866 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_866.x, x_865.x, x_866.z, x_865.y);
        let x_869 : f32 = u_xlat4.y;
        u_xlat7.z = (x_869 * 0.08163200318813323975f);
        let x_873 : vec4<f32> = u_xlat4;
        let x_876 : vec3<f32> = (vec3<f32>(x_873.z, x_873.x, x_873.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_877 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
        let x_879 : vec4<f32> = u_xlat5;
        let x_882 : vec2<f32> = (vec2<f32>(x_879.x, x_879.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_883 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_882.x, x_882.y, x_883.z, x_883.w);
        let x_886 : f32 = u_xlat8.y;
        u_xlat7.x = x_886;
        let x_888 : vec2<f32> = u_xlat47;
        let x_895 : vec2<f32> = ((vec2<f32>(x_888.x, x_888.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_896 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_896.x, x_895.x, x_896.z, x_895.y);
        let x_898 : vec2<f32> = u_xlat47;
        let x_902 : vec2<f32> = ((vec2<f32>(x_898.x, x_898.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_903 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_902.x, x_903.y, x_902.y, x_903.w);
        let x_906 : f32 = u_xlat4.x;
        u_xlat5.y = x_906;
        let x_909 : f32 = u_xlat6.y;
        u_xlat5.w = x_909;
        let x_911 : vec4<f32> = u_xlat5;
        let x_912 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_911 + x_912);
        let x_914 : vec2<f32> = u_xlat47;
        let x_917 : vec2<f32> = ((vec2<f32>(x_914.y, x_914.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_918 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_918.x, x_917.x, x_918.z, x_917.y);
        let x_920 : vec2<f32> = u_xlat47;
        let x_923 : vec2<f32> = ((vec2<f32>(x_920.y, x_920.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_924 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_923.x, x_924.y, x_923.y, x_924.w);
        let x_927 : f32 = u_xlat4.y;
        u_xlat6.y = x_927;
        let x_929 : vec4<f32> = u_xlat6;
        let x_930 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_929 + x_930);
        let x_932 : vec4<f32> = u_xlat5;
        let x_933 : vec4<f32> = u_xlat7;
        u_xlat5 = (x_932 / x_933);
        let x_935 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_935 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_941 : vec4<f32> = u_xlat6;
        let x_942 : vec4<f32> = u_xlat4;
        u_xlat6 = (x_941 / x_942);
        let x_944 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_944 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_946 : vec4<f32> = u_xlat5;
        let x_949 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_946.w, x_946.x, x_946.y, x_946.z) * vec4<f32>(x_949.x, x_949.x, x_949.x, x_949.x));
        let x_952 : vec4<f32> = u_xlat6;
        let x_955 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_952.x, x_952.w, x_952.y, x_952.z) * vec4<f32>(x_955.y, x_955.y, x_955.y, x_955.y));
        let x_958 : vec4<f32> = u_xlat5;
        let x_959 : vec3<f32> = vec3<f32>(x_958.y, x_958.z, x_958.w);
        let x_960 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_959.x, x_960.y, x_959.y, x_959.z);
        let x_963 : f32 = u_xlat6.x;
        u_xlat8.y = x_963;
        let x_965 : vec4<f32> = u_xlat3;
        let x_968 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_971 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_965.x, x_965.y, x_965.x, x_965.y) * vec4<f32>(x_968.x, x_968.y, x_968.x, x_968.y)) + vec4<f32>(x_971.x, x_971.y, x_971.z, x_971.y));
        let x_974 : vec4<f32> = u_xlat3;
        let x_977 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_980 : vec4<f32> = u_xlat8;
        u_xlat47 = ((vec2<f32>(x_974.x, x_974.y) * vec2<f32>(x_977.x, x_977.y)) + vec2<f32>(x_980.w, x_980.y));
        let x_984 : f32 = u_xlat8.y;
        u_xlat5.y = x_984;
        let x_987 : f32 = u_xlat6.z;
        u_xlat8.y = x_987;
        let x_989 : vec4<f32> = u_xlat3;
        let x_992 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_995 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_989.x, x_989.y, x_989.x, x_989.y) * vec4<f32>(x_992.x, x_992.y, x_992.x, x_992.y)) + vec4<f32>(x_995.x, x_995.y, x_995.z, x_995.y));
        let x_998 : vec4<f32> = u_xlat3;
        let x_1001 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_1004 : vec4<f32> = u_xlat8;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_998.x, x_998.y) * vec2<f32>(x_1001.x, x_1001.y)) + vec2<f32>(x_1004.w, x_1004.y));
        let x_1007 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1010 : f32 = u_xlat8.y;
        u_xlat5.z = x_1010;
        let x_1013 : vec4<f32> = u_xlat3;
        let x_1016 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_1019 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y) * vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.y)) + vec4<f32>(x_1019.x, x_1019.y, x_1019.x, x_1019.z));
        let x_1023 : f32 = u_xlat6.w;
        u_xlat8.y = x_1023;
        let x_1026 : vec4<f32> = u_xlat3;
        let x_1029 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y) * vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y)) + vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1032.y));
        let x_1036 : vec4<f32> = u_xlat3;
        let x_1039 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat27 = ((vec2<f32>(x_1036.x, x_1036.y) * vec2<f32>(x_1039.x, x_1039.y)) + vec2<f32>(x_1042.w, x_1042.y));
        let x_1046 : f32 = u_xlat8.y;
        u_xlat5.w = x_1046;
        let x_1049 : vec4<f32> = u_xlat3;
        let x_1052 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_1055 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_1049.x, x_1049.y) * vec2<f32>(x_1052.x, x_1052.y)) + vec2<f32>(x_1055.x, x_1055.w));
        let x_1058 : vec4<f32> = u_xlat8;
        let x_1059 : vec3<f32> = vec3<f32>(x_1058.x, x_1058.z, x_1058.w);
        let x_1060 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1059.x, x_1060.y, x_1059.y, x_1059.z);
        let x_1062 : vec4<f32> = u_xlat3;
        let x_1065 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_1068 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_1062.x, x_1062.y, x_1062.x, x_1062.y) * vec4<f32>(x_1065.x, x_1065.y, x_1065.x, x_1065.y)) + vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1068.y));
        let x_1072 : vec4<f32> = u_xlat3;
        let x_1075 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(x_1075.x, x_1075.y)) + vec2<f32>(x_1078.w, x_1078.y));
        let x_1082 : f32 = u_xlat5.x;
        u_xlat6.x = x_1082;
        let x_1084 : vec4<f32> = u_xlat3;
        let x_1087 : vec4<f32> = x_213.x_MainLightShadowmapSize;
        let x_1090 : vec4<f32> = u_xlat6;
        let x_1092 : vec2<f32> = ((vec2<f32>(x_1084.x, x_1084.y) * vec2<f32>(x_1087.x, x_1087.y)) + vec2<f32>(x_1090.x, x_1090.y));
        let x_1093 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1092.x, x_1092.y, x_1093.z, x_1093.w);
        let x_1096 : vec4<f32> = u_xlat4;
        let x_1098 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1096.x, x_1096.x, x_1096.x, x_1096.x) * x_1098);
        let x_1101 : vec4<f32> = u_xlat4;
        let x_1103 : vec4<f32> = u_xlat7;
        u_xlat15 = (vec4<f32>(x_1101.y, x_1101.y, x_1101.y, x_1101.y) * x_1103);
        let x_1106 : vec4<f32> = u_xlat4;
        let x_1108 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1106.z, x_1106.z, x_1106.z, x_1106.z) * x_1108);
        let x_1110 : vec4<f32> = u_xlat4;
        let x_1112 : vec4<f32> = u_xlat7;
        u_xlat4 = (vec4<f32>(x_1110.w, x_1110.w, x_1110.w, x_1110.w) * x_1112);
        let x_1115 : vec4<f32> = u_xlat9;
        let x_1116 : vec2<f32> = vec2<f32>(x_1115.x, x_1115.y);
        let x_1118 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1116.x, x_1116.y, x_1118);
        let x_1125 : vec3<f32> = txVec13;
        let x_1127 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1125.xy, x_1125.z);
        u_xlat68 = x_1127;
        let x_1129 : vec4<f32> = u_xlat9;
        let x_1130 : vec2<f32> = vec2<f32>(x_1129.z, x_1129.w);
        let x_1132 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1130.x, x_1130.y, x_1132);
        let x_1139 : vec3<f32> = txVec14;
        let x_1141 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1139.xy, x_1139.z);
        u_xlat5.x = x_1141;
        let x_1144 : f32 = u_xlat5.x;
        let x_1146 : f32 = u_xlat14.y;
        u_xlat5.x = (x_1144 * x_1146);
        let x_1150 : f32 = u_xlat14.x;
        let x_1151 : f32 = u_xlat68;
        let x_1154 : f32 = u_xlat5.x;
        u_xlat68 = ((x_1150 * x_1151) + x_1154);
        let x_1157 : vec2<f32> = u_xlat47;
        let x_1159 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1157.x, x_1157.y, x_1159);
        let x_1166 : vec3<f32> = txVec15;
        let x_1168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1166.xy, x_1166.z);
        u_xlat47.x = x_1168;
        let x_1171 : f32 = u_xlat14.z;
        let x_1173 : f32 = u_xlat47.x;
        let x_1175 : f32 = u_xlat68;
        u_xlat68 = ((x_1171 * x_1173) + x_1175);
        let x_1178 : vec4<f32> = u_xlat12;
        let x_1179 : vec2<f32> = vec2<f32>(x_1178.x, x_1178.y);
        let x_1181 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1179.x, x_1179.y, x_1181);
        let x_1188 : vec3<f32> = txVec16;
        let x_1190 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1188.xy, x_1188.z);
        u_xlat47.x = x_1190;
        let x_1193 : f32 = u_xlat14.w;
        let x_1195 : f32 = u_xlat47.x;
        let x_1197 : f32 = u_xlat68;
        u_xlat68 = ((x_1193 * x_1195) + x_1197);
        let x_1200 : vec4<f32> = u_xlat10;
        let x_1201 : vec2<f32> = vec2<f32>(x_1200.x, x_1200.y);
        let x_1203 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1201.x, x_1201.y, x_1203);
        let x_1210 : vec3<f32> = txVec17;
        let x_1212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1210.xy, x_1210.z);
        u_xlat47.x = x_1212;
        let x_1215 : f32 = u_xlat15.x;
        let x_1217 : f32 = u_xlat47.x;
        let x_1219 : f32 = u_xlat68;
        u_xlat68 = ((x_1215 * x_1217) + x_1219);
        let x_1222 : vec4<f32> = u_xlat10;
        let x_1223 : vec2<f32> = vec2<f32>(x_1222.z, x_1222.w);
        let x_1225 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1223.x, x_1223.y, x_1225);
        let x_1232 : vec3<f32> = txVec18;
        let x_1234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1232.xy, x_1232.z);
        u_xlat47.x = x_1234;
        let x_1237 : f32 = u_xlat15.y;
        let x_1239 : f32 = u_xlat47.x;
        let x_1241 : f32 = u_xlat68;
        u_xlat68 = ((x_1237 * x_1239) + x_1241);
        let x_1244 : vec4<f32> = u_xlat11;
        let x_1245 : vec2<f32> = vec2<f32>(x_1244.x, x_1244.y);
        let x_1247 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1245.x, x_1245.y, x_1247);
        let x_1254 : vec3<f32> = txVec19;
        let x_1256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1254.xy, x_1254.z);
        u_xlat47.x = x_1256;
        let x_1259 : f32 = u_xlat15.z;
        let x_1261 : f32 = u_xlat47.x;
        let x_1263 : f32 = u_xlat68;
        u_xlat68 = ((x_1259 * x_1261) + x_1263);
        let x_1266 : vec4<f32> = u_xlat12;
        let x_1267 : vec2<f32> = vec2<f32>(x_1266.z, x_1266.w);
        let x_1269 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1267.x, x_1267.y, x_1269);
        let x_1276 : vec3<f32> = txVec20;
        let x_1278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1276.xy, x_1276.z);
        u_xlat47.x = x_1278;
        let x_1281 : f32 = u_xlat15.w;
        let x_1283 : f32 = u_xlat47.x;
        let x_1285 : f32 = u_xlat68;
        u_xlat68 = ((x_1281 * x_1283) + x_1285);
        let x_1288 : vec4<f32> = u_xlat13;
        let x_1289 : vec2<f32> = vec2<f32>(x_1288.x, x_1288.y);
        let x_1291 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1289.x, x_1289.y, x_1291);
        let x_1298 : vec3<f32> = txVec21;
        let x_1300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1298.xy, x_1298.z);
        u_xlat47.x = x_1300;
        let x_1303 : f32 = u_xlat16.x;
        let x_1305 : f32 = u_xlat47.x;
        let x_1307 : f32 = u_xlat68;
        u_xlat68 = ((x_1303 * x_1305) + x_1307);
        let x_1310 : vec4<f32> = u_xlat13;
        let x_1311 : vec2<f32> = vec2<f32>(x_1310.z, x_1310.w);
        let x_1313 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1311.x, x_1311.y, x_1313);
        let x_1320 : vec3<f32> = txVec22;
        let x_1322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1320.xy, x_1320.z);
        u_xlat47.x = x_1322;
        let x_1325 : f32 = u_xlat16.y;
        let x_1327 : f32 = u_xlat47.x;
        let x_1329 : f32 = u_xlat68;
        u_xlat68 = ((x_1325 * x_1327) + x_1329);
        let x_1332 : vec2<f32> = u_xlat27;
        let x_1334 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1332.x, x_1332.y, x_1334);
        let x_1341 : vec3<f32> = txVec23;
        let x_1343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1341.xy, x_1341.z);
        u_xlat47.x = x_1343;
        let x_1346 : f32 = u_xlat16.z;
        let x_1348 : f32 = u_xlat47.x;
        let x_1350 : f32 = u_xlat68;
        u_xlat68 = ((x_1346 * x_1348) + x_1350);
        let x_1353 : vec2<f32> = u_xlat55;
        let x_1355 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1362 : vec3<f32> = txVec24;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1362.xy, x_1362.z);
        u_xlat47.x = x_1364;
        let x_1367 : f32 = u_xlat16.w;
        let x_1369 : f32 = u_xlat47.x;
        let x_1371 : f32 = u_xlat68;
        u_xlat68 = ((x_1367 * x_1369) + x_1371);
        let x_1374 : vec4<f32> = u_xlat8;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec25;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
        u_xlat47.x = x_1386;
        let x_1389 : f32 = u_xlat4.x;
        let x_1391 : f32 = u_xlat47.x;
        let x_1393 : f32 = u_xlat68;
        u_xlat68 = ((x_1389 * x_1391) + x_1393);
        let x_1396 : vec4<f32> = u_xlat8;
        let x_1397 : vec2<f32> = vec2<f32>(x_1396.z, x_1396.w);
        let x_1399 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec26;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1406.xy, x_1406.z);
        u_xlat47.x = x_1408;
        let x_1411 : f32 = u_xlat4.y;
        let x_1413 : f32 = u_xlat47.x;
        let x_1415 : f32 = u_xlat68;
        u_xlat68 = ((x_1411 * x_1413) + x_1415);
        let x_1418 : vec2<f32> = u_xlat50;
        let x_1420 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec27;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat47.x = x_1429;
        let x_1432 : f32 = u_xlat4.z;
        let x_1434 : f32 = u_xlat47.x;
        let x_1436 : f32 = u_xlat68;
        u_xlat68 = ((x_1432 * x_1434) + x_1436);
        let x_1439 : vec4<f32> = u_xlat3;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.x, x_1439.y);
        let x_1442 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec28;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1449.xy, x_1449.z);
        u_xlat3.x = x_1451;
        let x_1454 : f32 = u_xlat4.w;
        let x_1456 : f32 = u_xlat3.x;
        let x_1458 : f32 = u_xlat68;
        u_xlat67 = ((x_1454 * x_1456) + x_1458);
      }
    }
  } else {
    let x_1462 : vec4<f32> = vs_TEXCOORD6;
    let x_1463 : vec2<f32> = vec2<f32>(x_1462.x, x_1462.y);
    let x_1465 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
    let x_1472 : vec3<f32> = txVec29;
    let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
    u_xlat67 = x_1474;
  }
  let x_1476 : f32 = x_213.x_MainLightShadowParams.x;
  u_xlat68 = (-(x_1476) + 1.0f);
  let x_1479 : f32 = u_xlat67;
  let x_1481 : f32 = x_213.x_MainLightShadowParams.x;
  let x_1483 : f32 = u_xlat68;
  u_xlat67 = ((x_1479 * x_1481) + x_1483);
  let x_1486 : f32 = vs_TEXCOORD6.z;
  u_xlatb68 = (0.0f >= x_1486);
  let x_1490 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (x_1490 >= 1.0f);
  let x_1492 : bool = u_xlatb68;
  let x_1493 : bool = u_xlatb3;
  u_xlatb68 = (x_1492 | x_1493);
  let x_1495 : bool = u_xlatb68;
  let x_1496 : f32 = u_xlat67;
  u_xlat67 = select(x_1496, 1.0f, x_1495);
  let x_1499 : vec3<f32> = vs_TEXCOORD1;
  let x_1503 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1505 : vec3<f32> = (x_1499 + -(x_1503));
  let x_1506 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1506.w);
  let x_1508 : vec4<f32> = u_xlat3;
  let x_1510 : vec4<f32> = u_xlat3;
  u_xlat68 = dot(vec3<f32>(x_1508.x, x_1508.y, x_1508.z), vec3<f32>(x_1510.x, x_1510.y, x_1510.z));
  let x_1513 : f32 = u_xlat68;
  let x_1515 : f32 = x_213.x_MainLightShadowParams.z;
  let x_1518 : f32 = x_213.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_1513 * x_1515) + x_1518);
  let x_1522 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1522, 0.0f, 1.0f);
  let x_1525 : f32 = u_xlat67;
  u_xlat25 = (-(x_1525) + 1.0f);
  let x_1529 : f32 = u_xlat3.x;
  let x_1530 : f32 = u_xlat25;
  let x_1532 : f32 = u_xlat67;
  u_xlat67 = ((x_1529 * x_1530) + x_1532);
  let x_1541 : f32 = x_1539.x_MainLightCookieTextureFormat;
  u_xlatb3 = !((x_1541 == -1.0f));
  let x_1544 : bool = u_xlatb3;
  if (x_1544) {
    let x_1547 : vec3<f32> = vs_TEXCOORD1;
    let x_1550 : vec4<f32> = x_1539.x_MainLightWorldToLight[1i];
    let x_1552 : vec2<f32> = (vec2<f32>(x_1547.y, x_1547.y) * vec2<f32>(x_1550.x, x_1550.y));
    let x_1553 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1552.x, x_1552.y, x_1553.z, x_1553.w);
    let x_1556 : vec4<f32> = x_1539.x_MainLightWorldToLight[0i];
    let x_1558 : vec3<f32> = vs_TEXCOORD1;
    let x_1561 : vec4<f32> = u_xlat3;
    let x_1563 : vec2<f32> = ((vec2<f32>(x_1556.x, x_1556.y) * vec2<f32>(x_1558.x, x_1558.x)) + vec2<f32>(x_1561.x, x_1561.y));
    let x_1564 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1563.x, x_1563.y, x_1564.z, x_1564.w);
    let x_1567 : vec4<f32> = x_1539.x_MainLightWorldToLight[2i];
    let x_1569 : vec3<f32> = vs_TEXCOORD1;
    let x_1572 : vec4<f32> = u_xlat3;
    let x_1574 : vec2<f32> = ((vec2<f32>(x_1567.x, x_1567.y) * vec2<f32>(x_1569.z, x_1569.z)) + vec2<f32>(x_1572.x, x_1572.y));
    let x_1575 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1574.x, x_1574.y, x_1575.z, x_1575.w);
    let x_1577 : vec4<f32> = u_xlat3;
    let x_1581 : vec4<f32> = x_1539.x_MainLightWorldToLight[3i];
    let x_1583 : vec2<f32> = (vec2<f32>(x_1577.x, x_1577.y) + vec2<f32>(x_1581.x, x_1581.y));
    let x_1584 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1583.x, x_1583.y, x_1584.z, x_1584.w);
    let x_1586 : vec4<f32> = u_xlat3;
    let x_1589 : vec2<f32> = ((vec2<f32>(x_1586.x, x_1586.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1590 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1589.x, x_1589.y, x_1590.z, x_1590.w);
    let x_1597 : vec4<f32> = u_xlat3;
    let x_1600 : f32 = x_44.x_GlobalMipBias.x;
    let x_1601 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1597.x, x_1597.y), x_1600);
    u_xlat3 = x_1601;
    let x_1606 : f32 = x_1539.x_MainLightCookieTextureFormat;
    let x_1608 : f32 = x_1539.x_MainLightCookieTextureFormat;
    let x_1610 : f32 = x_1539.x_MainLightCookieTextureFormat;
    let x_1612 : f32 = x_1539.x_MainLightCookieTextureFormat;
    let x_1613 : vec4<f32> = vec4<f32>(x_1606, x_1608, x_1610, x_1612);
    let x_1621 : vec4<bool> = (vec4<f32>(x_1613.x, x_1613.y, x_1613.z, x_1613.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb4 = vec2<bool>(x_1621.x, x_1621.y);
    let x_1625 : bool = u_xlatb4.y;
    if (x_1625) {
      let x_1630 : f32 = u_xlat3.w;
      x_1626 = x_1630;
    } else {
      let x_1633 : f32 = u_xlat3.x;
      x_1626 = x_1633;
    }
    let x_1634 : f32 = x_1626;
    u_xlat69 = x_1634;
    let x_1636 : bool = u_xlatb4.x;
    if (x_1636) {
      let x_1640 : vec4<f32> = u_xlat3;
      x_1637 = vec3<f32>(x_1640.x, x_1640.y, x_1640.z);
    } else {
      let x_1643 : f32 = u_xlat69;
      x_1637 = vec3<f32>(x_1643, x_1643, x_1643);
    }
    let x_1645 : vec3<f32> = x_1637;
    let x_1646 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1645.x, x_1645.y, x_1645.z, x_1646.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1652 : vec4<f32> = u_xlat3;
  let x_1655 : vec4<f32> = x_44.x_MainLightColor;
  let x_1657 : vec3<f32> = (vec3<f32>(x_1652.x, x_1652.y, x_1652.z) * vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
  let x_1658 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1657.x, x_1657.y, x_1657.z, x_1658.w);
  let x_1660 : f32 = u_xlat67;
  let x_1662 : f32 = x_95.unity_LightData.z;
  u_xlat67 = (x_1660 * x_1662);
  let x_1664 : f32 = u_xlat67;
  let x_1666 : vec4<f32> = u_xlat3;
  let x_1668 : vec3<f32> = (vec3<f32>(x_1664, x_1664, x_1664) * vec3<f32>(x_1666.x, x_1666.y, x_1666.z));
  let x_1669 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1668.x, x_1668.y, x_1668.z, x_1669.w);
  let x_1671 : vec3<f32> = u_xlat1;
  let x_1673 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat67 = dot(x_1671, vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
  let x_1676 : f32 = u_xlat67;
  u_xlat67 = clamp(x_1676, 0.0f, 1.0f);
  let x_1678 : f32 = u_xlat67;
  let x_1680 : vec4<f32> = u_xlat3;
  let x_1682 : vec3<f32> = (vec3<f32>(x_1678, x_1678, x_1678) * vec3<f32>(x_1680.x, x_1680.y, x_1680.z));
  let x_1683 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1682.x, x_1682.y, x_1682.z, x_1683.w);
  let x_1685 : vec4<f32> = u_xlat0;
  let x_1687 : vec4<f32> = u_xlat3;
  let x_1689 : vec3<f32> = (vec3<f32>(x_1685.y, x_1685.z, x_1685.w) * vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
  let x_1690 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
  let x_1693 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1695 : f32 = x_95.unity_LightData.y;
  u_xlat67 = min(x_1693, x_1695);
  let x_1699 : f32 = u_xlat67;
  u_xlatu67 = bitcast<u32>(i32(x_1699));
  let x_1702 : f32 = u_xlat68;
  let x_1705 : f32 = x_213.x_AdditionalShadowFadeParams.x;
  let x_1708 : f32 = x_213.x_AdditionalShadowFadeParams.y;
  u_xlat68 = ((x_1702 * x_1705) + x_1708);
  let x_1710 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1710, 0.0f, 1.0f);
  let x_1713 : f32 = x_1539.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1715 : f32 = x_1539.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1717 : f32 = x_1539.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1719 : f32 = x_1539.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1720 : vec4<f32> = vec4<f32>(x_1713, x_1715, x_1717, x_1719);
  let x_1726 : vec4<bool> = (vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1720.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1726.x, x_1726.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1738 : u32 = u_xlatu_loop_1;
    let x_1739 : u32 = u_xlatu67;
    if ((x_1738 < x_1739)) {
    } else {
      break;
    }
    let x_1742 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1742 >> 2u);
    let x_1746 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_1746 & 3u));
    let x_1750 : u32 = u_xlatu48;
    let x_1753 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1750)];
    let x_1763 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1768 : vec4<u32> = indexable[x_1763];
    u_xlat48 = dot(x_1753, bitcast<vec4<f32>>(x_1768));
    let x_1772 : f32 = u_xlat48;
    u_xlati48 = i32(x_1772);
    let x_1774 : vec3<f32> = vs_TEXCOORD1;
    let x_1785 : i32 = u_xlati48;
    let x_1787 : vec4<f32> = x_1784.x_AdditionalLightsPosition[x_1785];
    let x_1790 : i32 = u_xlati48;
    let x_1792 : vec4<f32> = x_1784.x_AdditionalLightsPosition[x_1790];
    let x_1794 : vec3<f32> = ((-(x_1774) * vec3<f32>(x_1787.w, x_1787.w, x_1787.w)) + vec3<f32>(x_1792.x, x_1792.y, x_1792.z));
    let x_1795 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1794.x, x_1794.y, x_1794.z, x_1795.w);
    let x_1798 : vec4<f32> = u_xlat6;
    let x_1800 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1798.x, x_1798.y, x_1798.z), vec3<f32>(x_1800.x, x_1800.y, x_1800.z));
    let x_1803 : f32 = u_xlat70;
    u_xlat70 = max(x_1803, 0.00006103515625f);
    let x_1807 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_1807);
    let x_1809 : f32 = u_xlat71;
    let x_1811 : vec4<f32> = u_xlat6;
    let x_1813 : vec3<f32> = (vec3<f32>(x_1809, x_1809, x_1809) * vec3<f32>(x_1811.x, x_1811.y, x_1811.z));
    let x_1814 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1814.w);
    let x_1816 : f32 = u_xlat70;
    u_xlat71 = (1.0f / x_1816);
    let x_1818 : f32 = u_xlat70;
    let x_1819 : i32 = u_xlati48;
    let x_1821 : f32 = x_1784.x_AdditionalLightsAttenuation[x_1819].x;
    u_xlat70 = (x_1818 * x_1821);
    let x_1823 : f32 = u_xlat70;
    let x_1825 : f32 = u_xlat70;
    u_xlat70 = ((-(x_1823) * x_1825) + 1.0f);
    let x_1828 : f32 = u_xlat70;
    u_xlat70 = max(x_1828, 0.0f);
    let x_1830 : f32 = u_xlat70;
    let x_1831 : f32 = u_xlat70;
    u_xlat70 = (x_1830 * x_1831);
    let x_1833 : f32 = u_xlat70;
    let x_1834 : f32 = u_xlat71;
    u_xlat70 = (x_1833 * x_1834);
    let x_1836 : i32 = u_xlati48;
    let x_1838 : vec4<f32> = x_1784.x_AdditionalLightsSpotDir[x_1836];
    let x_1840 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_1838.x, x_1838.y, x_1838.z), vec3<f32>(x_1840.x, x_1840.y, x_1840.z));
    let x_1843 : f32 = u_xlat71;
    let x_1844 : i32 = u_xlati48;
    let x_1846 : f32 = x_1784.x_AdditionalLightsAttenuation[x_1844].z;
    let x_1848 : i32 = u_xlati48;
    let x_1850 : f32 = x_1784.x_AdditionalLightsAttenuation[x_1848].w;
    u_xlat71 = ((x_1843 * x_1846) + x_1850);
    let x_1852 : f32 = u_xlat71;
    u_xlat71 = clamp(x_1852, 0.0f, 1.0f);
    let x_1854 : f32 = u_xlat71;
    let x_1855 : f32 = u_xlat71;
    u_xlat71 = (x_1854 * x_1855);
    let x_1857 : f32 = u_xlat70;
    let x_1858 : f32 = u_xlat71;
    u_xlat70 = (x_1857 * x_1858);
    let x_1862 : i32 = u_xlati48;
    let x_1864 : f32 = x_213.x_AdditionalShadowParams[x_1862].w;
    u_xlati71 = i32(x_1864);
    let x_1867 : i32 = u_xlati71;
    u_xlatb72 = (x_1867 >= 0i);
    let x_1869 : bool = u_xlatb72;
    if (x_1869) {
      let x_1873 : i32 = u_xlati48;
      let x_1875 : f32 = x_213.x_AdditionalShadowParams[x_1873].z;
      u_xlatb72 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1875, x_1875, x_1875, x_1875))));
      let x_1879 : bool = u_xlatb72;
      if (x_1879) {
        let x_1884 : vec4<f32> = u_xlat6;
        let x_1887 : vec4<f32> = u_xlat6;
        let x_1890 : vec4<bool> = (abs(vec4<f32>(x_1884.z, x_1884.z, x_1884.y, x_1884.z)) >= abs(vec4<f32>(x_1887.x, x_1887.y, x_1887.x, x_1887.x)));
        let x_1892 : vec3<bool> = vec3<bool>(x_1890.x, x_1890.y, x_1890.z);
        let x_1893 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1892.x, x_1892.y, x_1892.z, x_1893.w);
        let x_1896 : bool = u_xlatb7.y;
        let x_1898 : bool = u_xlatb7.x;
        u_xlatb72 = (x_1896 & x_1898);
        let x_1900 : vec4<f32> = u_xlat6;
        let x_1903 : vec4<bool> = (-(vec4<f32>(x_1900.z, x_1900.y, x_1900.z, x_1900.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1904 : vec3<bool> = vec3<bool>(x_1903.x, x_1903.y, x_1903.w);
        let x_1905 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1904.x, x_1904.y, x_1905.z, x_1904.z);
        let x_1908 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1908);
        let x_1914 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1914);
        let x_1920 : bool = u_xlatb7.w;
        u_xlat73 = select(0.0f, 1.0f, x_1920);
        let x_1924 : bool = u_xlatb7.z;
        if (x_1924) {
          let x_1929 : f32 = u_xlat7.y;
          x_1925 = x_1929;
        } else {
          let x_1931 : f32 = u_xlat73;
          x_1925 = x_1931;
        }
        let x_1932 : f32 = x_1925;
        u_xlat29.x = x_1932;
        let x_1935 : bool = u_xlatb72;
        if (x_1935) {
          let x_1940 : f32 = u_xlat7.x;
          x_1936 = x_1940;
        } else {
          let x_1943 : f32 = u_xlat29.x;
          x_1936 = x_1943;
        }
        let x_1944 : f32 = x_1936;
        u_xlat72 = x_1944;
        let x_1945 : i32 = u_xlati48;
        let x_1947 : f32 = x_213.x_AdditionalShadowParams[x_1945].w;
        u_xlat7.x = trunc(x_1947);
        let x_1950 : f32 = u_xlat72;
        let x_1952 : f32 = u_xlat7.x;
        u_xlat72 = (x_1950 + x_1952);
        let x_1954 : f32 = u_xlat72;
        u_xlati71 = i32(x_1954);
      }
      let x_1956 : i32 = u_xlati71;
      u_xlati71 = (x_1956 << bitcast<u32>(2i));
      let x_1958 : vec3<f32> = vs_TEXCOORD1;
      let x_1961 : i32 = u_xlati71;
      let x_1964 : i32 = u_xlati71;
      let x_1968 : vec4<f32> = x_213.x_AdditionalLightsWorldToShadow[((x_1961 + 1i) / 4i)][((x_1964 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1958.y, x_1958.y, x_1958.y, x_1958.y) * x_1968);
      let x_1970 : i32 = u_xlati71;
      let x_1972 : i32 = u_xlati71;
      let x_1975 : vec4<f32> = x_213.x_AdditionalLightsWorldToShadow[(x_1970 / 4i)][(x_1972 % 4i)];
      let x_1976 : vec3<f32> = vs_TEXCOORD1;
      let x_1979 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1975 * vec4<f32>(x_1976.x, x_1976.x, x_1976.x, x_1976.x)) + x_1979);
      let x_1981 : i32 = u_xlati71;
      let x_1984 : i32 = u_xlati71;
      let x_1988 : vec4<f32> = x_213.x_AdditionalLightsWorldToShadow[((x_1981 + 2i) / 4i)][((x_1984 + 2i) % 4i)];
      let x_1989 : vec3<f32> = vs_TEXCOORD1;
      let x_1992 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1988 * vec4<f32>(x_1989.z, x_1989.z, x_1989.z, x_1989.z)) + x_1992);
      let x_1994 : vec4<f32> = u_xlat7;
      let x_1995 : i32 = u_xlati71;
      let x_1998 : i32 = u_xlati71;
      let x_2002 : vec4<f32> = x_213.x_AdditionalLightsWorldToShadow[((x_1995 + 3i) / 4i)][((x_1998 + 3i) % 4i)];
      u_xlat7 = (x_1994 + x_2002);
      let x_2004 : vec4<f32> = u_xlat7;
      let x_2006 : vec4<f32> = u_xlat7;
      let x_2008 : vec3<f32> = (vec3<f32>(x_2004.x, x_2004.y, x_2004.z) / vec3<f32>(x_2006.w, x_2006.w, x_2006.w));
      let x_2009 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2008.x, x_2008.y, x_2008.z, x_2009.w);
      let x_2012 : i32 = u_xlati48;
      let x_2014 : f32 = x_213.x_AdditionalShadowParams[x_2012].y;
      u_xlatb71 = (0.0f < x_2014);
      let x_2016 : bool = u_xlatb71;
      if (x_2016) {
        let x_2019 : i32 = u_xlati48;
        let x_2021 : f32 = x_213.x_AdditionalShadowParams[x_2019].y;
        u_xlatb71 = (1.0f == x_2021);
        let x_2023 : bool = u_xlatb71;
        if (x_2023) {
          let x_2026 : vec4<f32> = u_xlat7;
          let x_2030 : vec4<f32> = x_213.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2026.x, x_2026.y, x_2026.x, x_2026.y) + x_2030);
          let x_2033 : vec4<f32> = u_xlat8;
          let x_2034 : vec2<f32> = vec2<f32>(x_2033.x, x_2033.y);
          let x_2036 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2034.x, x_2034.y, x_2036);
          let x_2044 : vec3<f32> = txVec30;
          let x_2046 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2044.xy, x_2044.z);
          u_xlat9.x = x_2046;
          let x_2049 : vec4<f32> = u_xlat8;
          let x_2050 : vec2<f32> = vec2<f32>(x_2049.z, x_2049.w);
          let x_2052 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2050.x, x_2050.y, x_2052);
          let x_2059 : vec3<f32> = txVec31;
          let x_2061 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2059.xy, x_2059.z);
          u_xlat9.y = x_2061;
          let x_2063 : vec4<f32> = u_xlat7;
          let x_2067 : vec4<f32> = x_213.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2063.x, x_2063.y, x_2063.x, x_2063.y) + x_2067);
          let x_2070 : vec4<f32> = u_xlat8;
          let x_2071 : vec2<f32> = vec2<f32>(x_2070.x, x_2070.y);
          let x_2073 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2071.x, x_2071.y, x_2073);
          let x_2080 : vec3<f32> = txVec32;
          let x_2082 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2080.xy, x_2080.z);
          u_xlat9.z = x_2082;
          let x_2085 : vec4<f32> = u_xlat8;
          let x_2086 : vec2<f32> = vec2<f32>(x_2085.z, x_2085.w);
          let x_2088 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2086.x, x_2086.y, x_2088);
          let x_2095 : vec3<f32> = txVec33;
          let x_2097 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2095.xy, x_2095.z);
          u_xlat9.w = x_2097;
          let x_2099 : vec4<f32> = u_xlat9;
          u_xlat71 = dot(x_2099, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2102 : i32 = u_xlati48;
          let x_2104 : f32 = x_213.x_AdditionalShadowParams[x_2102].y;
          u_xlatb72 = (2.0f == x_2104);
          let x_2106 : bool = u_xlatb72;
          if (x_2106) {
            let x_2109 : vec4<f32> = u_xlat7;
            let x_2113 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2116 : vec2<f32> = ((vec2<f32>(x_2109.x, x_2109.y) * vec2<f32>(x_2113.z, x_2113.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2117 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2116.x, x_2116.y, x_2117.z, x_2117.w);
            let x_2119 : vec4<f32> = u_xlat8;
            let x_2121 : vec2<f32> = floor(vec2<f32>(x_2119.x, x_2119.y));
            let x_2122 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2121.x, x_2121.y, x_2122.z, x_2122.w);
            let x_2125 : vec4<f32> = u_xlat7;
            let x_2128 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2131 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2125.x, x_2125.y) * vec2<f32>(x_2128.z, x_2128.w)) + -(vec2<f32>(x_2131.x, x_2131.y)));
            let x_2135 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2135.x, x_2135.x, x_2135.y, x_2135.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2138 : vec4<f32> = u_xlat9;
            let x_2140 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2138.x, x_2138.x, x_2138.z, x_2138.z) * vec4<f32>(x_2140.x, x_2140.x, x_2140.z, x_2140.z));
            let x_2143 : vec4<f32> = u_xlat10;
            let x_2145 : vec2<f32> = (vec2<f32>(x_2143.y, x_2143.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2146 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2145.x, x_2146.y, x_2145.y, x_2146.w);
            let x_2148 : vec4<f32> = u_xlat10;
            let x_2151 : vec2<f32> = u_xlat52;
            let x_2153 : vec2<f32> = ((vec2<f32>(x_2148.x, x_2148.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2151));
            let x_2154 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2153.x, x_2153.y, x_2154.z, x_2154.w);
            let x_2157 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2157) + vec2<f32>(1.0f, 1.0f));
            let x_2160 : vec2<f32> = u_xlat52;
            let x_2161 : vec2<f32> = min(x_2160, vec2<f32>(0.0f, 0.0f));
            let x_2162 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2161.x, x_2161.y, x_2162.z, x_2162.w);
            let x_2164 : vec4<f32> = u_xlat11;
            let x_2167 : vec4<f32> = u_xlat11;
            let x_2170 : vec2<f32> = u_xlat54;
            let x_2171 : vec2<f32> = ((-(vec2<f32>(x_2164.x, x_2164.y)) * vec2<f32>(x_2167.x, x_2167.y)) + x_2170);
            let x_2172 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2171.x, x_2171.y, x_2172.z, x_2172.w);
            let x_2174 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2174, vec2<f32>(0.0f, 0.0f));
            let x_2176 : vec2<f32> = u_xlat52;
            let x_2178 : vec2<f32> = u_xlat52;
            let x_2180 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2176) * x_2178) + vec2<f32>(x_2180.y, x_2180.w));
            let x_2183 : vec4<f32> = u_xlat11;
            let x_2185 : vec2<f32> = (vec2<f32>(x_2183.x, x_2183.y) + vec2<f32>(1.0f, 1.0f));
            let x_2186 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2185.x, x_2185.y, x_2186.z, x_2186.w);
            let x_2188 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2188 + vec2<f32>(1.0f, 1.0f));
            let x_2190 : vec4<f32> = u_xlat10;
            let x_2192 : vec2<f32> = (vec2<f32>(x_2190.x, x_2190.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2193 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2192.x, x_2192.y, x_2193.z, x_2193.w);
            let x_2195 : vec2<f32> = u_xlat54;
            let x_2196 : vec2<f32> = (x_2195 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2197 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2196.x, x_2196.y, x_2197.z, x_2197.w);
            let x_2199 : vec4<f32> = u_xlat11;
            let x_2201 : vec2<f32> = (vec2<f32>(x_2199.x, x_2199.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2202 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2201.x, x_2201.y, x_2202.z, x_2202.w);
            let x_2204 : vec2<f32> = u_xlat52;
            let x_2205 : vec2<f32> = (x_2204 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2206 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2205.x, x_2205.y, x_2206.z, x_2206.w);
            let x_2208 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2208.y, x_2208.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2212 : f32 = u_xlat11.x;
            u_xlat12.z = x_2212;
            let x_2215 : f32 = u_xlat52.x;
            u_xlat12.w = x_2215;
            let x_2218 : f32 = u_xlat13.x;
            u_xlat10.z = x_2218;
            let x_2221 : f32 = u_xlat9.x;
            u_xlat10.w = x_2221;
            let x_2223 : vec4<f32> = u_xlat10;
            let x_2225 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2223.z, x_2223.w, x_2223.x, x_2223.z) + vec4<f32>(x_2225.z, x_2225.w, x_2225.x, x_2225.z));
            let x_2229 : f32 = u_xlat12.y;
            u_xlat11.z = x_2229;
            let x_2232 : f32 = u_xlat52.y;
            u_xlat11.w = x_2232;
            let x_2235 : f32 = u_xlat10.y;
            u_xlat13.z = x_2235;
            let x_2238 : f32 = u_xlat9.z;
            u_xlat13.w = x_2238;
            let x_2240 : vec4<f32> = u_xlat11;
            let x_2242 : vec4<f32> = u_xlat13;
            let x_2244 : vec3<f32> = (vec3<f32>(x_2240.z, x_2240.y, x_2240.w) + vec3<f32>(x_2242.z, x_2242.y, x_2242.w));
            let x_2245 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2244.x, x_2244.y, x_2244.z, x_2245.w);
            let x_2247 : vec4<f32> = u_xlat10;
            let x_2249 : vec4<f32> = u_xlat14;
            let x_2251 : vec3<f32> = (vec3<f32>(x_2247.x, x_2247.z, x_2247.w) / vec3<f32>(x_2249.z, x_2249.w, x_2249.y));
            let x_2252 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2251.x, x_2251.y, x_2251.z, x_2252.w);
            let x_2254 : vec4<f32> = u_xlat10;
            let x_2256 : vec3<f32> = (vec3<f32>(x_2254.x, x_2254.y, x_2254.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2257 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
            let x_2259 : vec4<f32> = u_xlat13;
            let x_2261 : vec4<f32> = u_xlat9;
            let x_2263 : vec3<f32> = (vec3<f32>(x_2259.z, x_2259.y, x_2259.w) / vec3<f32>(x_2261.x, x_2261.y, x_2261.z));
            let x_2264 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2263.x, x_2263.y, x_2263.z, x_2264.w);
            let x_2266 : vec4<f32> = u_xlat11;
            let x_2268 : vec3<f32> = (vec3<f32>(x_2266.x, x_2266.y, x_2266.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2269 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2268.x, x_2268.y, x_2268.z, x_2269.w);
            let x_2271 : vec4<f32> = u_xlat10;
            let x_2274 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2276 : vec3<f32> = (vec3<f32>(x_2271.y, x_2271.x, x_2271.z) * vec3<f32>(x_2274.x, x_2274.x, x_2274.x));
            let x_2277 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2276.x, x_2276.y, x_2276.z, x_2277.w);
            let x_2279 : vec4<f32> = u_xlat11;
            let x_2282 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2284 : vec3<f32> = (vec3<f32>(x_2279.x, x_2279.y, x_2279.z) * vec3<f32>(x_2282.y, x_2282.y, x_2282.y));
            let x_2285 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2284.x, x_2284.y, x_2284.z, x_2285.w);
            let x_2288 : f32 = u_xlat11.x;
            u_xlat10.w = x_2288;
            let x_2290 : vec4<f32> = u_xlat8;
            let x_2293 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2296 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2290.x, x_2290.y, x_2290.x, x_2290.y) * vec4<f32>(x_2293.x, x_2293.y, x_2293.x, x_2293.y)) + vec4<f32>(x_2296.y, x_2296.w, x_2296.x, x_2296.w));
            let x_2299 : vec4<f32> = u_xlat8;
            let x_2302 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2305 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2299.x, x_2299.y) * vec2<f32>(x_2302.x, x_2302.y)) + vec2<f32>(x_2305.z, x_2305.w));
            let x_2309 : f32 = u_xlat10.y;
            u_xlat11.w = x_2309;
            let x_2311 : vec4<f32> = u_xlat11;
            let x_2312 : vec2<f32> = vec2<f32>(x_2311.y, x_2311.z);
            let x_2313 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2313.x, x_2312.x, x_2313.z, x_2312.y);
            let x_2315 : vec4<f32> = u_xlat8;
            let x_2318 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2321 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2315.x, x_2315.y, x_2315.x, x_2315.y) * vec4<f32>(x_2318.x, x_2318.y, x_2318.x, x_2318.y)) + vec4<f32>(x_2321.x, x_2321.y, x_2321.z, x_2321.y));
            let x_2324 : vec4<f32> = u_xlat8;
            let x_2327 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2330 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2324.x, x_2324.y, x_2324.x, x_2324.y) * vec4<f32>(x_2327.x, x_2327.y, x_2327.x, x_2327.y)) + vec4<f32>(x_2330.w, x_2330.y, x_2330.w, x_2330.z));
            let x_2333 : vec4<f32> = u_xlat8;
            let x_2336 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2339 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2333.x, x_2333.y, x_2333.x, x_2333.y) * vec4<f32>(x_2336.x, x_2336.y, x_2336.x, x_2336.y)) + vec4<f32>(x_2339.x, x_2339.w, x_2339.z, x_2339.w));
            let x_2342 : vec4<f32> = u_xlat9;
            let x_2344 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2342.x, x_2342.x, x_2342.x, x_2342.y) * vec4<f32>(x_2344.z, x_2344.w, x_2344.y, x_2344.z));
            let x_2347 : vec4<f32> = u_xlat9;
            let x_2349 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2347.y, x_2347.y, x_2347.z, x_2347.z) * x_2349);
            let x_2352 : f32 = u_xlat9.z;
            let x_2354 : f32 = u_xlat14.y;
            u_xlat72 = (x_2352 * x_2354);
            let x_2357 : vec4<f32> = u_xlat12;
            let x_2358 : vec2<f32> = vec2<f32>(x_2357.x, x_2357.y);
            let x_2360 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2358.x, x_2358.y, x_2360);
            let x_2367 : vec3<f32> = txVec34;
            let x_2369 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2367.xy, x_2367.z);
            u_xlat73 = x_2369;
            let x_2371 : vec4<f32> = u_xlat12;
            let x_2372 : vec2<f32> = vec2<f32>(x_2371.z, x_2371.w);
            let x_2374 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2372.x, x_2372.y, x_2374);
            let x_2381 : vec3<f32> = txVec35;
            let x_2383 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2381.xy, x_2381.z);
            u_xlat8.x = x_2383;
            let x_2386 : f32 = u_xlat8.x;
            let x_2388 : f32 = u_xlat15.y;
            u_xlat8.x = (x_2386 * x_2388);
            let x_2392 : f32 = u_xlat15.x;
            let x_2393 : f32 = u_xlat73;
            let x_2396 : f32 = u_xlat8.x;
            u_xlat73 = ((x_2392 * x_2393) + x_2396);
            let x_2399 : vec2<f32> = u_xlat52;
            let x_2401 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2399.x, x_2399.y, x_2401);
            let x_2408 : vec3<f32> = txVec36;
            let x_2410 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2408.xy, x_2408.z);
            u_xlat8.x = x_2410;
            let x_2413 : f32 = u_xlat15.z;
            let x_2415 : f32 = u_xlat8.x;
            let x_2417 : f32 = u_xlat73;
            u_xlat73 = ((x_2413 * x_2415) + x_2417);
            let x_2420 : vec4<f32> = u_xlat11;
            let x_2421 : vec2<f32> = vec2<f32>(x_2420.x, x_2420.y);
            let x_2423 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2421.x, x_2421.y, x_2423);
            let x_2430 : vec3<f32> = txVec37;
            let x_2432 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2430.xy, x_2430.z);
            u_xlat8.x = x_2432;
            let x_2435 : f32 = u_xlat15.w;
            let x_2437 : f32 = u_xlat8.x;
            let x_2439 : f32 = u_xlat73;
            u_xlat73 = ((x_2435 * x_2437) + x_2439);
            let x_2442 : vec4<f32> = u_xlat13;
            let x_2443 : vec2<f32> = vec2<f32>(x_2442.x, x_2442.y);
            let x_2445 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2443.x, x_2443.y, x_2445);
            let x_2452 : vec3<f32> = txVec38;
            let x_2454 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2452.xy, x_2452.z);
            u_xlat8.x = x_2454;
            let x_2457 : f32 = u_xlat16.x;
            let x_2459 : f32 = u_xlat8.x;
            let x_2461 : f32 = u_xlat73;
            u_xlat73 = ((x_2457 * x_2459) + x_2461);
            let x_2464 : vec4<f32> = u_xlat13;
            let x_2465 : vec2<f32> = vec2<f32>(x_2464.z, x_2464.w);
            let x_2467 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2465.x, x_2465.y, x_2467);
            let x_2474 : vec3<f32> = txVec39;
            let x_2476 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2474.xy, x_2474.z);
            u_xlat8.x = x_2476;
            let x_2479 : f32 = u_xlat16.y;
            let x_2481 : f32 = u_xlat8.x;
            let x_2483 : f32 = u_xlat73;
            u_xlat73 = ((x_2479 * x_2481) + x_2483);
            let x_2486 : vec4<f32> = u_xlat11;
            let x_2487 : vec2<f32> = vec2<f32>(x_2486.z, x_2486.w);
            let x_2489 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2487.x, x_2487.y, x_2489);
            let x_2496 : vec3<f32> = txVec40;
            let x_2498 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2496.xy, x_2496.z);
            u_xlat8.x = x_2498;
            let x_2501 : f32 = u_xlat16.z;
            let x_2503 : f32 = u_xlat8.x;
            let x_2505 : f32 = u_xlat73;
            u_xlat73 = ((x_2501 * x_2503) + x_2505);
            let x_2508 : vec4<f32> = u_xlat10;
            let x_2509 : vec2<f32> = vec2<f32>(x_2508.x, x_2508.y);
            let x_2511 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2509.x, x_2509.y, x_2511);
            let x_2518 : vec3<f32> = txVec41;
            let x_2520 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2518.xy, x_2518.z);
            u_xlat8.x = x_2520;
            let x_2523 : f32 = u_xlat16.w;
            let x_2525 : f32 = u_xlat8.x;
            let x_2527 : f32 = u_xlat73;
            u_xlat73 = ((x_2523 * x_2525) + x_2527);
            let x_2530 : vec4<f32> = u_xlat10;
            let x_2531 : vec2<f32> = vec2<f32>(x_2530.z, x_2530.w);
            let x_2533 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2531.x, x_2531.y, x_2533);
            let x_2540 : vec3<f32> = txVec42;
            let x_2542 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2540.xy, x_2540.z);
            u_xlat8.x = x_2542;
            let x_2544 : f32 = u_xlat72;
            let x_2546 : f32 = u_xlat8.x;
            let x_2548 : f32 = u_xlat73;
            u_xlat71 = ((x_2544 * x_2546) + x_2548);
          } else {
            let x_2551 : vec4<f32> = u_xlat7;
            let x_2554 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2557 : vec2<f32> = ((vec2<f32>(x_2551.x, x_2551.y) * vec2<f32>(x_2554.z, x_2554.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2558 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2557.x, x_2557.y, x_2558.z, x_2558.w);
            let x_2560 : vec4<f32> = u_xlat8;
            let x_2562 : vec2<f32> = floor(vec2<f32>(x_2560.x, x_2560.y));
            let x_2563 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2562.x, x_2562.y, x_2563.z, x_2563.w);
            let x_2565 : vec4<f32> = u_xlat7;
            let x_2568 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2571 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2565.x, x_2565.y) * vec2<f32>(x_2568.z, x_2568.w)) + -(vec2<f32>(x_2571.x, x_2571.y)));
            let x_2575 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2575.x, x_2575.x, x_2575.y, x_2575.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2578 : vec4<f32> = u_xlat9;
            let x_2580 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2578.x, x_2578.x, x_2578.z, x_2578.z) * vec4<f32>(x_2580.x, x_2580.x, x_2580.z, x_2580.z));
            let x_2583 : vec4<f32> = u_xlat10;
            let x_2585 : vec2<f32> = (vec2<f32>(x_2583.y, x_2583.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2586 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2586.x, x_2585.x, x_2586.z, x_2585.y);
            let x_2588 : vec4<f32> = u_xlat10;
            let x_2591 : vec2<f32> = u_xlat52;
            let x_2593 : vec2<f32> = ((vec2<f32>(x_2588.x, x_2588.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2591));
            let x_2594 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2593.x, x_2594.y, x_2593.y, x_2594.w);
            let x_2596 : vec2<f32> = u_xlat52;
            let x_2598 : vec2<f32> = (-(x_2596) + vec2<f32>(1.0f, 1.0f));
            let x_2599 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2598.x, x_2598.y, x_2599.z, x_2599.w);
            let x_2601 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2601, vec2<f32>(0.0f, 0.0f));
            let x_2603 : vec2<f32> = u_xlat54;
            let x_2605 : vec2<f32> = u_xlat54;
            let x_2607 : vec4<f32> = u_xlat10;
            let x_2609 : vec2<f32> = ((-(x_2603) * x_2605) + vec2<f32>(x_2607.x, x_2607.y));
            let x_2610 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2609.x, x_2609.y, x_2610.z, x_2610.w);
            let x_2612 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2612, vec2<f32>(0.0f, 0.0f));
            let x_2615 : vec2<f32> = u_xlat54;
            let x_2617 : vec2<f32> = u_xlat54;
            let x_2619 : vec4<f32> = u_xlat9;
            let x_2621 : vec2<f32> = ((-(x_2615) * x_2617) + vec2<f32>(x_2619.y, x_2619.w));
            let x_2622 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2621.x, x_2622.y, x_2621.y);
            let x_2624 : vec4<f32> = u_xlat10;
            let x_2626 : vec2<f32> = (vec2<f32>(x_2624.x, x_2624.y) + vec2<f32>(2.0f, 2.0f));
            let x_2627 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2626.x, x_2626.y, x_2627.z, x_2627.w);
            let x_2629 : vec3<f32> = u_xlat31;
            let x_2631 : vec2<f32> = (vec2<f32>(x_2629.x, x_2629.z) + vec2<f32>(2.0f, 2.0f));
            let x_2632 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2632.x, x_2631.x, x_2632.z, x_2631.y);
            let x_2635 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2635 * 0.08163200318813323975f);
            let x_2638 : vec4<f32> = u_xlat9;
            let x_2640 : vec3<f32> = (vec3<f32>(x_2638.z, x_2638.x, x_2638.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2641 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2640.x, x_2640.y, x_2640.z, x_2641.w);
            let x_2643 : vec4<f32> = u_xlat10;
            let x_2645 : vec2<f32> = (vec2<f32>(x_2643.x, x_2643.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2646 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2645.x, x_2645.y, x_2646.z, x_2646.w);
            let x_2649 : f32 = u_xlat13.y;
            u_xlat12.x = x_2649;
            let x_2651 : vec2<f32> = u_xlat52;
            let x_2654 : vec2<f32> = ((vec2<f32>(x_2651.x, x_2651.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2655 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2655.x, x_2654.x, x_2655.z, x_2654.y);
            let x_2657 : vec2<f32> = u_xlat52;
            let x_2660 : vec2<f32> = ((vec2<f32>(x_2657.x, x_2657.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2661 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2660.x, x_2661.y, x_2660.y, x_2661.w);
            let x_2664 : f32 = u_xlat9.x;
            u_xlat10.y = x_2664;
            let x_2667 : f32 = u_xlat11.y;
            u_xlat10.w = x_2667;
            let x_2669 : vec4<f32> = u_xlat10;
            let x_2670 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2669 + x_2670);
            let x_2672 : vec2<f32> = u_xlat52;
            let x_2675 : vec2<f32> = ((vec2<f32>(x_2672.y, x_2672.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2676 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2676.x, x_2675.x, x_2676.z, x_2675.y);
            let x_2678 : vec2<f32> = u_xlat52;
            let x_2681 : vec2<f32> = ((vec2<f32>(x_2678.y, x_2678.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2682 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2681.x, x_2682.y, x_2681.y, x_2682.w);
            let x_2685 : f32 = u_xlat9.y;
            u_xlat11.y = x_2685;
            let x_2687 : vec4<f32> = u_xlat11;
            let x_2688 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2687 + x_2688);
            let x_2690 : vec4<f32> = u_xlat10;
            let x_2691 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2690 / x_2691);
            let x_2693 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2693 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2695 : vec4<f32> = u_xlat11;
            let x_2696 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2695 / x_2696);
            let x_2698 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2698 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2700 : vec4<f32> = u_xlat10;
            let x_2703 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2700.w, x_2700.x, x_2700.y, x_2700.z) * vec4<f32>(x_2703.x, x_2703.x, x_2703.x, x_2703.x));
            let x_2706 : vec4<f32> = u_xlat11;
            let x_2709 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2706.x, x_2706.w, x_2706.y, x_2706.z) * vec4<f32>(x_2709.y, x_2709.y, x_2709.y, x_2709.y));
            let x_2712 : vec4<f32> = u_xlat10;
            let x_2713 : vec3<f32> = vec3<f32>(x_2712.y, x_2712.z, x_2712.w);
            let x_2714 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2713.x, x_2714.y, x_2713.y, x_2713.z);
            let x_2717 : f32 = u_xlat11.x;
            u_xlat13.y = x_2717;
            let x_2719 : vec4<f32> = u_xlat8;
            let x_2722 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2725 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2719.x, x_2719.y, x_2719.x, x_2719.y) * vec4<f32>(x_2722.x, x_2722.y, x_2722.x, x_2722.y)) + vec4<f32>(x_2725.x, x_2725.y, x_2725.z, x_2725.y));
            let x_2728 : vec4<f32> = u_xlat8;
            let x_2731 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2734 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2728.x, x_2728.y) * vec2<f32>(x_2731.x, x_2731.y)) + vec2<f32>(x_2734.w, x_2734.y));
            let x_2738 : f32 = u_xlat13.y;
            u_xlat10.y = x_2738;
            let x_2741 : f32 = u_xlat11.z;
            u_xlat13.y = x_2741;
            let x_2743 : vec4<f32> = u_xlat8;
            let x_2746 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2749 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2743.x, x_2743.y, x_2743.x, x_2743.y) * vec4<f32>(x_2746.x, x_2746.y, x_2746.x, x_2746.y)) + vec4<f32>(x_2749.x, x_2749.y, x_2749.z, x_2749.y));
            let x_2752 : vec4<f32> = u_xlat8;
            let x_2755 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2758 : vec4<f32> = u_xlat13;
            let x_2760 : vec2<f32> = ((vec2<f32>(x_2752.x, x_2752.y) * vec2<f32>(x_2755.x, x_2755.y)) + vec2<f32>(x_2758.w, x_2758.y));
            let x_2761 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2760.x, x_2760.y, x_2761.z, x_2761.w);
            let x_2764 : f32 = u_xlat13.y;
            u_xlat10.z = x_2764;
            let x_2767 : vec4<f32> = u_xlat8;
            let x_2770 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2773 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2767.x, x_2767.y, x_2767.x, x_2767.y) * vec4<f32>(x_2770.x, x_2770.y, x_2770.x, x_2770.y)) + vec4<f32>(x_2773.x, x_2773.y, x_2773.x, x_2773.z));
            let x_2777 : f32 = u_xlat11.w;
            u_xlat13.y = x_2777;
            let x_2780 : vec4<f32> = u_xlat8;
            let x_2783 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2786 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2780.x, x_2780.y, x_2780.x, x_2780.y) * vec4<f32>(x_2783.x, x_2783.y, x_2783.x, x_2783.y)) + vec4<f32>(x_2786.x, x_2786.y, x_2786.z, x_2786.y));
            let x_2790 : vec4<f32> = u_xlat8;
            let x_2793 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2796 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2790.x, x_2790.y) * vec2<f32>(x_2793.x, x_2793.y)) + vec2<f32>(x_2796.w, x_2796.y));
            let x_2800 : f32 = u_xlat13.y;
            u_xlat10.w = x_2800;
            let x_2803 : vec4<f32> = u_xlat8;
            let x_2806 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2809 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2803.x, x_2803.y) * vec2<f32>(x_2806.x, x_2806.y)) + vec2<f32>(x_2809.x, x_2809.w));
            let x_2812 : vec4<f32> = u_xlat13;
            let x_2813 : vec3<f32> = vec3<f32>(x_2812.x, x_2812.z, x_2812.w);
            let x_2814 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2813.x, x_2814.y, x_2813.y, x_2813.z);
            let x_2816 : vec4<f32> = u_xlat8;
            let x_2819 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2822 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2816.x, x_2816.y, x_2816.x, x_2816.y) * vec4<f32>(x_2819.x, x_2819.y, x_2819.x, x_2819.y)) + vec4<f32>(x_2822.x, x_2822.y, x_2822.z, x_2822.y));
            let x_2825 : vec4<f32> = u_xlat8;
            let x_2828 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2831 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2825.x, x_2825.y) * vec2<f32>(x_2828.x, x_2828.y)) + vec2<f32>(x_2831.w, x_2831.y));
            let x_2835 : f32 = u_xlat10.x;
            u_xlat11.x = x_2835;
            let x_2837 : vec4<f32> = u_xlat8;
            let x_2840 : vec4<f32> = x_213.x_AdditionalShadowmapSize;
            let x_2843 : vec4<f32> = u_xlat11;
            let x_2845 : vec2<f32> = ((vec2<f32>(x_2837.x, x_2837.y) * vec2<f32>(x_2840.x, x_2840.y)) + vec2<f32>(x_2843.x, x_2843.y));
            let x_2846 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2845.x, x_2845.y, x_2846.z, x_2846.w);
            let x_2849 : vec4<f32> = u_xlat9;
            let x_2851 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2849.x, x_2849.x, x_2849.x, x_2849.x) * x_2851);
            let x_2854 : vec4<f32> = u_xlat9;
            let x_2856 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2854.y, x_2854.y, x_2854.y, x_2854.y) * x_2856);
            let x_2859 : vec4<f32> = u_xlat9;
            let x_2861 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2859.z, x_2859.z, x_2859.z, x_2859.z) * x_2861);
            let x_2863 : vec4<f32> = u_xlat9;
            let x_2865 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2863.w, x_2863.w, x_2863.w, x_2863.w) * x_2865);
            let x_2868 : vec4<f32> = u_xlat14;
            let x_2869 : vec2<f32> = vec2<f32>(x_2868.x, x_2868.y);
            let x_2871 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2869.x, x_2869.y, x_2871);
            let x_2878 : vec3<f32> = txVec43;
            let x_2880 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2878.xy, x_2878.z);
            u_xlat72 = x_2880;
            let x_2882 : vec4<f32> = u_xlat14;
            let x_2883 : vec2<f32> = vec2<f32>(x_2882.z, x_2882.w);
            let x_2885 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2883.x, x_2883.y, x_2885);
            let x_2892 : vec3<f32> = txVec44;
            let x_2894 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2892.xy, x_2892.z);
            u_xlat73 = x_2894;
            let x_2895 : f32 = u_xlat73;
            let x_2897 : f32 = u_xlat19.y;
            u_xlat73 = (x_2895 * x_2897);
            let x_2900 : f32 = u_xlat19.x;
            let x_2901 : f32 = u_xlat72;
            let x_2903 : f32 = u_xlat73;
            u_xlat72 = ((x_2900 * x_2901) + x_2903);
            let x_2906 : vec2<f32> = u_xlat52;
            let x_2908 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2906.x, x_2906.y, x_2908);
            let x_2915 : vec3<f32> = txVec45;
            let x_2917 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2915.xy, x_2915.z);
            u_xlat73 = x_2917;
            let x_2919 : f32 = u_xlat19.z;
            let x_2920 : f32 = u_xlat73;
            let x_2922 : f32 = u_xlat72;
            u_xlat72 = ((x_2919 * x_2920) + x_2922);
            let x_2925 : vec4<f32> = u_xlat17;
            let x_2926 : vec2<f32> = vec2<f32>(x_2925.x, x_2925.y);
            let x_2928 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2926.x, x_2926.y, x_2928);
            let x_2935 : vec3<f32> = txVec46;
            let x_2937 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2935.xy, x_2935.z);
            u_xlat73 = x_2937;
            let x_2939 : f32 = u_xlat19.w;
            let x_2940 : f32 = u_xlat73;
            let x_2942 : f32 = u_xlat72;
            u_xlat72 = ((x_2939 * x_2940) + x_2942);
            let x_2945 : vec4<f32> = u_xlat15;
            let x_2946 : vec2<f32> = vec2<f32>(x_2945.x, x_2945.y);
            let x_2948 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2946.x, x_2946.y, x_2948);
            let x_2955 : vec3<f32> = txVec47;
            let x_2957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2955.xy, x_2955.z);
            u_xlat73 = x_2957;
            let x_2959 : f32 = u_xlat20.x;
            let x_2960 : f32 = u_xlat73;
            let x_2962 : f32 = u_xlat72;
            u_xlat72 = ((x_2959 * x_2960) + x_2962);
            let x_2965 : vec4<f32> = u_xlat15;
            let x_2966 : vec2<f32> = vec2<f32>(x_2965.z, x_2965.w);
            let x_2968 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2966.x, x_2966.y, x_2968);
            let x_2975 : vec3<f32> = txVec48;
            let x_2977 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2975.xy, x_2975.z);
            u_xlat73 = x_2977;
            let x_2979 : f32 = u_xlat20.y;
            let x_2980 : f32 = u_xlat73;
            let x_2982 : f32 = u_xlat72;
            u_xlat72 = ((x_2979 * x_2980) + x_2982);
            let x_2985 : vec4<f32> = u_xlat16;
            let x_2986 : vec2<f32> = vec2<f32>(x_2985.x, x_2985.y);
            let x_2988 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2986.x, x_2986.y, x_2988);
            let x_2995 : vec3<f32> = txVec49;
            let x_2997 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2995.xy, x_2995.z);
            u_xlat73 = x_2997;
            let x_2999 : f32 = u_xlat20.z;
            let x_3000 : f32 = u_xlat73;
            let x_3002 : f32 = u_xlat72;
            u_xlat72 = ((x_2999 * x_3000) + x_3002);
            let x_3005 : vec4<f32> = u_xlat17;
            let x_3006 : vec2<f32> = vec2<f32>(x_3005.z, x_3005.w);
            let x_3008 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3006.x, x_3006.y, x_3008);
            let x_3015 : vec3<f32> = txVec50;
            let x_3017 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3015.xy, x_3015.z);
            u_xlat73 = x_3017;
            let x_3019 : f32 = u_xlat20.w;
            let x_3020 : f32 = u_xlat73;
            let x_3022 : f32 = u_xlat72;
            u_xlat72 = ((x_3019 * x_3020) + x_3022);
            let x_3025 : vec4<f32> = u_xlat18;
            let x_3026 : vec2<f32> = vec2<f32>(x_3025.x, x_3025.y);
            let x_3028 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3026.x, x_3026.y, x_3028);
            let x_3035 : vec3<f32> = txVec51;
            let x_3037 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3035.xy, x_3035.z);
            u_xlat73 = x_3037;
            let x_3039 : f32 = u_xlat21.x;
            let x_3040 : f32 = u_xlat73;
            let x_3042 : f32 = u_xlat72;
            u_xlat72 = ((x_3039 * x_3040) + x_3042);
            let x_3045 : vec4<f32> = u_xlat18;
            let x_3046 : vec2<f32> = vec2<f32>(x_3045.z, x_3045.w);
            let x_3048 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3046.x, x_3046.y, x_3048);
            let x_3055 : vec3<f32> = txVec52;
            let x_3057 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3055.xy, x_3055.z);
            u_xlat73 = x_3057;
            let x_3059 : f32 = u_xlat21.y;
            let x_3060 : f32 = u_xlat73;
            let x_3062 : f32 = u_xlat72;
            u_xlat72 = ((x_3059 * x_3060) + x_3062);
            let x_3065 : vec2<f32> = u_xlat32;
            let x_3067 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3065.x, x_3065.y, x_3067);
            let x_3074 : vec3<f32> = txVec53;
            let x_3076 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3074.xy, x_3074.z);
            u_xlat73 = x_3076;
            let x_3078 : f32 = u_xlat21.z;
            let x_3079 : f32 = u_xlat73;
            let x_3081 : f32 = u_xlat72;
            u_xlat72 = ((x_3078 * x_3079) + x_3081);
            let x_3084 : vec2<f32> = u_xlat60;
            let x_3086 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3084.x, x_3084.y, x_3086);
            let x_3093 : vec3<f32> = txVec54;
            let x_3095 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3093.xy, x_3093.z);
            u_xlat73 = x_3095;
            let x_3097 : f32 = u_xlat21.w;
            let x_3098 : f32 = u_xlat73;
            let x_3100 : f32 = u_xlat72;
            u_xlat72 = ((x_3097 * x_3098) + x_3100);
            let x_3103 : vec4<f32> = u_xlat13;
            let x_3104 : vec2<f32> = vec2<f32>(x_3103.x, x_3103.y);
            let x_3106 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3104.x, x_3104.y, x_3106);
            let x_3113 : vec3<f32> = txVec55;
            let x_3115 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3113.xy, x_3113.z);
            u_xlat73 = x_3115;
            let x_3117 : f32 = u_xlat9.x;
            let x_3118 : f32 = u_xlat73;
            let x_3120 : f32 = u_xlat72;
            u_xlat72 = ((x_3117 * x_3118) + x_3120);
            let x_3123 : vec4<f32> = u_xlat13;
            let x_3124 : vec2<f32> = vec2<f32>(x_3123.z, x_3123.w);
            let x_3126 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3124.x, x_3124.y, x_3126);
            let x_3133 : vec3<f32> = txVec56;
            let x_3135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3133.xy, x_3133.z);
            u_xlat73 = x_3135;
            let x_3137 : f32 = u_xlat9.y;
            let x_3138 : f32 = u_xlat73;
            let x_3140 : f32 = u_xlat72;
            u_xlat72 = ((x_3137 * x_3138) + x_3140);
            let x_3143 : vec2<f32> = u_xlat55;
            let x_3145 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3143.x, x_3143.y, x_3145);
            let x_3152 : vec3<f32> = txVec57;
            let x_3154 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3152.xy, x_3152.z);
            u_xlat73 = x_3154;
            let x_3156 : f32 = u_xlat9.z;
            let x_3157 : f32 = u_xlat73;
            let x_3159 : f32 = u_xlat72;
            u_xlat72 = ((x_3156 * x_3157) + x_3159);
            let x_3162 : vec4<f32> = u_xlat8;
            let x_3163 : vec2<f32> = vec2<f32>(x_3162.x, x_3162.y);
            let x_3165 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3163.x, x_3163.y, x_3165);
            let x_3172 : vec3<f32> = txVec58;
            let x_3174 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3172.xy, x_3172.z);
            u_xlat73 = x_3174;
            let x_3176 : f32 = u_xlat9.w;
            let x_3177 : f32 = u_xlat73;
            let x_3179 : f32 = u_xlat72;
            u_xlat71 = ((x_3176 * x_3177) + x_3179);
          }
        }
      } else {
        let x_3183 : vec4<f32> = u_xlat7;
        let x_3184 : vec2<f32> = vec2<f32>(x_3183.x, x_3183.y);
        let x_3186 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3184.x, x_3184.y, x_3186);
        let x_3193 : vec3<f32> = txVec59;
        let x_3195 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3193.xy, x_3193.z);
        u_xlat71 = x_3195;
      }
      let x_3196 : i32 = u_xlati48;
      let x_3198 : f32 = x_213.x_AdditionalShadowParams[x_3196].x;
      u_xlat72 = (1.0f + -(x_3198));
      let x_3201 : f32 = u_xlat71;
      let x_3202 : i32 = u_xlati48;
      let x_3204 : f32 = x_213.x_AdditionalShadowParams[x_3202].x;
      let x_3206 : f32 = u_xlat72;
      u_xlat71 = ((x_3201 * x_3204) + x_3206);
      let x_3209 : f32 = u_xlat7.z;
      u_xlatb72 = (0.0f >= x_3209);
      let x_3212 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_3212 >= 1.0f);
      let x_3215 : bool = u_xlatb72;
      let x_3217 : bool = u_xlatb7.x;
      u_xlatb72 = (x_3215 | x_3217);
      let x_3219 : bool = u_xlatb72;
      let x_3220 : f32 = u_xlat71;
      u_xlat71 = select(x_3220, 1.0f, x_3219);
    } else {
      u_xlat71 = 1.0f;
    }
    let x_3223 : f32 = u_xlat71;
    u_xlat72 = (-(x_3223) + 1.0f);
    let x_3226 : f32 = u_xlat68;
    let x_3227 : f32 = u_xlat72;
    let x_3229 : f32 = u_xlat71;
    u_xlat71 = ((x_3226 * x_3227) + x_3229);
    let x_3232 : i32 = u_xlati48;
    u_xlati72 = (1i << bitcast<u32>((x_3232 & 31i)));
    let x_3236 : i32 = u_xlati72;
    let x_3239 : f32 = x_1539.x_AdditionalLightsCookieEnableBits;
    u_xlati72 = bitcast<i32>((bitcast<u32>(x_3236) & bitcast<u32>(x_3239)));
    let x_3243 : i32 = u_xlati72;
    if ((x_3243 != 0i)) {
      let x_3247 : i32 = u_xlati48;
      let x_3249 : f32 = x_1539.x_AdditionalLightsLightTypes[x_3247].el;
      u_xlati72 = i32(x_3249);
      let x_3252 : i32 = u_xlati72;
      u_xlati7 = select(1i, 0i, (x_3252 != 0i));
      let x_3256 : i32 = u_xlati48;
      u_xlati29 = (x_3256 << bitcast<u32>(2i));
      let x_3258 : i32 = u_xlati7;
      if ((x_3258 != 0i)) {
        let x_3262 : vec3<f32> = vs_TEXCOORD1;
        let x_3264 : i32 = u_xlati29;
        let x_3267 : i32 = u_xlati29;
        let x_3271 : vec4<f32> = x_1539.x_AdditionalLightsWorldToLights[((x_3264 + 1i) / 4i)][((x_3267 + 1i) % 4i)];
        let x_3273 : vec3<f32> = (vec3<f32>(x_3262.y, x_3262.y, x_3262.y) * vec3<f32>(x_3271.x, x_3271.y, x_3271.w));
        let x_3274 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3273.x, x_3274.y, x_3273.y, x_3273.z);
        let x_3276 : i32 = u_xlati29;
        let x_3278 : i32 = u_xlati29;
        let x_3281 : vec4<f32> = x_1539.x_AdditionalLightsWorldToLights[(x_3276 / 4i)][(x_3278 % 4i)];
        let x_3283 : vec3<f32> = vs_TEXCOORD1;
        let x_3286 : vec4<f32> = u_xlat7;
        let x_3288 : vec3<f32> = ((vec3<f32>(x_3281.x, x_3281.y, x_3281.w) * vec3<f32>(x_3283.x, x_3283.x, x_3283.x)) + vec3<f32>(x_3286.x, x_3286.z, x_3286.w));
        let x_3289 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3288.x, x_3289.y, x_3288.y, x_3288.z);
        let x_3291 : i32 = u_xlati29;
        let x_3294 : i32 = u_xlati29;
        let x_3298 : vec4<f32> = x_1539.x_AdditionalLightsWorldToLights[((x_3291 + 2i) / 4i)][((x_3294 + 2i) % 4i)];
        let x_3300 : vec3<f32> = vs_TEXCOORD1;
        let x_3303 : vec4<f32> = u_xlat7;
        let x_3305 : vec3<f32> = ((vec3<f32>(x_3298.x, x_3298.y, x_3298.w) * vec3<f32>(x_3300.z, x_3300.z, x_3300.z)) + vec3<f32>(x_3303.x, x_3303.z, x_3303.w));
        let x_3306 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3305.x, x_3306.y, x_3305.y, x_3305.z);
        let x_3308 : vec4<f32> = u_xlat7;
        let x_3310 : i32 = u_xlati29;
        let x_3313 : i32 = u_xlati29;
        let x_3317 : vec4<f32> = x_1539.x_AdditionalLightsWorldToLights[((x_3310 + 3i) / 4i)][((x_3313 + 3i) % 4i)];
        let x_3319 : vec3<f32> = (vec3<f32>(x_3308.x, x_3308.z, x_3308.w) + vec3<f32>(x_3317.x, x_3317.y, x_3317.w));
        let x_3320 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3319.x, x_3320.y, x_3319.y, x_3319.z);
        let x_3322 : vec4<f32> = u_xlat7;
        let x_3324 : vec4<f32> = u_xlat7;
        let x_3326 : vec2<f32> = (vec2<f32>(x_3322.x, x_3322.z) / vec2<f32>(x_3324.w, x_3324.w));
        let x_3327 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3326.x, x_3327.y, x_3326.y, x_3327.w);
        let x_3329 : vec4<f32> = u_xlat7;
        let x_3332 : vec2<f32> = ((vec2<f32>(x_3329.x, x_3329.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3333 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3332.x, x_3333.y, x_3332.y, x_3333.w);
        let x_3335 : vec4<f32> = u_xlat7;
        let x_3339 : vec2<f32> = clamp(vec2<f32>(x_3335.x, x_3335.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3340 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3339.x, x_3340.y, x_3339.y, x_3340.w);
        let x_3342 : i32 = u_xlati48;
        let x_3344 : vec4<f32> = x_1539.x_AdditionalLightsCookieAtlasUVRects[x_3342];
        let x_3346 : vec4<f32> = u_xlat7;
        let x_3349 : i32 = u_xlati48;
        let x_3351 : vec4<f32> = x_1539.x_AdditionalLightsCookieAtlasUVRects[x_3349];
        let x_3353 : vec2<f32> = ((vec2<f32>(x_3344.x, x_3344.y) * vec2<f32>(x_3346.x, x_3346.z)) + vec2<f32>(x_3351.z, x_3351.w));
        let x_3354 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3353.x, x_3354.y, x_3353.y, x_3354.w);
      } else {
        let x_3357 : i32 = u_xlati72;
        u_xlatb72 = (x_3357 == 1i);
        let x_3359 : bool = u_xlatb72;
        u_xlati72 = select(0i, 1i, x_3359);
        let x_3361 : i32 = u_xlati72;
        if ((x_3361 != 0i)) {
          let x_3365 : vec3<f32> = vs_TEXCOORD1;
          let x_3367 : i32 = u_xlati29;
          let x_3370 : i32 = u_xlati29;
          let x_3374 : vec4<f32> = x_1539.x_AdditionalLightsWorldToLights[((x_3367 + 1i) / 4i)][((x_3370 + 1i) % 4i)];
          let x_3376 : vec2<f32> = (vec2<f32>(x_3365.y, x_3365.y) * vec2<f32>(x_3374.x, x_3374.y));
          let x_3377 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3376.x, x_3376.y, x_3377.z, x_3377.w);
          let x_3379 : i32 = u_xlati29;
          let x_3381 : i32 = u_xlati29;
          let x_3384 : vec4<f32> = x_1539.x_AdditionalLightsWorldToLights[(x_3379 / 4i)][(x_3381 % 4i)];
          let x_3386 : vec3<f32> = vs_TEXCOORD1;
          let x_3389 : vec4<f32> = u_xlat8;
          let x_3391 : vec2<f32> = ((vec2<f32>(x_3384.x, x_3384.y) * vec2<f32>(x_3386.x, x_3386.x)) + vec2<f32>(x_3389.x, x_3389.y));
          let x_3392 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3391.x, x_3391.y, x_3392.z, x_3392.w);
          let x_3394 : i32 = u_xlati29;
          let x_3397 : i32 = u_xlati29;
          let x_3401 : vec4<f32> = x_1539.x_AdditionalLightsWorldToLights[((x_3394 + 2i) / 4i)][((x_3397 + 2i) % 4i)];
          let x_3403 : vec3<f32> = vs_TEXCOORD1;
          let x_3406 : vec4<f32> = u_xlat8;
          let x_3408 : vec2<f32> = ((vec2<f32>(x_3401.x, x_3401.y) * vec2<f32>(x_3403.z, x_3403.z)) + vec2<f32>(x_3406.x, x_3406.y));
          let x_3409 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3408.x, x_3408.y, x_3409.z, x_3409.w);
          let x_3411 : vec4<f32> = u_xlat8;
          let x_3413 : i32 = u_xlati29;
          let x_3416 : i32 = u_xlati29;
          let x_3420 : vec4<f32> = x_1539.x_AdditionalLightsWorldToLights[((x_3413 + 3i) / 4i)][((x_3416 + 3i) % 4i)];
          let x_3422 : vec2<f32> = (vec2<f32>(x_3411.x, x_3411.y) + vec2<f32>(x_3420.x, x_3420.y));
          let x_3423 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3422.x, x_3422.y, x_3423.z, x_3423.w);
          let x_3425 : vec4<f32> = u_xlat8;
          let x_3428 : vec2<f32> = ((vec2<f32>(x_3425.x, x_3425.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3429 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3428.x, x_3428.y, x_3429.z, x_3429.w);
          let x_3431 : vec4<f32> = u_xlat8;
          let x_3433 : vec2<f32> = fract(vec2<f32>(x_3431.x, x_3431.y));
          let x_3434 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3433.x, x_3433.y, x_3434.z, x_3434.w);
          let x_3436 : i32 = u_xlati48;
          let x_3438 : vec4<f32> = x_1539.x_AdditionalLightsCookieAtlasUVRects[x_3436];
          let x_3440 : vec4<f32> = u_xlat8;
          let x_3443 : i32 = u_xlati48;
          let x_3445 : vec4<f32> = x_1539.x_AdditionalLightsCookieAtlasUVRects[x_3443];
          let x_3447 : vec2<f32> = ((vec2<f32>(x_3438.x, x_3438.y) * vec2<f32>(x_3440.x, x_3440.y)) + vec2<f32>(x_3445.z, x_3445.w));
          let x_3448 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3447.x, x_3448.y, x_3447.y, x_3448.w);
        } else {
          let x_3451 : vec3<f32> = vs_TEXCOORD1;
          let x_3453 : i32 = u_xlati29;
          let x_3456 : i32 = u_xlati29;
          let x_3460 : vec4<f32> = x_1539.x_AdditionalLightsWorldToLights[((x_3453 + 1i) / 4i)][((x_3456 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_3451.y, x_3451.y, x_3451.y, x_3451.y) * x_3460);
          let x_3462 : i32 = u_xlati29;
          let x_3464 : i32 = u_xlati29;
          let x_3467 : vec4<f32> = x_1539.x_AdditionalLightsWorldToLights[(x_3462 / 4i)][(x_3464 % 4i)];
          let x_3468 : vec3<f32> = vs_TEXCOORD1;
          let x_3471 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_3467 * vec4<f32>(x_3468.x, x_3468.x, x_3468.x, x_3468.x)) + x_3471);
          let x_3473 : i32 = u_xlati29;
          let x_3476 : i32 = u_xlati29;
          let x_3480 : vec4<f32> = x_1539.x_AdditionalLightsWorldToLights[((x_3473 + 2i) / 4i)][((x_3476 + 2i) % 4i)];
          let x_3481 : vec3<f32> = vs_TEXCOORD1;
          let x_3484 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_3480 * vec4<f32>(x_3481.z, x_3481.z, x_3481.z, x_3481.z)) + x_3484);
          let x_3486 : vec4<f32> = u_xlat8;
          let x_3487 : i32 = u_xlati29;
          let x_3490 : i32 = u_xlati29;
          let x_3494 : vec4<f32> = x_1539.x_AdditionalLightsWorldToLights[((x_3487 + 3i) / 4i)][((x_3490 + 3i) % 4i)];
          u_xlat8 = (x_3486 + x_3494);
          let x_3496 : vec4<f32> = u_xlat8;
          let x_3498 : vec4<f32> = u_xlat8;
          let x_3500 : vec3<f32> = (vec3<f32>(x_3496.x, x_3496.y, x_3496.z) / vec3<f32>(x_3498.w, x_3498.w, x_3498.w));
          let x_3501 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3500.x, x_3500.y, x_3500.z, x_3501.w);
          let x_3503 : vec4<f32> = u_xlat8;
          let x_3505 : vec4<f32> = u_xlat8;
          u_xlat72 = dot(vec3<f32>(x_3503.x, x_3503.y, x_3503.z), vec3<f32>(x_3505.x, x_3505.y, x_3505.z));
          let x_3508 : f32 = u_xlat72;
          u_xlat72 = inverseSqrt(x_3508);
          let x_3510 : f32 = u_xlat72;
          let x_3512 : vec4<f32> = u_xlat8;
          let x_3514 : vec3<f32> = (vec3<f32>(x_3510, x_3510, x_3510) * vec3<f32>(x_3512.x, x_3512.y, x_3512.z));
          let x_3515 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3514.x, x_3514.y, x_3514.z, x_3515.w);
          let x_3517 : vec4<f32> = u_xlat8;
          u_xlat72 = dot(abs(vec3<f32>(x_3517.x, x_3517.y, x_3517.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3522 : f32 = u_xlat72;
          u_xlat72 = max(x_3522, 0.00000099999999747524f);
          let x_3525 : f32 = u_xlat72;
          u_xlat72 = (1.0f / x_3525);
          let x_3527 : f32 = u_xlat72;
          let x_3529 : vec4<f32> = u_xlat8;
          let x_3531 : vec3<f32> = (vec3<f32>(x_3527, x_3527, x_3527) * vec3<f32>(x_3529.z, x_3529.x, x_3529.y));
          let x_3532 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3531.x, x_3531.y, x_3531.z, x_3532.w);
          let x_3535 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_3535);
          let x_3539 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_3539, 0.0f, 1.0f);
          let x_3544 : vec4<f32> = u_xlat9;
          let x_3546 : vec4<bool> = (vec4<f32>(x_3544.y, x_3544.y, x_3544.z, x_3544.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3547 : vec2<bool> = vec2<bool>(x_3546.x, x_3546.z);
          let x_3548 : vec3<bool> = u_xlatb29;
          u_xlatb29 = vec3<bool>(x_3547.x, x_3548.y, x_3547.y);
          let x_3551 : bool = u_xlatb29.x;
          if (x_3551) {
            let x_3556 : f32 = u_xlat9.x;
            x_3552 = x_3556;
          } else {
            let x_3559 : f32 = u_xlat9.x;
            x_3552 = -(x_3559);
          }
          let x_3561 : f32 = x_3552;
          u_xlat29.x = x_3561;
          let x_3564 : bool = u_xlatb29.z;
          if (x_3564) {
            let x_3569 : f32 = u_xlat9.x;
            x_3565 = x_3569;
          } else {
            let x_3572 : f32 = u_xlat9.x;
            x_3565 = -(x_3572);
          }
          let x_3574 : f32 = x_3565;
          u_xlat29.z = x_3574;
          let x_3576 : vec4<f32> = u_xlat8;
          let x_3578 : f32 = u_xlat72;
          let x_3581 : vec3<f32> = u_xlat29;
          let x_3583 : vec2<f32> = ((vec2<f32>(x_3576.x, x_3576.y) * vec2<f32>(x_3578, x_3578)) + vec2<f32>(x_3581.x, x_3581.z));
          let x_3584 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3583.x, x_3584.y, x_3583.y);
          let x_3586 : vec3<f32> = u_xlat29;
          let x_3589 : vec2<f32> = ((vec2<f32>(x_3586.x, x_3586.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3590 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3589.x, x_3590.y, x_3589.y);
          let x_3592 : vec3<f32> = u_xlat29;
          let x_3596 : vec2<f32> = clamp(vec2<f32>(x_3592.x, x_3592.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3597 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3596.x, x_3597.y, x_3596.y);
          let x_3599 : i32 = u_xlati48;
          let x_3601 : vec4<f32> = x_1539.x_AdditionalLightsCookieAtlasUVRects[x_3599];
          let x_3603 : vec3<f32> = u_xlat29;
          let x_3606 : i32 = u_xlati48;
          let x_3608 : vec4<f32> = x_1539.x_AdditionalLightsCookieAtlasUVRects[x_3606];
          let x_3610 : vec2<f32> = ((vec2<f32>(x_3601.x, x_3601.y) * vec2<f32>(x_3603.x, x_3603.z)) + vec2<f32>(x_3608.z, x_3608.w));
          let x_3611 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3610.x, x_3611.y, x_3610.y, x_3611.w);
        }
      }
      let x_3618 : vec4<f32> = u_xlat7;
      let x_3620 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3618.x, x_3618.z), 0.0f);
      u_xlat7 = x_3620;
      let x_3622 : bool = u_xlatb4.y;
      if (x_3622) {
        let x_3627 : f32 = u_xlat7.w;
        x_3623 = x_3627;
      } else {
        let x_3630 : f32 = u_xlat7.x;
        x_3623 = x_3630;
      }
      let x_3631 : f32 = x_3623;
      u_xlat72 = x_3631;
      let x_3633 : bool = u_xlatb4.x;
      if (x_3633) {
        let x_3637 : vec4<f32> = u_xlat7;
        x_3634 = vec3<f32>(x_3637.x, x_3637.y, x_3637.z);
      } else {
        let x_3640 : f32 = u_xlat72;
        x_3634 = vec3<f32>(x_3640, x_3640, x_3640);
      }
      let x_3642 : vec3<f32> = x_3634;
      let x_3643 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_3642.x, x_3642.y, x_3642.z, x_3643.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_3649 : vec4<f32> = u_xlat7;
    let x_3651 : i32 = u_xlati48;
    let x_3653 : vec4<f32> = x_1784.x_AdditionalLightsColor[x_3651];
    let x_3655 : vec3<f32> = (vec3<f32>(x_3649.x, x_3649.y, x_3649.z) * vec3<f32>(x_3653.x, x_3653.y, x_3653.z));
    let x_3656 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3655.x, x_3655.y, x_3655.z, x_3656.w);
    let x_3658 : f32 = u_xlat70;
    let x_3659 : f32 = u_xlat71;
    u_xlat48 = (x_3658 * x_3659);
    let x_3661 : f32 = u_xlat48;
    let x_3663 : vec4<f32> = u_xlat7;
    let x_3665 : vec3<f32> = (vec3<f32>(x_3661, x_3661, x_3661) * vec3<f32>(x_3663.x, x_3663.y, x_3663.z));
    let x_3666 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3665.x, x_3665.y, x_3665.z, x_3666.w);
    let x_3668 : vec3<f32> = u_xlat1;
    let x_3669 : vec4<f32> = u_xlat6;
    u_xlat48 = dot(x_3668, vec3<f32>(x_3669.x, x_3669.y, x_3669.z));
    let x_3672 : f32 = u_xlat48;
    u_xlat48 = clamp(x_3672, 0.0f, 1.0f);
    let x_3674 : f32 = u_xlat48;
    let x_3676 : vec4<f32> = u_xlat7;
    let x_3678 : vec3<f32> = (vec3<f32>(x_3674, x_3674, x_3674) * vec3<f32>(x_3676.x, x_3676.y, x_3676.z));
    let x_3679 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3678.x, x_3678.y, x_3678.z, x_3679.w);
    let x_3681 : vec4<f32> = u_xlat6;
    let x_3683 : vec4<f32> = u_xlat0;
    let x_3686 : vec4<f32> = u_xlat5;
    let x_3688 : vec3<f32> = ((vec3<f32>(x_3681.x, x_3681.y, x_3681.z) * vec3<f32>(x_3683.y, x_3683.z, x_3683.w)) + vec3<f32>(x_3686.x, x_3686.y, x_3686.z));
    let x_3689 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3688.x, x_3688.y, x_3688.z, x_3689.w);

    continuing {
      let x_3691 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3691 + bitcast<u32>(1i));
    }
  }
  let x_3694 : vec4<f32> = u_xlat2;
  let x_3696 : vec4<f32> = u_xlat0;
  let x_3699 : vec4<f32> = u_xlat3;
  u_xlat22 = ((vec3<f32>(x_3694.x, x_3694.y, x_3694.z) * vec3<f32>(x_3696.y, x_3696.z, x_3696.w)) + vec3<f32>(x_3699.x, x_3699.y, x_3699.z));
  let x_3704 : vec4<f32> = u_xlat5;
  let x_3706 : vec3<f32> = u_xlat22;
  let x_3707 : vec3<f32> = (vec3<f32>(x_3704.x, x_3704.y, x_3704.z) + x_3706);
  let x_3708 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3707.x, x_3707.y, x_3707.z, x_3708.w);
  let x_3712 : f32 = x_56.x_Surface;
  u_xlatb22 = (x_3712 == 1.0f);
  let x_3714 : bool = u_xlatb22;
  if (x_3714) {
    let x_3719 : f32 = u_xlat0.x;
    x_3715 = x_3719;
  } else {
    x_3715 = 1.0f;
  }
  let x_3721 : f32 = x_3715;
  SV_Target0.w = x_3721;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


