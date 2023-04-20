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
  x_AdditionalLightsWorldToShadow : Arr_3,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_40 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_75 : UnityPerDraw;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat64 : f32;

var<private> u_xlatb64 : bool;

@group(1) @binding(4) var<uniform> x_164 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb65 : bool;

var<private> u_xlat45 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat47 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat65 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat26 : vec2<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat48 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlatb3 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlatu64 : u32;

var<private> u_xlatu67 : u32;

var<private> u_xlati5 : i32;

var<private> u_xlat67 : f32;

var<private> u_xlati67 : i32;

@group(1) @binding(1) var<uniform> x_1600 : AdditionalLights;

var<private> u_xlat68 : f32;

var<private> u_xlati6 : i32;

var<private> u_xlatb27 : vec3<bool>;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlat27 : f32;

var<private> u_xlatb69 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat69 : f32;

var<private> u_xlat49 : vec2<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlat70 : f32;

var<private> u_xlatb48 : bool;

var<private> u_xlat21 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb21 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu66 : u32;

var<private> u_xlatb67 : bool;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1754 : f32;
  var x_1767 : f32;
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
  var x_3099 : f32;
  var x_3180 : f32;
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
  u_xlat64 = (x_122 * x_124);
  let x_127 : f32 = u_xlat1.x;
  let x_129 : f32 = u_xlat1.x;
  let x_131 : f32 = u_xlat64;
  u_xlat64 = ((x_127 * x_129) + -(x_131));
  let x_136 : vec4<f32> = x_75.unity_SHC;
  let x_138 : f32 = u_xlat64;
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
  u_xlatb64 = (0.0f < x_167);
  let x_169 : bool = u_xlatb64;
  if (x_169) {
    let x_173 : f32 = x_164.x_MainLightShadowParams.y;
    u_xlatb64 = (x_173 == 1.0f);
    let x_175 : bool = u_xlatb64;
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
      u_xlat64 = dot(x_259, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_266 : f32 = x_164.x_MainLightShadowParams.y;
      u_xlatb65 = (x_266 == 2.0f);
      let x_269 : bool = u_xlatb65;
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
        u_xlat45 = ((vec2<f32>(x_291.x, x_291.y) * vec2<f32>(x_294.z, x_294.w)) + -(vec2<f32>(x_297.x, x_297.y)));
        let x_301 : vec2<f32> = u_xlat45;
        u_xlat4 = (vec4<f32>(x_301.x, x_301.x, x_301.y, x_301.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_306 : vec4<f32> = u_xlat4;
        let x_308 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_306.x, x_306.x, x_306.z, x_306.z) * vec4<f32>(x_308.x, x_308.x, x_308.z, x_308.z));
        let x_311 : vec4<f32> = u_xlat5;
        let x_315 : vec2<f32> = (vec2<f32>(x_311.y, x_311.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_316 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_315.x, x_316.y, x_315.y, x_316.w);
        let x_318 : vec4<f32> = u_xlat5;
        let x_321 : vec2<f32> = u_xlat45;
        let x_323 : vec2<f32> = ((vec2<f32>(x_318.x, x_318.z) * vec2<f32>(0.5f, 0.5f)) + -(x_321));
        let x_324 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_323.x, x_323.y, x_324.z, x_324.w);
        let x_327 : vec2<f32> = u_xlat45;
        u_xlat47 = (-(x_327) + vec2<f32>(1.0f, 1.0f));
        let x_332 : vec2<f32> = u_xlat45;
        let x_334 : vec2<f32> = min(x_332, vec2<f32>(0.0f, 0.0f));
        let x_335 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_335.z, x_335.w);
        let x_337 : vec4<f32> = u_xlat6;
        let x_340 : vec4<f32> = u_xlat6;
        let x_343 : vec2<f32> = u_xlat47;
        let x_344 : vec2<f32> = ((-(vec2<f32>(x_337.x, x_337.y)) * vec2<f32>(x_340.x, x_340.y)) + x_343);
        let x_345 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_344.x, x_344.y, x_345.z, x_345.w);
        let x_347 : vec2<f32> = u_xlat45;
        u_xlat45 = max(x_347, vec2<f32>(0.0f, 0.0f));
        let x_349 : vec2<f32> = u_xlat45;
        let x_351 : vec2<f32> = u_xlat45;
        let x_353 : vec4<f32> = u_xlat4;
        u_xlat45 = ((-(x_349) * x_351) + vec2<f32>(x_353.y, x_353.w));
        let x_356 : vec4<f32> = u_xlat6;
        let x_358 : vec2<f32> = (vec2<f32>(x_356.x, x_356.y) + vec2<f32>(1.0f, 1.0f));
        let x_359 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_358.x, x_358.y, x_359.z, x_359.w);
        let x_361 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_361 + vec2<f32>(1.0f, 1.0f));
        let x_364 : vec4<f32> = u_xlat5;
        let x_368 : vec2<f32> = (vec2<f32>(x_364.x, x_364.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_369 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_368.x, x_368.y, x_369.z, x_369.w);
        let x_371 : vec2<f32> = u_xlat47;
        let x_372 : vec2<f32> = (x_371 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_373 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_372.x, x_372.y, x_373.z, x_373.w);
        let x_375 : vec4<f32> = u_xlat6;
        let x_377 : vec2<f32> = (vec2<f32>(x_375.x, x_375.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_378 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_378.z, x_378.w);
        let x_381 : vec2<f32> = u_xlat45;
        let x_382 : vec2<f32> = (x_381 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_383 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
        let x_385 : vec4<f32> = u_xlat4;
        u_xlat45 = (vec2<f32>(x_385.y, x_385.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_389 : f32 = u_xlat6.x;
        u_xlat7.z = x_389;
        let x_392 : f32 = u_xlat45.x;
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
        let x_410 : f32 = u_xlat45.y;
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
        u_xlat45 = ((vec2<f32>(x_481.x, x_481.y) * vec2<f32>(x_484.x, x_484.y)) + vec2<f32>(x_487.z, x_487.w));
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
        u_xlat65 = (x_537 * x_539);
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
        u_xlat24 = x_570;
        let x_571 : f32 = u_xlat24;
        let x_573 : f32 = u_xlat10.y;
        u_xlat24 = (x_571 * x_573);
        let x_576 : f32 = u_xlat10.x;
        let x_578 : f32 = u_xlat3.x;
        let x_580 : f32 = u_xlat24;
        u_xlat3.x = ((x_576 * x_578) + x_580);
        let x_584 : vec2<f32> = u_xlat45;
        let x_586 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_584.x, x_584.y, x_586);
        let x_593 : vec3<f32> = txVec6;
        let x_595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_593.xy, x_593.z);
        u_xlat24 = x_595;
        let x_597 : f32 = u_xlat10.z;
        let x_598 : f32 = u_xlat24;
        let x_601 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_597 * x_598) + x_601);
        let x_605 : vec4<f32> = u_xlat6;
        let x_606 : vec2<f32> = vec2<f32>(x_605.x, x_605.y);
        let x_608 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_606.x, x_606.y, x_608);
        let x_615 : vec3<f32> = txVec7;
        let x_617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_615.xy, x_615.z);
        u_xlat24 = x_617;
        let x_619 : f32 = u_xlat10.w;
        let x_620 : f32 = u_xlat24;
        let x_623 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_619 * x_620) + x_623);
        let x_627 : vec4<f32> = u_xlat8;
        let x_628 : vec2<f32> = vec2<f32>(x_627.x, x_627.y);
        let x_630 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_628.x, x_628.y, x_630);
        let x_637 : vec3<f32> = txVec8;
        let x_639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_637.xy, x_637.z);
        u_xlat24 = x_639;
        let x_641 : f32 = u_xlat11.x;
        let x_642 : f32 = u_xlat24;
        let x_645 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_641 * x_642) + x_645);
        let x_649 : vec4<f32> = u_xlat8;
        let x_650 : vec2<f32> = vec2<f32>(x_649.z, x_649.w);
        let x_652 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_650.x, x_650.y, x_652);
        let x_659 : vec3<f32> = txVec9;
        let x_661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_659.xy, x_659.z);
        u_xlat24 = x_661;
        let x_663 : f32 = u_xlat11.y;
        let x_664 : f32 = u_xlat24;
        let x_667 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_663 * x_664) + x_667);
        let x_671 : vec4<f32> = u_xlat6;
        let x_672 : vec2<f32> = vec2<f32>(x_671.z, x_671.w);
        let x_674 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_672.x, x_672.y, x_674);
        let x_681 : vec3<f32> = txVec10;
        let x_683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_681.xy, x_681.z);
        u_xlat24 = x_683;
        let x_685 : f32 = u_xlat11.z;
        let x_686 : f32 = u_xlat24;
        let x_689 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_685 * x_686) + x_689);
        let x_693 : vec4<f32> = u_xlat5;
        let x_694 : vec2<f32> = vec2<f32>(x_693.x, x_693.y);
        let x_696 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_694.x, x_694.y, x_696);
        let x_703 : vec3<f32> = txVec11;
        let x_705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_703.xy, x_703.z);
        u_xlat24 = x_705;
        let x_707 : f32 = u_xlat11.w;
        let x_708 : f32 = u_xlat24;
        let x_711 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_707 * x_708) + x_711);
        let x_715 : vec4<f32> = u_xlat5;
        let x_716 : vec2<f32> = vec2<f32>(x_715.z, x_715.w);
        let x_718 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_725 : vec3<f32> = txVec12;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_725.xy, x_725.z);
        u_xlat24 = x_727;
        let x_728 : f32 = u_xlat65;
        let x_729 : f32 = u_xlat24;
        let x_732 : f32 = u_xlat3.x;
        u_xlat64 = ((x_728 * x_729) + x_732);
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
        u_xlat45 = ((vec2<f32>(x_749.x, x_749.y) * vec2<f32>(x_752.z, x_752.w)) + -(vec2<f32>(x_755.x, x_755.y)));
        let x_759 : vec2<f32> = u_xlat45;
        u_xlat4 = (vec4<f32>(x_759.x, x_759.x, x_759.y, x_759.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_762 : vec4<f32> = u_xlat4;
        let x_764 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_762.x, x_762.x, x_762.z, x_762.z) * vec4<f32>(x_764.x, x_764.x, x_764.z, x_764.z));
        let x_767 : vec4<f32> = u_xlat5;
        let x_771 : vec2<f32> = (vec2<f32>(x_767.y, x_767.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_772 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_772.x, x_771.x, x_772.z, x_771.y);
        let x_774 : vec4<f32> = u_xlat5;
        let x_777 : vec2<f32> = u_xlat45;
        let x_779 : vec2<f32> = ((vec2<f32>(x_774.x, x_774.z) * vec2<f32>(0.5f, 0.5f)) + -(x_777));
        let x_780 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_779.x, x_780.y, x_779.y, x_780.w);
        let x_782 : vec2<f32> = u_xlat45;
        let x_784 : vec2<f32> = (-(x_782) + vec2<f32>(1.0f, 1.0f));
        let x_785 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_784.x, x_784.y, x_785.z, x_785.w);
        let x_787 : vec2<f32> = u_xlat45;
        u_xlat47 = min(x_787, vec2<f32>(0.0f, 0.0f));
        let x_789 : vec2<f32> = u_xlat47;
        let x_791 : vec2<f32> = u_xlat47;
        let x_793 : vec4<f32> = u_xlat5;
        let x_795 : vec2<f32> = ((-(x_789) * x_791) + vec2<f32>(x_793.x, x_793.y));
        let x_796 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_795.x, x_795.y, x_796.z, x_796.w);
        let x_798 : vec2<f32> = u_xlat45;
        u_xlat47 = max(x_798, vec2<f32>(0.0f, 0.0f));
        let x_801 : vec2<f32> = u_xlat47;
        let x_803 : vec2<f32> = u_xlat47;
        let x_805 : vec4<f32> = u_xlat4;
        let x_807 : vec2<f32> = ((-(x_801) * x_803) + vec2<f32>(x_805.y, x_805.w));
        let x_808 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_807.x, x_808.y, x_807.y);
        let x_810 : vec4<f32> = u_xlat5;
        let x_813 : vec2<f32> = (vec2<f32>(x_810.x, x_810.y) + vec2<f32>(2.0f, 2.0f));
        let x_814 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_813.x, x_813.y, x_814.z, x_814.w);
        let x_816 : vec3<f32> = u_xlat25;
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
        let x_841 : vec2<f32> = u_xlat45;
        let x_848 : vec2<f32> = ((vec2<f32>(x_841.x, x_841.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_849 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_849.x, x_848.x, x_849.z, x_848.y);
        let x_851 : vec2<f32> = u_xlat45;
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
        let x_867 : vec2<f32> = u_xlat45;
        let x_870 : vec2<f32> = ((vec2<f32>(x_867.y, x_867.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_871 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_871.x, x_870.x, x_871.z, x_870.y);
        let x_873 : vec2<f32> = u_xlat45;
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
        u_xlat45 = ((vec2<f32>(x_927.x, x_927.y) * vec2<f32>(x_930.x, x_930.y)) + vec2<f32>(x_933.w, x_933.y));
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
        u_xlat26 = ((vec2<f32>(x_989.x, x_989.y) * vec2<f32>(x_992.x, x_992.y)) + vec2<f32>(x_995.w, x_995.y));
        let x_999 : f32 = u_xlat8.y;
        u_xlat5.w = x_999;
        let x_1002 : vec4<f32> = u_xlat3;
        let x_1005 : vec4<f32> = x_164.x_MainLightShadowmapSize;
        let x_1008 : vec4<f32> = u_xlat5;
        u_xlat53 = ((vec2<f32>(x_1002.x, x_1002.y) * vec2<f32>(x_1005.x, x_1005.y)) + vec2<f32>(x_1008.x, x_1008.w));
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
        u_xlat48 = ((vec2<f32>(x_1025.x, x_1025.y) * vec2<f32>(x_1028.x, x_1028.y)) + vec2<f32>(x_1031.w, x_1031.y));
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
        u_xlat65 = x_1080;
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
        let x_1104 : f32 = u_xlat65;
        let x_1107 : f32 = u_xlat5.x;
        u_xlat65 = ((x_1103 * x_1104) + x_1107);
        let x_1110 : vec2<f32> = u_xlat45;
        let x_1112 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1110.x, x_1110.y, x_1112);
        let x_1119 : vec3<f32> = txVec15;
        let x_1121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1119.xy, x_1119.z);
        u_xlat45.x = x_1121;
        let x_1124 : f32 = u_xlat14.z;
        let x_1126 : f32 = u_xlat45.x;
        let x_1128 : f32 = u_xlat65;
        u_xlat65 = ((x_1124 * x_1126) + x_1128);
        let x_1131 : vec4<f32> = u_xlat12;
        let x_1132 : vec2<f32> = vec2<f32>(x_1131.x, x_1131.y);
        let x_1134 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1132.x, x_1132.y, x_1134);
        let x_1141 : vec3<f32> = txVec16;
        let x_1143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1141.xy, x_1141.z);
        u_xlat45.x = x_1143;
        let x_1146 : f32 = u_xlat14.w;
        let x_1148 : f32 = u_xlat45.x;
        let x_1150 : f32 = u_xlat65;
        u_xlat65 = ((x_1146 * x_1148) + x_1150);
        let x_1153 : vec4<f32> = u_xlat10;
        let x_1154 : vec2<f32> = vec2<f32>(x_1153.x, x_1153.y);
        let x_1156 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1163 : vec3<f32> = txVec17;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1163.xy, x_1163.z);
        u_xlat45.x = x_1165;
        let x_1168 : f32 = u_xlat15.x;
        let x_1170 : f32 = u_xlat45.x;
        let x_1172 : f32 = u_xlat65;
        u_xlat65 = ((x_1168 * x_1170) + x_1172);
        let x_1175 : vec4<f32> = u_xlat10;
        let x_1176 : vec2<f32> = vec2<f32>(x_1175.z, x_1175.w);
        let x_1178 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1176.x, x_1176.y, x_1178);
        let x_1185 : vec3<f32> = txVec18;
        let x_1187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1185.xy, x_1185.z);
        u_xlat45.x = x_1187;
        let x_1190 : f32 = u_xlat15.y;
        let x_1192 : f32 = u_xlat45.x;
        let x_1194 : f32 = u_xlat65;
        u_xlat65 = ((x_1190 * x_1192) + x_1194);
        let x_1197 : vec4<f32> = u_xlat11;
        let x_1198 : vec2<f32> = vec2<f32>(x_1197.x, x_1197.y);
        let x_1200 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1198.x, x_1198.y, x_1200);
        let x_1207 : vec3<f32> = txVec19;
        let x_1209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1207.xy, x_1207.z);
        u_xlat45.x = x_1209;
        let x_1212 : f32 = u_xlat15.z;
        let x_1214 : f32 = u_xlat45.x;
        let x_1216 : f32 = u_xlat65;
        u_xlat65 = ((x_1212 * x_1214) + x_1216);
        let x_1219 : vec4<f32> = u_xlat12;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.z, x_1219.w);
        let x_1222 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec20;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1229.xy, x_1229.z);
        u_xlat45.x = x_1231;
        let x_1234 : f32 = u_xlat15.w;
        let x_1236 : f32 = u_xlat45.x;
        let x_1238 : f32 = u_xlat65;
        u_xlat65 = ((x_1234 * x_1236) + x_1238);
        let x_1241 : vec4<f32> = u_xlat13;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.x, x_1241.y);
        let x_1244 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec21;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat45.x = x_1253;
        let x_1256 : f32 = u_xlat16.x;
        let x_1258 : f32 = u_xlat45.x;
        let x_1260 : f32 = u_xlat65;
        u_xlat65 = ((x_1256 * x_1258) + x_1260);
        let x_1263 : vec4<f32> = u_xlat13;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.z, x_1263.w);
        let x_1266 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec22;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1273.xy, x_1273.z);
        u_xlat45.x = x_1275;
        let x_1278 : f32 = u_xlat16.y;
        let x_1280 : f32 = u_xlat45.x;
        let x_1282 : f32 = u_xlat65;
        u_xlat65 = ((x_1278 * x_1280) + x_1282);
        let x_1285 : vec2<f32> = u_xlat26;
        let x_1287 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec23;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1294.xy, x_1294.z);
        u_xlat45.x = x_1296;
        let x_1299 : f32 = u_xlat16.z;
        let x_1301 : f32 = u_xlat45.x;
        let x_1303 : f32 = u_xlat65;
        u_xlat65 = ((x_1299 * x_1301) + x_1303);
        let x_1306 : vec2<f32> = u_xlat53;
        let x_1308 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
        let x_1315 : vec3<f32> = txVec24;
        let x_1317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1315.xy, x_1315.z);
        u_xlat45.x = x_1317;
        let x_1320 : f32 = u_xlat16.w;
        let x_1322 : f32 = u_xlat45.x;
        let x_1324 : f32 = u_xlat65;
        u_xlat65 = ((x_1320 * x_1322) + x_1324);
        let x_1327 : vec4<f32> = u_xlat8;
        let x_1328 : vec2<f32> = vec2<f32>(x_1327.x, x_1327.y);
        let x_1330 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1328.x, x_1328.y, x_1330);
        let x_1337 : vec3<f32> = txVec25;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1337.xy, x_1337.z);
        u_xlat45.x = x_1339;
        let x_1342 : f32 = u_xlat4.x;
        let x_1344 : f32 = u_xlat45.x;
        let x_1346 : f32 = u_xlat65;
        u_xlat65 = ((x_1342 * x_1344) + x_1346);
        let x_1349 : vec4<f32> = u_xlat8;
        let x_1350 : vec2<f32> = vec2<f32>(x_1349.z, x_1349.w);
        let x_1352 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec26;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1359.xy, x_1359.z);
        u_xlat45.x = x_1361;
        let x_1364 : f32 = u_xlat4.y;
        let x_1366 : f32 = u_xlat45.x;
        let x_1368 : f32 = u_xlat65;
        u_xlat65 = ((x_1364 * x_1366) + x_1368);
        let x_1371 : vec2<f32> = u_xlat48;
        let x_1373 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1371.x, x_1371.y, x_1373);
        let x_1380 : vec3<f32> = txVec27;
        let x_1382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1380.xy, x_1380.z);
        u_xlat45.x = x_1382;
        let x_1385 : f32 = u_xlat4.z;
        let x_1387 : f32 = u_xlat45.x;
        let x_1389 : f32 = u_xlat65;
        u_xlat65 = ((x_1385 * x_1387) + x_1389);
        let x_1392 : vec4<f32> = u_xlat3;
        let x_1393 : vec2<f32> = vec2<f32>(x_1392.x, x_1392.y);
        let x_1395 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1393.x, x_1393.y, x_1395);
        let x_1402 : vec3<f32> = txVec28;
        let x_1404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1402.xy, x_1402.z);
        u_xlat3.x = x_1404;
        let x_1407 : f32 = u_xlat4.w;
        let x_1409 : f32 = u_xlat3.x;
        let x_1411 : f32 = u_xlat65;
        u_xlat64 = ((x_1407 * x_1409) + x_1411);
      }
    }
  } else {
    let x_1415 : vec4<f32> = vs_TEXCOORD6;
    let x_1416 : vec2<f32> = vec2<f32>(x_1415.x, x_1415.y);
    let x_1418 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1416.x, x_1416.y, x_1418);
    let x_1425 : vec3<f32> = txVec29;
    let x_1427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1425.xy, x_1425.z);
    u_xlat64 = x_1427;
  }
  let x_1429 : f32 = x_164.x_MainLightShadowParams.x;
  u_xlat65 = (-(x_1429) + 1.0f);
  let x_1432 : f32 = u_xlat64;
  let x_1434 : f32 = x_164.x_MainLightShadowParams.x;
  let x_1436 : f32 = u_xlat65;
  u_xlat64 = ((x_1432 * x_1434) + x_1436);
  let x_1439 : f32 = vs_TEXCOORD6.z;
  u_xlatb65 = (0.0f >= x_1439);
  let x_1443 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (x_1443 >= 1.0f);
  let x_1445 : bool = u_xlatb65;
  let x_1446 : bool = u_xlatb3;
  u_xlatb65 = (x_1445 | x_1446);
  let x_1448 : bool = u_xlatb65;
  let x_1449 : f32 = u_xlat64;
  u_xlat64 = select(x_1449, 1.0f, x_1448);
  let x_1452 : vec3<f32> = vs_TEXCOORD1;
  let x_1456 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1458 : vec3<f32> = (x_1452 + -(x_1456));
  let x_1459 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1458.x, x_1458.y, x_1458.z, x_1459.w);
  let x_1461 : vec4<f32> = u_xlat3;
  let x_1463 : vec4<f32> = u_xlat3;
  u_xlat65 = dot(vec3<f32>(x_1461.x, x_1461.y, x_1461.z), vec3<f32>(x_1463.x, x_1463.y, x_1463.z));
  let x_1466 : f32 = u_xlat65;
  let x_1468 : f32 = x_164.x_MainLightShadowParams.z;
  let x_1471 : f32 = x_164.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_1466 * x_1468) + x_1471);
  let x_1475 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1475, 0.0f, 1.0f);
  let x_1478 : f32 = u_xlat64;
  u_xlat24 = (-(x_1478) + 1.0f);
  let x_1482 : f32 = u_xlat3.x;
  let x_1483 : f32 = u_xlat24;
  let x_1485 : f32 = u_xlat64;
  u_xlat64 = ((x_1482 * x_1483) + x_1485);
  let x_1487 : f32 = u_xlat64;
  let x_1490 : f32 = x_75.unity_LightData.z;
  u_xlat64 = (x_1487 * x_1490);
  let x_1492 : f32 = u_xlat64;
  let x_1496 : vec4<f32> = x_27.x_MainLightColor;
  let x_1498 : vec3<f32> = (vec3<f32>(x_1492, x_1492, x_1492) * vec3<f32>(x_1496.x, x_1496.y, x_1496.z));
  let x_1499 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1498.x, x_1498.y, x_1498.z, x_1499.w);
  let x_1501 : vec4<f32> = u_xlat1;
  let x_1504 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat64 = dot(vec3<f32>(x_1501.x, x_1501.y, x_1501.z), vec3<f32>(x_1504.x, x_1504.y, x_1504.z));
  let x_1507 : f32 = u_xlat64;
  u_xlat64 = clamp(x_1507, 0.0f, 1.0f);
  let x_1509 : f32 = u_xlat64;
  let x_1511 : vec4<f32> = u_xlat3;
  let x_1513 : vec3<f32> = (vec3<f32>(x_1509, x_1509, x_1509) * vec3<f32>(x_1511.x, x_1511.y, x_1511.z));
  let x_1514 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1514.w);
  let x_1516 : vec4<f32> = u_xlat0;
  let x_1518 : vec4<f32> = u_xlat3;
  let x_1520 : vec3<f32> = (vec3<f32>(x_1516.y, x_1516.z, x_1516.w) * vec3<f32>(x_1518.x, x_1518.y, x_1518.z));
  let x_1521 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1520.x, x_1520.y, x_1520.z, x_1521.w);
  let x_1525 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1527 : f32 = x_75.unity_LightData.y;
  u_xlat64 = min(x_1525, x_1527);
  let x_1531 : f32 = u_xlat64;
  u_xlatu64 = bitcast<u32>(i32(x_1531));
  let x_1534 : f32 = u_xlat65;
  let x_1537 : f32 = x_164.x_AdditionalShadowFadeParams.x;
  let x_1540 : f32 = x_164.x_AdditionalShadowFadeParams.y;
  u_xlat65 = ((x_1534 * x_1537) + x_1540);
  let x_1542 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1542, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1554 : u32 = u_xlatu_loop_1;
    let x_1555 : u32 = u_xlatu64;
    if ((x_1554 < x_1555)) {
    } else {
      break;
    }
    let x_1558 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_1558 >> 2u);
    let x_1562 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_1562 & 3u));
    let x_1566 : u32 = u_xlatu67;
    let x_1569 : vec4<f32> = x_75.unity_LightIndices[bitcast<i32>(x_1566)];
    let x_1579 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1584 : vec4<u32> = indexable[x_1579];
    u_xlat67 = dot(x_1569, bitcast<vec4<f32>>(x_1584));
    let x_1588 : f32 = u_xlat67;
    u_xlati67 = i32(x_1588);
    let x_1590 : vec3<f32> = vs_TEXCOORD1;
    let x_1601 : i32 = u_xlati67;
    let x_1603 : vec4<f32> = x_1600.x_AdditionalLightsPosition[x_1601];
    let x_1606 : i32 = u_xlati67;
    let x_1608 : vec4<f32> = x_1600.x_AdditionalLightsPosition[x_1606];
    let x_1610 : vec3<f32> = ((-(x_1590) * vec3<f32>(x_1603.w, x_1603.w, x_1603.w)) + vec3<f32>(x_1608.x, x_1608.y, x_1608.z));
    let x_1611 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1610.x, x_1610.y, x_1610.z, x_1611.w);
    let x_1614 : vec4<f32> = u_xlat5;
    let x_1616 : vec4<f32> = u_xlat5;
    u_xlat68 = dot(vec3<f32>(x_1614.x, x_1614.y, x_1614.z), vec3<f32>(x_1616.x, x_1616.y, x_1616.z));
    let x_1619 : f32 = u_xlat68;
    u_xlat68 = max(x_1619, 0.00006103515625f);
    let x_1622 : f32 = u_xlat68;
    u_xlat6.x = inverseSqrt(x_1622);
    let x_1625 : vec4<f32> = u_xlat5;
    let x_1627 : vec4<f32> = u_xlat6;
    let x_1629 : vec3<f32> = (vec3<f32>(x_1625.x, x_1625.y, x_1625.z) * vec3<f32>(x_1627.x, x_1627.x, x_1627.x));
    let x_1630 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1629.x, x_1629.y, x_1629.z, x_1630.w);
    let x_1632 : f32 = u_xlat68;
    u_xlat6.x = (1.0f / x_1632);
    let x_1635 : f32 = u_xlat68;
    let x_1636 : i32 = u_xlati67;
    let x_1638 : f32 = x_1600.x_AdditionalLightsAttenuation[x_1636].x;
    u_xlat68 = (x_1635 * x_1638);
    let x_1640 : f32 = u_xlat68;
    let x_1642 : f32 = u_xlat68;
    u_xlat68 = ((-(x_1640) * x_1642) + 1.0f);
    let x_1645 : f32 = u_xlat68;
    u_xlat68 = max(x_1645, 0.0f);
    let x_1647 : f32 = u_xlat68;
    let x_1648 : f32 = u_xlat68;
    u_xlat68 = (x_1647 * x_1648);
    let x_1650 : f32 = u_xlat68;
    let x_1652 : f32 = u_xlat6.x;
    u_xlat68 = (x_1650 * x_1652);
    let x_1654 : i32 = u_xlati67;
    let x_1656 : vec4<f32> = x_1600.x_AdditionalLightsSpotDir[x_1654];
    let x_1658 : vec4<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_1656.x, x_1656.y, x_1656.z), vec3<f32>(x_1658.x, x_1658.y, x_1658.z));
    let x_1663 : f32 = u_xlat6.x;
    let x_1664 : i32 = u_xlati67;
    let x_1666 : f32 = x_1600.x_AdditionalLightsAttenuation[x_1664].z;
    let x_1668 : i32 = u_xlati67;
    let x_1670 : f32 = x_1600.x_AdditionalLightsAttenuation[x_1668].w;
    u_xlat6.x = ((x_1663 * x_1666) + x_1670);
    let x_1674 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1674, 0.0f, 1.0f);
    let x_1678 : f32 = u_xlat6.x;
    let x_1680 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1678 * x_1680);
    let x_1683 : f32 = u_xlat68;
    let x_1685 : f32 = u_xlat6.x;
    u_xlat68 = (x_1683 * x_1685);
    let x_1689 : i32 = u_xlati67;
    let x_1691 : f32 = x_164.x_AdditionalShadowParams[x_1689].w;
    u_xlati6 = i32(x_1691);
    let x_1696 : i32 = u_xlati6;
    u_xlatb27.x = (x_1696 >= 0i);
    let x_1700 : bool = u_xlatb27.x;
    if (x_1700) {
      let x_1704 : i32 = u_xlati67;
      let x_1706 : f32 = x_164.x_AdditionalShadowParams[x_1704].z;
      u_xlatb27.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1706, x_1706, x_1706, x_1706))));
      let x_1713 : bool = u_xlatb27.x;
      if (x_1713) {
        let x_1716 : vec4<f32> = u_xlat5;
        let x_1719 : vec4<f32> = u_xlat5;
        let x_1722 : vec4<bool> = (abs(vec4<f32>(x_1716.z, x_1716.z, x_1716.y, x_1716.y)) >= abs(vec4<f32>(x_1719.x, x_1719.y, x_1719.x, x_1719.x)));
        u_xlatb27 = vec3<bool>(x_1722.x, x_1722.y, x_1722.z);
        let x_1725 : bool = u_xlatb27.y;
        let x_1727 : bool = u_xlatb27.x;
        u_xlatb27.x = (x_1725 & x_1727);
        let x_1731 : vec4<f32> = u_xlat5;
        let x_1734 : vec4<bool> = (-(vec4<f32>(x_1731.z, x_1731.y, x_1731.x, x_1731.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb7 = vec3<bool>(x_1734.x, x_1734.y, x_1734.z);
        let x_1737 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1737);
        let x_1743 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1743);
        let x_1748 : bool = u_xlatb7.z;
        u_xlat48.x = select(0.0f, 1.0f, x_1748);
        let x_1752 : bool = u_xlatb27.z;
        if (x_1752) {
          let x_1758 : f32 = u_xlat7.y;
          x_1754 = x_1758;
        } else {
          let x_1761 : f32 = u_xlat48.x;
          x_1754 = x_1761;
        }
        let x_1762 : f32 = x_1754;
        u_xlat48.x = x_1762;
        let x_1766 : bool = u_xlatb27.x;
        if (x_1766) {
          let x_1771 : f32 = u_xlat7.x;
          x_1767 = x_1771;
        } else {
          let x_1774 : f32 = u_xlat48.x;
          x_1767 = x_1774;
        }
        let x_1775 : f32 = x_1767;
        u_xlat27 = x_1775;
        let x_1776 : i32 = u_xlati67;
        let x_1778 : f32 = x_164.x_AdditionalShadowParams[x_1776].w;
        u_xlat48.x = trunc(x_1778);
        let x_1781 : f32 = u_xlat27;
        let x_1783 : f32 = u_xlat48.x;
        u_xlat27 = (x_1781 + x_1783);
        let x_1785 : f32 = u_xlat27;
        u_xlati6 = i32(x_1785);
      }
      let x_1787 : i32 = u_xlati6;
      u_xlati6 = (x_1787 << bitcast<u32>(2i));
      let x_1789 : vec3<f32> = vs_TEXCOORD1;
      let x_1792 : i32 = u_xlati6;
      let x_1795 : i32 = u_xlati6;
      let x_1799 : vec4<f32> = x_164.x_AdditionalLightsWorldToShadow[((x_1792 + 1i) / 4i)][((x_1795 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1789.y, x_1789.y, x_1789.y, x_1789.y) * x_1799);
      let x_1801 : i32 = u_xlati6;
      let x_1803 : i32 = u_xlati6;
      let x_1806 : vec4<f32> = x_164.x_AdditionalLightsWorldToShadow[(x_1801 / 4i)][(x_1803 % 4i)];
      let x_1807 : vec3<f32> = vs_TEXCOORD1;
      let x_1810 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1806 * vec4<f32>(x_1807.x, x_1807.x, x_1807.x, x_1807.x)) + x_1810);
      let x_1812 : i32 = u_xlati6;
      let x_1815 : i32 = u_xlati6;
      let x_1819 : vec4<f32> = x_164.x_AdditionalLightsWorldToShadow[((x_1812 + 2i) / 4i)][((x_1815 + 2i) % 4i)];
      let x_1820 : vec3<f32> = vs_TEXCOORD1;
      let x_1823 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1819 * vec4<f32>(x_1820.z, x_1820.z, x_1820.z, x_1820.z)) + x_1823);
      let x_1825 : vec4<f32> = u_xlat7;
      let x_1826 : i32 = u_xlati6;
      let x_1829 : i32 = u_xlati6;
      let x_1833 : vec4<f32> = x_164.x_AdditionalLightsWorldToShadow[((x_1826 + 3i) / 4i)][((x_1829 + 3i) % 4i)];
      u_xlat6 = (x_1825 + x_1833);
      let x_1835 : vec4<f32> = u_xlat6;
      let x_1837 : vec4<f32> = u_xlat6;
      let x_1839 : vec3<f32> = (vec3<f32>(x_1835.x, x_1835.y, x_1835.z) / vec3<f32>(x_1837.w, x_1837.w, x_1837.w));
      let x_1840 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_1839.x, x_1839.y, x_1839.z, x_1840.w);
      let x_1843 : i32 = u_xlati67;
      let x_1845 : f32 = x_164.x_AdditionalShadowParams[x_1843].y;
      u_xlatb69 = (0.0f < x_1845);
      let x_1847 : bool = u_xlatb69;
      if (x_1847) {
        let x_1850 : i32 = u_xlati67;
        let x_1852 : f32 = x_164.x_AdditionalShadowParams[x_1850].y;
        u_xlatb69 = (1.0f == x_1852);
        let x_1854 : bool = u_xlatb69;
        if (x_1854) {
          let x_1857 : vec4<f32> = u_xlat6;
          let x_1861 : vec4<f32> = x_164.x_AdditionalShadowOffset0;
          u_xlat7 = (vec4<f32>(x_1857.x, x_1857.y, x_1857.x, x_1857.y) + x_1861);
          let x_1864 : vec4<f32> = u_xlat7;
          let x_1865 : vec2<f32> = vec2<f32>(x_1864.x, x_1864.y);
          let x_1867 : f32 = u_xlat6.z;
          txVec30 = vec3<f32>(x_1865.x, x_1865.y, x_1867);
          let x_1875 : vec3<f32> = txVec30;
          let x_1877 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1875.xy, x_1875.z);
          u_xlat8.x = x_1877;
          let x_1880 : vec4<f32> = u_xlat7;
          let x_1881 : vec2<f32> = vec2<f32>(x_1880.z, x_1880.w);
          let x_1883 : f32 = u_xlat6.z;
          txVec31 = vec3<f32>(x_1881.x, x_1881.y, x_1883);
          let x_1890 : vec3<f32> = txVec31;
          let x_1892 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1890.xy, x_1890.z);
          u_xlat8.y = x_1892;
          let x_1894 : vec4<f32> = u_xlat6;
          let x_1898 : vec4<f32> = x_164.x_AdditionalShadowOffset1;
          u_xlat7 = (vec4<f32>(x_1894.x, x_1894.y, x_1894.x, x_1894.y) + x_1898);
          let x_1901 : vec4<f32> = u_xlat7;
          let x_1902 : vec2<f32> = vec2<f32>(x_1901.x, x_1901.y);
          let x_1904 : f32 = u_xlat6.z;
          txVec32 = vec3<f32>(x_1902.x, x_1902.y, x_1904);
          let x_1911 : vec3<f32> = txVec32;
          let x_1913 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1911.xy, x_1911.z);
          u_xlat8.z = x_1913;
          let x_1916 : vec4<f32> = u_xlat7;
          let x_1917 : vec2<f32> = vec2<f32>(x_1916.z, x_1916.w);
          let x_1919 : f32 = u_xlat6.z;
          txVec33 = vec3<f32>(x_1917.x, x_1917.y, x_1919);
          let x_1926 : vec3<f32> = txVec33;
          let x_1928 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1926.xy, x_1926.z);
          u_xlat8.w = x_1928;
          let x_1931 : vec4<f32> = u_xlat8;
          u_xlat69 = dot(x_1931, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_1934 : i32 = u_xlati67;
          let x_1936 : f32 = x_164.x_AdditionalShadowParams[x_1934].y;
          u_xlatb7.x = (2.0f == x_1936);
          let x_1940 : bool = u_xlatb7.x;
          if (x_1940) {
            let x_1943 : vec4<f32> = u_xlat6;
            let x_1947 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_1950 : vec2<f32> = ((vec2<f32>(x_1943.x, x_1943.y) * vec2<f32>(x_1947.z, x_1947.w)) + vec2<f32>(0.5f, 0.5f));
            let x_1951 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_1950.x, x_1950.y, x_1951.z, x_1951.w);
            let x_1953 : vec4<f32> = u_xlat7;
            let x_1955 : vec2<f32> = floor(vec2<f32>(x_1953.x, x_1953.y));
            let x_1956 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_1955.x, x_1955.y, x_1956.z, x_1956.w);
            let x_1959 : vec4<f32> = u_xlat6;
            let x_1962 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_1965 : vec4<f32> = u_xlat7;
            u_xlat49 = ((vec2<f32>(x_1959.x, x_1959.y) * vec2<f32>(x_1962.z, x_1962.w)) + -(vec2<f32>(x_1965.x, x_1965.y)));
            let x_1969 : vec2<f32> = u_xlat49;
            u_xlat8 = (vec4<f32>(x_1969.x, x_1969.x, x_1969.y, x_1969.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_1972 : vec4<f32> = u_xlat8;
            let x_1974 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_1972.x, x_1972.x, x_1972.z, x_1972.z) * vec4<f32>(x_1974.x, x_1974.x, x_1974.z, x_1974.z));
            let x_1977 : vec4<f32> = u_xlat9;
            let x_1979 : vec2<f32> = (vec2<f32>(x_1977.y, x_1977.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_1980 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_1979.x, x_1980.y, x_1979.y, x_1980.w);
            let x_1982 : vec4<f32> = u_xlat9;
            let x_1985 : vec2<f32> = u_xlat49;
            let x_1987 : vec2<f32> = ((vec2<f32>(x_1982.x, x_1982.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1985));
            let x_1988 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_1987.x, x_1987.y, x_1988.z, x_1988.w);
            let x_1991 : vec2<f32> = u_xlat49;
            u_xlat51 = (-(x_1991) + vec2<f32>(1.0f, 1.0f));
            let x_1994 : vec2<f32> = u_xlat49;
            let x_1995 : vec2<f32> = min(x_1994, vec2<f32>(0.0f, 0.0f));
            let x_1996 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_1995.x, x_1995.y, x_1996.z, x_1996.w);
            let x_1998 : vec4<f32> = u_xlat10;
            let x_2001 : vec4<f32> = u_xlat10;
            let x_2004 : vec2<f32> = u_xlat51;
            let x_2005 : vec2<f32> = ((-(vec2<f32>(x_1998.x, x_1998.y)) * vec2<f32>(x_2001.x, x_2001.y)) + x_2004);
            let x_2006 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2005.x, x_2005.y, x_2006.z, x_2006.w);
            let x_2008 : vec2<f32> = u_xlat49;
            u_xlat49 = max(x_2008, vec2<f32>(0.0f, 0.0f));
            let x_2010 : vec2<f32> = u_xlat49;
            let x_2012 : vec2<f32> = u_xlat49;
            let x_2014 : vec4<f32> = u_xlat8;
            u_xlat49 = ((-(x_2010) * x_2012) + vec2<f32>(x_2014.y, x_2014.w));
            let x_2017 : vec4<f32> = u_xlat10;
            let x_2019 : vec2<f32> = (vec2<f32>(x_2017.x, x_2017.y) + vec2<f32>(1.0f, 1.0f));
            let x_2020 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2019.x, x_2019.y, x_2020.z, x_2020.w);
            let x_2022 : vec2<f32> = u_xlat49;
            u_xlat49 = (x_2022 + vec2<f32>(1.0f, 1.0f));
            let x_2024 : vec4<f32> = u_xlat9;
            let x_2026 : vec2<f32> = (vec2<f32>(x_2024.x, x_2024.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2027 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2026.x, x_2026.y, x_2027.z, x_2027.w);
            let x_2029 : vec2<f32> = u_xlat51;
            let x_2030 : vec2<f32> = (x_2029 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2031 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2030.x, x_2030.y, x_2031.z, x_2031.w);
            let x_2033 : vec4<f32> = u_xlat10;
            let x_2035 : vec2<f32> = (vec2<f32>(x_2033.x, x_2033.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2036 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2035.x, x_2035.y, x_2036.z, x_2036.w);
            let x_2038 : vec2<f32> = u_xlat49;
            let x_2039 : vec2<f32> = (x_2038 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2040 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2039.x, x_2039.y, x_2040.z, x_2040.w);
            let x_2042 : vec4<f32> = u_xlat8;
            u_xlat49 = (vec2<f32>(x_2042.y, x_2042.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2046 : f32 = u_xlat10.x;
            u_xlat11.z = x_2046;
            let x_2049 : f32 = u_xlat49.x;
            u_xlat11.w = x_2049;
            let x_2052 : f32 = u_xlat12.x;
            u_xlat9.z = x_2052;
            let x_2055 : f32 = u_xlat8.x;
            u_xlat9.w = x_2055;
            let x_2057 : vec4<f32> = u_xlat9;
            let x_2059 : vec4<f32> = u_xlat11;
            u_xlat13 = (vec4<f32>(x_2057.z, x_2057.w, x_2057.x, x_2057.z) + vec4<f32>(x_2059.z, x_2059.w, x_2059.x, x_2059.z));
            let x_2063 : f32 = u_xlat11.y;
            u_xlat10.z = x_2063;
            let x_2066 : f32 = u_xlat49.y;
            u_xlat10.w = x_2066;
            let x_2069 : f32 = u_xlat9.y;
            u_xlat12.z = x_2069;
            let x_2072 : f32 = u_xlat8.z;
            u_xlat12.w = x_2072;
            let x_2074 : vec4<f32> = u_xlat10;
            let x_2076 : vec4<f32> = u_xlat12;
            let x_2078 : vec3<f32> = (vec3<f32>(x_2074.z, x_2074.y, x_2074.w) + vec3<f32>(x_2076.z, x_2076.y, x_2076.w));
            let x_2079 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
            let x_2081 : vec4<f32> = u_xlat9;
            let x_2083 : vec4<f32> = u_xlat13;
            let x_2085 : vec3<f32> = (vec3<f32>(x_2081.x, x_2081.z, x_2081.w) / vec3<f32>(x_2083.z, x_2083.w, x_2083.y));
            let x_2086 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2085.x, x_2085.y, x_2085.z, x_2086.w);
            let x_2088 : vec4<f32> = u_xlat9;
            let x_2090 : vec3<f32> = (vec3<f32>(x_2088.x, x_2088.y, x_2088.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2091 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
            let x_2093 : vec4<f32> = u_xlat12;
            let x_2095 : vec4<f32> = u_xlat8;
            let x_2097 : vec3<f32> = (vec3<f32>(x_2093.z, x_2093.y, x_2093.w) / vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
            let x_2098 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2097.x, x_2097.y, x_2097.z, x_2098.w);
            let x_2100 : vec4<f32> = u_xlat10;
            let x_2102 : vec3<f32> = (vec3<f32>(x_2100.x, x_2100.y, x_2100.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2103 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2102.x, x_2102.y, x_2102.z, x_2103.w);
            let x_2105 : vec4<f32> = u_xlat9;
            let x_2108 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2110 : vec3<f32> = (vec3<f32>(x_2105.y, x_2105.x, x_2105.z) * vec3<f32>(x_2108.x, x_2108.x, x_2108.x));
            let x_2111 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2110.x, x_2110.y, x_2110.z, x_2111.w);
            let x_2113 : vec4<f32> = u_xlat10;
            let x_2116 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2118 : vec3<f32> = (vec3<f32>(x_2113.x, x_2113.y, x_2113.z) * vec3<f32>(x_2116.y, x_2116.y, x_2116.y));
            let x_2119 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2118.x, x_2118.y, x_2118.z, x_2119.w);
            let x_2122 : f32 = u_xlat10.x;
            u_xlat9.w = x_2122;
            let x_2124 : vec4<f32> = u_xlat7;
            let x_2127 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2130 : vec4<f32> = u_xlat9;
            u_xlat11 = ((vec4<f32>(x_2124.x, x_2124.y, x_2124.x, x_2124.y) * vec4<f32>(x_2127.x, x_2127.y, x_2127.x, x_2127.y)) + vec4<f32>(x_2130.y, x_2130.w, x_2130.x, x_2130.w));
            let x_2133 : vec4<f32> = u_xlat7;
            let x_2136 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2139 : vec4<f32> = u_xlat9;
            u_xlat49 = ((vec2<f32>(x_2133.x, x_2133.y) * vec2<f32>(x_2136.x, x_2136.y)) + vec2<f32>(x_2139.z, x_2139.w));
            let x_2143 : f32 = u_xlat9.y;
            u_xlat10.w = x_2143;
            let x_2145 : vec4<f32> = u_xlat10;
            let x_2146 : vec2<f32> = vec2<f32>(x_2145.y, x_2145.z);
            let x_2147 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2147.x, x_2146.x, x_2147.z, x_2146.y);
            let x_2149 : vec4<f32> = u_xlat7;
            let x_2152 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2155 : vec4<f32> = u_xlat9;
            u_xlat12 = ((vec4<f32>(x_2149.x, x_2149.y, x_2149.x, x_2149.y) * vec4<f32>(x_2152.x, x_2152.y, x_2152.x, x_2152.y)) + vec4<f32>(x_2155.x, x_2155.y, x_2155.z, x_2155.y));
            let x_2158 : vec4<f32> = u_xlat7;
            let x_2161 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2164 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2158.x, x_2158.y, x_2158.x, x_2158.y) * vec4<f32>(x_2161.x, x_2161.y, x_2161.x, x_2161.y)) + vec4<f32>(x_2164.w, x_2164.y, x_2164.w, x_2164.z));
            let x_2167 : vec4<f32> = u_xlat7;
            let x_2170 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2173 : vec4<f32> = u_xlat9;
            u_xlat9 = ((vec4<f32>(x_2167.x, x_2167.y, x_2167.x, x_2167.y) * vec4<f32>(x_2170.x, x_2170.y, x_2170.x, x_2170.y)) + vec4<f32>(x_2173.x, x_2173.w, x_2173.z, x_2173.w));
            let x_2176 : vec4<f32> = u_xlat8;
            let x_2178 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2176.x, x_2176.x, x_2176.x, x_2176.y) * vec4<f32>(x_2178.z, x_2178.w, x_2178.y, x_2178.z));
            let x_2181 : vec4<f32> = u_xlat8;
            let x_2183 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2181.y, x_2181.y, x_2181.z, x_2181.z) * x_2183);
            let x_2186 : f32 = u_xlat8.z;
            let x_2188 : f32 = u_xlat13.y;
            u_xlat7.x = (x_2186 * x_2188);
            let x_2192 : vec4<f32> = u_xlat11;
            let x_2193 : vec2<f32> = vec2<f32>(x_2192.x, x_2192.y);
            let x_2195 : f32 = u_xlat6.z;
            txVec34 = vec3<f32>(x_2193.x, x_2193.y, x_2195);
            let x_2203 : vec3<f32> = txVec34;
            let x_2205 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2203.xy, x_2203.z);
            u_xlat28 = x_2205;
            let x_2207 : vec4<f32> = u_xlat11;
            let x_2208 : vec2<f32> = vec2<f32>(x_2207.z, x_2207.w);
            let x_2210 : f32 = u_xlat6.z;
            txVec35 = vec3<f32>(x_2208.x, x_2208.y, x_2210);
            let x_2217 : vec3<f32> = txVec35;
            let x_2219 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2217.xy, x_2217.z);
            u_xlat8.x = x_2219;
            let x_2222 : f32 = u_xlat8.x;
            let x_2224 : f32 = u_xlat14.y;
            u_xlat8.x = (x_2222 * x_2224);
            let x_2228 : f32 = u_xlat14.x;
            let x_2229 : f32 = u_xlat28;
            let x_2232 : f32 = u_xlat8.x;
            u_xlat28 = ((x_2228 * x_2229) + x_2232);
            let x_2235 : vec2<f32> = u_xlat49;
            let x_2237 : f32 = u_xlat6.z;
            txVec36 = vec3<f32>(x_2235.x, x_2235.y, x_2237);
            let x_2244 : vec3<f32> = txVec36;
            let x_2246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2244.xy, x_2244.z);
            u_xlat49.x = x_2246;
            let x_2249 : f32 = u_xlat14.z;
            let x_2251 : f32 = u_xlat49.x;
            let x_2253 : f32 = u_xlat28;
            u_xlat28 = ((x_2249 * x_2251) + x_2253);
            let x_2256 : vec4<f32> = u_xlat10;
            let x_2257 : vec2<f32> = vec2<f32>(x_2256.x, x_2256.y);
            let x_2259 : f32 = u_xlat6.z;
            txVec37 = vec3<f32>(x_2257.x, x_2257.y, x_2259);
            let x_2266 : vec3<f32> = txVec37;
            let x_2268 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2266.xy, x_2266.z);
            u_xlat49.x = x_2268;
            let x_2271 : f32 = u_xlat14.w;
            let x_2273 : f32 = u_xlat49.x;
            let x_2275 : f32 = u_xlat28;
            u_xlat28 = ((x_2271 * x_2273) + x_2275);
            let x_2278 : vec4<f32> = u_xlat12;
            let x_2279 : vec2<f32> = vec2<f32>(x_2278.x, x_2278.y);
            let x_2281 : f32 = u_xlat6.z;
            txVec38 = vec3<f32>(x_2279.x, x_2279.y, x_2281);
            let x_2288 : vec3<f32> = txVec38;
            let x_2290 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2288.xy, x_2288.z);
            u_xlat49.x = x_2290;
            let x_2293 : f32 = u_xlat15.x;
            let x_2295 : f32 = u_xlat49.x;
            let x_2297 : f32 = u_xlat28;
            u_xlat28 = ((x_2293 * x_2295) + x_2297);
            let x_2300 : vec4<f32> = u_xlat12;
            let x_2301 : vec2<f32> = vec2<f32>(x_2300.z, x_2300.w);
            let x_2303 : f32 = u_xlat6.z;
            txVec39 = vec3<f32>(x_2301.x, x_2301.y, x_2303);
            let x_2310 : vec3<f32> = txVec39;
            let x_2312 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2310.xy, x_2310.z);
            u_xlat49.x = x_2312;
            let x_2315 : f32 = u_xlat15.y;
            let x_2317 : f32 = u_xlat49.x;
            let x_2319 : f32 = u_xlat28;
            u_xlat28 = ((x_2315 * x_2317) + x_2319);
            let x_2322 : vec4<f32> = u_xlat10;
            let x_2323 : vec2<f32> = vec2<f32>(x_2322.z, x_2322.w);
            let x_2325 : f32 = u_xlat6.z;
            txVec40 = vec3<f32>(x_2323.x, x_2323.y, x_2325);
            let x_2332 : vec3<f32> = txVec40;
            let x_2334 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2332.xy, x_2332.z);
            u_xlat49.x = x_2334;
            let x_2337 : f32 = u_xlat15.z;
            let x_2339 : f32 = u_xlat49.x;
            let x_2341 : f32 = u_xlat28;
            u_xlat28 = ((x_2337 * x_2339) + x_2341);
            let x_2344 : vec4<f32> = u_xlat9;
            let x_2345 : vec2<f32> = vec2<f32>(x_2344.x, x_2344.y);
            let x_2347 : f32 = u_xlat6.z;
            txVec41 = vec3<f32>(x_2345.x, x_2345.y, x_2347);
            let x_2354 : vec3<f32> = txVec41;
            let x_2356 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2354.xy, x_2354.z);
            u_xlat49.x = x_2356;
            let x_2359 : f32 = u_xlat15.w;
            let x_2361 : f32 = u_xlat49.x;
            let x_2363 : f32 = u_xlat28;
            u_xlat28 = ((x_2359 * x_2361) + x_2363);
            let x_2366 : vec4<f32> = u_xlat9;
            let x_2367 : vec2<f32> = vec2<f32>(x_2366.z, x_2366.w);
            let x_2369 : f32 = u_xlat6.z;
            txVec42 = vec3<f32>(x_2367.x, x_2367.y, x_2369);
            let x_2376 : vec3<f32> = txVec42;
            let x_2378 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2376.xy, x_2376.z);
            u_xlat49.x = x_2378;
            let x_2381 : f32 = u_xlat7.x;
            let x_2383 : f32 = u_xlat49.x;
            let x_2385 : f32 = u_xlat28;
            u_xlat69 = ((x_2381 * x_2383) + x_2385);
          } else {
            let x_2388 : vec4<f32> = u_xlat6;
            let x_2391 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2394 : vec2<f32> = ((vec2<f32>(x_2388.x, x_2388.y) * vec2<f32>(x_2391.z, x_2391.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2395 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2394.x, x_2394.y, x_2395.z, x_2395.w);
            let x_2397 : vec4<f32> = u_xlat7;
            let x_2399 : vec2<f32> = floor(vec2<f32>(x_2397.x, x_2397.y));
            let x_2400 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2399.x, x_2399.y, x_2400.z, x_2400.w);
            let x_2402 : vec4<f32> = u_xlat6;
            let x_2405 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2408 : vec4<f32> = u_xlat7;
            u_xlat49 = ((vec2<f32>(x_2402.x, x_2402.y) * vec2<f32>(x_2405.z, x_2405.w)) + -(vec2<f32>(x_2408.x, x_2408.y)));
            let x_2412 : vec2<f32> = u_xlat49;
            u_xlat8 = (vec4<f32>(x_2412.x, x_2412.x, x_2412.y, x_2412.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2415 : vec4<f32> = u_xlat8;
            let x_2417 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2415.x, x_2415.x, x_2415.z, x_2415.z) * vec4<f32>(x_2417.x, x_2417.x, x_2417.z, x_2417.z));
            let x_2420 : vec4<f32> = u_xlat9;
            let x_2422 : vec2<f32> = (vec2<f32>(x_2420.y, x_2420.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2423 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2423.x, x_2422.x, x_2423.z, x_2422.y);
            let x_2425 : vec4<f32> = u_xlat9;
            let x_2428 : vec2<f32> = u_xlat49;
            let x_2430 : vec2<f32> = ((vec2<f32>(x_2425.x, x_2425.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2428));
            let x_2431 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2430.x, x_2431.y, x_2430.y, x_2431.w);
            let x_2433 : vec2<f32> = u_xlat49;
            let x_2435 : vec2<f32> = (-(x_2433) + vec2<f32>(1.0f, 1.0f));
            let x_2436 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2435.x, x_2435.y, x_2436.z, x_2436.w);
            let x_2438 : vec2<f32> = u_xlat49;
            u_xlat51 = min(x_2438, vec2<f32>(0.0f, 0.0f));
            let x_2440 : vec2<f32> = u_xlat51;
            let x_2442 : vec2<f32> = u_xlat51;
            let x_2444 : vec4<f32> = u_xlat9;
            let x_2446 : vec2<f32> = ((-(x_2440) * x_2442) + vec2<f32>(x_2444.x, x_2444.y));
            let x_2447 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2446.x, x_2446.y, x_2447.z, x_2447.w);
            let x_2449 : vec2<f32> = u_xlat49;
            u_xlat51 = max(x_2449, vec2<f32>(0.0f, 0.0f));
            let x_2452 : vec2<f32> = u_xlat51;
            let x_2454 : vec2<f32> = u_xlat51;
            let x_2456 : vec4<f32> = u_xlat8;
            let x_2458 : vec2<f32> = ((-(x_2452) * x_2454) + vec2<f32>(x_2456.y, x_2456.w));
            let x_2459 : vec3<f32> = u_xlat29;
            u_xlat29 = vec3<f32>(x_2458.x, x_2459.y, x_2458.y);
            let x_2461 : vec4<f32> = u_xlat9;
            let x_2463 : vec2<f32> = (vec2<f32>(x_2461.x, x_2461.y) + vec2<f32>(2.0f, 2.0f));
            let x_2464 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2463.x, x_2463.y, x_2464.z, x_2464.w);
            let x_2466 : vec3<f32> = u_xlat29;
            let x_2468 : vec2<f32> = (vec2<f32>(x_2466.x, x_2466.z) + vec2<f32>(2.0f, 2.0f));
            let x_2469 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2469.x, x_2468.x, x_2469.z, x_2468.y);
            let x_2472 : f32 = u_xlat8.y;
            u_xlat11.z = (x_2472 * 0.08163200318813323975f);
            let x_2475 : vec4<f32> = u_xlat8;
            let x_2477 : vec3<f32> = (vec3<f32>(x_2475.z, x_2475.x, x_2475.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2478 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
            let x_2480 : vec4<f32> = u_xlat9;
            let x_2482 : vec2<f32> = (vec2<f32>(x_2480.x, x_2480.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2483 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2482.x, x_2482.y, x_2483.z, x_2483.w);
            let x_2486 : f32 = u_xlat12.y;
            u_xlat11.x = x_2486;
            let x_2488 : vec2<f32> = u_xlat49;
            let x_2491 : vec2<f32> = ((vec2<f32>(x_2488.x, x_2488.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2492 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2492.x, x_2491.x, x_2492.z, x_2491.y);
            let x_2494 : vec2<f32> = u_xlat49;
            let x_2497 : vec2<f32> = ((vec2<f32>(x_2494.x, x_2494.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2498 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2497.x, x_2498.y, x_2497.y, x_2498.w);
            let x_2501 : f32 = u_xlat8.x;
            u_xlat9.y = x_2501;
            let x_2504 : f32 = u_xlat10.y;
            u_xlat9.w = x_2504;
            let x_2506 : vec4<f32> = u_xlat9;
            let x_2507 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2506 + x_2507);
            let x_2509 : vec2<f32> = u_xlat49;
            let x_2512 : vec2<f32> = ((vec2<f32>(x_2509.y, x_2509.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2513 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2513.x, x_2512.x, x_2513.z, x_2512.y);
            let x_2515 : vec2<f32> = u_xlat49;
            let x_2518 : vec2<f32> = ((vec2<f32>(x_2515.y, x_2515.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2519 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2518.x, x_2519.y, x_2518.y, x_2519.w);
            let x_2522 : f32 = u_xlat8.y;
            u_xlat10.y = x_2522;
            let x_2524 : vec4<f32> = u_xlat10;
            let x_2525 : vec4<f32> = u_xlat12;
            u_xlat8 = (x_2524 + x_2525);
            let x_2527 : vec4<f32> = u_xlat9;
            let x_2528 : vec4<f32> = u_xlat11;
            u_xlat9 = (x_2527 / x_2528);
            let x_2530 : vec4<f32> = u_xlat9;
            u_xlat9 = (x_2530 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2532 : vec4<f32> = u_xlat10;
            let x_2533 : vec4<f32> = u_xlat8;
            u_xlat10 = (x_2532 / x_2533);
            let x_2535 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2535 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2537 : vec4<f32> = u_xlat9;
            let x_2540 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            u_xlat9 = (vec4<f32>(x_2537.w, x_2537.x, x_2537.y, x_2537.z) * vec4<f32>(x_2540.x, x_2540.x, x_2540.x, x_2540.x));
            let x_2543 : vec4<f32> = u_xlat10;
            let x_2546 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2543.x, x_2543.w, x_2543.y, x_2543.z) * vec4<f32>(x_2546.y, x_2546.y, x_2546.y, x_2546.y));
            let x_2549 : vec4<f32> = u_xlat9;
            let x_2550 : vec3<f32> = vec3<f32>(x_2549.y, x_2549.z, x_2549.w);
            let x_2551 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2550.x, x_2551.y, x_2550.y, x_2550.z);
            let x_2554 : f32 = u_xlat10.x;
            u_xlat12.y = x_2554;
            let x_2556 : vec4<f32> = u_xlat7;
            let x_2559 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2562 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2556.x, x_2556.y, x_2556.x, x_2556.y) * vec4<f32>(x_2559.x, x_2559.y, x_2559.x, x_2559.y)) + vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2562.y));
            let x_2565 : vec4<f32> = u_xlat7;
            let x_2568 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2571 : vec4<f32> = u_xlat12;
            u_xlat49 = ((vec2<f32>(x_2565.x, x_2565.y) * vec2<f32>(x_2568.x, x_2568.y)) + vec2<f32>(x_2571.w, x_2571.y));
            let x_2575 : f32 = u_xlat12.y;
            u_xlat9.y = x_2575;
            let x_2578 : f32 = u_xlat10.z;
            u_xlat12.y = x_2578;
            let x_2580 : vec4<f32> = u_xlat7;
            let x_2583 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2586 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2580.x, x_2580.y, x_2580.x, x_2580.y) * vec4<f32>(x_2583.x, x_2583.y, x_2583.x, x_2583.y)) + vec4<f32>(x_2586.x, x_2586.y, x_2586.z, x_2586.y));
            let x_2589 : vec4<f32> = u_xlat7;
            let x_2592 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2595 : vec4<f32> = u_xlat12;
            let x_2597 : vec2<f32> = ((vec2<f32>(x_2589.x, x_2589.y) * vec2<f32>(x_2592.x, x_2592.y)) + vec2<f32>(x_2595.w, x_2595.y));
            let x_2598 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2597.x, x_2597.y, x_2598.z, x_2598.w);
            let x_2601 : f32 = u_xlat12.y;
            u_xlat9.z = x_2601;
            let x_2603 : vec4<f32> = u_xlat7;
            let x_2606 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2609 : vec4<f32> = u_xlat9;
            u_xlat16 = ((vec4<f32>(x_2603.x, x_2603.y, x_2603.x, x_2603.y) * vec4<f32>(x_2606.x, x_2606.y, x_2606.x, x_2606.y)) + vec4<f32>(x_2609.x, x_2609.y, x_2609.x, x_2609.z));
            let x_2613 : f32 = u_xlat10.w;
            u_xlat12.y = x_2613;
            let x_2616 : vec4<f32> = u_xlat7;
            let x_2619 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2622 : vec4<f32> = u_xlat12;
            u_xlat17 = ((vec4<f32>(x_2616.x, x_2616.y, x_2616.x, x_2616.y) * vec4<f32>(x_2619.x, x_2619.y, x_2619.x, x_2619.y)) + vec4<f32>(x_2622.x, x_2622.y, x_2622.z, x_2622.y));
            let x_2626 : vec4<f32> = u_xlat7;
            let x_2629 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2632 : vec4<f32> = u_xlat12;
            u_xlat30 = ((vec2<f32>(x_2626.x, x_2626.y) * vec2<f32>(x_2629.x, x_2629.y)) + vec2<f32>(x_2632.w, x_2632.y));
            let x_2636 : f32 = u_xlat12.y;
            u_xlat9.w = x_2636;
            let x_2639 : vec4<f32> = u_xlat7;
            let x_2642 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2645 : vec4<f32> = u_xlat9;
            u_xlat57 = ((vec2<f32>(x_2639.x, x_2639.y) * vec2<f32>(x_2642.x, x_2642.y)) + vec2<f32>(x_2645.x, x_2645.w));
            let x_2648 : vec4<f32> = u_xlat12;
            let x_2649 : vec3<f32> = vec3<f32>(x_2648.x, x_2648.z, x_2648.w);
            let x_2650 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2649.x, x_2650.y, x_2649.y, x_2649.z);
            let x_2652 : vec4<f32> = u_xlat7;
            let x_2655 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2658 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2652.x, x_2652.y, x_2652.x, x_2652.y) * vec4<f32>(x_2655.x, x_2655.y, x_2655.x, x_2655.y)) + vec4<f32>(x_2658.x, x_2658.y, x_2658.z, x_2658.y));
            let x_2662 : vec4<f32> = u_xlat7;
            let x_2665 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2668 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2662.x, x_2662.y) * vec2<f32>(x_2665.x, x_2665.y)) + vec2<f32>(x_2668.w, x_2668.y));
            let x_2672 : f32 = u_xlat9.x;
            u_xlat10.x = x_2672;
            let x_2674 : vec4<f32> = u_xlat7;
            let x_2677 : vec4<f32> = x_164.x_AdditionalShadowmapSize;
            let x_2680 : vec4<f32> = u_xlat10;
            let x_2682 : vec2<f32> = ((vec2<f32>(x_2674.x, x_2674.y) * vec2<f32>(x_2677.x, x_2677.y)) + vec2<f32>(x_2680.x, x_2680.y));
            let x_2683 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2682.x, x_2682.y, x_2683.z, x_2683.w);
            let x_2686 : vec4<f32> = u_xlat8;
            let x_2688 : vec4<f32> = u_xlat11;
            u_xlat18 = (vec4<f32>(x_2686.x, x_2686.x, x_2686.x, x_2686.x) * x_2688);
            let x_2691 : vec4<f32> = u_xlat8;
            let x_2693 : vec4<f32> = u_xlat11;
            u_xlat19 = (vec4<f32>(x_2691.y, x_2691.y, x_2691.y, x_2691.y) * x_2693);
            let x_2696 : vec4<f32> = u_xlat8;
            let x_2698 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2696.z, x_2696.z, x_2696.z, x_2696.z) * x_2698);
            let x_2700 : vec4<f32> = u_xlat8;
            let x_2702 : vec4<f32> = u_xlat11;
            u_xlat8 = (vec4<f32>(x_2700.w, x_2700.w, x_2700.w, x_2700.w) * x_2702);
            let x_2705 : vec4<f32> = u_xlat13;
            let x_2706 : vec2<f32> = vec2<f32>(x_2705.x, x_2705.y);
            let x_2708 : f32 = u_xlat6.z;
            txVec43 = vec3<f32>(x_2706.x, x_2706.y, x_2708);
            let x_2715 : vec3<f32> = txVec43;
            let x_2717 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2715.xy, x_2715.z);
            u_xlat9.x = x_2717;
            let x_2720 : vec4<f32> = u_xlat13;
            let x_2721 : vec2<f32> = vec2<f32>(x_2720.z, x_2720.w);
            let x_2723 : f32 = u_xlat6.z;
            txVec44 = vec3<f32>(x_2721.x, x_2721.y, x_2723);
            let x_2731 : vec3<f32> = txVec44;
            let x_2733 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2731.xy, x_2731.z);
            u_xlat72 = x_2733;
            let x_2734 : f32 = u_xlat72;
            let x_2736 : f32 = u_xlat18.y;
            u_xlat72 = (x_2734 * x_2736);
            let x_2739 : f32 = u_xlat18.x;
            let x_2741 : f32 = u_xlat9.x;
            let x_2743 : f32 = u_xlat72;
            u_xlat9.x = ((x_2739 * x_2741) + x_2743);
            let x_2747 : vec2<f32> = u_xlat49;
            let x_2749 : f32 = u_xlat6.z;
            txVec45 = vec3<f32>(x_2747.x, x_2747.y, x_2749);
            let x_2756 : vec3<f32> = txVec45;
            let x_2758 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2756.xy, x_2756.z);
            u_xlat49.x = x_2758;
            let x_2761 : f32 = u_xlat18.z;
            let x_2763 : f32 = u_xlat49.x;
            let x_2766 : f32 = u_xlat9.x;
            u_xlat49.x = ((x_2761 * x_2763) + x_2766);
            let x_2770 : vec4<f32> = u_xlat16;
            let x_2771 : vec2<f32> = vec2<f32>(x_2770.x, x_2770.y);
            let x_2773 : f32 = u_xlat6.z;
            txVec46 = vec3<f32>(x_2771.x, x_2771.y, x_2773);
            let x_2781 : vec3<f32> = txVec46;
            let x_2783 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2781.xy, x_2781.z);
            u_xlat70 = x_2783;
            let x_2785 : f32 = u_xlat18.w;
            let x_2786 : f32 = u_xlat70;
            let x_2789 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2785 * x_2786) + x_2789);
            let x_2793 : vec4<f32> = u_xlat14;
            let x_2794 : vec2<f32> = vec2<f32>(x_2793.x, x_2793.y);
            let x_2796 : f32 = u_xlat6.z;
            txVec47 = vec3<f32>(x_2794.x, x_2794.y, x_2796);
            let x_2803 : vec3<f32> = txVec47;
            let x_2805 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2803.xy, x_2803.z);
            u_xlat70 = x_2805;
            let x_2807 : f32 = u_xlat19.x;
            let x_2808 : f32 = u_xlat70;
            let x_2811 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2807 * x_2808) + x_2811);
            let x_2815 : vec4<f32> = u_xlat14;
            let x_2816 : vec2<f32> = vec2<f32>(x_2815.z, x_2815.w);
            let x_2818 : f32 = u_xlat6.z;
            txVec48 = vec3<f32>(x_2816.x, x_2816.y, x_2818);
            let x_2825 : vec3<f32> = txVec48;
            let x_2827 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2825.xy, x_2825.z);
            u_xlat70 = x_2827;
            let x_2829 : f32 = u_xlat19.y;
            let x_2830 : f32 = u_xlat70;
            let x_2833 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2829 * x_2830) + x_2833);
            let x_2837 : vec4<f32> = u_xlat15;
            let x_2838 : vec2<f32> = vec2<f32>(x_2837.x, x_2837.y);
            let x_2840 : f32 = u_xlat6.z;
            txVec49 = vec3<f32>(x_2838.x, x_2838.y, x_2840);
            let x_2847 : vec3<f32> = txVec49;
            let x_2849 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2847.xy, x_2847.z);
            u_xlat70 = x_2849;
            let x_2851 : f32 = u_xlat19.z;
            let x_2852 : f32 = u_xlat70;
            let x_2855 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2851 * x_2852) + x_2855);
            let x_2859 : vec4<f32> = u_xlat16;
            let x_2860 : vec2<f32> = vec2<f32>(x_2859.z, x_2859.w);
            let x_2862 : f32 = u_xlat6.z;
            txVec50 = vec3<f32>(x_2860.x, x_2860.y, x_2862);
            let x_2869 : vec3<f32> = txVec50;
            let x_2871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2869.xy, x_2869.z);
            u_xlat70 = x_2871;
            let x_2873 : f32 = u_xlat19.w;
            let x_2874 : f32 = u_xlat70;
            let x_2877 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2873 * x_2874) + x_2877);
            let x_2881 : vec4<f32> = u_xlat17;
            let x_2882 : vec2<f32> = vec2<f32>(x_2881.x, x_2881.y);
            let x_2884 : f32 = u_xlat6.z;
            txVec51 = vec3<f32>(x_2882.x, x_2882.y, x_2884);
            let x_2891 : vec3<f32> = txVec51;
            let x_2893 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2891.xy, x_2891.z);
            u_xlat70 = x_2893;
            let x_2895 : f32 = u_xlat20.x;
            let x_2896 : f32 = u_xlat70;
            let x_2899 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2895 * x_2896) + x_2899);
            let x_2903 : vec4<f32> = u_xlat17;
            let x_2904 : vec2<f32> = vec2<f32>(x_2903.z, x_2903.w);
            let x_2906 : f32 = u_xlat6.z;
            txVec52 = vec3<f32>(x_2904.x, x_2904.y, x_2906);
            let x_2913 : vec3<f32> = txVec52;
            let x_2915 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2913.xy, x_2913.z);
            u_xlat70 = x_2915;
            let x_2917 : f32 = u_xlat20.y;
            let x_2918 : f32 = u_xlat70;
            let x_2921 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2917 * x_2918) + x_2921);
            let x_2925 : vec2<f32> = u_xlat30;
            let x_2927 : f32 = u_xlat6.z;
            txVec53 = vec3<f32>(x_2925.x, x_2925.y, x_2927);
            let x_2934 : vec3<f32> = txVec53;
            let x_2936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2934.xy, x_2934.z);
            u_xlat70 = x_2936;
            let x_2938 : f32 = u_xlat20.z;
            let x_2939 : f32 = u_xlat70;
            let x_2942 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2938 * x_2939) + x_2942);
            let x_2946 : vec2<f32> = u_xlat57;
            let x_2948 : f32 = u_xlat6.z;
            txVec54 = vec3<f32>(x_2946.x, x_2946.y, x_2948);
            let x_2955 : vec3<f32> = txVec54;
            let x_2957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2955.xy, x_2955.z);
            u_xlat70 = x_2957;
            let x_2959 : f32 = u_xlat20.w;
            let x_2960 : f32 = u_xlat70;
            let x_2963 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2959 * x_2960) + x_2963);
            let x_2967 : vec4<f32> = u_xlat12;
            let x_2968 : vec2<f32> = vec2<f32>(x_2967.x, x_2967.y);
            let x_2970 : f32 = u_xlat6.z;
            txVec55 = vec3<f32>(x_2968.x, x_2968.y, x_2970);
            let x_2977 : vec3<f32> = txVec55;
            let x_2979 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2977.xy, x_2977.z);
            u_xlat70 = x_2979;
            let x_2981 : f32 = u_xlat8.x;
            let x_2982 : f32 = u_xlat70;
            let x_2985 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2981 * x_2982) + x_2985);
            let x_2989 : vec4<f32> = u_xlat12;
            let x_2990 : vec2<f32> = vec2<f32>(x_2989.z, x_2989.w);
            let x_2992 : f32 = u_xlat6.z;
            txVec56 = vec3<f32>(x_2990.x, x_2990.y, x_2992);
            let x_2999 : vec3<f32> = txVec56;
            let x_3001 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2999.xy, x_2999.z);
            u_xlat70 = x_3001;
            let x_3003 : f32 = u_xlat8.y;
            let x_3004 : f32 = u_xlat70;
            let x_3007 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3003 * x_3004) + x_3007);
            let x_3011 : vec2<f32> = u_xlat52;
            let x_3013 : f32 = u_xlat6.z;
            txVec57 = vec3<f32>(x_3011.x, x_3011.y, x_3013);
            let x_3020 : vec3<f32> = txVec57;
            let x_3022 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3020.xy, x_3020.z);
            u_xlat70 = x_3022;
            let x_3024 : f32 = u_xlat8.z;
            let x_3025 : f32 = u_xlat70;
            let x_3028 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3024 * x_3025) + x_3028);
            let x_3032 : vec4<f32> = u_xlat7;
            let x_3033 : vec2<f32> = vec2<f32>(x_3032.x, x_3032.y);
            let x_3035 : f32 = u_xlat6.z;
            txVec58 = vec3<f32>(x_3033.x, x_3033.y, x_3035);
            let x_3042 : vec3<f32> = txVec58;
            let x_3044 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3042.xy, x_3042.z);
            u_xlat7.x = x_3044;
            let x_3047 : f32 = u_xlat8.w;
            let x_3049 : f32 = u_xlat7.x;
            let x_3052 : f32 = u_xlat49.x;
            u_xlat69 = ((x_3047 * x_3049) + x_3052);
          }
        }
      } else {
        let x_3056 : vec4<f32> = u_xlat6;
        let x_3057 : vec2<f32> = vec2<f32>(x_3056.x, x_3056.y);
        let x_3059 : f32 = u_xlat6.z;
        txVec59 = vec3<f32>(x_3057.x, x_3057.y, x_3059);
        let x_3066 : vec3<f32> = txVec59;
        let x_3068 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3066.xy, x_3066.z);
        u_xlat69 = x_3068;
      }
      let x_3069 : i32 = u_xlati67;
      let x_3071 : f32 = x_164.x_AdditionalShadowParams[x_3069].x;
      u_xlat6.x = (1.0f + -(x_3071));
      let x_3075 : f32 = u_xlat69;
      let x_3076 : i32 = u_xlati67;
      let x_3078 : f32 = x_164.x_AdditionalShadowParams[x_3076].x;
      let x_3081 : f32 = u_xlat6.x;
      u_xlat6.x = ((x_3075 * x_3078) + x_3081);
      let x_3085 : f32 = u_xlat6.z;
      u_xlatb27.x = (0.0f >= x_3085);
      let x_3090 : f32 = u_xlat6.z;
      u_xlatb48 = (x_3090 >= 1.0f);
      let x_3092 : bool = u_xlatb48;
      let x_3094 : bool = u_xlatb27.x;
      u_xlatb27.x = (x_3092 | x_3094);
      let x_3098 : bool = u_xlatb27.x;
      if (x_3098) {
        x_3099 = 1.0f;
      } else {
        let x_3104 : f32 = u_xlat6.x;
        x_3099 = x_3104;
      }
      let x_3105 : f32 = x_3099;
      u_xlat6.x = x_3105;
    } else {
      u_xlat6.x = 1.0f;
    }
    let x_3110 : f32 = u_xlat6.x;
    u_xlat27 = (-(x_3110) + 1.0f);
    let x_3113 : f32 = u_xlat65;
    let x_3114 : f32 = u_xlat27;
    let x_3117 : f32 = u_xlat6.x;
    u_xlat6.x = ((x_3113 * x_3114) + x_3117);
    let x_3120 : f32 = u_xlat68;
    let x_3122 : f32 = u_xlat6.x;
    u_xlat68 = (x_3120 * x_3122);
    let x_3124 : f32 = u_xlat68;
    let x_3126 : i32 = u_xlati67;
    let x_3128 : vec4<f32> = x_1600.x_AdditionalLightsColor[x_3126];
    let x_3130 : vec3<f32> = (vec3<f32>(x_3124, x_3124, x_3124) * vec3<f32>(x_3128.x, x_3128.y, x_3128.z));
    let x_3131 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3130.x, x_3130.y, x_3130.z, x_3131.w);
    let x_3133 : vec4<f32> = u_xlat1;
    let x_3135 : vec4<f32> = u_xlat5;
    u_xlat67 = dot(vec3<f32>(x_3133.x, x_3133.y, x_3133.z), vec3<f32>(x_3135.x, x_3135.y, x_3135.z));
    let x_3138 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3138, 0.0f, 1.0f);
    let x_3140 : f32 = u_xlat67;
    let x_3142 : vec4<f32> = u_xlat6;
    let x_3144 : vec3<f32> = (vec3<f32>(x_3140, x_3140, x_3140) * vec3<f32>(x_3142.x, x_3142.y, x_3142.z));
    let x_3145 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3144.x, x_3144.y, x_3144.z, x_3145.w);
    let x_3147 : vec4<f32> = u_xlat5;
    let x_3149 : vec4<f32> = u_xlat0;
    let x_3152 : vec4<f32> = u_xlat4;
    let x_3154 : vec3<f32> = ((vec3<f32>(x_3147.x, x_3147.y, x_3147.z) * vec3<f32>(x_3149.y, x_3149.z, x_3149.w)) + vec3<f32>(x_3152.x, x_3152.y, x_3152.z));
    let x_3155 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_3154.x, x_3154.y, x_3154.z, x_3155.w);

    continuing {
      let x_3157 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3157 + bitcast<u32>(1i));
    }
  }
  let x_3160 : vec3<f32> = u_xlat2;
  let x_3161 : vec4<f32> = u_xlat0;
  let x_3164 : vec4<f32> = u_xlat3;
  u_xlat21 = ((x_3160 * vec3<f32>(x_3161.y, x_3161.z, x_3161.w)) + vec3<f32>(x_3164.x, x_3164.y, x_3164.z));
  let x_3169 : vec4<f32> = u_xlat4;
  let x_3171 : vec3<f32> = u_xlat21;
  let x_3172 : vec3<f32> = (vec3<f32>(x_3169.x, x_3169.y, x_3169.z) + x_3171);
  let x_3173 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3172.x, x_3172.y, x_3172.z, x_3173.w);
  let x_3177 : f32 = x_40.x_Surface;
  u_xlatb21 = (x_3177 == 1.0f);
  let x_3179 : bool = u_xlatb21;
  if (x_3179) {
    let x_3184 : f32 = u_xlat0.x;
    x_3180 = x_3184;
  } else {
    x_3180 = 1.0f;
  }
  let x_3186 : f32 = x_3180;
  SV_Target0.w = x_3186;
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


