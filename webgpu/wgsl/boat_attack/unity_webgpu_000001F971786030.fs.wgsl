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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_40 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_75 : UnityPerDraw;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat67 : f32;

var<private> u_xlatb67 : bool;

@group(1) @binding(4) var<uniform> x_164 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_1492 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlat69 : f32;

var<private> u_xlatu67 : u32;

var<private> u_xlatu48 : u32;

var<private> u_xlati70 : i32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1741 : AdditionalLights;

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

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb22 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb48 : bool;

var<private> u_xlatu69 : u32;

fn main_1() {
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
  var x_1581 : f32;
  var x_1592 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1882 : f32;
  var x_1893 : f32;
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
  var x_3509 : f32;
  var x_3522 : f32;
  var x_3580 : f32;
  var x_3591 : vec3<f32>;
  var x_3672 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_36 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_40.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_36.w, x_36.x, x_36.y, x_36.z) * vec4<f32>(x_44.w, x_44.x, x_44.y, x_44.z));
  let x_50 : vec3<f32> = vs_TEXCOORD2;
  let x_51 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_50, x_51);
  let x_56 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_56);
  let x_59 : vec4<f32> = u_xlat1;
  let x_61 : vec3<f32> = vs_TEXCOORD2;
  let x_62 : vec3<f32> = (vec3<f32>(x_59.x, x_59.x, x_59.x) * x_61);
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  u_xlat1.w = 1.0f;
  let x_78 : vec4<f32> = x_75.unity_SHAr;
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_78, x_79);
  let x_84 : vec4<f32> = x_75.unity_SHAg;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_84, x_85);
  let x_91 : vec4<f32> = x_75.unity_SHAb;
  let x_92 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_91, x_92);
  let x_96 : vec4<f32> = u_xlat1;
  let x_98 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_96.y, x_96.z, x_96.z, x_96.x) * vec4<f32>(x_98.x, x_98.y, x_98.z, x_98.z));
  let x_104 : vec4<f32> = x_75.unity_SHBr;
  let x_105 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_104, x_105);
  let x_110 : vec4<f32> = x_75.unity_SHBg;
  let x_111 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_110, x_111);
  let x_116 : vec4<f32> = x_75.unity_SHBb;
  let x_117 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_116, x_117);
  let x_122 : f32 = u_xlat1.y;
  let x_124 : f32 = u_xlat1.y;
  u_xlat67 = (x_122 * x_124);
  let x_127 : f32 = u_xlat1.x;
  let x_129 : f32 = u_xlat1.x;
  let x_131 : f32 = u_xlat67;
  u_xlat67 = ((x_127 * x_129) + -(x_131));
  let x_136 : vec4<f32> = x_75.unity_SHC;
  let x_138 : f32 = u_xlat67;
  let x_141 : vec4<f32> = u_xlat4;
  let x_143 : vec3<f32> = ((vec3<f32>(x_136.x, x_136.y, x_136.z) * vec3<f32>(x_138, x_138, x_138)) + vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_144 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_146 : vec3<f32> = u_xlat2;
  let x_147 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_146 + vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_150, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_167 : f32 = x_164.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_167);
  let x_169 : bool = u_xlatb67;
  if (x_169) {
    let x_173 : f32 = x_164.x_MainLightShadowParams.y;
    u_xlatb67 = (x_173 == 1.0f);
    let x_175 : bool = u_xlatb67;
    if (x_175) {
      let x_180 : vec4<f32> = vs_TEXCOORD6;
      let x_184 : vec4<f32> = x_164.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_180.x, x_180.y, x_180.x, x_180.y) + x_184);
      let x_188 : vec4<f32> = u_xlat3;
      let x_189 : vec2<f32> = vec2<f32>(x_188.x, x_188.y);
      let x_192 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_189.x, x_189.y, x_192);
      let x_204 : vec3<f32> = txVec0;
      let x_206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_204.xy, x_204.z);
      u_xlat4.x = x_206;
      let x_209 : vec4<f32> = u_xlat3;
      let x_210 : vec2<f32> = vec2<f32>(x_209.z, x_209.w);
      let x_212 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_210.x, x_210.y, x_212);
      let x_219 : vec3<f32> = txVec1;
      let x_221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_219.xy, x_219.z);
      u_xlat4.y = x_221;
      let x_223 : vec4<f32> = vs_TEXCOORD6;
      let x_227 : vec4<f32> = x_164.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_223.x, x_223.y, x_223.x, x_223.y) + x_227);
      let x_230 : vec4<f32> = u_xlat3;
      let x_231 : vec2<f32> = vec2<f32>(x_230.x, x_230.y);
      let x_233 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_231.x, x_231.y, x_233);
      let x_240 : vec3<f32> = txVec2;
      let x_242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_240.xy, x_240.z);
      u_xlat4.z = x_242;
      let x_245 : vec4<f32> = u_xlat3;
      let x_246 : vec2<f32> = vec2<f32>(x_245.z, x_245.w);
      let x_248 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_246.x, x_246.y, x_248);
      let x_255 : vec3<f32> = txVec3;
      let x_257 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_255.xy, x_255.z);
      u_xlat4.w = x_257;
      let x_259 : vec4<f32> = u_xlat4;
      u_xlat67 = dot(x_259, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_266 : f32 = x_164.x_MainLightShadowParams.y;
      u_xlatb68 = (x_266 == 2.0f);
      let x_269 : bool = u_xlatb68;
      if (x_269) {
        let x_272 : vec4<f32> = vs_TEXCOORD6;
        let x_276 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_281 : vec2<f32> = ((vec2<f32>(x_272.x, x_272.y) * vec2<f32>(x_276.z, x_276.w)) + vec2<f32>(0.5f, 0.5f));
        let x_282 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_281.x, x_281.y, x_282.z, x_282.w);
        let x_284 : vec4<f32> = u_xlat3;
        let x_286 : vec2<f32> = floor(vec2<f32>(x_284.x, x_284.y));
        let x_287 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_286.x, x_286.y, x_287.z, x_287.w);
        let x_291 : vec4<f32> = vs_TEXCOORD6;
        let x_294 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_297 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_291.x, x_291.y) * vec2<f32>(x_294.z, x_294.w)) + -(vec2<f32>(x_297.x, x_297.y)));
        let x_301 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_301.x, x_301.x, x_301.y, x_301.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_306 : vec4<f32> = u_xlat4;
        let x_308 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_306.x, x_306.x, x_306.z, x_306.z) * vec4<f32>(x_308.x, x_308.x, x_308.z, x_308.z));
        let x_311 : vec4<f32> = u_xlat5;
        let x_315 : vec2<f32> = (vec2<f32>(x_311.y, x_311.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_316 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_315.x, x_316.y, x_315.y, x_316.w);
        let x_318 : vec4<f32> = u_xlat5;
        let x_321 : vec2<f32> = u_xlat47;
        let x_323 : vec2<f32> = ((vec2<f32>(x_318.x, x_318.z) * vec2<f32>(0.5f, 0.5f)) + -(x_321));
        let x_324 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_323.x, x_323.y, x_324.z, x_324.w);
        let x_327 : vec2<f32> = u_xlat47;
        u_xlat49 = (-(x_327) + vec2<f32>(1.0f, 1.0f));
        let x_332 : vec2<f32> = u_xlat47;
        let x_334 : vec2<f32> = min(x_332, vec2<f32>(0.0f, 0.0f));
        let x_335 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_335.z, x_335.w);
        let x_337 : vec4<f32> = u_xlat6;
        let x_340 : vec4<f32> = u_xlat6;
        let x_343 : vec2<f32> = u_xlat49;
        let x_344 : vec2<f32> = ((-(vec2<f32>(x_337.x, x_337.y)) * vec2<f32>(x_340.x, x_340.y)) + x_343);
        let x_345 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_344.x, x_344.y, x_345.z, x_345.w);
        let x_347 : vec2<f32> = u_xlat47;
        u_xlat47 = max(x_347, vec2<f32>(0.0f, 0.0f));
        let x_349 : vec2<f32> = u_xlat47;
        let x_351 : vec2<f32> = u_xlat47;
        let x_353 : vec4<f32> = u_xlat4;
        u_xlat47 = ((-(x_349) * x_351) + vec2<f32>(x_353.y, x_353.w));
        let x_356 : vec4<f32> = u_xlat6;
        let x_358 : vec2<f32> = (vec2<f32>(x_356.x, x_356.y) + vec2<f32>(1.0f, 1.0f));
        let x_359 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_358.x, x_358.y, x_359.z, x_359.w);
        let x_361 : vec2<f32> = u_xlat47;
        u_xlat47 = (x_361 + vec2<f32>(1.0f, 1.0f));
        let x_364 : vec4<f32> = u_xlat5;
        let x_368 : vec2<f32> = (vec2<f32>(x_364.x, x_364.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_369 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_368.x, x_368.y, x_369.z, x_369.w);
        let x_371 : vec2<f32> = u_xlat49;
        let x_372 : vec2<f32> = (x_371 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_373 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_372.x, x_372.y, x_373.z, x_373.w);
        let x_375 : vec4<f32> = u_xlat6;
        let x_377 : vec2<f32> = (vec2<f32>(x_375.x, x_375.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_378 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_378.z, x_378.w);
        let x_381 : vec2<f32> = u_xlat47;
        let x_382 : vec2<f32> = (x_381 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_383 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
        let x_385 : vec4<f32> = u_xlat4;
        u_xlat47 = (vec2<f32>(x_385.y, x_385.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_389 : f32 = u_xlat6.x;
        u_xlat7.z = x_389;
        let x_392 : f32 = u_xlat47.x;
        u_xlat7.w = x_392;
        let x_395 : f32 = u_xlat8.x;
        u_xlat5.z = x_395;
        let x_398 : f32 = u_xlat4.x;
        u_xlat5.w = x_398;
        let x_401 : vec4<f32> = u_xlat5;
        let x_403 : vec4<f32> = u_xlat7;
        u_xlat9 = (vec4<f32>(x_401.z, x_401.w, x_401.x, x_401.z) + vec4<f32>(x_403.z, x_403.w, x_403.x, x_403.z));
        let x_407 : f32 = u_xlat7.y;
        u_xlat6.z = x_407;
        let x_410 : f32 = u_xlat47.y;
        u_xlat6.w = x_410;
        let x_413 : f32 = u_xlat5.y;
        u_xlat8.z = x_413;
        let x_416 : f32 = u_xlat4.z;
        u_xlat8.w = x_416;
        let x_418 : vec4<f32> = u_xlat6;
        let x_420 : vec4<f32> = u_xlat8;
        let x_422 : vec3<f32> = (vec3<f32>(x_418.z, x_418.y, x_418.w) + vec3<f32>(x_420.z, x_420.y, x_420.w));
        let x_423 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
        let x_425 : vec4<f32> = u_xlat5;
        let x_427 : vec4<f32> = u_xlat9;
        let x_429 : vec3<f32> = (vec3<f32>(x_425.x, x_425.z, x_425.w) / vec3<f32>(x_427.z, x_427.w, x_427.y));
        let x_430 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
        let x_432 : vec4<f32> = u_xlat5;
        let x_438 : vec3<f32> = (vec3<f32>(x_432.x, x_432.y, x_432.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_439 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
        let x_441 : vec4<f32> = u_xlat8;
        let x_443 : vec4<f32> = u_xlat4;
        let x_445 : vec3<f32> = (vec3<f32>(x_441.z, x_441.y, x_441.w) / vec3<f32>(x_443.x, x_443.y, x_443.z));
        let x_446 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
        let x_448 : vec4<f32> = u_xlat6;
        let x_450 : vec3<f32> = (vec3<f32>(x_448.x, x_448.y, x_448.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_451 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
        let x_453 : vec4<f32> = u_xlat5;
        let x_456 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_458 : vec3<f32> = (vec3<f32>(x_453.y, x_453.x, x_453.z) * vec3<f32>(x_456.x, x_456.x, x_456.x));
        let x_459 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
        let x_461 : vec4<f32> = u_xlat6;
        let x_464 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_466 : vec3<f32> = (vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_464.y, x_464.y, x_464.y));
        let x_467 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
        let x_470 : f32 = u_xlat6.x;
        u_xlat5.w = x_470;
        let x_472 : vec4<f32> = u_xlat3;
        let x_475 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_478 : vec4<f32> = u_xlat5;
        u_xlat7 = ((vec4<f32>(x_472.x, x_472.y, x_472.x, x_472.y) * vec4<f32>(x_475.x, x_475.y, x_475.x, x_475.y)) + vec4<f32>(x_478.y, x_478.w, x_478.x, x_478.w));
        let x_481 : vec4<f32> = u_xlat3;
        let x_484 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_487 : vec4<f32> = u_xlat5;
        u_xlat47 = ((vec2<f32>(x_481.x, x_481.y) * vec2<f32>(x_484.x, x_484.y)) + vec2<f32>(x_487.z, x_487.w));
        let x_491 : f32 = u_xlat5.y;
        u_xlat6.w = x_491;
        let x_493 : vec4<f32> = u_xlat6;
        let x_494 : vec2<f32> = vec2<f32>(x_493.y, x_493.z);
        let x_495 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_495.x, x_494.x, x_495.z, x_494.y);
        let x_497 : vec4<f32> = u_xlat3;
        let x_500 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_503 : vec4<f32> = u_xlat5;
        u_xlat8 = ((vec4<f32>(x_497.x, x_497.y, x_497.x, x_497.y) * vec4<f32>(x_500.x, x_500.y, x_500.x, x_500.y)) + vec4<f32>(x_503.x, x_503.y, x_503.z, x_503.y));
        let x_506 : vec4<f32> = u_xlat3;
        let x_509 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_512 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_506.x, x_506.y, x_506.x, x_506.y) * vec4<f32>(x_509.x, x_509.y, x_509.x, x_509.y)) + vec4<f32>(x_512.w, x_512.y, x_512.w, x_512.z));
        let x_515 : vec4<f32> = u_xlat3;
        let x_518 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_521 : vec4<f32> = u_xlat5;
        u_xlat5 = ((vec4<f32>(x_515.x, x_515.y, x_515.x, x_515.y) * vec4<f32>(x_518.x, x_518.y, x_518.x, x_518.y)) + vec4<f32>(x_521.x, x_521.w, x_521.z, x_521.w));
        let x_525 : vec4<f32> = u_xlat4;
        let x_527 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_525.x, x_525.x, x_525.x, x_525.y) * vec4<f32>(x_527.z, x_527.w, x_527.y, x_527.z));
        let x_531 : vec4<f32> = u_xlat4;
        let x_533 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_531.y, x_531.y, x_531.z, x_531.z) * x_533);
        let x_537 : f32 = u_xlat4.z;
        let x_539 : f32 = u_xlat9.y;
        u_xlat68 = (x_537 * x_539);
        let x_542 : vec4<f32> = u_xlat7;
        let x_543 : vec2<f32> = vec2<f32>(x_542.x, x_542.y);
        let x_545 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_543.x, x_543.y, x_545);
        let x_552 : vec3<f32> = txVec4;
        let x_554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_552.xy, x_552.z);
        u_xlat3.x = x_554;
        let x_557 : vec4<f32> = u_xlat7;
        let x_558 : vec2<f32> = vec2<f32>(x_557.z, x_557.w);
        let x_560 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_558.x, x_558.y, x_560);
        let x_568 : vec3<f32> = txVec5;
        let x_570 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_568.xy, x_568.z);
        u_xlat25 = x_570;
        let x_571 : f32 = u_xlat25;
        let x_573 : f32 = u_xlat10.y;
        u_xlat25 = (x_571 * x_573);
        let x_576 : f32 = u_xlat10.x;
        let x_578 : f32 = u_xlat3.x;
        let x_580 : f32 = u_xlat25;
        u_xlat3.x = ((x_576 * x_578) + x_580);
        let x_584 : vec2<f32> = u_xlat47;
        let x_586 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_584.x, x_584.y, x_586);
        let x_593 : vec3<f32> = txVec6;
        let x_595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_593.xy, x_593.z);
        u_xlat25 = x_595;
        let x_597 : f32 = u_xlat10.z;
        let x_598 : f32 = u_xlat25;
        let x_601 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_597 * x_598) + x_601);
        let x_605 : vec4<f32> = u_xlat6;
        let x_606 : vec2<f32> = vec2<f32>(x_605.x, x_605.y);
        let x_608 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_606.x, x_606.y, x_608);
        let x_615 : vec3<f32> = txVec7;
        let x_617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_615.xy, x_615.z);
        u_xlat25 = x_617;
        let x_619 : f32 = u_xlat10.w;
        let x_620 : f32 = u_xlat25;
        let x_623 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_619 * x_620) + x_623);
        let x_627 : vec4<f32> = u_xlat8;
        let x_628 : vec2<f32> = vec2<f32>(x_627.x, x_627.y);
        let x_630 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_628.x, x_628.y, x_630);
        let x_637 : vec3<f32> = txVec8;
        let x_639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_637.xy, x_637.z);
        u_xlat25 = x_639;
        let x_641 : f32 = u_xlat11.x;
        let x_642 : f32 = u_xlat25;
        let x_645 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_641 * x_642) + x_645);
        let x_649 : vec4<f32> = u_xlat8;
        let x_650 : vec2<f32> = vec2<f32>(x_649.z, x_649.w);
        let x_652 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_650.x, x_650.y, x_652);
        let x_659 : vec3<f32> = txVec9;
        let x_661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_659.xy, x_659.z);
        u_xlat25 = x_661;
        let x_663 : f32 = u_xlat11.y;
        let x_664 : f32 = u_xlat25;
        let x_667 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_663 * x_664) + x_667);
        let x_671 : vec4<f32> = u_xlat6;
        let x_672 : vec2<f32> = vec2<f32>(x_671.z, x_671.w);
        let x_674 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_672.x, x_672.y, x_674);
        let x_681 : vec3<f32> = txVec10;
        let x_683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_681.xy, x_681.z);
        u_xlat25 = x_683;
        let x_685 : f32 = u_xlat11.z;
        let x_686 : f32 = u_xlat25;
        let x_689 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_685 * x_686) + x_689);
        let x_693 : vec4<f32> = u_xlat5;
        let x_694 : vec2<f32> = vec2<f32>(x_693.x, x_693.y);
        let x_696 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_694.x, x_694.y, x_696);
        let x_703 : vec3<f32> = txVec11;
        let x_705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_703.xy, x_703.z);
        u_xlat25 = x_705;
        let x_707 : f32 = u_xlat11.w;
        let x_708 : f32 = u_xlat25;
        let x_711 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_707 * x_708) + x_711);
        let x_715 : vec4<f32> = u_xlat5;
        let x_716 : vec2<f32> = vec2<f32>(x_715.z, x_715.w);
        let x_718 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_725 : vec3<f32> = txVec12;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_725.xy, x_725.z);
        u_xlat25 = x_727;
        let x_728 : f32 = u_xlat68;
        let x_729 : f32 = u_xlat25;
        let x_732 : f32 = u_xlat3.x;
        u_xlat67 = ((x_728 * x_729) + x_732);
      } else {
        let x_735 : vec4<f32> = vs_TEXCOORD6;
        let x_738 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_741 : vec2<f32> = ((vec2<f32>(x_735.x, x_735.y) * vec2<f32>(x_738.z, x_738.w)) + vec2<f32>(0.5f, 0.5f));
        let x_742 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_741.x, x_741.y, x_742.z, x_742.w);
        let x_744 : vec4<f32> = u_xlat3;
        let x_746 : vec2<f32> = floor(vec2<f32>(x_744.x, x_744.y));
        let x_747 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_746.x, x_746.y, x_747.z, x_747.w);
        let x_749 : vec4<f32> = vs_TEXCOORD6;
        let x_752 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_755 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_749.x, x_749.y) * vec2<f32>(x_752.z, x_752.w)) + -(vec2<f32>(x_755.x, x_755.y)));
        let x_759 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_759.x, x_759.x, x_759.y, x_759.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_762 : vec4<f32> = u_xlat4;
        let x_764 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_762.x, x_762.x, x_762.z, x_762.z) * vec4<f32>(x_764.x, x_764.x, x_764.z, x_764.z));
        let x_767 : vec4<f32> = u_xlat5;
        let x_771 : vec2<f32> = (vec2<f32>(x_767.y, x_767.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_772 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_772.x, x_771.x, x_772.z, x_771.y);
        let x_774 : vec4<f32> = u_xlat5;
        let x_777 : vec2<f32> = u_xlat47;
        let x_779 : vec2<f32> = ((vec2<f32>(x_774.x, x_774.z) * vec2<f32>(0.5f, 0.5f)) + -(x_777));
        let x_780 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_779.x, x_780.y, x_779.y, x_780.w);
        let x_782 : vec2<f32> = u_xlat47;
        let x_784 : vec2<f32> = (-(x_782) + vec2<f32>(1.0f, 1.0f));
        let x_785 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_784.x, x_784.y, x_785.z, x_785.w);
        let x_787 : vec2<f32> = u_xlat47;
        u_xlat49 = min(x_787, vec2<f32>(0.0f, 0.0f));
        let x_789 : vec2<f32> = u_xlat49;
        let x_791 : vec2<f32> = u_xlat49;
        let x_793 : vec4<f32> = u_xlat5;
        let x_795 : vec2<f32> = ((-(x_789) * x_791) + vec2<f32>(x_793.x, x_793.y));
        let x_796 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_795.x, x_795.y, x_796.z, x_796.w);
        let x_798 : vec2<f32> = u_xlat47;
        u_xlat49 = max(x_798, vec2<f32>(0.0f, 0.0f));
        let x_801 : vec2<f32> = u_xlat49;
        let x_803 : vec2<f32> = u_xlat49;
        let x_805 : vec4<f32> = u_xlat4;
        let x_807 : vec2<f32> = ((-(x_801) * x_803) + vec2<f32>(x_805.y, x_805.w));
        let x_808 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_807.x, x_808.y, x_807.y);
        let x_810 : vec4<f32> = u_xlat5;
        let x_813 : vec2<f32> = (vec2<f32>(x_810.x, x_810.y) + vec2<f32>(2.0f, 2.0f));
        let x_814 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_813.x, x_813.y, x_814.z, x_814.w);
        let x_816 : vec3<f32> = u_xlat26;
        let x_818 : vec2<f32> = (vec2<f32>(x_816.x, x_816.z) + vec2<f32>(2.0f, 2.0f));
        let x_819 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_819.x, x_818.x, x_819.z, x_818.y);
        let x_822 : f32 = u_xlat4.y;
        u_xlat7.z = (x_822 * 0.08163200318813323975f);
        let x_826 : vec4<f32> = u_xlat4;
        let x_829 : vec3<f32> = (vec3<f32>(x_826.z, x_826.x, x_826.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_830 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
        let x_832 : vec4<f32> = u_xlat5;
        let x_835 : vec2<f32> = (vec2<f32>(x_832.x, x_832.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_836 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_835.x, x_835.y, x_836.z, x_836.w);
        let x_839 : f32 = u_xlat8.y;
        u_xlat7.x = x_839;
        let x_841 : vec2<f32> = u_xlat47;
        let x_848 : vec2<f32> = ((vec2<f32>(x_841.x, x_841.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_849 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_849.x, x_848.x, x_849.z, x_848.y);
        let x_851 : vec2<f32> = u_xlat47;
        let x_855 : vec2<f32> = ((vec2<f32>(x_851.x, x_851.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_856 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_855.x, x_856.y, x_855.y, x_856.w);
        let x_859 : f32 = u_xlat4.x;
        u_xlat5.y = x_859;
        let x_862 : f32 = u_xlat6.y;
        u_xlat5.w = x_862;
        let x_864 : vec4<f32> = u_xlat5;
        let x_865 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_864 + x_865);
        let x_867 : vec2<f32> = u_xlat47;
        let x_870 : vec2<f32> = ((vec2<f32>(x_867.y, x_867.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_871 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_871.x, x_870.x, x_871.z, x_870.y);
        let x_873 : vec2<f32> = u_xlat47;
        let x_876 : vec2<f32> = ((vec2<f32>(x_873.y, x_873.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_877 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_876.x, x_877.y, x_876.y, x_877.w);
        let x_880 : f32 = u_xlat4.y;
        u_xlat6.y = x_880;
        let x_882 : vec4<f32> = u_xlat6;
        let x_883 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_882 + x_883);
        let x_885 : vec4<f32> = u_xlat5;
        let x_886 : vec4<f32> = u_xlat7;
        u_xlat5 = (x_885 / x_886);
        let x_888 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_888 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_894 : vec4<f32> = u_xlat6;
        let x_895 : vec4<f32> = u_xlat4;
        u_xlat6 = (x_894 / x_895);
        let x_897 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_897 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_899 : vec4<f32> = u_xlat5;
        let x_902 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_899.w, x_899.x, x_899.y, x_899.z) * vec4<f32>(x_902.x, x_902.x, x_902.x, x_902.x));
        let x_905 : vec4<f32> = u_xlat6;
        let x_908 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_905.x, x_905.w, x_905.y, x_905.z) * vec4<f32>(x_908.y, x_908.y, x_908.y, x_908.y));
        let x_911 : vec4<f32> = u_xlat5;
        let x_912 : vec3<f32> = vec3<f32>(x_911.y, x_911.z, x_911.w);
        let x_913 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_912.x, x_913.y, x_912.y, x_912.z);
        let x_916 : f32 = u_xlat6.x;
        u_xlat8.y = x_916;
        let x_918 : vec4<f32> = u_xlat3;
        let x_921 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_924 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_918.x, x_918.y, x_918.x, x_918.y) * vec4<f32>(x_921.x, x_921.y, x_921.x, x_921.y)) + vec4<f32>(x_924.x, x_924.y, x_924.z, x_924.y));
        let x_927 : vec4<f32> = u_xlat3;
        let x_930 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_933 : vec4<f32> = u_xlat8;
        u_xlat47 = ((vec2<f32>(x_927.x, x_927.y) * vec2<f32>(x_930.x, x_930.y)) + vec2<f32>(x_933.w, x_933.y));
        let x_937 : f32 = u_xlat8.y;
        u_xlat5.y = x_937;
        let x_940 : f32 = u_xlat6.z;
        u_xlat8.y = x_940;
        let x_942 : vec4<f32> = u_xlat3;
        let x_945 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_948 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_942.x, x_942.y, x_942.x, x_942.y) * vec4<f32>(x_945.x, x_945.y, x_945.x, x_945.y)) + vec4<f32>(x_948.x, x_948.y, x_948.z, x_948.y));
        let x_951 : vec4<f32> = u_xlat3;
        let x_954 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_957 : vec4<f32> = u_xlat8;
        let x_959 : vec2<f32> = ((vec2<f32>(x_951.x, x_951.y) * vec2<f32>(x_954.x, x_954.y)) + vec2<f32>(x_957.w, x_957.y));
        let x_960 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_963 : f32 = u_xlat8.y;
        u_xlat5.z = x_963;
        let x_966 : vec4<f32> = u_xlat3;
        let x_969 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_972 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_966.x, x_966.y, x_966.x, x_966.y) * vec4<f32>(x_969.x, x_969.y, x_969.x, x_969.y)) + vec4<f32>(x_972.x, x_972.y, x_972.x, x_972.z));
        let x_976 : f32 = u_xlat6.w;
        u_xlat8.y = x_976;
        let x_979 : vec4<f32> = u_xlat3;
        let x_982 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_985 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_979.x, x_979.y, x_979.x, x_979.y) * vec4<f32>(x_982.x, x_982.y, x_982.x, x_982.y)) + vec4<f32>(x_985.x, x_985.y, x_985.z, x_985.y));
        let x_989 : vec4<f32> = u_xlat3;
        let x_992 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_995 : vec4<f32> = u_xlat8;
        u_xlat27 = ((vec2<f32>(x_989.x, x_989.y) * vec2<f32>(x_992.x, x_992.y)) + vec2<f32>(x_995.w, x_995.y));
        let x_999 : f32 = u_xlat8.y;
        u_xlat5.w = x_999;
        let x_1002 : vec4<f32> = u_xlat3;
        let x_1005 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_1008 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_1002.x, x_1002.y) * vec2<f32>(x_1005.x, x_1005.y)) + vec2<f32>(x_1008.x, x_1008.w));
        let x_1011 : vec4<f32> = u_xlat8;
        let x_1012 : vec3<f32> = vec3<f32>(x_1011.x, x_1011.z, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1012.x, x_1013.y, x_1012.y, x_1012.z);
        let x_1015 : vec4<f32> = u_xlat3;
        let x_1018 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_1021 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_1015.x, x_1015.y, x_1015.x, x_1015.y) * vec4<f32>(x_1018.x, x_1018.y, x_1018.x, x_1018.y)) + vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1021.y));
        let x_1025 : vec4<f32> = u_xlat3;
        let x_1028 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_1031 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_1025.x, x_1025.y) * vec2<f32>(x_1028.x, x_1028.y)) + vec2<f32>(x_1031.w, x_1031.y));
        let x_1035 : f32 = u_xlat5.x;
        u_xlat6.x = x_1035;
        let x_1037 : vec4<f32> = u_xlat3;
        let x_1040 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_1043 : vec4<f32> = u_xlat6;
        let x_1045 : vec2<f32> = ((vec2<f32>(x_1037.x, x_1037.y) * vec2<f32>(x_1040.x, x_1040.y)) + vec2<f32>(x_1043.x, x_1043.y));
        let x_1046 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1045.x, x_1045.y, x_1046.z, x_1046.w);
        let x_1049 : vec4<f32> = u_xlat4;
        let x_1051 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1049.x, x_1049.x, x_1049.x, x_1049.x) * x_1051);
        let x_1054 : vec4<f32> = u_xlat4;
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat15 = (vec4<f32>(x_1054.y, x_1054.y, x_1054.y, x_1054.y) * x_1056);
        let x_1059 : vec4<f32> = u_xlat4;
        let x_1061 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1059.z, x_1059.z, x_1059.z, x_1059.z) * x_1061);
        let x_1063 : vec4<f32> = u_xlat4;
        let x_1065 : vec4<f32> = u_xlat7;
        u_xlat4 = (vec4<f32>(x_1063.w, x_1063.w, x_1063.w, x_1063.w) * x_1065);
        let x_1068 : vec4<f32> = u_xlat9;
        let x_1069 : vec2<f32> = vec2<f32>(x_1068.x, x_1068.y);
        let x_1071 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1069.x, x_1069.y, x_1071);
        let x_1078 : vec3<f32> = txVec13;
        let x_1080 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1078.xy, x_1078.z);
        u_xlat68 = x_1080;
        let x_1082 : vec4<f32> = u_xlat9;
        let x_1083 : vec2<f32> = vec2<f32>(x_1082.z, x_1082.w);
        let x_1085 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1083.x, x_1083.y, x_1085);
        let x_1092 : vec3<f32> = txVec14;
        let x_1094 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1092.xy, x_1092.z);
        u_xlat5.x = x_1094;
        let x_1097 : f32 = u_xlat5.x;
        let x_1099 : f32 = u_xlat14.y;
        u_xlat5.x = (x_1097 * x_1099);
        let x_1103 : f32 = u_xlat14.x;
        let x_1104 : f32 = u_xlat68;
        let x_1107 : f32 = u_xlat5.x;
        u_xlat68 = ((x_1103 * x_1104) + x_1107);
        let x_1110 : vec2<f32> = u_xlat47;
        let x_1112 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1110.x, x_1110.y, x_1112);
        let x_1119 : vec3<f32> = txVec15;
        let x_1121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1119.xy, x_1119.z);
        u_xlat47.x = x_1121;
        let x_1124 : f32 = u_xlat14.z;
        let x_1126 : f32 = u_xlat47.x;
        let x_1128 : f32 = u_xlat68;
        u_xlat68 = ((x_1124 * x_1126) + x_1128);
        let x_1131 : vec4<f32> = u_xlat12;
        let x_1132 : vec2<f32> = vec2<f32>(x_1131.x, x_1131.y);
        let x_1134 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1132.x, x_1132.y, x_1134);
        let x_1141 : vec3<f32> = txVec16;
        let x_1143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1141.xy, x_1141.z);
        u_xlat47.x = x_1143;
        let x_1146 : f32 = u_xlat14.w;
        let x_1148 : f32 = u_xlat47.x;
        let x_1150 : f32 = u_xlat68;
        u_xlat68 = ((x_1146 * x_1148) + x_1150);
        let x_1153 : vec4<f32> = u_xlat10;
        let x_1154 : vec2<f32> = vec2<f32>(x_1153.x, x_1153.y);
        let x_1156 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1163 : vec3<f32> = txVec17;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1163.xy, x_1163.z);
        u_xlat47.x = x_1165;
        let x_1168 : f32 = u_xlat15.x;
        let x_1170 : f32 = u_xlat47.x;
        let x_1172 : f32 = u_xlat68;
        u_xlat68 = ((x_1168 * x_1170) + x_1172);
        let x_1175 : vec4<f32> = u_xlat10;
        let x_1176 : vec2<f32> = vec2<f32>(x_1175.z, x_1175.w);
        let x_1178 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1176.x, x_1176.y, x_1178);
        let x_1185 : vec3<f32> = txVec18;
        let x_1187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1185.xy, x_1185.z);
        u_xlat47.x = x_1187;
        let x_1190 : f32 = u_xlat15.y;
        let x_1192 : f32 = u_xlat47.x;
        let x_1194 : f32 = u_xlat68;
        u_xlat68 = ((x_1190 * x_1192) + x_1194);
        let x_1197 : vec4<f32> = u_xlat11;
        let x_1198 : vec2<f32> = vec2<f32>(x_1197.x, x_1197.y);
        let x_1200 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1198.x, x_1198.y, x_1200);
        let x_1207 : vec3<f32> = txVec19;
        let x_1209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1207.xy, x_1207.z);
        u_xlat47.x = x_1209;
        let x_1212 : f32 = u_xlat15.z;
        let x_1214 : f32 = u_xlat47.x;
        let x_1216 : f32 = u_xlat68;
        u_xlat68 = ((x_1212 * x_1214) + x_1216);
        let x_1219 : vec4<f32> = u_xlat12;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.z, x_1219.w);
        let x_1222 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec20;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1229.xy, x_1229.z);
        u_xlat47.x = x_1231;
        let x_1234 : f32 = u_xlat15.w;
        let x_1236 : f32 = u_xlat47.x;
        let x_1238 : f32 = u_xlat68;
        u_xlat68 = ((x_1234 * x_1236) + x_1238);
        let x_1241 : vec4<f32> = u_xlat13;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.x, x_1241.y);
        let x_1244 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec21;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat47.x = x_1253;
        let x_1256 : f32 = u_xlat16.x;
        let x_1258 : f32 = u_xlat47.x;
        let x_1260 : f32 = u_xlat68;
        u_xlat68 = ((x_1256 * x_1258) + x_1260);
        let x_1263 : vec4<f32> = u_xlat13;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.z, x_1263.w);
        let x_1266 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec22;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1273.xy, x_1273.z);
        u_xlat47.x = x_1275;
        let x_1278 : f32 = u_xlat16.y;
        let x_1280 : f32 = u_xlat47.x;
        let x_1282 : f32 = u_xlat68;
        u_xlat68 = ((x_1278 * x_1280) + x_1282);
        let x_1285 : vec2<f32> = u_xlat27;
        let x_1287 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec23;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1294.xy, x_1294.z);
        u_xlat47.x = x_1296;
        let x_1299 : f32 = u_xlat16.z;
        let x_1301 : f32 = u_xlat47.x;
        let x_1303 : f32 = u_xlat68;
        u_xlat68 = ((x_1299 * x_1301) + x_1303);
        let x_1306 : vec2<f32> = u_xlat55;
        let x_1308 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
        let x_1315 : vec3<f32> = txVec24;
        let x_1317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1315.xy, x_1315.z);
        u_xlat47.x = x_1317;
        let x_1320 : f32 = u_xlat16.w;
        let x_1322 : f32 = u_xlat47.x;
        let x_1324 : f32 = u_xlat68;
        u_xlat68 = ((x_1320 * x_1322) + x_1324);
        let x_1327 : vec4<f32> = u_xlat8;
        let x_1328 : vec2<f32> = vec2<f32>(x_1327.x, x_1327.y);
        let x_1330 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1328.x, x_1328.y, x_1330);
        let x_1337 : vec3<f32> = txVec25;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1337.xy, x_1337.z);
        u_xlat47.x = x_1339;
        let x_1342 : f32 = u_xlat4.x;
        let x_1344 : f32 = u_xlat47.x;
        let x_1346 : f32 = u_xlat68;
        u_xlat68 = ((x_1342 * x_1344) + x_1346);
        let x_1349 : vec4<f32> = u_xlat8;
        let x_1350 : vec2<f32> = vec2<f32>(x_1349.z, x_1349.w);
        let x_1352 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec26;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1359.xy, x_1359.z);
        u_xlat47.x = x_1361;
        let x_1364 : f32 = u_xlat4.y;
        let x_1366 : f32 = u_xlat47.x;
        let x_1368 : f32 = u_xlat68;
        u_xlat68 = ((x_1364 * x_1366) + x_1368);
        let x_1371 : vec2<f32> = u_xlat50;
        let x_1373 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1371.x, x_1371.y, x_1373);
        let x_1380 : vec3<f32> = txVec27;
        let x_1382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1380.xy, x_1380.z);
        u_xlat47.x = x_1382;
        let x_1385 : f32 = u_xlat4.z;
        let x_1387 : f32 = u_xlat47.x;
        let x_1389 : f32 = u_xlat68;
        u_xlat68 = ((x_1385 * x_1387) + x_1389);
        let x_1392 : vec4<f32> = u_xlat3;
        let x_1393 : vec2<f32> = vec2<f32>(x_1392.x, x_1392.y);
        let x_1395 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1393.x, x_1393.y, x_1395);
        let x_1402 : vec3<f32> = txVec28;
        let x_1404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1402.xy, x_1402.z);
        u_xlat3.x = x_1404;
        let x_1407 : f32 = u_xlat4.w;
        let x_1409 : f32 = u_xlat3.x;
        let x_1411 : f32 = u_xlat68;
        u_xlat67 = ((x_1407 * x_1409) + x_1411);
      }
    }
  } else {
    let x_1415 : vec4<f32> = vs_TEXCOORD6;
    let x_1416 : vec2<f32> = vec2<f32>(x_1415.x, x_1415.y);
    let x_1418 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1416.x, x_1416.y, x_1418);
    let x_1425 : vec3<f32> = txVec29;
    let x_1427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1425.xy, x_1425.z);
    u_xlat67 = x_1427;
  }
  let x_1429 : f32 = x_164.x_MainLightShadowParams.x;
  u_xlat68 = (-(x_1429) + 1.0f);
  let x_1432 : f32 = u_xlat67;
  let x_1434 : f32 = x_164.x_MainLightShadowParams.x;
  let x_1436 : f32 = u_xlat68;
  u_xlat67 = ((x_1432 * x_1434) + x_1436);
  let x_1439 : f32 = vs_TEXCOORD6.z;
  u_xlatb68 = (0.0f >= x_1439);
  let x_1443 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (x_1443 >= 1.0f);
  let x_1445 : bool = u_xlatb68;
  let x_1446 : bool = u_xlatb3;
  u_xlatb68 = (x_1445 | x_1446);
  let x_1448 : bool = u_xlatb68;
  let x_1449 : f32 = u_xlat67;
  u_xlat67 = select(x_1449, 1.0f, x_1448);
  let x_1452 : vec3<f32> = vs_TEXCOORD1;
  let x_1456 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1458 : vec3<f32> = (x_1452 + -(x_1456));
  let x_1459 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1458.x, x_1458.y, x_1458.z, x_1459.w);
  let x_1461 : vec4<f32> = u_xlat3;
  let x_1463 : vec4<f32> = u_xlat3;
  u_xlat68 = dot(vec3<f32>(x_1461.x, x_1461.y, x_1461.z), vec3<f32>(x_1463.x, x_1463.y, x_1463.z));
  let x_1466 : f32 = u_xlat68;
  let x_1468 : f32 = x_164.x_MainLightShadowParams.z;
  let x_1471 : f32 = x_164.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_1466 * x_1468) + x_1471);
  let x_1475 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1475, 0.0f, 1.0f);
  let x_1478 : f32 = u_xlat67;
  u_xlat25 = (-(x_1478) + 1.0f);
  let x_1482 : f32 = u_xlat3.x;
  let x_1483 : f32 = u_xlat25;
  let x_1485 : f32 = u_xlat67;
  u_xlat67 = ((x_1482 * x_1483) + x_1485);
  let x_1495 : f32 = x_1492.x_MainLightCookieTextureFormat;
  u_xlatb3 = !((x_1495 == -1.0f));
  let x_1498 : bool = u_xlatb3;
  if (x_1498) {
    let x_1501 : vec3<f32> = vs_TEXCOORD1;
    let x_1504 : vec4<f32> = x_1492.x_MainLightWorldToLight[1i];
    let x_1506 : vec2<f32> = (vec2<f32>(x_1501.y, x_1501.y) * vec2<f32>(x_1504.x, x_1504.y));
    let x_1507 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1506.x, x_1506.y, x_1507.z, x_1507.w);
    let x_1510 : vec4<f32> = x_1492.x_MainLightWorldToLight[0i];
    let x_1512 : vec3<f32> = vs_TEXCOORD1;
    let x_1515 : vec4<f32> = u_xlat3;
    let x_1517 : vec2<f32> = ((vec2<f32>(x_1510.x, x_1510.y) * vec2<f32>(x_1512.x, x_1512.x)) + vec2<f32>(x_1515.x, x_1515.y));
    let x_1518 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1517.x, x_1517.y, x_1518.z, x_1518.w);
    let x_1521 : vec4<f32> = x_1492.x_MainLightWorldToLight[2i];
    let x_1523 : vec3<f32> = vs_TEXCOORD1;
    let x_1526 : vec4<f32> = u_xlat3;
    let x_1528 : vec2<f32> = ((vec2<f32>(x_1521.x, x_1521.y) * vec2<f32>(x_1523.z, x_1523.z)) + vec2<f32>(x_1526.x, x_1526.y));
    let x_1529 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1528.x, x_1528.y, x_1529.z, x_1529.w);
    let x_1531 : vec4<f32> = u_xlat3;
    let x_1535 : vec4<f32> = x_1492.x_MainLightWorldToLight[3i];
    let x_1537 : vec2<f32> = (vec2<f32>(x_1531.x, x_1531.y) + vec2<f32>(x_1535.x, x_1535.y));
    let x_1538 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1537.x, x_1537.y, x_1538.z, x_1538.w);
    let x_1540 : vec4<f32> = u_xlat3;
    let x_1543 : vec2<f32> = ((vec2<f32>(x_1540.x, x_1540.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1544 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1543.x, x_1543.y, x_1544.z, x_1544.w);
    let x_1551 : vec4<f32> = u_xlat3;
    let x_1554 : f32 = x_27.x_GlobalMipBias.x;
    let x_1555 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1551.x, x_1551.y), x_1554);
    u_xlat3 = x_1555;
    let x_1560 : f32 = x_1492.x_MainLightCookieTextureFormat;
    let x_1562 : f32 = x_1492.x_MainLightCookieTextureFormat;
    let x_1564 : f32 = x_1492.x_MainLightCookieTextureFormat;
    let x_1566 : f32 = x_1492.x_MainLightCookieTextureFormat;
    let x_1567 : vec4<f32> = vec4<f32>(x_1560, x_1562, x_1564, x_1566);
    let x_1575 : vec4<bool> = (vec4<f32>(x_1567.x, x_1567.y, x_1567.z, x_1567.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb4 = vec2<bool>(x_1575.x, x_1575.y);
    let x_1579 : bool = u_xlatb4.y;
    if (x_1579) {
      let x_1585 : f32 = u_xlat3.w;
      x_1581 = x_1585;
    } else {
      let x_1588 : f32 = u_xlat3.x;
      x_1581 = x_1588;
    }
    let x_1589 : f32 = x_1581;
    u_xlat69 = x_1589;
    let x_1591 : bool = u_xlatb4.x;
    if (x_1591) {
      let x_1595 : vec4<f32> = u_xlat3;
      x_1592 = vec3<f32>(x_1595.x, x_1595.y, x_1595.z);
    } else {
      let x_1598 : f32 = u_xlat69;
      x_1592 = vec3<f32>(x_1598, x_1598, x_1598);
    }
    let x_1600 : vec3<f32> = x_1592;
    let x_1601 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1607 : vec4<f32> = u_xlat3;
  let x_1610 : vec4<f32> = x_27.x_MainLightColor;
  let x_1612 : vec3<f32> = (vec3<f32>(x_1607.x, x_1607.y, x_1607.z) * vec3<f32>(x_1610.x, x_1610.y, x_1610.z));
  let x_1613 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
  let x_1615 : f32 = u_xlat67;
  let x_1618 : f32 = x_75.unity_LightData.z;
  u_xlat67 = (x_1615 * x_1618);
  let x_1620 : f32 = u_xlat67;
  let x_1622 : vec4<f32> = u_xlat3;
  let x_1624 : vec3<f32> = (vec3<f32>(x_1620, x_1620, x_1620) * vec3<f32>(x_1622.x, x_1622.y, x_1622.z));
  let x_1625 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1624.x, x_1624.y, x_1624.z, x_1625.w);
  let x_1627 : vec4<f32> = u_xlat1;
  let x_1630 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat67 = dot(vec3<f32>(x_1627.x, x_1627.y, x_1627.z), vec3<f32>(x_1630.x, x_1630.y, x_1630.z));
  let x_1633 : f32 = u_xlat67;
  u_xlat67 = clamp(x_1633, 0.0f, 1.0f);
  let x_1635 : f32 = u_xlat67;
  let x_1637 : vec4<f32> = u_xlat3;
  let x_1639 : vec3<f32> = (vec3<f32>(x_1635, x_1635, x_1635) * vec3<f32>(x_1637.x, x_1637.y, x_1637.z));
  let x_1640 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1639.x, x_1639.y, x_1639.z, x_1640.w);
  let x_1642 : vec4<f32> = u_xlat0;
  let x_1644 : vec4<f32> = u_xlat3;
  let x_1646 : vec3<f32> = (vec3<f32>(x_1642.y, x_1642.z, x_1642.w) * vec3<f32>(x_1644.x, x_1644.y, x_1644.z));
  let x_1647 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1646.x, x_1646.y, x_1646.z, x_1647.w);
  let x_1650 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1652 : f32 = x_75.unity_LightData.y;
  u_xlat67 = min(x_1650, x_1652);
  let x_1656 : f32 = u_xlat67;
  u_xlatu67 = bitcast<u32>(i32(x_1656));
  let x_1659 : f32 = u_xlat68;
  let x_1662 : f32 = x_164.x_AdditionalShadowFadeParams.x;
  let x_1665 : f32 = x_164.x_AdditionalShadowFadeParams.y;
  u_xlat68 = ((x_1659 * x_1662) + x_1665);
  let x_1667 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1667, 0.0f, 1.0f);
  let x_1670 : f32 = x_1492.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1672 : f32 = x_1492.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1674 : f32 = x_1492.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1676 : f32 = x_1492.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1677 : vec4<f32> = vec4<f32>(x_1670, x_1672, x_1674, x_1676);
  let x_1683 : vec4<bool> = (vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1677.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1683.x, x_1683.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1695 : u32 = u_xlatu_loop_1;
    let x_1696 : u32 = u_xlatu67;
    if ((x_1695 < x_1696)) {
    } else {
      break;
    }
    let x_1699 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1699 >> 2u);
    let x_1703 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_1703 & 3u));
    let x_1707 : u32 = u_xlatu48;
    let x_1710 : vec4<f32> = x_75.unity_LightIndices[bitcast<i32>(x_1707)];
    let x_1720 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1725 : vec4<u32> = indexable[x_1720];
    u_xlat48 = dot(x_1710, bitcast<vec4<f32>>(x_1725));
    let x_1729 : f32 = u_xlat48;
    u_xlati48 = i32(x_1729);
    let x_1731 : vec3<f32> = vs_TEXCOORD1;
    let x_1742 : i32 = u_xlati48;
    let x_1744 : vec4<f32> = x_1741.x_AdditionalLightsPosition[x_1742];
    let x_1747 : i32 = u_xlati48;
    let x_1749 : vec4<f32> = x_1741.x_AdditionalLightsPosition[x_1747];
    let x_1751 : vec3<f32> = ((-(x_1731) * vec3<f32>(x_1744.w, x_1744.w, x_1744.w)) + vec3<f32>(x_1749.x, x_1749.y, x_1749.z));
    let x_1752 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1752.w);
    let x_1755 : vec4<f32> = u_xlat6;
    let x_1757 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1755.x, x_1755.y, x_1755.z), vec3<f32>(x_1757.x, x_1757.y, x_1757.z));
    let x_1760 : f32 = u_xlat70;
    u_xlat70 = max(x_1760, 0.00006103515625f);
    let x_1764 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_1764);
    let x_1766 : f32 = u_xlat71;
    let x_1768 : vec4<f32> = u_xlat6;
    let x_1770 : vec3<f32> = (vec3<f32>(x_1766, x_1766, x_1766) * vec3<f32>(x_1768.x, x_1768.y, x_1768.z));
    let x_1771 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1770.x, x_1770.y, x_1770.z, x_1771.w);
    let x_1773 : f32 = u_xlat70;
    u_xlat71 = (1.0f / x_1773);
    let x_1775 : f32 = u_xlat70;
    let x_1776 : i32 = u_xlati48;
    let x_1778 : f32 = x_1741.x_AdditionalLightsAttenuation[x_1776].x;
    u_xlat70 = (x_1775 * x_1778);
    let x_1780 : f32 = u_xlat70;
    let x_1782 : f32 = u_xlat70;
    u_xlat70 = ((-(x_1780) * x_1782) + 1.0f);
    let x_1785 : f32 = u_xlat70;
    u_xlat70 = max(x_1785, 0.0f);
    let x_1787 : f32 = u_xlat70;
    let x_1788 : f32 = u_xlat70;
    u_xlat70 = (x_1787 * x_1788);
    let x_1790 : f32 = u_xlat70;
    let x_1791 : f32 = u_xlat71;
    u_xlat70 = (x_1790 * x_1791);
    let x_1793 : i32 = u_xlati48;
    let x_1795 : vec4<f32> = x_1741.x_AdditionalLightsSpotDir[x_1793];
    let x_1797 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_1795.x, x_1795.y, x_1795.z), vec3<f32>(x_1797.x, x_1797.y, x_1797.z));
    let x_1800 : f32 = u_xlat71;
    let x_1801 : i32 = u_xlati48;
    let x_1803 : f32 = x_1741.x_AdditionalLightsAttenuation[x_1801].z;
    let x_1805 : i32 = u_xlati48;
    let x_1807 : f32 = x_1741.x_AdditionalLightsAttenuation[x_1805].w;
    u_xlat71 = ((x_1800 * x_1803) + x_1807);
    let x_1809 : f32 = u_xlat71;
    u_xlat71 = clamp(x_1809, 0.0f, 1.0f);
    let x_1811 : f32 = u_xlat71;
    let x_1812 : f32 = u_xlat71;
    u_xlat71 = (x_1811 * x_1812);
    let x_1814 : f32 = u_xlat70;
    let x_1815 : f32 = u_xlat71;
    u_xlat70 = (x_1814 * x_1815);
    let x_1819 : i32 = u_xlati48;
    let x_1821 : f32 = x_164.x_AdditionalShadowParams[x_1819].w;
    u_xlati71 = i32(x_1821);
    let x_1824 : i32 = u_xlati71;
    u_xlatb72 = (x_1824 >= 0i);
    let x_1826 : bool = u_xlatb72;
    if (x_1826) {
      let x_1830 : i32 = u_xlati48;
      let x_1832 : f32 = x_164.x_AdditionalShadowParams[x_1830].z;
      u_xlatb72 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1832, x_1832, x_1832, x_1832))));
      let x_1836 : bool = u_xlatb72;
      if (x_1836) {
        let x_1841 : vec4<f32> = u_xlat6;
        let x_1844 : vec4<f32> = u_xlat6;
        let x_1847 : vec4<bool> = (abs(vec4<f32>(x_1841.z, x_1841.z, x_1841.y, x_1841.z)) >= abs(vec4<f32>(x_1844.x, x_1844.y, x_1844.x, x_1844.x)));
        let x_1849 : vec3<bool> = vec3<bool>(x_1847.x, x_1847.y, x_1847.z);
        let x_1850 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
        let x_1853 : bool = u_xlatb7.y;
        let x_1855 : bool = u_xlatb7.x;
        u_xlatb72 = (x_1853 & x_1855);
        let x_1857 : vec4<f32> = u_xlat6;
        let x_1860 : vec4<bool> = (-(vec4<f32>(x_1857.z, x_1857.y, x_1857.z, x_1857.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1861 : vec3<bool> = vec3<bool>(x_1860.x, x_1860.y, x_1860.w);
        let x_1862 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1861.x, x_1861.y, x_1862.z, x_1861.z);
        let x_1865 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1865);
        let x_1871 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1871);
        let x_1877 : bool = u_xlatb7.w;
        u_xlat73 = select(0.0f, 1.0f, x_1877);
        let x_1881 : bool = u_xlatb7.z;
        if (x_1881) {
          let x_1886 : f32 = u_xlat7.y;
          x_1882 = x_1886;
        } else {
          let x_1888 : f32 = u_xlat73;
          x_1882 = x_1888;
        }
        let x_1889 : f32 = x_1882;
        u_xlat29.x = x_1889;
        let x_1892 : bool = u_xlatb72;
        if (x_1892) {
          let x_1897 : f32 = u_xlat7.x;
          x_1893 = x_1897;
        } else {
          let x_1900 : f32 = u_xlat29.x;
          x_1893 = x_1900;
        }
        let x_1901 : f32 = x_1893;
        u_xlat72 = x_1901;
        let x_1902 : i32 = u_xlati48;
        let x_1904 : f32 = x_164.x_AdditionalShadowParams[x_1902].w;
        u_xlat7.x = trunc(x_1904);
        let x_1907 : f32 = u_xlat72;
        let x_1909 : f32 = u_xlat7.x;
        u_xlat72 = (x_1907 + x_1909);
        let x_1911 : f32 = u_xlat72;
        u_xlati71 = i32(x_1911);
      }
      let x_1913 : i32 = u_xlati71;
      u_xlati71 = (x_1913 << bitcast<u32>(2i));
      let x_1915 : vec3<f32> = vs_TEXCOORD1;
      let x_1918 : i32 = u_xlati71;
      let x_1921 : i32 = u_xlati71;
      let x_1925 : vec4<f32> = x_164.x_AdditionalLightsWorldToShadow[((x_1918 + 1i) / 4i)][((x_1921 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1915.y, x_1915.y, x_1915.y, x_1915.y) * x_1925);
      let x_1927 : i32 = u_xlati71;
      let x_1929 : i32 = u_xlati71;
      let x_1932 : vec4<f32> = x_164.x_AdditionalLightsWorldToShadow[(x_1927 / 4i)][(x_1929 % 4i)];
      let x_1933 : vec3<f32> = vs_TEXCOORD1;
      let x_1936 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1932 * vec4<f32>(x_1933.x, x_1933.x, x_1933.x, x_1933.x)) + x_1936);
      let x_1938 : i32 = u_xlati71;
      let x_1941 : i32 = u_xlati71;
      let x_1945 : vec4<f32> = x_164.x_AdditionalLightsWorldToShadow[((x_1938 + 2i) / 4i)][((x_1941 + 2i) % 4i)];
      let x_1946 : vec3<f32> = vs_TEXCOORD1;
      let x_1949 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1945 * vec4<f32>(x_1946.z, x_1946.z, x_1946.z, x_1946.z)) + x_1949);
      let x_1951 : vec4<f32> = u_xlat7;
      let x_1952 : i32 = u_xlati71;
      let x_1955 : i32 = u_xlati71;
      let x_1959 : vec4<f32> = x_164.x_AdditionalLightsWorldToShadow[((x_1952 + 3i) / 4i)][((x_1955 + 3i) % 4i)];
      u_xlat7 = (x_1951 + x_1959);
      let x_1961 : vec4<f32> = u_xlat7;
      let x_1963 : vec4<f32> = u_xlat7;
      let x_1965 : vec3<f32> = (vec3<f32>(x_1961.x, x_1961.y, x_1961.z) / vec3<f32>(x_1963.w, x_1963.w, x_1963.w));
      let x_1966 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1965.x, x_1965.y, x_1965.z, x_1966.w);
      let x_1969 : i32 = u_xlati48;
      let x_1971 : f32 = x_164.x_AdditionalShadowParams[x_1969].y;
      u_xlatb71 = (0.0f < x_1971);
      let x_1973 : bool = u_xlatb71;
      if (x_1973) {
        let x_1976 : i32 = u_xlati48;
        let x_1978 : f32 = x_164.x_AdditionalShadowParams[x_1976].y;
        u_xlatb71 = (1.0f == x_1978);
        let x_1980 : bool = u_xlatb71;
        if (x_1980) {
          let x_1983 : vec4<f32> = u_xlat7;
          let x_1987 : vec4<f32> = x_164.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_1983.x, x_1983.y, x_1983.x, x_1983.y) + x_1987);
          let x_1990 : vec4<f32> = u_xlat8;
          let x_1991 : vec2<f32> = vec2<f32>(x_1990.x, x_1990.y);
          let x_1993 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_1991.x, x_1991.y, x_1993);
          let x_2001 : vec3<f32> = txVec30;
          let x_2003 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2001.xy, x_2001.z);
          u_xlat9.x = x_2003;
          let x_2006 : vec4<f32> = u_xlat8;
          let x_2007 : vec2<f32> = vec2<f32>(x_2006.z, x_2006.w);
          let x_2009 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2007.x, x_2007.y, x_2009);
          let x_2016 : vec3<f32> = txVec31;
          let x_2018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2016.xy, x_2016.z);
          u_xlat9.y = x_2018;
          let x_2020 : vec4<f32> = u_xlat7;
          let x_2024 : vec4<f32> = x_164.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2020.x, x_2020.y, x_2020.x, x_2020.y) + x_2024);
          let x_2027 : vec4<f32> = u_xlat8;
          let x_2028 : vec2<f32> = vec2<f32>(x_2027.x, x_2027.y);
          let x_2030 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2028.x, x_2028.y, x_2030);
          let x_2037 : vec3<f32> = txVec32;
          let x_2039 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2037.xy, x_2037.z);
          u_xlat9.z = x_2039;
          let x_2042 : vec4<f32> = u_xlat8;
          let x_2043 : vec2<f32> = vec2<f32>(x_2042.z, x_2042.w);
          let x_2045 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2043.x, x_2043.y, x_2045);
          let x_2052 : vec3<f32> = txVec33;
          let x_2054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2052.xy, x_2052.z);
          u_xlat9.w = x_2054;
          let x_2056 : vec4<f32> = u_xlat9;
          u_xlat71 = dot(x_2056, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2059 : i32 = u_xlati48;
          let x_2061 : f32 = x_164.x_AdditionalShadowParams[x_2059].y;
          u_xlatb72 = (2.0f == x_2061);
          let x_2063 : bool = u_xlatb72;
          if (x_2063) {
            let x_2066 : vec4<f32> = u_xlat7;
            let x_2070 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2073 : vec2<f32> = ((vec2<f32>(x_2066.x, x_2066.y) * vec2<f32>(x_2070.z, x_2070.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2074 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2073.x, x_2073.y, x_2074.z, x_2074.w);
            let x_2076 : vec4<f32> = u_xlat8;
            let x_2078 : vec2<f32> = floor(vec2<f32>(x_2076.x, x_2076.y));
            let x_2079 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2078.x, x_2078.y, x_2079.z, x_2079.w);
            let x_2082 : vec4<f32> = u_xlat7;
            let x_2085 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2088 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2082.x, x_2082.y) * vec2<f32>(x_2085.z, x_2085.w)) + -(vec2<f32>(x_2088.x, x_2088.y)));
            let x_2092 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2092.x, x_2092.x, x_2092.y, x_2092.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2095 : vec4<f32> = u_xlat9;
            let x_2097 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2095.x, x_2095.x, x_2095.z, x_2095.z) * vec4<f32>(x_2097.x, x_2097.x, x_2097.z, x_2097.z));
            let x_2100 : vec4<f32> = u_xlat10;
            let x_2102 : vec2<f32> = (vec2<f32>(x_2100.y, x_2100.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2103 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2102.x, x_2103.y, x_2102.y, x_2103.w);
            let x_2105 : vec4<f32> = u_xlat10;
            let x_2108 : vec2<f32> = u_xlat52;
            let x_2110 : vec2<f32> = ((vec2<f32>(x_2105.x, x_2105.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2108));
            let x_2111 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2110.x, x_2110.y, x_2111.z, x_2111.w);
            let x_2114 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2114) + vec2<f32>(1.0f, 1.0f));
            let x_2117 : vec2<f32> = u_xlat52;
            let x_2118 : vec2<f32> = min(x_2117, vec2<f32>(0.0f, 0.0f));
            let x_2119 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2118.x, x_2118.y, x_2119.z, x_2119.w);
            let x_2121 : vec4<f32> = u_xlat11;
            let x_2124 : vec4<f32> = u_xlat11;
            let x_2127 : vec2<f32> = u_xlat54;
            let x_2128 : vec2<f32> = ((-(vec2<f32>(x_2121.x, x_2121.y)) * vec2<f32>(x_2124.x, x_2124.y)) + x_2127);
            let x_2129 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2128.x, x_2128.y, x_2129.z, x_2129.w);
            let x_2131 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2131, vec2<f32>(0.0f, 0.0f));
            let x_2133 : vec2<f32> = u_xlat52;
            let x_2135 : vec2<f32> = u_xlat52;
            let x_2137 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2133) * x_2135) + vec2<f32>(x_2137.y, x_2137.w));
            let x_2140 : vec4<f32> = u_xlat11;
            let x_2142 : vec2<f32> = (vec2<f32>(x_2140.x, x_2140.y) + vec2<f32>(1.0f, 1.0f));
            let x_2143 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2142.x, x_2142.y, x_2143.z, x_2143.w);
            let x_2145 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2145 + vec2<f32>(1.0f, 1.0f));
            let x_2147 : vec4<f32> = u_xlat10;
            let x_2149 : vec2<f32> = (vec2<f32>(x_2147.x, x_2147.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2150 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2149.x, x_2149.y, x_2150.z, x_2150.w);
            let x_2152 : vec2<f32> = u_xlat54;
            let x_2153 : vec2<f32> = (x_2152 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2154 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2153.x, x_2153.y, x_2154.z, x_2154.w);
            let x_2156 : vec4<f32> = u_xlat11;
            let x_2158 : vec2<f32> = (vec2<f32>(x_2156.x, x_2156.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2159 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2158.x, x_2158.y, x_2159.z, x_2159.w);
            let x_2161 : vec2<f32> = u_xlat52;
            let x_2162 : vec2<f32> = (x_2161 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2163 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2162.x, x_2162.y, x_2163.z, x_2163.w);
            let x_2165 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2165.y, x_2165.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2169 : f32 = u_xlat11.x;
            u_xlat12.z = x_2169;
            let x_2172 : f32 = u_xlat52.x;
            u_xlat12.w = x_2172;
            let x_2175 : f32 = u_xlat13.x;
            u_xlat10.z = x_2175;
            let x_2178 : f32 = u_xlat9.x;
            u_xlat10.w = x_2178;
            let x_2180 : vec4<f32> = u_xlat10;
            let x_2182 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2180.z, x_2180.w, x_2180.x, x_2180.z) + vec4<f32>(x_2182.z, x_2182.w, x_2182.x, x_2182.z));
            let x_2186 : f32 = u_xlat12.y;
            u_xlat11.z = x_2186;
            let x_2189 : f32 = u_xlat52.y;
            u_xlat11.w = x_2189;
            let x_2192 : f32 = u_xlat10.y;
            u_xlat13.z = x_2192;
            let x_2195 : f32 = u_xlat9.z;
            u_xlat13.w = x_2195;
            let x_2197 : vec4<f32> = u_xlat11;
            let x_2199 : vec4<f32> = u_xlat13;
            let x_2201 : vec3<f32> = (vec3<f32>(x_2197.z, x_2197.y, x_2197.w) + vec3<f32>(x_2199.z, x_2199.y, x_2199.w));
            let x_2202 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2201.x, x_2201.y, x_2201.z, x_2202.w);
            let x_2204 : vec4<f32> = u_xlat10;
            let x_2206 : vec4<f32> = u_xlat14;
            let x_2208 : vec3<f32> = (vec3<f32>(x_2204.x, x_2204.z, x_2204.w) / vec3<f32>(x_2206.z, x_2206.w, x_2206.y));
            let x_2209 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
            let x_2211 : vec4<f32> = u_xlat10;
            let x_2213 : vec3<f32> = (vec3<f32>(x_2211.x, x_2211.y, x_2211.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2214 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2213.x, x_2213.y, x_2213.z, x_2214.w);
            let x_2216 : vec4<f32> = u_xlat13;
            let x_2218 : vec4<f32> = u_xlat9;
            let x_2220 : vec3<f32> = (vec3<f32>(x_2216.z, x_2216.y, x_2216.w) / vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
            let x_2221 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2220.x, x_2220.y, x_2220.z, x_2221.w);
            let x_2223 : vec4<f32> = u_xlat11;
            let x_2225 : vec3<f32> = (vec3<f32>(x_2223.x, x_2223.y, x_2223.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2226 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
            let x_2228 : vec4<f32> = u_xlat10;
            let x_2231 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2233 : vec3<f32> = (vec3<f32>(x_2228.y, x_2228.x, x_2228.z) * vec3<f32>(x_2231.x, x_2231.x, x_2231.x));
            let x_2234 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
            let x_2236 : vec4<f32> = u_xlat11;
            let x_2239 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2241 : vec3<f32> = (vec3<f32>(x_2236.x, x_2236.y, x_2236.z) * vec3<f32>(x_2239.y, x_2239.y, x_2239.y));
            let x_2242 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
            let x_2245 : f32 = u_xlat11.x;
            u_xlat10.w = x_2245;
            let x_2247 : vec4<f32> = u_xlat8;
            let x_2250 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2253 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2247.x, x_2247.y, x_2247.x, x_2247.y) * vec4<f32>(x_2250.x, x_2250.y, x_2250.x, x_2250.y)) + vec4<f32>(x_2253.y, x_2253.w, x_2253.x, x_2253.w));
            let x_2256 : vec4<f32> = u_xlat8;
            let x_2259 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2262 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2256.x, x_2256.y) * vec2<f32>(x_2259.x, x_2259.y)) + vec2<f32>(x_2262.z, x_2262.w));
            let x_2266 : f32 = u_xlat10.y;
            u_xlat11.w = x_2266;
            let x_2268 : vec4<f32> = u_xlat11;
            let x_2269 : vec2<f32> = vec2<f32>(x_2268.y, x_2268.z);
            let x_2270 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2270.x, x_2269.x, x_2270.z, x_2269.y);
            let x_2272 : vec4<f32> = u_xlat8;
            let x_2275 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2278 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2272.x, x_2272.y, x_2272.x, x_2272.y) * vec4<f32>(x_2275.x, x_2275.y, x_2275.x, x_2275.y)) + vec4<f32>(x_2278.x, x_2278.y, x_2278.z, x_2278.y));
            let x_2281 : vec4<f32> = u_xlat8;
            let x_2284 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2287 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2281.x, x_2281.y, x_2281.x, x_2281.y) * vec4<f32>(x_2284.x, x_2284.y, x_2284.x, x_2284.y)) + vec4<f32>(x_2287.w, x_2287.y, x_2287.w, x_2287.z));
            let x_2290 : vec4<f32> = u_xlat8;
            let x_2293 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2296 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2290.x, x_2290.y, x_2290.x, x_2290.y) * vec4<f32>(x_2293.x, x_2293.y, x_2293.x, x_2293.y)) + vec4<f32>(x_2296.x, x_2296.w, x_2296.z, x_2296.w));
            let x_2299 : vec4<f32> = u_xlat9;
            let x_2301 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2299.x, x_2299.x, x_2299.x, x_2299.y) * vec4<f32>(x_2301.z, x_2301.w, x_2301.y, x_2301.z));
            let x_2304 : vec4<f32> = u_xlat9;
            let x_2306 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2304.y, x_2304.y, x_2304.z, x_2304.z) * x_2306);
            let x_2309 : f32 = u_xlat9.z;
            let x_2311 : f32 = u_xlat14.y;
            u_xlat72 = (x_2309 * x_2311);
            let x_2314 : vec4<f32> = u_xlat12;
            let x_2315 : vec2<f32> = vec2<f32>(x_2314.x, x_2314.y);
            let x_2317 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2315.x, x_2315.y, x_2317);
            let x_2324 : vec3<f32> = txVec34;
            let x_2326 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2324.xy, x_2324.z);
            u_xlat73 = x_2326;
            let x_2328 : vec4<f32> = u_xlat12;
            let x_2329 : vec2<f32> = vec2<f32>(x_2328.z, x_2328.w);
            let x_2331 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2329.x, x_2329.y, x_2331);
            let x_2338 : vec3<f32> = txVec35;
            let x_2340 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2338.xy, x_2338.z);
            u_xlat8.x = x_2340;
            let x_2343 : f32 = u_xlat8.x;
            let x_2345 : f32 = u_xlat15.y;
            u_xlat8.x = (x_2343 * x_2345);
            let x_2349 : f32 = u_xlat15.x;
            let x_2350 : f32 = u_xlat73;
            let x_2353 : f32 = u_xlat8.x;
            u_xlat73 = ((x_2349 * x_2350) + x_2353);
            let x_2356 : vec2<f32> = u_xlat52;
            let x_2358 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2356.x, x_2356.y, x_2358);
            let x_2365 : vec3<f32> = txVec36;
            let x_2367 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2365.xy, x_2365.z);
            u_xlat8.x = x_2367;
            let x_2370 : f32 = u_xlat15.z;
            let x_2372 : f32 = u_xlat8.x;
            let x_2374 : f32 = u_xlat73;
            u_xlat73 = ((x_2370 * x_2372) + x_2374);
            let x_2377 : vec4<f32> = u_xlat11;
            let x_2378 : vec2<f32> = vec2<f32>(x_2377.x, x_2377.y);
            let x_2380 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2378.x, x_2378.y, x_2380);
            let x_2387 : vec3<f32> = txVec37;
            let x_2389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2387.xy, x_2387.z);
            u_xlat8.x = x_2389;
            let x_2392 : f32 = u_xlat15.w;
            let x_2394 : f32 = u_xlat8.x;
            let x_2396 : f32 = u_xlat73;
            u_xlat73 = ((x_2392 * x_2394) + x_2396);
            let x_2399 : vec4<f32> = u_xlat13;
            let x_2400 : vec2<f32> = vec2<f32>(x_2399.x, x_2399.y);
            let x_2402 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2400.x, x_2400.y, x_2402);
            let x_2409 : vec3<f32> = txVec38;
            let x_2411 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2409.xy, x_2409.z);
            u_xlat8.x = x_2411;
            let x_2414 : f32 = u_xlat16.x;
            let x_2416 : f32 = u_xlat8.x;
            let x_2418 : f32 = u_xlat73;
            u_xlat73 = ((x_2414 * x_2416) + x_2418);
            let x_2421 : vec4<f32> = u_xlat13;
            let x_2422 : vec2<f32> = vec2<f32>(x_2421.z, x_2421.w);
            let x_2424 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2422.x, x_2422.y, x_2424);
            let x_2431 : vec3<f32> = txVec39;
            let x_2433 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2431.xy, x_2431.z);
            u_xlat8.x = x_2433;
            let x_2436 : f32 = u_xlat16.y;
            let x_2438 : f32 = u_xlat8.x;
            let x_2440 : f32 = u_xlat73;
            u_xlat73 = ((x_2436 * x_2438) + x_2440);
            let x_2443 : vec4<f32> = u_xlat11;
            let x_2444 : vec2<f32> = vec2<f32>(x_2443.z, x_2443.w);
            let x_2446 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2444.x, x_2444.y, x_2446);
            let x_2453 : vec3<f32> = txVec40;
            let x_2455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2453.xy, x_2453.z);
            u_xlat8.x = x_2455;
            let x_2458 : f32 = u_xlat16.z;
            let x_2460 : f32 = u_xlat8.x;
            let x_2462 : f32 = u_xlat73;
            u_xlat73 = ((x_2458 * x_2460) + x_2462);
            let x_2465 : vec4<f32> = u_xlat10;
            let x_2466 : vec2<f32> = vec2<f32>(x_2465.x, x_2465.y);
            let x_2468 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2466.x, x_2466.y, x_2468);
            let x_2475 : vec3<f32> = txVec41;
            let x_2477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2475.xy, x_2475.z);
            u_xlat8.x = x_2477;
            let x_2480 : f32 = u_xlat16.w;
            let x_2482 : f32 = u_xlat8.x;
            let x_2484 : f32 = u_xlat73;
            u_xlat73 = ((x_2480 * x_2482) + x_2484);
            let x_2487 : vec4<f32> = u_xlat10;
            let x_2488 : vec2<f32> = vec2<f32>(x_2487.z, x_2487.w);
            let x_2490 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2488.x, x_2488.y, x_2490);
            let x_2497 : vec3<f32> = txVec42;
            let x_2499 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2497.xy, x_2497.z);
            u_xlat8.x = x_2499;
            let x_2501 : f32 = u_xlat72;
            let x_2503 : f32 = u_xlat8.x;
            let x_2505 : f32 = u_xlat73;
            u_xlat71 = ((x_2501 * x_2503) + x_2505);
          } else {
            let x_2508 : vec4<f32> = u_xlat7;
            let x_2511 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2514 : vec2<f32> = ((vec2<f32>(x_2508.x, x_2508.y) * vec2<f32>(x_2511.z, x_2511.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2515 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2514.x, x_2514.y, x_2515.z, x_2515.w);
            let x_2517 : vec4<f32> = u_xlat8;
            let x_2519 : vec2<f32> = floor(vec2<f32>(x_2517.x, x_2517.y));
            let x_2520 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2519.x, x_2519.y, x_2520.z, x_2520.w);
            let x_2522 : vec4<f32> = u_xlat7;
            let x_2525 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2528 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2522.x, x_2522.y) * vec2<f32>(x_2525.z, x_2525.w)) + -(vec2<f32>(x_2528.x, x_2528.y)));
            let x_2532 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2532.x, x_2532.x, x_2532.y, x_2532.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2535 : vec4<f32> = u_xlat9;
            let x_2537 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2535.x, x_2535.x, x_2535.z, x_2535.z) * vec4<f32>(x_2537.x, x_2537.x, x_2537.z, x_2537.z));
            let x_2540 : vec4<f32> = u_xlat10;
            let x_2542 : vec2<f32> = (vec2<f32>(x_2540.y, x_2540.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2543 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2543.x, x_2542.x, x_2543.z, x_2542.y);
            let x_2545 : vec4<f32> = u_xlat10;
            let x_2548 : vec2<f32> = u_xlat52;
            let x_2550 : vec2<f32> = ((vec2<f32>(x_2545.x, x_2545.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2548));
            let x_2551 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2550.x, x_2551.y, x_2550.y, x_2551.w);
            let x_2553 : vec2<f32> = u_xlat52;
            let x_2555 : vec2<f32> = (-(x_2553) + vec2<f32>(1.0f, 1.0f));
            let x_2556 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2555.x, x_2555.y, x_2556.z, x_2556.w);
            let x_2558 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2558, vec2<f32>(0.0f, 0.0f));
            let x_2560 : vec2<f32> = u_xlat54;
            let x_2562 : vec2<f32> = u_xlat54;
            let x_2564 : vec4<f32> = u_xlat10;
            let x_2566 : vec2<f32> = ((-(x_2560) * x_2562) + vec2<f32>(x_2564.x, x_2564.y));
            let x_2567 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2566.x, x_2566.y, x_2567.z, x_2567.w);
            let x_2569 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2569, vec2<f32>(0.0f, 0.0f));
            let x_2572 : vec2<f32> = u_xlat54;
            let x_2574 : vec2<f32> = u_xlat54;
            let x_2576 : vec4<f32> = u_xlat9;
            let x_2578 : vec2<f32> = ((-(x_2572) * x_2574) + vec2<f32>(x_2576.y, x_2576.w));
            let x_2579 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2578.x, x_2579.y, x_2578.y);
            let x_2581 : vec4<f32> = u_xlat10;
            let x_2583 : vec2<f32> = (vec2<f32>(x_2581.x, x_2581.y) + vec2<f32>(2.0f, 2.0f));
            let x_2584 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2583.x, x_2583.y, x_2584.z, x_2584.w);
            let x_2586 : vec3<f32> = u_xlat31;
            let x_2588 : vec2<f32> = (vec2<f32>(x_2586.x, x_2586.z) + vec2<f32>(2.0f, 2.0f));
            let x_2589 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2589.x, x_2588.x, x_2589.z, x_2588.y);
            let x_2592 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2592 * 0.08163200318813323975f);
            let x_2595 : vec4<f32> = u_xlat9;
            let x_2597 : vec3<f32> = (vec3<f32>(x_2595.z, x_2595.x, x_2595.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2598 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2597.x, x_2597.y, x_2597.z, x_2598.w);
            let x_2600 : vec4<f32> = u_xlat10;
            let x_2602 : vec2<f32> = (vec2<f32>(x_2600.x, x_2600.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2603 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2602.x, x_2602.y, x_2603.z, x_2603.w);
            let x_2606 : f32 = u_xlat13.y;
            u_xlat12.x = x_2606;
            let x_2608 : vec2<f32> = u_xlat52;
            let x_2611 : vec2<f32> = ((vec2<f32>(x_2608.x, x_2608.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2612 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2612.x, x_2611.x, x_2612.z, x_2611.y);
            let x_2614 : vec2<f32> = u_xlat52;
            let x_2617 : vec2<f32> = ((vec2<f32>(x_2614.x, x_2614.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2618 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2617.x, x_2618.y, x_2617.y, x_2618.w);
            let x_2621 : f32 = u_xlat9.x;
            u_xlat10.y = x_2621;
            let x_2624 : f32 = u_xlat11.y;
            u_xlat10.w = x_2624;
            let x_2626 : vec4<f32> = u_xlat10;
            let x_2627 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2626 + x_2627);
            let x_2629 : vec2<f32> = u_xlat52;
            let x_2632 : vec2<f32> = ((vec2<f32>(x_2629.y, x_2629.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2633 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2633.x, x_2632.x, x_2633.z, x_2632.y);
            let x_2635 : vec2<f32> = u_xlat52;
            let x_2638 : vec2<f32> = ((vec2<f32>(x_2635.y, x_2635.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2639 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2638.x, x_2639.y, x_2638.y, x_2639.w);
            let x_2642 : f32 = u_xlat9.y;
            u_xlat11.y = x_2642;
            let x_2644 : vec4<f32> = u_xlat11;
            let x_2645 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2644 + x_2645);
            let x_2647 : vec4<f32> = u_xlat10;
            let x_2648 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2647 / x_2648);
            let x_2650 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2650 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2652 : vec4<f32> = u_xlat11;
            let x_2653 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2652 / x_2653);
            let x_2655 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2655 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2657 : vec4<f32> = u_xlat10;
            let x_2660 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2657.w, x_2657.x, x_2657.y, x_2657.z) * vec4<f32>(x_2660.x, x_2660.x, x_2660.x, x_2660.x));
            let x_2663 : vec4<f32> = u_xlat11;
            let x_2666 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2663.x, x_2663.w, x_2663.y, x_2663.z) * vec4<f32>(x_2666.y, x_2666.y, x_2666.y, x_2666.y));
            let x_2669 : vec4<f32> = u_xlat10;
            let x_2670 : vec3<f32> = vec3<f32>(x_2669.y, x_2669.z, x_2669.w);
            let x_2671 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2670.x, x_2671.y, x_2670.y, x_2670.z);
            let x_2674 : f32 = u_xlat11.x;
            u_xlat13.y = x_2674;
            let x_2676 : vec4<f32> = u_xlat8;
            let x_2679 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2682 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2676.x, x_2676.y, x_2676.x, x_2676.y) * vec4<f32>(x_2679.x, x_2679.y, x_2679.x, x_2679.y)) + vec4<f32>(x_2682.x, x_2682.y, x_2682.z, x_2682.y));
            let x_2685 : vec4<f32> = u_xlat8;
            let x_2688 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2691 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2685.x, x_2685.y) * vec2<f32>(x_2688.x, x_2688.y)) + vec2<f32>(x_2691.w, x_2691.y));
            let x_2695 : f32 = u_xlat13.y;
            u_xlat10.y = x_2695;
            let x_2698 : f32 = u_xlat11.z;
            u_xlat13.y = x_2698;
            let x_2700 : vec4<f32> = u_xlat8;
            let x_2703 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2706 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2700.x, x_2700.y, x_2700.x, x_2700.y) * vec4<f32>(x_2703.x, x_2703.y, x_2703.x, x_2703.y)) + vec4<f32>(x_2706.x, x_2706.y, x_2706.z, x_2706.y));
            let x_2709 : vec4<f32> = u_xlat8;
            let x_2712 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2715 : vec4<f32> = u_xlat13;
            let x_2717 : vec2<f32> = ((vec2<f32>(x_2709.x, x_2709.y) * vec2<f32>(x_2712.x, x_2712.y)) + vec2<f32>(x_2715.w, x_2715.y));
            let x_2718 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2717.x, x_2717.y, x_2718.z, x_2718.w);
            let x_2721 : f32 = u_xlat13.y;
            u_xlat10.z = x_2721;
            let x_2724 : vec4<f32> = u_xlat8;
            let x_2727 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2730 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2724.x, x_2724.y, x_2724.x, x_2724.y) * vec4<f32>(x_2727.x, x_2727.y, x_2727.x, x_2727.y)) + vec4<f32>(x_2730.x, x_2730.y, x_2730.x, x_2730.z));
            let x_2734 : f32 = u_xlat11.w;
            u_xlat13.y = x_2734;
            let x_2737 : vec4<f32> = u_xlat8;
            let x_2740 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2743 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2737.x, x_2737.y, x_2737.x, x_2737.y) * vec4<f32>(x_2740.x, x_2740.y, x_2740.x, x_2740.y)) + vec4<f32>(x_2743.x, x_2743.y, x_2743.z, x_2743.y));
            let x_2747 : vec4<f32> = u_xlat8;
            let x_2750 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2753 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2747.x, x_2747.y) * vec2<f32>(x_2750.x, x_2750.y)) + vec2<f32>(x_2753.w, x_2753.y));
            let x_2757 : f32 = u_xlat13.y;
            u_xlat10.w = x_2757;
            let x_2760 : vec4<f32> = u_xlat8;
            let x_2763 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2766 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2760.x, x_2760.y) * vec2<f32>(x_2763.x, x_2763.y)) + vec2<f32>(x_2766.x, x_2766.w));
            let x_2769 : vec4<f32> = u_xlat13;
            let x_2770 : vec3<f32> = vec3<f32>(x_2769.x, x_2769.z, x_2769.w);
            let x_2771 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2770.x, x_2771.y, x_2770.y, x_2770.z);
            let x_2773 : vec4<f32> = u_xlat8;
            let x_2776 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2779 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2773.x, x_2773.y, x_2773.x, x_2773.y) * vec4<f32>(x_2776.x, x_2776.y, x_2776.x, x_2776.y)) + vec4<f32>(x_2779.x, x_2779.y, x_2779.z, x_2779.y));
            let x_2782 : vec4<f32> = u_xlat8;
            let x_2785 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2788 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2782.x, x_2782.y) * vec2<f32>(x_2785.x, x_2785.y)) + vec2<f32>(x_2788.w, x_2788.y));
            let x_2792 : f32 = u_xlat10.x;
            u_xlat11.x = x_2792;
            let x_2794 : vec4<f32> = u_xlat8;
            let x_2797 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2800 : vec4<f32> = u_xlat11;
            let x_2802 : vec2<f32> = ((vec2<f32>(x_2794.x, x_2794.y) * vec2<f32>(x_2797.x, x_2797.y)) + vec2<f32>(x_2800.x, x_2800.y));
            let x_2803 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2802.x, x_2802.y, x_2803.z, x_2803.w);
            let x_2806 : vec4<f32> = u_xlat9;
            let x_2808 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2806.x, x_2806.x, x_2806.x, x_2806.x) * x_2808);
            let x_2811 : vec4<f32> = u_xlat9;
            let x_2813 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2811.y, x_2811.y, x_2811.y, x_2811.y) * x_2813);
            let x_2816 : vec4<f32> = u_xlat9;
            let x_2818 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2816.z, x_2816.z, x_2816.z, x_2816.z) * x_2818);
            let x_2820 : vec4<f32> = u_xlat9;
            let x_2822 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2820.w, x_2820.w, x_2820.w, x_2820.w) * x_2822);
            let x_2825 : vec4<f32> = u_xlat14;
            let x_2826 : vec2<f32> = vec2<f32>(x_2825.x, x_2825.y);
            let x_2828 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2826.x, x_2826.y, x_2828);
            let x_2835 : vec3<f32> = txVec43;
            let x_2837 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2835.xy, x_2835.z);
            u_xlat72 = x_2837;
            let x_2839 : vec4<f32> = u_xlat14;
            let x_2840 : vec2<f32> = vec2<f32>(x_2839.z, x_2839.w);
            let x_2842 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2840.x, x_2840.y, x_2842);
            let x_2849 : vec3<f32> = txVec44;
            let x_2851 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2849.xy, x_2849.z);
            u_xlat73 = x_2851;
            let x_2852 : f32 = u_xlat73;
            let x_2854 : f32 = u_xlat19.y;
            u_xlat73 = (x_2852 * x_2854);
            let x_2857 : f32 = u_xlat19.x;
            let x_2858 : f32 = u_xlat72;
            let x_2860 : f32 = u_xlat73;
            u_xlat72 = ((x_2857 * x_2858) + x_2860);
            let x_2863 : vec2<f32> = u_xlat52;
            let x_2865 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2863.x, x_2863.y, x_2865);
            let x_2872 : vec3<f32> = txVec45;
            let x_2874 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2872.xy, x_2872.z);
            u_xlat73 = x_2874;
            let x_2876 : f32 = u_xlat19.z;
            let x_2877 : f32 = u_xlat73;
            let x_2879 : f32 = u_xlat72;
            u_xlat72 = ((x_2876 * x_2877) + x_2879);
            let x_2882 : vec4<f32> = u_xlat17;
            let x_2883 : vec2<f32> = vec2<f32>(x_2882.x, x_2882.y);
            let x_2885 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2883.x, x_2883.y, x_2885);
            let x_2892 : vec3<f32> = txVec46;
            let x_2894 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2892.xy, x_2892.z);
            u_xlat73 = x_2894;
            let x_2896 : f32 = u_xlat19.w;
            let x_2897 : f32 = u_xlat73;
            let x_2899 : f32 = u_xlat72;
            u_xlat72 = ((x_2896 * x_2897) + x_2899);
            let x_2902 : vec4<f32> = u_xlat15;
            let x_2903 : vec2<f32> = vec2<f32>(x_2902.x, x_2902.y);
            let x_2905 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2903.x, x_2903.y, x_2905);
            let x_2912 : vec3<f32> = txVec47;
            let x_2914 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2912.xy, x_2912.z);
            u_xlat73 = x_2914;
            let x_2916 : f32 = u_xlat20.x;
            let x_2917 : f32 = u_xlat73;
            let x_2919 : f32 = u_xlat72;
            u_xlat72 = ((x_2916 * x_2917) + x_2919);
            let x_2922 : vec4<f32> = u_xlat15;
            let x_2923 : vec2<f32> = vec2<f32>(x_2922.z, x_2922.w);
            let x_2925 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2923.x, x_2923.y, x_2925);
            let x_2932 : vec3<f32> = txVec48;
            let x_2934 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2932.xy, x_2932.z);
            u_xlat73 = x_2934;
            let x_2936 : f32 = u_xlat20.y;
            let x_2937 : f32 = u_xlat73;
            let x_2939 : f32 = u_xlat72;
            u_xlat72 = ((x_2936 * x_2937) + x_2939);
            let x_2942 : vec4<f32> = u_xlat16;
            let x_2943 : vec2<f32> = vec2<f32>(x_2942.x, x_2942.y);
            let x_2945 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2943.x, x_2943.y, x_2945);
            let x_2952 : vec3<f32> = txVec49;
            let x_2954 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2952.xy, x_2952.z);
            u_xlat73 = x_2954;
            let x_2956 : f32 = u_xlat20.z;
            let x_2957 : f32 = u_xlat73;
            let x_2959 : f32 = u_xlat72;
            u_xlat72 = ((x_2956 * x_2957) + x_2959);
            let x_2962 : vec4<f32> = u_xlat17;
            let x_2963 : vec2<f32> = vec2<f32>(x_2962.z, x_2962.w);
            let x_2965 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_2963.x, x_2963.y, x_2965);
            let x_2972 : vec3<f32> = txVec50;
            let x_2974 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2972.xy, x_2972.z);
            u_xlat73 = x_2974;
            let x_2976 : f32 = u_xlat20.w;
            let x_2977 : f32 = u_xlat73;
            let x_2979 : f32 = u_xlat72;
            u_xlat72 = ((x_2976 * x_2977) + x_2979);
            let x_2982 : vec4<f32> = u_xlat18;
            let x_2983 : vec2<f32> = vec2<f32>(x_2982.x, x_2982.y);
            let x_2985 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_2983.x, x_2983.y, x_2985);
            let x_2992 : vec3<f32> = txVec51;
            let x_2994 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2992.xy, x_2992.z);
            u_xlat73 = x_2994;
            let x_2996 : f32 = u_xlat21.x;
            let x_2997 : f32 = u_xlat73;
            let x_2999 : f32 = u_xlat72;
            u_xlat72 = ((x_2996 * x_2997) + x_2999);
            let x_3002 : vec4<f32> = u_xlat18;
            let x_3003 : vec2<f32> = vec2<f32>(x_3002.z, x_3002.w);
            let x_3005 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3003.x, x_3003.y, x_3005);
            let x_3012 : vec3<f32> = txVec52;
            let x_3014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3012.xy, x_3012.z);
            u_xlat73 = x_3014;
            let x_3016 : f32 = u_xlat21.y;
            let x_3017 : f32 = u_xlat73;
            let x_3019 : f32 = u_xlat72;
            u_xlat72 = ((x_3016 * x_3017) + x_3019);
            let x_3022 : vec2<f32> = u_xlat32;
            let x_3024 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3022.x, x_3022.y, x_3024);
            let x_3031 : vec3<f32> = txVec53;
            let x_3033 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3031.xy, x_3031.z);
            u_xlat73 = x_3033;
            let x_3035 : f32 = u_xlat21.z;
            let x_3036 : f32 = u_xlat73;
            let x_3038 : f32 = u_xlat72;
            u_xlat72 = ((x_3035 * x_3036) + x_3038);
            let x_3041 : vec2<f32> = u_xlat60;
            let x_3043 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3041.x, x_3041.y, x_3043);
            let x_3050 : vec3<f32> = txVec54;
            let x_3052 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3050.xy, x_3050.z);
            u_xlat73 = x_3052;
            let x_3054 : f32 = u_xlat21.w;
            let x_3055 : f32 = u_xlat73;
            let x_3057 : f32 = u_xlat72;
            u_xlat72 = ((x_3054 * x_3055) + x_3057);
            let x_3060 : vec4<f32> = u_xlat13;
            let x_3061 : vec2<f32> = vec2<f32>(x_3060.x, x_3060.y);
            let x_3063 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3061.x, x_3061.y, x_3063);
            let x_3070 : vec3<f32> = txVec55;
            let x_3072 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3070.xy, x_3070.z);
            u_xlat73 = x_3072;
            let x_3074 : f32 = u_xlat9.x;
            let x_3075 : f32 = u_xlat73;
            let x_3077 : f32 = u_xlat72;
            u_xlat72 = ((x_3074 * x_3075) + x_3077);
            let x_3080 : vec4<f32> = u_xlat13;
            let x_3081 : vec2<f32> = vec2<f32>(x_3080.z, x_3080.w);
            let x_3083 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3081.x, x_3081.y, x_3083);
            let x_3090 : vec3<f32> = txVec56;
            let x_3092 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3090.xy, x_3090.z);
            u_xlat73 = x_3092;
            let x_3094 : f32 = u_xlat9.y;
            let x_3095 : f32 = u_xlat73;
            let x_3097 : f32 = u_xlat72;
            u_xlat72 = ((x_3094 * x_3095) + x_3097);
            let x_3100 : vec2<f32> = u_xlat55;
            let x_3102 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3100.x, x_3100.y, x_3102);
            let x_3109 : vec3<f32> = txVec57;
            let x_3111 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3109.xy, x_3109.z);
            u_xlat73 = x_3111;
            let x_3113 : f32 = u_xlat9.z;
            let x_3114 : f32 = u_xlat73;
            let x_3116 : f32 = u_xlat72;
            u_xlat72 = ((x_3113 * x_3114) + x_3116);
            let x_3119 : vec4<f32> = u_xlat8;
            let x_3120 : vec2<f32> = vec2<f32>(x_3119.x, x_3119.y);
            let x_3122 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3120.x, x_3120.y, x_3122);
            let x_3129 : vec3<f32> = txVec58;
            let x_3131 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3129.xy, x_3129.z);
            u_xlat73 = x_3131;
            let x_3133 : f32 = u_xlat9.w;
            let x_3134 : f32 = u_xlat73;
            let x_3136 : f32 = u_xlat72;
            u_xlat71 = ((x_3133 * x_3134) + x_3136);
          }
        }
      } else {
        let x_3140 : vec4<f32> = u_xlat7;
        let x_3141 : vec2<f32> = vec2<f32>(x_3140.x, x_3140.y);
        let x_3143 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3141.x, x_3141.y, x_3143);
        let x_3150 : vec3<f32> = txVec59;
        let x_3152 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3150.xy, x_3150.z);
        u_xlat71 = x_3152;
      }
      let x_3153 : i32 = u_xlati48;
      let x_3155 : f32 = x_164.x_AdditionalShadowParams[x_3153].x;
      u_xlat72 = (1.0f + -(x_3155));
      let x_3158 : f32 = u_xlat71;
      let x_3159 : i32 = u_xlati48;
      let x_3161 : f32 = x_164.x_AdditionalShadowParams[x_3159].x;
      let x_3163 : f32 = u_xlat72;
      u_xlat71 = ((x_3158 * x_3161) + x_3163);
      let x_3166 : f32 = u_xlat7.z;
      u_xlatb72 = (0.0f >= x_3166);
      let x_3169 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_3169 >= 1.0f);
      let x_3172 : bool = u_xlatb72;
      let x_3174 : bool = u_xlatb7.x;
      u_xlatb72 = (x_3172 | x_3174);
      let x_3176 : bool = u_xlatb72;
      let x_3177 : f32 = u_xlat71;
      u_xlat71 = select(x_3177, 1.0f, x_3176);
    } else {
      u_xlat71 = 1.0f;
    }
    let x_3180 : f32 = u_xlat71;
    u_xlat72 = (-(x_3180) + 1.0f);
    let x_3183 : f32 = u_xlat68;
    let x_3184 : f32 = u_xlat72;
    let x_3186 : f32 = u_xlat71;
    u_xlat71 = ((x_3183 * x_3184) + x_3186);
    let x_3189 : i32 = u_xlati48;
    u_xlati72 = (1i << bitcast<u32>((x_3189 & 31i)));
    let x_3193 : i32 = u_xlati72;
    let x_3196 : f32 = x_1492.x_AdditionalLightsCookieEnableBits;
    u_xlati72 = bitcast<i32>((bitcast<u32>(x_3193) & bitcast<u32>(x_3196)));
    let x_3200 : i32 = u_xlati72;
    if ((x_3200 != 0i)) {
      let x_3204 : i32 = u_xlati48;
      let x_3206 : f32 = x_1492.x_AdditionalLightsLightTypes[x_3204].el;
      u_xlati72 = i32(x_3206);
      let x_3209 : i32 = u_xlati72;
      u_xlati7 = select(1i, 0i, (x_3209 != 0i));
      let x_3213 : i32 = u_xlati48;
      u_xlati29 = (x_3213 << bitcast<u32>(2i));
      let x_3215 : i32 = u_xlati7;
      if ((x_3215 != 0i)) {
        let x_3219 : vec3<f32> = vs_TEXCOORD1;
        let x_3221 : i32 = u_xlati29;
        let x_3224 : i32 = u_xlati29;
        let x_3228 : vec4<f32> = x_1492.x_AdditionalLightsWorldToLights[((x_3221 + 1i) / 4i)][((x_3224 + 1i) % 4i)];
        let x_3230 : vec3<f32> = (vec3<f32>(x_3219.y, x_3219.y, x_3219.y) * vec3<f32>(x_3228.x, x_3228.y, x_3228.w));
        let x_3231 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3230.x, x_3231.y, x_3230.y, x_3230.z);
        let x_3233 : i32 = u_xlati29;
        let x_3235 : i32 = u_xlati29;
        let x_3238 : vec4<f32> = x_1492.x_AdditionalLightsWorldToLights[(x_3233 / 4i)][(x_3235 % 4i)];
        let x_3240 : vec3<f32> = vs_TEXCOORD1;
        let x_3243 : vec4<f32> = u_xlat7;
        let x_3245 : vec3<f32> = ((vec3<f32>(x_3238.x, x_3238.y, x_3238.w) * vec3<f32>(x_3240.x, x_3240.x, x_3240.x)) + vec3<f32>(x_3243.x, x_3243.z, x_3243.w));
        let x_3246 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3245.x, x_3246.y, x_3245.y, x_3245.z);
        let x_3248 : i32 = u_xlati29;
        let x_3251 : i32 = u_xlati29;
        let x_3255 : vec4<f32> = x_1492.x_AdditionalLightsWorldToLights[((x_3248 + 2i) / 4i)][((x_3251 + 2i) % 4i)];
        let x_3257 : vec3<f32> = vs_TEXCOORD1;
        let x_3260 : vec4<f32> = u_xlat7;
        let x_3262 : vec3<f32> = ((vec3<f32>(x_3255.x, x_3255.y, x_3255.w) * vec3<f32>(x_3257.z, x_3257.z, x_3257.z)) + vec3<f32>(x_3260.x, x_3260.z, x_3260.w));
        let x_3263 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3262.x, x_3263.y, x_3262.y, x_3262.z);
        let x_3265 : vec4<f32> = u_xlat7;
        let x_3267 : i32 = u_xlati29;
        let x_3270 : i32 = u_xlati29;
        let x_3274 : vec4<f32> = x_1492.x_AdditionalLightsWorldToLights[((x_3267 + 3i) / 4i)][((x_3270 + 3i) % 4i)];
        let x_3276 : vec3<f32> = (vec3<f32>(x_3265.x, x_3265.z, x_3265.w) + vec3<f32>(x_3274.x, x_3274.y, x_3274.w));
        let x_3277 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3276.x, x_3277.y, x_3276.y, x_3276.z);
        let x_3279 : vec4<f32> = u_xlat7;
        let x_3281 : vec4<f32> = u_xlat7;
        let x_3283 : vec2<f32> = (vec2<f32>(x_3279.x, x_3279.z) / vec2<f32>(x_3281.w, x_3281.w));
        let x_3284 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3283.x, x_3284.y, x_3283.y, x_3284.w);
        let x_3286 : vec4<f32> = u_xlat7;
        let x_3289 : vec2<f32> = ((vec2<f32>(x_3286.x, x_3286.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3290 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3289.x, x_3290.y, x_3289.y, x_3290.w);
        let x_3292 : vec4<f32> = u_xlat7;
        let x_3296 : vec2<f32> = clamp(vec2<f32>(x_3292.x, x_3292.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3297 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3296.x, x_3297.y, x_3296.y, x_3297.w);
        let x_3299 : i32 = u_xlati48;
        let x_3301 : vec4<f32> = x_1492.x_AdditionalLightsCookieAtlasUVRects[x_3299];
        let x_3303 : vec4<f32> = u_xlat7;
        let x_3306 : i32 = u_xlati48;
        let x_3308 : vec4<f32> = x_1492.x_AdditionalLightsCookieAtlasUVRects[x_3306];
        let x_3310 : vec2<f32> = ((vec2<f32>(x_3301.x, x_3301.y) * vec2<f32>(x_3303.x, x_3303.z)) + vec2<f32>(x_3308.z, x_3308.w));
        let x_3311 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3310.x, x_3311.y, x_3310.y, x_3311.w);
      } else {
        let x_3314 : i32 = u_xlati72;
        u_xlatb72 = (x_3314 == 1i);
        let x_3316 : bool = u_xlatb72;
        u_xlati72 = select(0i, 1i, x_3316);
        let x_3318 : i32 = u_xlati72;
        if ((x_3318 != 0i)) {
          let x_3322 : vec3<f32> = vs_TEXCOORD1;
          let x_3324 : i32 = u_xlati29;
          let x_3327 : i32 = u_xlati29;
          let x_3331 : vec4<f32> = x_1492.x_AdditionalLightsWorldToLights[((x_3324 + 1i) / 4i)][((x_3327 + 1i) % 4i)];
          let x_3333 : vec2<f32> = (vec2<f32>(x_3322.y, x_3322.y) * vec2<f32>(x_3331.x, x_3331.y));
          let x_3334 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3333.x, x_3333.y, x_3334.z, x_3334.w);
          let x_3336 : i32 = u_xlati29;
          let x_3338 : i32 = u_xlati29;
          let x_3341 : vec4<f32> = x_1492.x_AdditionalLightsWorldToLights[(x_3336 / 4i)][(x_3338 % 4i)];
          let x_3343 : vec3<f32> = vs_TEXCOORD1;
          let x_3346 : vec4<f32> = u_xlat8;
          let x_3348 : vec2<f32> = ((vec2<f32>(x_3341.x, x_3341.y) * vec2<f32>(x_3343.x, x_3343.x)) + vec2<f32>(x_3346.x, x_3346.y));
          let x_3349 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3348.x, x_3348.y, x_3349.z, x_3349.w);
          let x_3351 : i32 = u_xlati29;
          let x_3354 : i32 = u_xlati29;
          let x_3358 : vec4<f32> = x_1492.x_AdditionalLightsWorldToLights[((x_3351 + 2i) / 4i)][((x_3354 + 2i) % 4i)];
          let x_3360 : vec3<f32> = vs_TEXCOORD1;
          let x_3363 : vec4<f32> = u_xlat8;
          let x_3365 : vec2<f32> = ((vec2<f32>(x_3358.x, x_3358.y) * vec2<f32>(x_3360.z, x_3360.z)) + vec2<f32>(x_3363.x, x_3363.y));
          let x_3366 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3365.x, x_3365.y, x_3366.z, x_3366.w);
          let x_3368 : vec4<f32> = u_xlat8;
          let x_3370 : i32 = u_xlati29;
          let x_3373 : i32 = u_xlati29;
          let x_3377 : vec4<f32> = x_1492.x_AdditionalLightsWorldToLights[((x_3370 + 3i) / 4i)][((x_3373 + 3i) % 4i)];
          let x_3379 : vec2<f32> = (vec2<f32>(x_3368.x, x_3368.y) + vec2<f32>(x_3377.x, x_3377.y));
          let x_3380 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3379.x, x_3379.y, x_3380.z, x_3380.w);
          let x_3382 : vec4<f32> = u_xlat8;
          let x_3385 : vec2<f32> = ((vec2<f32>(x_3382.x, x_3382.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3386 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3385.x, x_3385.y, x_3386.z, x_3386.w);
          let x_3388 : vec4<f32> = u_xlat8;
          let x_3390 : vec2<f32> = fract(vec2<f32>(x_3388.x, x_3388.y));
          let x_3391 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3390.x, x_3390.y, x_3391.z, x_3391.w);
          let x_3393 : i32 = u_xlati48;
          let x_3395 : vec4<f32> = x_1492.x_AdditionalLightsCookieAtlasUVRects[x_3393];
          let x_3397 : vec4<f32> = u_xlat8;
          let x_3400 : i32 = u_xlati48;
          let x_3402 : vec4<f32> = x_1492.x_AdditionalLightsCookieAtlasUVRects[x_3400];
          let x_3404 : vec2<f32> = ((vec2<f32>(x_3395.x, x_3395.y) * vec2<f32>(x_3397.x, x_3397.y)) + vec2<f32>(x_3402.z, x_3402.w));
          let x_3405 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3404.x, x_3405.y, x_3404.y, x_3405.w);
        } else {
          let x_3408 : vec3<f32> = vs_TEXCOORD1;
          let x_3410 : i32 = u_xlati29;
          let x_3413 : i32 = u_xlati29;
          let x_3417 : vec4<f32> = x_1492.x_AdditionalLightsWorldToLights[((x_3410 + 1i) / 4i)][((x_3413 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_3408.y, x_3408.y, x_3408.y, x_3408.y) * x_3417);
          let x_3419 : i32 = u_xlati29;
          let x_3421 : i32 = u_xlati29;
          let x_3424 : vec4<f32> = x_1492.x_AdditionalLightsWorldToLights[(x_3419 / 4i)][(x_3421 % 4i)];
          let x_3425 : vec3<f32> = vs_TEXCOORD1;
          let x_3428 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_3424 * vec4<f32>(x_3425.x, x_3425.x, x_3425.x, x_3425.x)) + x_3428);
          let x_3430 : i32 = u_xlati29;
          let x_3433 : i32 = u_xlati29;
          let x_3437 : vec4<f32> = x_1492.x_AdditionalLightsWorldToLights[((x_3430 + 2i) / 4i)][((x_3433 + 2i) % 4i)];
          let x_3438 : vec3<f32> = vs_TEXCOORD1;
          let x_3441 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_3437 * vec4<f32>(x_3438.z, x_3438.z, x_3438.z, x_3438.z)) + x_3441);
          let x_3443 : vec4<f32> = u_xlat8;
          let x_3444 : i32 = u_xlati29;
          let x_3447 : i32 = u_xlati29;
          let x_3451 : vec4<f32> = x_1492.x_AdditionalLightsWorldToLights[((x_3444 + 3i) / 4i)][((x_3447 + 3i) % 4i)];
          u_xlat8 = (x_3443 + x_3451);
          let x_3453 : vec4<f32> = u_xlat8;
          let x_3455 : vec4<f32> = u_xlat8;
          let x_3457 : vec3<f32> = (vec3<f32>(x_3453.x, x_3453.y, x_3453.z) / vec3<f32>(x_3455.w, x_3455.w, x_3455.w));
          let x_3458 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3457.x, x_3457.y, x_3457.z, x_3458.w);
          let x_3460 : vec4<f32> = u_xlat8;
          let x_3462 : vec4<f32> = u_xlat8;
          u_xlat72 = dot(vec3<f32>(x_3460.x, x_3460.y, x_3460.z), vec3<f32>(x_3462.x, x_3462.y, x_3462.z));
          let x_3465 : f32 = u_xlat72;
          u_xlat72 = inverseSqrt(x_3465);
          let x_3467 : f32 = u_xlat72;
          let x_3469 : vec4<f32> = u_xlat8;
          let x_3471 : vec3<f32> = (vec3<f32>(x_3467, x_3467, x_3467) * vec3<f32>(x_3469.x, x_3469.y, x_3469.z));
          let x_3472 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3471.x, x_3471.y, x_3471.z, x_3472.w);
          let x_3474 : vec4<f32> = u_xlat8;
          u_xlat72 = dot(abs(vec3<f32>(x_3474.x, x_3474.y, x_3474.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3479 : f32 = u_xlat72;
          u_xlat72 = max(x_3479, 0.00000099999999747524f);
          let x_3482 : f32 = u_xlat72;
          u_xlat72 = (1.0f / x_3482);
          let x_3484 : f32 = u_xlat72;
          let x_3486 : vec4<f32> = u_xlat8;
          let x_3488 : vec3<f32> = (vec3<f32>(x_3484, x_3484, x_3484) * vec3<f32>(x_3486.z, x_3486.x, x_3486.y));
          let x_3489 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3488.x, x_3488.y, x_3488.z, x_3489.w);
          let x_3492 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_3492);
          let x_3496 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_3496, 0.0f, 1.0f);
          let x_3501 : vec4<f32> = u_xlat9;
          let x_3503 : vec4<bool> = (vec4<f32>(x_3501.y, x_3501.y, x_3501.z, x_3501.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3504 : vec2<bool> = vec2<bool>(x_3503.x, x_3503.z);
          let x_3505 : vec3<bool> = u_xlatb29;
          u_xlatb29 = vec3<bool>(x_3504.x, x_3505.y, x_3504.y);
          let x_3508 : bool = u_xlatb29.x;
          if (x_3508) {
            let x_3513 : f32 = u_xlat9.x;
            x_3509 = x_3513;
          } else {
            let x_3516 : f32 = u_xlat9.x;
            x_3509 = -(x_3516);
          }
          let x_3518 : f32 = x_3509;
          u_xlat29.x = x_3518;
          let x_3521 : bool = u_xlatb29.z;
          if (x_3521) {
            let x_3526 : f32 = u_xlat9.x;
            x_3522 = x_3526;
          } else {
            let x_3529 : f32 = u_xlat9.x;
            x_3522 = -(x_3529);
          }
          let x_3531 : f32 = x_3522;
          u_xlat29.z = x_3531;
          let x_3533 : vec4<f32> = u_xlat8;
          let x_3535 : f32 = u_xlat72;
          let x_3538 : vec3<f32> = u_xlat29;
          let x_3540 : vec2<f32> = ((vec2<f32>(x_3533.x, x_3533.y) * vec2<f32>(x_3535, x_3535)) + vec2<f32>(x_3538.x, x_3538.z));
          let x_3541 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3540.x, x_3541.y, x_3540.y);
          let x_3543 : vec3<f32> = u_xlat29;
          let x_3546 : vec2<f32> = ((vec2<f32>(x_3543.x, x_3543.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3547 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3546.x, x_3547.y, x_3546.y);
          let x_3549 : vec3<f32> = u_xlat29;
          let x_3553 : vec2<f32> = clamp(vec2<f32>(x_3549.x, x_3549.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3554 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3553.x, x_3554.y, x_3553.y);
          let x_3556 : i32 = u_xlati48;
          let x_3558 : vec4<f32> = x_1492.x_AdditionalLightsCookieAtlasUVRects[x_3556];
          let x_3560 : vec3<f32> = u_xlat29;
          let x_3563 : i32 = u_xlati48;
          let x_3565 : vec4<f32> = x_1492.x_AdditionalLightsCookieAtlasUVRects[x_3563];
          let x_3567 : vec2<f32> = ((vec2<f32>(x_3558.x, x_3558.y) * vec2<f32>(x_3560.x, x_3560.z)) + vec2<f32>(x_3565.z, x_3565.w));
          let x_3568 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3567.x, x_3568.y, x_3567.y, x_3568.w);
        }
      }
      let x_3575 : vec4<f32> = u_xlat7;
      let x_3577 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3575.x, x_3575.z), 0.0f);
      u_xlat7 = x_3577;
      let x_3579 : bool = u_xlatb4.y;
      if (x_3579) {
        let x_3584 : f32 = u_xlat7.w;
        x_3580 = x_3584;
      } else {
        let x_3587 : f32 = u_xlat7.x;
        x_3580 = x_3587;
      }
      let x_3588 : f32 = x_3580;
      u_xlat72 = x_3588;
      let x_3590 : bool = u_xlatb4.x;
      if (x_3590) {
        let x_3594 : vec4<f32> = u_xlat7;
        x_3591 = vec3<f32>(x_3594.x, x_3594.y, x_3594.z);
      } else {
        let x_3597 : f32 = u_xlat72;
        x_3591 = vec3<f32>(x_3597, x_3597, x_3597);
      }
      let x_3599 : vec3<f32> = x_3591;
      let x_3600 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_3599.x, x_3599.y, x_3599.z, x_3600.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_3606 : vec4<f32> = u_xlat7;
    let x_3608 : i32 = u_xlati48;
    let x_3610 : vec4<f32> = x_1741.x_AdditionalLightsColor[x_3608];
    let x_3612 : vec3<f32> = (vec3<f32>(x_3606.x, x_3606.y, x_3606.z) * vec3<f32>(x_3610.x, x_3610.y, x_3610.z));
    let x_3613 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3612.x, x_3612.y, x_3612.z, x_3613.w);
    let x_3615 : f32 = u_xlat70;
    let x_3616 : f32 = u_xlat71;
    u_xlat48 = (x_3615 * x_3616);
    let x_3618 : f32 = u_xlat48;
    let x_3620 : vec4<f32> = u_xlat7;
    let x_3622 : vec3<f32> = (vec3<f32>(x_3618, x_3618, x_3618) * vec3<f32>(x_3620.x, x_3620.y, x_3620.z));
    let x_3623 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3622.x, x_3622.y, x_3622.z, x_3623.w);
    let x_3625 : vec4<f32> = u_xlat1;
    let x_3627 : vec4<f32> = u_xlat6;
    u_xlat48 = dot(vec3<f32>(x_3625.x, x_3625.y, x_3625.z), vec3<f32>(x_3627.x, x_3627.y, x_3627.z));
    let x_3630 : f32 = u_xlat48;
    u_xlat48 = clamp(x_3630, 0.0f, 1.0f);
    let x_3632 : f32 = u_xlat48;
    let x_3634 : vec4<f32> = u_xlat7;
    let x_3636 : vec3<f32> = (vec3<f32>(x_3632, x_3632, x_3632) * vec3<f32>(x_3634.x, x_3634.y, x_3634.z));
    let x_3637 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3636.x, x_3636.y, x_3636.z, x_3637.w);
    let x_3639 : vec4<f32> = u_xlat6;
    let x_3641 : vec4<f32> = u_xlat0;
    let x_3644 : vec4<f32> = u_xlat5;
    let x_3646 : vec3<f32> = ((vec3<f32>(x_3639.x, x_3639.y, x_3639.z) * vec3<f32>(x_3641.y, x_3641.z, x_3641.w)) + vec3<f32>(x_3644.x, x_3644.y, x_3644.z));
    let x_3647 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3646.x, x_3646.y, x_3646.z, x_3647.w);

    continuing {
      let x_3649 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3649 + bitcast<u32>(1i));
    }
  }
  let x_3652 : vec3<f32> = u_xlat2;
  let x_3653 : vec4<f32> = u_xlat0;
  let x_3656 : vec4<f32> = u_xlat3;
  u_xlat22 = ((x_3652 * vec3<f32>(x_3653.y, x_3653.z, x_3653.w)) + vec3<f32>(x_3656.x, x_3656.y, x_3656.z));
  let x_3661 : vec4<f32> = u_xlat5;
  let x_3663 : vec3<f32> = u_xlat22;
  let x_3664 : vec3<f32> = (vec3<f32>(x_3661.x, x_3661.y, x_3661.z) + x_3663);
  let x_3665 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3664.x, x_3664.y, x_3664.z, x_3665.w);
  let x_3669 : f32 = x_40.x_Surface;
  u_xlatb22 = (x_3669 == 1.0f);
  let x_3671 : bool = u_xlatb22;
  if (x_3671) {
    let x_3676 : f32 = u_xlat0.x;
    x_3672 = x_3676;
  } else {
    x_3672 = 1.0f;
  }
  let x_3678 : f32 = x_3672;
  SV_Target0.w = x_3678;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


