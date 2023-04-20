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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_119 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat67 : f32;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlatb67 : bool;

@group(1) @binding(4) var<uniform> x_206 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb3 : bool;

var<private> u_xlat47 : vec2<f32>;

var<private> u_xlat49 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb25 : bool;

var<private> u_xlatu67 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1663 : AdditionalLights;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlati28 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat72 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb29 : bool;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat18 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb72 : bool;

var<private> u_xlat22 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb22 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlatu70 : u32;

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
  var x_1827 : f32;
  var x_1836 : f32;
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
  var x_3146 : f32;
  var x_3256 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_51 : vec3<f32> = vs_TEXCOORD2;
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_51, x_52);
  let x_57 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_57);
  let x_60 : vec4<f32> = u_xlat1;
  let x_62 : vec3<f32> = vs_TEXCOORD2;
  let x_63 : vec3<f32> = (vec3<f32>(x_60.x, x_60.x, x_60.x) * x_62);
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_71 : f32 = vs_TEXCOORD1.y;
  let x_75 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat2 = (x_71 * x_75);
  let x_78 : f32 = x_28.unity_MatrixV[0i].z;
  let x_80 : f32 = vs_TEXCOORD1.x;
  let x_82 : f32 = u_xlat2;
  u_xlat2 = ((x_78 * x_80) + x_82);
  let x_86 : f32 = x_28.unity_MatrixV[2i].z;
  let x_88 : f32 = vs_TEXCOORD1.z;
  let x_90 : f32 = u_xlat2;
  u_xlat2 = ((x_86 * x_88) + x_90);
  let x_92 : f32 = u_xlat2;
  let x_95 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat2 = (x_92 + x_95);
  let x_97 : f32 = u_xlat2;
  let x_101 : f32 = x_28.x_ProjectionParams.y;
  u_xlat2 = (-(x_97) + -(x_101));
  let x_104 : f32 = u_xlat2;
  u_xlat2 = max(x_104, 0.0f);
  let x_107 : f32 = u_xlat2;
  let x_110 : f32 = x_28.unity_FogParams.x;
  u_xlat2 = (x_107 * x_110);
  u_xlat1.w = 1.0f;
  let x_122 : vec4<f32> = x_119.unity_SHAr;
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_122, x_123);
  let x_128 : vec4<f32> = x_119.unity_SHAg;
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_128, x_129);
  let x_134 : vec4<f32> = x_119.unity_SHAb;
  let x_135 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_134, x_135);
  let x_139 : vec4<f32> = u_xlat1;
  let x_141 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_139.y, x_139.z, x_139.z, x_139.x) * vec4<f32>(x_141.x, x_141.y, x_141.z, x_141.z));
  let x_147 : vec4<f32> = x_119.unity_SHBr;
  let x_148 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_147, x_148);
  let x_153 : vec4<f32> = x_119.unity_SHBg;
  let x_154 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_153, x_154);
  let x_159 : vec4<f32> = x_119.unity_SHBb;
  let x_160 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_159, x_160);
  let x_165 : f32 = u_xlat1.y;
  let x_167 : f32 = u_xlat1.y;
  u_xlat67 = (x_165 * x_167);
  let x_170 : f32 = u_xlat1.x;
  let x_172 : f32 = u_xlat1.x;
  let x_174 : f32 = u_xlat67;
  u_xlat67 = ((x_170 * x_172) + -(x_174));
  let x_181 : vec4<f32> = x_119.unity_SHC;
  let x_183 : f32 = u_xlat67;
  let x_186 : vec4<f32> = u_xlat5;
  u_xlat24 = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_183, x_183, x_183)) + vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : vec3<f32> = u_xlat24;
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat24 = (x_189 + vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec3<f32> = u_xlat24;
  u_xlat24 = max(x_193, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_208 : f32 = x_206.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_208);
  let x_210 : bool = u_xlatb67;
  if (x_210) {
    let x_214 : f32 = x_206.x_MainLightShadowParams.y;
    u_xlatb67 = (x_214 == 1.0f);
    let x_216 : bool = u_xlatb67;
    if (x_216) {
      let x_221 : vec4<f32> = vs_TEXCOORD6;
      let x_224 : vec4<f32> = x_206.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_221.x, x_221.y, x_221.x, x_221.y) + x_224);
      let x_228 : vec4<f32> = u_xlat3;
      let x_229 : vec2<f32> = vec2<f32>(x_228.x, x_228.y);
      let x_231 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_229.x, x_229.y, x_231);
      let x_243 : vec3<f32> = txVec0;
      let x_245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_243.xy, x_243.z);
      u_xlat4.x = x_245;
      let x_248 : vec4<f32> = u_xlat3;
      let x_249 : vec2<f32> = vec2<f32>(x_248.z, x_248.w);
      let x_251 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_249.x, x_249.y, x_251);
      let x_258 : vec3<f32> = txVec1;
      let x_260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_258.xy, x_258.z);
      u_xlat4.y = x_260;
      let x_262 : vec4<f32> = vs_TEXCOORD6;
      let x_266 : vec4<f32> = x_206.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_262.x, x_262.y, x_262.x, x_262.y) + x_266);
      let x_269 : vec4<f32> = u_xlat3;
      let x_270 : vec2<f32> = vec2<f32>(x_269.x, x_269.y);
      let x_272 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_270.x, x_270.y, x_272);
      let x_279 : vec3<f32> = txVec2;
      let x_281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_279.xy, x_279.z);
      u_xlat4.z = x_281;
      let x_284 : vec4<f32> = u_xlat3;
      let x_285 : vec2<f32> = vec2<f32>(x_284.z, x_284.w);
      let x_287 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_285.x, x_285.y, x_287);
      let x_294 : vec3<f32> = txVec3;
      let x_296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_294.xy, x_294.z);
      u_xlat4.w = x_296;
      let x_298 : vec4<f32> = u_xlat4;
      u_xlat67 = dot(x_298, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_305 : f32 = x_206.x_MainLightShadowParams.y;
      u_xlatb3 = (x_305 == 2.0f);
      let x_308 : bool = u_xlatb3;
      if (x_308) {
        let x_311 : vec4<f32> = vs_TEXCOORD6;
        let x_315 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_320 : vec2<f32> = ((vec2<f32>(x_311.x, x_311.y) * vec2<f32>(x_315.z, x_315.w)) + vec2<f32>(0.5f, 0.5f));
        let x_321 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_320.x, x_320.y, x_321.z, x_321.w);
        let x_323 : vec4<f32> = u_xlat3;
        let x_325 : vec2<f32> = floor(vec2<f32>(x_323.x, x_323.y));
        let x_326 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_326.z, x_326.w);
        let x_330 : vec4<f32> = vs_TEXCOORD6;
        let x_333 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_336 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_330.x, x_330.y) * vec2<f32>(x_333.z, x_333.w)) + -(vec2<f32>(x_336.x, x_336.y)));
        let x_340 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_340.x, x_340.x, x_340.y, x_340.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_344 : vec4<f32> = u_xlat4;
        let x_346 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_344.x, x_344.x, x_344.z, x_344.z) * vec4<f32>(x_346.x, x_346.x, x_346.z, x_346.z));
        let x_349 : vec4<f32> = u_xlat5;
        let x_353 : vec2<f32> = (vec2<f32>(x_349.y, x_349.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_354 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_353.x, x_354.y, x_353.y, x_354.w);
        let x_356 : vec4<f32> = u_xlat5;
        let x_359 : vec2<f32> = u_xlat47;
        let x_361 : vec2<f32> = ((vec2<f32>(x_356.x, x_356.z) * vec2<f32>(0.5f, 0.5f)) + -(x_359));
        let x_362 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_361.x, x_361.y, x_362.z, x_362.w);
        let x_365 : vec2<f32> = u_xlat47;
        u_xlat49 = (-(x_365) + vec2<f32>(1.0f, 1.0f));
        let x_370 : vec2<f32> = u_xlat47;
        let x_372 : vec2<f32> = min(x_370, vec2<f32>(0.0f, 0.0f));
        let x_373 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_372.x, x_372.y, x_373.z, x_373.w);
        let x_375 : vec4<f32> = u_xlat6;
        let x_378 : vec4<f32> = u_xlat6;
        let x_381 : vec2<f32> = u_xlat49;
        let x_382 : vec2<f32> = ((-(vec2<f32>(x_375.x, x_375.y)) * vec2<f32>(x_378.x, x_378.y)) + x_381);
        let x_383 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
        let x_385 : vec2<f32> = u_xlat47;
        u_xlat47 = max(x_385, vec2<f32>(0.0f, 0.0f));
        let x_387 : vec2<f32> = u_xlat47;
        let x_389 : vec2<f32> = u_xlat47;
        let x_391 : vec4<f32> = u_xlat4;
        u_xlat47 = ((-(x_387) * x_389) + vec2<f32>(x_391.y, x_391.w));
        let x_394 : vec4<f32> = u_xlat6;
        let x_396 : vec2<f32> = (vec2<f32>(x_394.x, x_394.y) + vec2<f32>(1.0f, 1.0f));
        let x_397 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_396.x, x_396.y, x_397.z, x_397.w);
        let x_399 : vec2<f32> = u_xlat47;
        u_xlat47 = (x_399 + vec2<f32>(1.0f, 1.0f));
        let x_402 : vec4<f32> = u_xlat5;
        let x_406 : vec2<f32> = (vec2<f32>(x_402.x, x_402.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_407 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
        let x_409 : vec2<f32> = u_xlat49;
        let x_410 : vec2<f32> = (x_409 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_411 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_410.x, x_410.y, x_411.z, x_411.w);
        let x_413 : vec4<f32> = u_xlat6;
        let x_415 : vec2<f32> = (vec2<f32>(x_413.x, x_413.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_416 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
        let x_419 : vec2<f32> = u_xlat47;
        let x_420 : vec2<f32> = (x_419 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_421 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_420.x, x_420.y, x_421.z, x_421.w);
        let x_423 : vec4<f32> = u_xlat4;
        u_xlat47 = (vec2<f32>(x_423.y, x_423.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_427 : f32 = u_xlat6.x;
        u_xlat7.z = x_427;
        let x_430 : f32 = u_xlat47.x;
        u_xlat7.w = x_430;
        let x_433 : f32 = u_xlat8.x;
        u_xlat5.z = x_433;
        let x_436 : f32 = u_xlat4.x;
        u_xlat5.w = x_436;
        let x_439 : vec4<f32> = u_xlat5;
        let x_441 : vec4<f32> = u_xlat7;
        u_xlat9 = (vec4<f32>(x_439.z, x_439.w, x_439.x, x_439.z) + vec4<f32>(x_441.z, x_441.w, x_441.x, x_441.z));
        let x_445 : f32 = u_xlat7.y;
        u_xlat6.z = x_445;
        let x_448 : f32 = u_xlat47.y;
        u_xlat6.w = x_448;
        let x_451 : f32 = u_xlat5.y;
        u_xlat8.z = x_451;
        let x_454 : f32 = u_xlat4.z;
        u_xlat8.w = x_454;
        let x_456 : vec4<f32> = u_xlat6;
        let x_458 : vec4<f32> = u_xlat8;
        let x_460 : vec3<f32> = (vec3<f32>(x_456.z, x_456.y, x_456.w) + vec3<f32>(x_458.z, x_458.y, x_458.w));
        let x_461 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
        let x_463 : vec4<f32> = u_xlat5;
        let x_465 : vec4<f32> = u_xlat9;
        let x_467 : vec3<f32> = (vec3<f32>(x_463.x, x_463.z, x_463.w) / vec3<f32>(x_465.z, x_465.w, x_465.y));
        let x_468 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
        let x_470 : vec4<f32> = u_xlat5;
        let x_476 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_477 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
        let x_479 : vec4<f32> = u_xlat8;
        let x_481 : vec4<f32> = u_xlat4;
        let x_483 : vec3<f32> = (vec3<f32>(x_479.z, x_479.y, x_479.w) / vec3<f32>(x_481.x, x_481.y, x_481.z));
        let x_484 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
        let x_486 : vec4<f32> = u_xlat6;
        let x_488 : vec3<f32> = (vec3<f32>(x_486.x, x_486.y, x_486.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_489 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
        let x_491 : vec4<f32> = u_xlat5;
        let x_494 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_496 : vec3<f32> = (vec3<f32>(x_491.y, x_491.x, x_491.z) * vec3<f32>(x_494.x, x_494.x, x_494.x));
        let x_497 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
        let x_499 : vec4<f32> = u_xlat6;
        let x_502 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_504 : vec3<f32> = (vec3<f32>(x_499.x, x_499.y, x_499.z) * vec3<f32>(x_502.y, x_502.y, x_502.y));
        let x_505 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
        let x_508 : f32 = u_xlat6.x;
        u_xlat5.w = x_508;
        let x_510 : vec4<f32> = u_xlat3;
        let x_513 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_516 : vec4<f32> = u_xlat5;
        u_xlat7 = ((vec4<f32>(x_510.x, x_510.y, x_510.x, x_510.y) * vec4<f32>(x_513.x, x_513.y, x_513.x, x_513.y)) + vec4<f32>(x_516.y, x_516.w, x_516.x, x_516.w));
        let x_519 : vec4<f32> = u_xlat3;
        let x_522 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_525 : vec4<f32> = u_xlat5;
        u_xlat47 = ((vec2<f32>(x_519.x, x_519.y) * vec2<f32>(x_522.x, x_522.y)) + vec2<f32>(x_525.z, x_525.w));
        let x_529 : f32 = u_xlat5.y;
        u_xlat6.w = x_529;
        let x_531 : vec4<f32> = u_xlat6;
        let x_532 : vec2<f32> = vec2<f32>(x_531.y, x_531.z);
        let x_533 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_533.x, x_532.x, x_533.z, x_532.y);
        let x_535 : vec4<f32> = u_xlat3;
        let x_538 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_541 : vec4<f32> = u_xlat5;
        u_xlat8 = ((vec4<f32>(x_535.x, x_535.y, x_535.x, x_535.y) * vec4<f32>(x_538.x, x_538.y, x_538.x, x_538.y)) + vec4<f32>(x_541.x, x_541.y, x_541.z, x_541.y));
        let x_544 : vec4<f32> = u_xlat3;
        let x_547 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_550 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_544.x, x_544.y, x_544.x, x_544.y) * vec4<f32>(x_547.x, x_547.y, x_547.x, x_547.y)) + vec4<f32>(x_550.w, x_550.y, x_550.w, x_550.z));
        let x_553 : vec4<f32> = u_xlat3;
        let x_556 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_559 : vec4<f32> = u_xlat5;
        u_xlat5 = ((vec4<f32>(x_553.x, x_553.y, x_553.x, x_553.y) * vec4<f32>(x_556.x, x_556.y, x_556.x, x_556.y)) + vec4<f32>(x_559.x, x_559.w, x_559.z, x_559.w));
        let x_563 : vec4<f32> = u_xlat4;
        let x_565 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_563.x, x_563.x, x_563.x, x_563.y) * vec4<f32>(x_565.z, x_565.w, x_565.y, x_565.z));
        let x_569 : vec4<f32> = u_xlat4;
        let x_571 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_569.y, x_569.y, x_569.z, x_569.z) * x_571);
        let x_574 : f32 = u_xlat4.z;
        let x_576 : f32 = u_xlat9.y;
        u_xlat3.x = (x_574 * x_576);
        let x_580 : vec4<f32> = u_xlat7;
        let x_581 : vec2<f32> = vec2<f32>(x_580.x, x_580.y);
        let x_583 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_581.x, x_581.y, x_583);
        let x_591 : vec3<f32> = txVec4;
        let x_593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_591.xy, x_591.z);
        u_xlat25.x = x_593;
        let x_596 : vec4<f32> = u_xlat7;
        let x_597 : vec2<f32> = vec2<f32>(x_596.z, x_596.w);
        let x_599 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_597.x, x_597.y, x_599);
        let x_606 : vec3<f32> = txVec5;
        let x_608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_606.xy, x_606.z);
        u_xlat4.x = x_608;
        let x_611 : f32 = u_xlat4.x;
        let x_613 : f32 = u_xlat10.y;
        u_xlat4.x = (x_611 * x_613);
        let x_617 : f32 = u_xlat10.x;
        let x_619 : f32 = u_xlat25.x;
        let x_622 : f32 = u_xlat4.x;
        u_xlat25.x = ((x_617 * x_619) + x_622);
        let x_626 : vec2<f32> = u_xlat47;
        let x_628 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_626.x, x_626.y, x_628);
        let x_635 : vec3<f32> = txVec6;
        let x_637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_635.xy, x_635.z);
        u_xlat47.x = x_637;
        let x_640 : f32 = u_xlat10.z;
        let x_642 : f32 = u_xlat47.x;
        let x_645 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_640 * x_642) + x_645);
        let x_649 : vec4<f32> = u_xlat6;
        let x_650 : vec2<f32> = vec2<f32>(x_649.x, x_649.y);
        let x_652 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_650.x, x_650.y, x_652);
        let x_659 : vec3<f32> = txVec7;
        let x_661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_659.xy, x_659.z);
        u_xlat47.x = x_661;
        let x_664 : f32 = u_xlat10.w;
        let x_666 : f32 = u_xlat47.x;
        let x_669 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_664 * x_666) + x_669);
        let x_673 : vec4<f32> = u_xlat8;
        let x_674 : vec2<f32> = vec2<f32>(x_673.x, x_673.y);
        let x_676 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_674.x, x_674.y, x_676);
        let x_683 : vec3<f32> = txVec8;
        let x_685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_683.xy, x_683.z);
        u_xlat47.x = x_685;
        let x_688 : f32 = u_xlat11.x;
        let x_690 : f32 = u_xlat47.x;
        let x_693 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_688 * x_690) + x_693);
        let x_697 : vec4<f32> = u_xlat8;
        let x_698 : vec2<f32> = vec2<f32>(x_697.z, x_697.w);
        let x_700 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_698.x, x_698.y, x_700);
        let x_707 : vec3<f32> = txVec9;
        let x_709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_707.xy, x_707.z);
        u_xlat47.x = x_709;
        let x_712 : f32 = u_xlat11.y;
        let x_714 : f32 = u_xlat47.x;
        let x_717 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_712 * x_714) + x_717);
        let x_721 : vec4<f32> = u_xlat6;
        let x_722 : vec2<f32> = vec2<f32>(x_721.z, x_721.w);
        let x_724 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_722.x, x_722.y, x_724);
        let x_731 : vec3<f32> = txVec10;
        let x_733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_731.xy, x_731.z);
        u_xlat47.x = x_733;
        let x_736 : f32 = u_xlat11.z;
        let x_738 : f32 = u_xlat47.x;
        let x_741 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_736 * x_738) + x_741);
        let x_745 : vec4<f32> = u_xlat5;
        let x_746 : vec2<f32> = vec2<f32>(x_745.x, x_745.y);
        let x_748 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_746.x, x_746.y, x_748);
        let x_755 : vec3<f32> = txVec11;
        let x_757 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_755.xy, x_755.z);
        u_xlat47.x = x_757;
        let x_760 : f32 = u_xlat11.w;
        let x_762 : f32 = u_xlat47.x;
        let x_765 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_760 * x_762) + x_765);
        let x_769 : vec4<f32> = u_xlat5;
        let x_770 : vec2<f32> = vec2<f32>(x_769.z, x_769.w);
        let x_772 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_770.x, x_770.y, x_772);
        let x_779 : vec3<f32> = txVec12;
        let x_781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_779.xy, x_779.z);
        u_xlat47.x = x_781;
        let x_784 : f32 = u_xlat3.x;
        let x_786 : f32 = u_xlat47.x;
        let x_789 : f32 = u_xlat25.x;
        u_xlat67 = ((x_784 * x_786) + x_789);
      } else {
        let x_792 : vec4<f32> = vs_TEXCOORD6;
        let x_795 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_798 : vec2<f32> = ((vec2<f32>(x_792.x, x_792.y) * vec2<f32>(x_795.z, x_795.w)) + vec2<f32>(0.5f, 0.5f));
        let x_799 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_798.x, x_798.y, x_799.z, x_799.w);
        let x_801 : vec4<f32> = u_xlat3;
        let x_803 : vec2<f32> = floor(vec2<f32>(x_801.x, x_801.y));
        let x_804 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_803.x, x_803.y, x_804.z, x_804.w);
        let x_806 : vec4<f32> = vs_TEXCOORD6;
        let x_809 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_812 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_806.x, x_806.y) * vec2<f32>(x_809.z, x_809.w)) + -(vec2<f32>(x_812.x, x_812.y)));
        let x_816 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_816.x, x_816.x, x_816.y, x_816.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_819 : vec4<f32> = u_xlat4;
        let x_821 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_819.x, x_819.x, x_819.z, x_819.z) * vec4<f32>(x_821.x, x_821.x, x_821.z, x_821.z));
        let x_824 : vec4<f32> = u_xlat5;
        let x_828 : vec2<f32> = (vec2<f32>(x_824.y, x_824.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_829 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_829.x, x_828.x, x_829.z, x_828.y);
        let x_831 : vec4<f32> = u_xlat5;
        let x_834 : vec2<f32> = u_xlat47;
        let x_836 : vec2<f32> = ((vec2<f32>(x_831.x, x_831.z) * vec2<f32>(0.5f, 0.5f)) + -(x_834));
        let x_837 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_836.x, x_837.y, x_836.y, x_837.w);
        let x_839 : vec2<f32> = u_xlat47;
        let x_841 : vec2<f32> = (-(x_839) + vec2<f32>(1.0f, 1.0f));
        let x_842 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_841.x, x_841.y, x_842.z, x_842.w);
        let x_844 : vec2<f32> = u_xlat47;
        u_xlat49 = min(x_844, vec2<f32>(0.0f, 0.0f));
        let x_846 : vec2<f32> = u_xlat49;
        let x_848 : vec2<f32> = u_xlat49;
        let x_850 : vec4<f32> = u_xlat5;
        let x_852 : vec2<f32> = ((-(x_846) * x_848) + vec2<f32>(x_850.x, x_850.y));
        let x_853 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_852.x, x_852.y, x_853.z, x_853.w);
        let x_855 : vec2<f32> = u_xlat47;
        u_xlat49 = max(x_855, vec2<f32>(0.0f, 0.0f));
        let x_858 : vec2<f32> = u_xlat49;
        let x_860 : vec2<f32> = u_xlat49;
        let x_862 : vec4<f32> = u_xlat4;
        let x_864 : vec2<f32> = ((-(x_858) * x_860) + vec2<f32>(x_862.y, x_862.w));
        let x_865 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_864.x, x_865.y, x_864.y);
        let x_867 : vec4<f32> = u_xlat5;
        let x_870 : vec2<f32> = (vec2<f32>(x_867.x, x_867.y) + vec2<f32>(2.0f, 2.0f));
        let x_871 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_870.x, x_870.y, x_871.z, x_871.w);
        let x_873 : vec3<f32> = u_xlat26;
        let x_875 : vec2<f32> = (vec2<f32>(x_873.x, x_873.z) + vec2<f32>(2.0f, 2.0f));
        let x_876 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_876.x, x_875.x, x_876.z, x_875.y);
        let x_879 : f32 = u_xlat4.y;
        u_xlat7.z = (x_879 * 0.08163200318813323975f);
        let x_883 : vec4<f32> = u_xlat4;
        let x_886 : vec3<f32> = (vec3<f32>(x_883.z, x_883.x, x_883.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_887 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
        let x_889 : vec4<f32> = u_xlat5;
        let x_892 : vec2<f32> = (vec2<f32>(x_889.x, x_889.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_893 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_892.x, x_892.y, x_893.z, x_893.w);
        let x_896 : f32 = u_xlat8.y;
        u_xlat7.x = x_896;
        let x_898 : vec2<f32> = u_xlat47;
        let x_905 : vec2<f32> = ((vec2<f32>(x_898.x, x_898.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_906 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_906.x, x_905.x, x_906.z, x_905.y);
        let x_908 : vec2<f32> = u_xlat47;
        let x_912 : vec2<f32> = ((vec2<f32>(x_908.x, x_908.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_913 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_912.x, x_913.y, x_912.y, x_913.w);
        let x_916 : f32 = u_xlat4.x;
        u_xlat5.y = x_916;
        let x_919 : f32 = u_xlat6.y;
        u_xlat5.w = x_919;
        let x_921 : vec4<f32> = u_xlat5;
        let x_922 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_921 + x_922);
        let x_924 : vec2<f32> = u_xlat47;
        let x_927 : vec2<f32> = ((vec2<f32>(x_924.y, x_924.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_928 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_928.x, x_927.x, x_928.z, x_927.y);
        let x_930 : vec2<f32> = u_xlat47;
        let x_933 : vec2<f32> = ((vec2<f32>(x_930.y, x_930.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_934 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_933.x, x_934.y, x_933.y, x_934.w);
        let x_937 : f32 = u_xlat4.y;
        u_xlat6.y = x_937;
        let x_939 : vec4<f32> = u_xlat6;
        let x_940 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_939 + x_940);
        let x_942 : vec4<f32> = u_xlat5;
        let x_943 : vec4<f32> = u_xlat7;
        u_xlat5 = (x_942 / x_943);
        let x_945 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_945 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_951 : vec4<f32> = u_xlat6;
        let x_952 : vec4<f32> = u_xlat4;
        u_xlat6 = (x_951 / x_952);
        let x_954 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_954 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_956 : vec4<f32> = u_xlat5;
        let x_959 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_956.w, x_956.x, x_956.y, x_956.z) * vec4<f32>(x_959.x, x_959.x, x_959.x, x_959.x));
        let x_962 : vec4<f32> = u_xlat6;
        let x_965 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_962.x, x_962.w, x_962.y, x_962.z) * vec4<f32>(x_965.y, x_965.y, x_965.y, x_965.y));
        let x_968 : vec4<f32> = u_xlat5;
        let x_969 : vec3<f32> = vec3<f32>(x_968.y, x_968.z, x_968.w);
        let x_970 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_969.x, x_970.y, x_969.y, x_969.z);
        let x_973 : f32 = u_xlat6.x;
        u_xlat8.y = x_973;
        let x_975 : vec4<f32> = u_xlat3;
        let x_978 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_981 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_975.x, x_975.y, x_975.x, x_975.y) * vec4<f32>(x_978.x, x_978.y, x_978.x, x_978.y)) + vec4<f32>(x_981.x, x_981.y, x_981.z, x_981.y));
        let x_984 : vec4<f32> = u_xlat3;
        let x_987 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_990 : vec4<f32> = u_xlat8;
        u_xlat47 = ((vec2<f32>(x_984.x, x_984.y) * vec2<f32>(x_987.x, x_987.y)) + vec2<f32>(x_990.w, x_990.y));
        let x_994 : f32 = u_xlat8.y;
        u_xlat5.y = x_994;
        let x_997 : f32 = u_xlat6.z;
        u_xlat8.y = x_997;
        let x_999 : vec4<f32> = u_xlat3;
        let x_1002 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_1005 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_999.x, x_999.y, x_999.x, x_999.y) * vec4<f32>(x_1002.x, x_1002.y, x_1002.x, x_1002.y)) + vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1005.y));
        let x_1008 : vec4<f32> = u_xlat3;
        let x_1011 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_1014 : vec4<f32> = u_xlat8;
        let x_1016 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1011.x, x_1011.y)) + vec2<f32>(x_1014.w, x_1014.y));
        let x_1017 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1016.x, x_1016.y, x_1017.z, x_1017.w);
        let x_1020 : f32 = u_xlat8.y;
        u_xlat5.z = x_1020;
        let x_1023 : vec4<f32> = u_xlat3;
        let x_1026 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_1029 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1023.x, x_1023.y, x_1023.x, x_1023.y) * vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y)) + vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.z));
        let x_1033 : f32 = u_xlat6.w;
        u_xlat8.y = x_1033;
        let x_1036 : vec4<f32> = u_xlat3;
        let x_1039 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1036.x, x_1036.y, x_1036.x, x_1036.y) * vec4<f32>(x_1039.x, x_1039.y, x_1039.x, x_1039.y)) + vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1042.y));
        let x_1046 : vec4<f32> = u_xlat3;
        let x_1049 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_1052 : vec4<f32> = u_xlat8;
        let x_1054 : vec2<f32> = ((vec2<f32>(x_1046.x, x_1046.y) * vec2<f32>(x_1049.x, x_1049.y)) + vec2<f32>(x_1052.w, x_1052.y));
        let x_1055 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1054.x, x_1054.y, x_1055.z);
        let x_1058 : f32 = u_xlat8.y;
        u_xlat5.w = x_1058;
        let x_1061 : vec4<f32> = u_xlat3;
        let x_1064 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_1067 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(x_1064.x, x_1064.y)) + vec2<f32>(x_1067.x, x_1067.w));
        let x_1070 : vec4<f32> = u_xlat8;
        let x_1071 : vec3<f32> = vec3<f32>(x_1070.x, x_1070.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1071.x, x_1072.y, x_1071.y, x_1071.z);
        let x_1074 : vec4<f32> = u_xlat3;
        let x_1077 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.y) * vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y)) + vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1080.y));
        let x_1084 : vec4<f32> = u_xlat3;
        let x_1087 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_1090 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_1084.x, x_1084.y) * vec2<f32>(x_1087.x, x_1087.y)) + vec2<f32>(x_1090.w, x_1090.y));
        let x_1094 : f32 = u_xlat5.x;
        u_xlat6.x = x_1094;
        let x_1096 : vec4<f32> = u_xlat3;
        let x_1099 : vec4<f32> = x_206.x_MainLightShadowmapSize;
        let x_1102 : vec4<f32> = u_xlat6;
        let x_1104 : vec2<f32> = ((vec2<f32>(x_1096.x, x_1096.y) * vec2<f32>(x_1099.x, x_1099.y)) + vec2<f32>(x_1102.x, x_1102.y));
        let x_1105 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1104.x, x_1104.y, x_1105.z, x_1105.w);
        let x_1108 : vec4<f32> = u_xlat4;
        let x_1110 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1108.x, x_1108.x, x_1108.x, x_1108.x) * x_1110);
        let x_1113 : vec4<f32> = u_xlat4;
        let x_1115 : vec4<f32> = u_xlat7;
        u_xlat15 = (vec4<f32>(x_1113.y, x_1113.y, x_1113.y, x_1113.y) * x_1115);
        let x_1118 : vec4<f32> = u_xlat4;
        let x_1120 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1118.z, x_1118.z, x_1118.z, x_1118.z) * x_1120);
        let x_1122 : vec4<f32> = u_xlat4;
        let x_1124 : vec4<f32> = u_xlat7;
        u_xlat4 = (vec4<f32>(x_1122.w, x_1122.w, x_1122.w, x_1122.w) * x_1124);
        let x_1127 : vec4<f32> = u_xlat9;
        let x_1128 : vec2<f32> = vec2<f32>(x_1127.x, x_1127.y);
        let x_1130 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1128.x, x_1128.y, x_1130);
        let x_1137 : vec3<f32> = txVec13;
        let x_1139 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1137.xy, x_1137.z);
        u_xlat5.x = x_1139;
        let x_1142 : vec4<f32> = u_xlat9;
        let x_1143 : vec2<f32> = vec2<f32>(x_1142.z, x_1142.w);
        let x_1145 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1143.x, x_1143.y, x_1145);
        let x_1153 : vec3<f32> = txVec14;
        let x_1155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1153.xy, x_1153.z);
        u_xlat71 = x_1155;
        let x_1156 : f32 = u_xlat71;
        let x_1158 : f32 = u_xlat14.y;
        u_xlat71 = (x_1156 * x_1158);
        let x_1161 : f32 = u_xlat14.x;
        let x_1163 : f32 = u_xlat5.x;
        let x_1165 : f32 = u_xlat71;
        u_xlat5.x = ((x_1161 * x_1163) + x_1165);
        let x_1169 : vec2<f32> = u_xlat47;
        let x_1171 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1169.x, x_1169.y, x_1171);
        let x_1178 : vec3<f32> = txVec15;
        let x_1180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1178.xy, x_1178.z);
        u_xlat47.x = x_1180;
        let x_1183 : f32 = u_xlat14.z;
        let x_1185 : f32 = u_xlat47.x;
        let x_1188 : f32 = u_xlat5.x;
        u_xlat47.x = ((x_1183 * x_1185) + x_1188);
        let x_1192 : vec4<f32> = u_xlat12;
        let x_1193 : vec2<f32> = vec2<f32>(x_1192.x, x_1192.y);
        let x_1195 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1193.x, x_1193.y, x_1195);
        let x_1203 : vec3<f32> = txVec16;
        let x_1205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1203.xy, x_1203.z);
        u_xlat69 = x_1205;
        let x_1207 : f32 = u_xlat14.w;
        let x_1208 : f32 = u_xlat69;
        let x_1211 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1207 * x_1208) + x_1211);
        let x_1215 : vec4<f32> = u_xlat10;
        let x_1216 : vec2<f32> = vec2<f32>(x_1215.x, x_1215.y);
        let x_1218 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1216.x, x_1216.y, x_1218);
        let x_1225 : vec3<f32> = txVec17;
        let x_1227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1225.xy, x_1225.z);
        u_xlat69 = x_1227;
        let x_1229 : f32 = u_xlat15.x;
        let x_1230 : f32 = u_xlat69;
        let x_1233 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1229 * x_1230) + x_1233);
        let x_1237 : vec4<f32> = u_xlat10;
        let x_1238 : vec2<f32> = vec2<f32>(x_1237.z, x_1237.w);
        let x_1240 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec18;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1247.xy, x_1247.z);
        u_xlat69 = x_1249;
        let x_1251 : f32 = u_xlat15.y;
        let x_1252 : f32 = u_xlat69;
        let x_1255 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1251 * x_1252) + x_1255);
        let x_1259 : vec4<f32> = u_xlat11;
        let x_1260 : vec2<f32> = vec2<f32>(x_1259.x, x_1259.y);
        let x_1262 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
        let x_1269 : vec3<f32> = txVec19;
        let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1269.xy, x_1269.z);
        u_xlat69 = x_1271;
        let x_1273 : f32 = u_xlat15.z;
        let x_1274 : f32 = u_xlat69;
        let x_1277 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1273 * x_1274) + x_1277);
        let x_1281 : vec4<f32> = u_xlat12;
        let x_1282 : vec2<f32> = vec2<f32>(x_1281.z, x_1281.w);
        let x_1284 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1282.x, x_1282.y, x_1284);
        let x_1291 : vec3<f32> = txVec20;
        let x_1293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1291.xy, x_1291.z);
        u_xlat69 = x_1293;
        let x_1295 : f32 = u_xlat15.w;
        let x_1296 : f32 = u_xlat69;
        let x_1299 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1295 * x_1296) + x_1299);
        let x_1303 : vec4<f32> = u_xlat13;
        let x_1304 : vec2<f32> = vec2<f32>(x_1303.x, x_1303.y);
        let x_1306 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec21;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1313.xy, x_1313.z);
        u_xlat69 = x_1315;
        let x_1317 : f32 = u_xlat16.x;
        let x_1318 : f32 = u_xlat69;
        let x_1321 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1317 * x_1318) + x_1321);
        let x_1325 : vec4<f32> = u_xlat13;
        let x_1326 : vec2<f32> = vec2<f32>(x_1325.z, x_1325.w);
        let x_1328 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1326.x, x_1326.y, x_1328);
        let x_1335 : vec3<f32> = txVec22;
        let x_1337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1335.xy, x_1335.z);
        u_xlat69 = x_1337;
        let x_1339 : f32 = u_xlat16.y;
        let x_1340 : f32 = u_xlat69;
        let x_1343 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1339 * x_1340) + x_1343);
        let x_1347 : vec3<f32> = u_xlat27;
        let x_1348 : vec2<f32> = vec2<f32>(x_1347.x, x_1347.y);
        let x_1350 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1348.x, x_1348.y, x_1350);
        let x_1357 : vec3<f32> = txVec23;
        let x_1359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1357.xy, x_1357.z);
        u_xlat69 = x_1359;
        let x_1361 : f32 = u_xlat16.z;
        let x_1362 : f32 = u_xlat69;
        let x_1365 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1361 * x_1362) + x_1365);
        let x_1369 : vec2<f32> = u_xlat55;
        let x_1371 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec24;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1378.xy, x_1378.z);
        u_xlat69 = x_1380;
        let x_1382 : f32 = u_xlat16.w;
        let x_1383 : f32 = u_xlat69;
        let x_1386 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1382 * x_1383) + x_1386);
        let x_1390 : vec4<f32> = u_xlat8;
        let x_1391 : vec2<f32> = vec2<f32>(x_1390.x, x_1390.y);
        let x_1393 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec25;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1400.xy, x_1400.z);
        u_xlat69 = x_1402;
        let x_1404 : f32 = u_xlat4.x;
        let x_1405 : f32 = u_xlat69;
        let x_1408 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1404 * x_1405) + x_1408);
        let x_1412 : vec4<f32> = u_xlat8;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.z, x_1412.w);
        let x_1415 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec26;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1422.xy, x_1422.z);
        u_xlat69 = x_1424;
        let x_1426 : f32 = u_xlat4.y;
        let x_1427 : f32 = u_xlat69;
        let x_1430 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1426 * x_1427) + x_1430);
        let x_1434 : vec2<f32> = u_xlat50;
        let x_1436 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec27;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat69 = x_1445;
        let x_1447 : f32 = u_xlat4.z;
        let x_1448 : f32 = u_xlat69;
        let x_1451 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1447 * x_1448) + x_1451);
        let x_1455 : vec4<f32> = u_xlat3;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
        let x_1458 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec28;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
        u_xlat3.x = x_1467;
        let x_1470 : f32 = u_xlat4.w;
        let x_1472 : f32 = u_xlat3.x;
        let x_1475 : f32 = u_xlat47.x;
        u_xlat67 = ((x_1470 * x_1472) + x_1475);
      }
    }
  } else {
    let x_1479 : vec4<f32> = vs_TEXCOORD6;
    let x_1480 : vec2<f32> = vec2<f32>(x_1479.x, x_1479.y);
    let x_1482 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
    let x_1489 : vec3<f32> = txVec29;
    let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1489.xy, x_1489.z);
    u_xlat67 = x_1491;
  }
  let x_1493 : f32 = x_206.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1493) + 1.0f);
  let x_1497 : f32 = u_xlat67;
  let x_1499 : f32 = x_206.x_MainLightShadowParams.x;
  let x_1502 : f32 = u_xlat3.x;
  u_xlat67 = ((x_1497 * x_1499) + x_1502);
  let x_1505 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (0.0f >= x_1505);
  let x_1509 : f32 = vs_TEXCOORD6.z;
  u_xlatb25 = (x_1509 >= 1.0f);
  let x_1511 : bool = u_xlatb25;
  let x_1512 : bool = u_xlatb3;
  u_xlatb3 = (x_1511 | x_1512);
  let x_1514 : bool = u_xlatb3;
  let x_1515 : f32 = u_xlat67;
  u_xlat67 = select(x_1515, 1.0f, x_1514);
  let x_1517 : vec3<f32> = vs_TEXCOORD1;
  let x_1521 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1523 : vec3<f32> = (x_1517 + -(x_1521));
  let x_1524 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1523.x, x_1523.y, x_1523.z, x_1524.w);
  let x_1526 : vec4<f32> = u_xlat3;
  let x_1528 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_1526.x, x_1526.y, x_1526.z), vec3<f32>(x_1528.x, x_1528.y, x_1528.z));
  let x_1533 : f32 = u_xlat3.x;
  let x_1535 : f32 = x_206.x_MainLightShadowParams.z;
  let x_1538 : f32 = x_206.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_1533 * x_1535) + x_1538);
  let x_1542 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1542, 0.0f, 1.0f);
  let x_1545 : f32 = u_xlat67;
  u_xlat47.x = (-(x_1545) + 1.0f);
  let x_1550 : f32 = u_xlat25.x;
  let x_1552 : f32 = u_xlat47.x;
  let x_1554 : f32 = u_xlat67;
  u_xlat67 = ((x_1550 * x_1552) + x_1554);
  let x_1556 : f32 = u_xlat67;
  let x_1558 : f32 = x_119.unity_LightData.z;
  u_xlat67 = (x_1556 * x_1558);
  let x_1560 : f32 = u_xlat67;
  let x_1563 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat25 = (vec3<f32>(x_1560, x_1560, x_1560) * vec3<f32>(x_1563.x, x_1563.y, x_1563.z));
  let x_1566 : vec4<f32> = u_xlat1;
  let x_1569 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat67 = dot(vec3<f32>(x_1566.x, x_1566.y, x_1566.z), vec3<f32>(x_1569.x, x_1569.y, x_1569.z));
  let x_1572 : f32 = u_xlat67;
  u_xlat67 = clamp(x_1572, 0.0f, 1.0f);
  let x_1574 : f32 = u_xlat67;
  let x_1576 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1574, x_1574, x_1574) * x_1576);
  let x_1578 : vec4<f32> = u_xlat0;
  let x_1580 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1578.y, x_1578.z, x_1578.w) * x_1580);
  let x_1583 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1585 : f32 = x_119.unity_LightData.y;
  u_xlat67 = min(x_1583, x_1585);
  let x_1589 : f32 = u_xlat67;
  u_xlatu67 = bitcast<u32>(i32(x_1589));
  let x_1593 : f32 = u_xlat3.x;
  let x_1596 : f32 = x_206.x_AdditionalShadowFadeParams.x;
  let x_1599 : f32 = x_206.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1593 * x_1596) + x_1599);
  let x_1603 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1603, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1616 : u32 = u_xlatu_loop_1;
    let x_1617 : u32 = u_xlatu67;
    if ((x_1616 < x_1617)) {
    } else {
      break;
    }
    let x_1620 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1620 >> 2u);
    let x_1624 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_1624 & 3u));
    let x_1627 : u32 = u_xlatu5;
    let x_1630 : vec4<f32> = x_119.unity_LightIndices[bitcast<i32>(x_1627)];
    let x_1640 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1645 : vec4<u32> = indexable[x_1640];
    u_xlat5.x = dot(x_1630, bitcast<vec4<f32>>(x_1645));
    let x_1651 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1651);
    let x_1653 : vec3<f32> = vs_TEXCOORD1;
    let x_1664 : i32 = u_xlati5;
    let x_1666 : vec4<f32> = x_1663.x_AdditionalLightsPosition[x_1664];
    let x_1669 : i32 = u_xlati5;
    let x_1671 : vec4<f32> = x_1663.x_AdditionalLightsPosition[x_1669];
    u_xlat27 = ((-(x_1653) * vec3<f32>(x_1666.w, x_1666.w, x_1666.w)) + vec3<f32>(x_1671.x, x_1671.y, x_1671.z));
    let x_1674 : vec3<f32> = u_xlat27;
    let x_1675 : vec3<f32> = u_xlat27;
    u_xlat6.x = dot(x_1674, x_1675);
    let x_1679 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1679, 0.00006103515625f);
    let x_1685 : f32 = u_xlat6.x;
    u_xlat28.x = inverseSqrt(x_1685);
    let x_1688 : vec3<f32> = u_xlat27;
    let x_1689 : vec3<f32> = u_xlat28;
    u_xlat27 = (x_1688 * vec3<f32>(x_1689.x, x_1689.x, x_1689.x));
    let x_1693 : f32 = u_xlat6.x;
    u_xlat28.x = (1.0f / x_1693);
    let x_1697 : f32 = u_xlat6.x;
    let x_1698 : i32 = u_xlati5;
    let x_1700 : f32 = x_1663.x_AdditionalLightsAttenuation[x_1698].x;
    u_xlat6.x = (x_1697 * x_1700);
    let x_1704 : f32 = u_xlat6.x;
    let x_1707 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1704) * x_1707) + 1.0f);
    let x_1712 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1712, 0.0f);
    let x_1716 : f32 = u_xlat6.x;
    let x_1718 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1716 * x_1718);
    let x_1722 : f32 = u_xlat6.x;
    let x_1724 : f32 = u_xlat28.x;
    u_xlat6.x = (x_1722 * x_1724);
    let x_1727 : i32 = u_xlati5;
    let x_1729 : vec4<f32> = x_1663.x_AdditionalLightsSpotDir[x_1727];
    let x_1731 : vec3<f32> = u_xlat27;
    u_xlat28.x = dot(vec3<f32>(x_1729.x, x_1729.y, x_1729.z), x_1731);
    let x_1735 : f32 = u_xlat28.x;
    let x_1736 : i32 = u_xlati5;
    let x_1738 : f32 = x_1663.x_AdditionalLightsAttenuation[x_1736].z;
    let x_1740 : i32 = u_xlati5;
    let x_1742 : f32 = x_1663.x_AdditionalLightsAttenuation[x_1740].w;
    u_xlat28.x = ((x_1735 * x_1738) + x_1742);
    let x_1746 : f32 = u_xlat28.x;
    u_xlat28.x = clamp(x_1746, 0.0f, 1.0f);
    let x_1750 : f32 = u_xlat28.x;
    let x_1752 : f32 = u_xlat28.x;
    u_xlat28.x = (x_1750 * x_1752);
    let x_1756 : f32 = u_xlat28.x;
    let x_1758 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1756 * x_1758);
    let x_1763 : i32 = u_xlati5;
    let x_1765 : f32 = x_206.x_AdditionalShadowParams[x_1763].w;
    u_xlati28 = i32(x_1765);
    let x_1768 : i32 = u_xlati28;
    u_xlatb50 = (x_1768 >= 0i);
    let x_1770 : bool = u_xlatb50;
    if (x_1770) {
      let x_1774 : i32 = u_xlati5;
      let x_1776 : f32 = x_206.x_AdditionalShadowParams[x_1774].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1776, x_1776, x_1776, x_1776))));
      let x_1781 : bool = u_xlatb50;
      if (x_1781) {
        let x_1786 : vec3<f32> = u_xlat27;
        let x_1789 : vec3<f32> = u_xlat27;
        let x_1792 : vec4<bool> = (abs(vec4<f32>(x_1786.z, x_1786.z, x_1786.y, x_1786.z)) >= abs(vec4<f32>(x_1789.x, x_1789.y, x_1789.x, x_1789.x)));
        let x_1794 : vec3<bool> = vec3<bool>(x_1792.x, x_1792.y, x_1792.z);
        let x_1795 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1794.x, x_1794.y, x_1794.z, x_1795.w);
        let x_1798 : bool = u_xlatb7.y;
        let x_1800 : bool = u_xlatb7.x;
        u_xlatb50 = (x_1798 & x_1800);
        let x_1802 : vec3<f32> = u_xlat27;
        let x_1805 : vec4<bool> = (-(vec4<f32>(x_1802.z, x_1802.y, x_1802.z, x_1802.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1806 : vec3<bool> = vec3<bool>(x_1805.x, x_1805.y, x_1805.w);
        let x_1807 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1806.x, x_1806.y, x_1807.z, x_1806.z);
        let x_1810 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1810);
        let x_1816 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1816);
        let x_1822 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1822);
        let x_1825 : bool = u_xlatb7.z;
        if (x_1825) {
          let x_1831 : f32 = u_xlat7.y;
          x_1827 = x_1831;
        } else {
          let x_1833 : f32 = u_xlat72;
          x_1827 = x_1833;
        }
        let x_1834 : f32 = x_1827;
        u_xlat72 = x_1834;
        let x_1835 : bool = u_xlatb50;
        if (x_1835) {
          let x_1840 : f32 = u_xlat7.x;
          x_1836 = x_1840;
        } else {
          let x_1842 : f32 = u_xlat72;
          x_1836 = x_1842;
        }
        let x_1843 : f32 = x_1836;
        u_xlat50.x = x_1843;
        let x_1845 : i32 = u_xlati5;
        let x_1847 : f32 = x_206.x_AdditionalShadowParams[x_1845].w;
        u_xlat72 = trunc(x_1847);
        let x_1850 : f32 = u_xlat50.x;
        let x_1851 : f32 = u_xlat72;
        u_xlat50.x = (x_1850 + x_1851);
        let x_1855 : f32 = u_xlat50.x;
        u_xlati28 = i32(x_1855);
      }
      let x_1857 : i32 = u_xlati28;
      u_xlati28 = (x_1857 << bitcast<u32>(2i));
      let x_1859 : vec3<f32> = vs_TEXCOORD1;
      let x_1862 : i32 = u_xlati28;
      let x_1865 : i32 = u_xlati28;
      let x_1869 : vec4<f32> = x_206.x_AdditionalLightsWorldToShadow[((x_1862 + 1i) / 4i)][((x_1865 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1859.y, x_1859.y, x_1859.y, x_1859.y) * x_1869);
      let x_1871 : i32 = u_xlati28;
      let x_1873 : i32 = u_xlati28;
      let x_1876 : vec4<f32> = x_206.x_AdditionalLightsWorldToShadow[(x_1871 / 4i)][(x_1873 % 4i)];
      let x_1877 : vec3<f32> = vs_TEXCOORD1;
      let x_1880 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1876 * vec4<f32>(x_1877.x, x_1877.x, x_1877.x, x_1877.x)) + x_1880);
      let x_1882 : i32 = u_xlati28;
      let x_1885 : i32 = u_xlati28;
      let x_1889 : vec4<f32> = x_206.x_AdditionalLightsWorldToShadow[((x_1882 + 2i) / 4i)][((x_1885 + 2i) % 4i)];
      let x_1890 : vec3<f32> = vs_TEXCOORD1;
      let x_1893 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1889 * vec4<f32>(x_1890.z, x_1890.z, x_1890.z, x_1890.z)) + x_1893);
      let x_1895 : vec4<f32> = u_xlat7;
      let x_1896 : i32 = u_xlati28;
      let x_1899 : i32 = u_xlati28;
      let x_1903 : vec4<f32> = x_206.x_AdditionalLightsWorldToShadow[((x_1896 + 3i) / 4i)][((x_1899 + 3i) % 4i)];
      u_xlat7 = (x_1895 + x_1903);
      let x_1905 : vec4<f32> = u_xlat7;
      let x_1907 : vec4<f32> = u_xlat7;
      u_xlat28 = (vec3<f32>(x_1905.x, x_1905.y, x_1905.z) / vec3<f32>(x_1907.w, x_1907.w, x_1907.w));
      let x_1910 : i32 = u_xlati5;
      let x_1912 : f32 = x_206.x_AdditionalShadowParams[x_1910].y;
      u_xlatb7.x = (0.0f < x_1912);
      let x_1916 : bool = u_xlatb7.x;
      if (x_1916) {
        let x_1919 : i32 = u_xlati5;
        let x_1921 : f32 = x_206.x_AdditionalShadowParams[x_1919].y;
        u_xlatb7.x = (1.0f == x_1921);
        let x_1925 : bool = u_xlatb7.x;
        if (x_1925) {
          let x_1928 : vec3<f32> = u_xlat28;
          let x_1932 : vec4<f32> = x_206.x_AdditionalShadowOffset0;
          u_xlat7 = (vec4<f32>(x_1928.x, x_1928.y, x_1928.x, x_1928.y) + x_1932);
          let x_1935 : vec4<f32> = u_xlat7;
          let x_1936 : vec2<f32> = vec2<f32>(x_1935.x, x_1935.y);
          let x_1938 : f32 = u_xlat28.z;
          txVec30 = vec3<f32>(x_1936.x, x_1936.y, x_1938);
          let x_1946 : vec3<f32> = txVec30;
          let x_1948 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1946.xy, x_1946.z);
          u_xlat8.x = x_1948;
          let x_1951 : vec4<f32> = u_xlat7;
          let x_1952 : vec2<f32> = vec2<f32>(x_1951.z, x_1951.w);
          let x_1954 : f32 = u_xlat28.z;
          txVec31 = vec3<f32>(x_1952.x, x_1952.y, x_1954);
          let x_1961 : vec3<f32> = txVec31;
          let x_1963 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1961.xy, x_1961.z);
          u_xlat8.y = x_1963;
          let x_1965 : vec3<f32> = u_xlat28;
          let x_1969 : vec4<f32> = x_206.x_AdditionalShadowOffset1;
          u_xlat7 = (vec4<f32>(x_1965.x, x_1965.y, x_1965.x, x_1965.y) + x_1969);
          let x_1972 : vec4<f32> = u_xlat7;
          let x_1973 : vec2<f32> = vec2<f32>(x_1972.x, x_1972.y);
          let x_1975 : f32 = u_xlat28.z;
          txVec32 = vec3<f32>(x_1973.x, x_1973.y, x_1975);
          let x_1982 : vec3<f32> = txVec32;
          let x_1984 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1982.xy, x_1982.z);
          u_xlat8.z = x_1984;
          let x_1987 : vec4<f32> = u_xlat7;
          let x_1988 : vec2<f32> = vec2<f32>(x_1987.z, x_1987.w);
          let x_1990 : f32 = u_xlat28.z;
          txVec33 = vec3<f32>(x_1988.x, x_1988.y, x_1990);
          let x_1997 : vec3<f32> = txVec33;
          let x_1999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1997.xy, x_1997.z);
          u_xlat8.w = x_1999;
          let x_2001 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(x_2001, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2006 : i32 = u_xlati5;
          let x_2008 : f32 = x_206.x_AdditionalShadowParams[x_2006].y;
          u_xlatb29 = (2.0f == x_2008);
          let x_2010 : bool = u_xlatb29;
          if (x_2010) {
            let x_2014 : vec3<f32> = u_xlat28;
            let x_2018 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            u_xlat29 = ((vec2<f32>(x_2014.x, x_2014.y) * vec2<f32>(x_2018.z, x_2018.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2022 : vec2<f32> = u_xlat29;
            u_xlat29 = floor(x_2022);
            let x_2024 : vec3<f32> = u_xlat28;
            let x_2027 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2030 : vec2<f32> = u_xlat29;
            let x_2032 : vec2<f32> = ((vec2<f32>(x_2024.x, x_2024.y) * vec2<f32>(x_2027.z, x_2027.w)) + -(x_2030));
            let x_2033 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2032.x, x_2032.y, x_2033.z, x_2033.w);
            let x_2035 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2035.x, x_2035.x, x_2035.y, x_2035.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2038 : vec4<f32> = u_xlat9;
            let x_2040 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2038.x, x_2038.x, x_2038.z, x_2038.z) * vec4<f32>(x_2040.x, x_2040.x, x_2040.z, x_2040.z));
            let x_2044 : vec4<f32> = u_xlat10;
            u_xlat52 = (vec2<f32>(x_2044.y, x_2044.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2047 : vec4<f32> = u_xlat10;
            let x_2050 : vec4<f32> = u_xlat8;
            let x_2053 : vec2<f32> = ((vec2<f32>(x_2047.x, x_2047.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2050.x, x_2050.y)));
            let x_2054 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2053.x, x_2054.y, x_2053.y, x_2054.w);
            let x_2056 : vec4<f32> = u_xlat8;
            let x_2059 : vec2<f32> = (-(vec2<f32>(x_2056.x, x_2056.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2060 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2059.x, x_2059.y, x_2060.z, x_2060.w);
            let x_2063 : vec4<f32> = u_xlat8;
            u_xlat54 = min(vec2<f32>(x_2063.x, x_2063.y), vec2<f32>(0.0f, 0.0f));
            let x_2066 : vec2<f32> = u_xlat54;
            let x_2068 : vec2<f32> = u_xlat54;
            let x_2070 : vec4<f32> = u_xlat10;
            u_xlat54 = ((-(x_2066) * x_2068) + vec2<f32>(x_2070.x, x_2070.y));
            let x_2073 : vec4<f32> = u_xlat8;
            let x_2075 : vec2<f32> = max(vec2<f32>(x_2073.x, x_2073.y), vec2<f32>(0.0f, 0.0f));
            let x_2076 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2075.x, x_2075.y, x_2076.z, x_2076.w);
            let x_2078 : vec4<f32> = u_xlat8;
            let x_2081 : vec4<f32> = u_xlat8;
            let x_2084 : vec4<f32> = u_xlat9;
            let x_2086 : vec2<f32> = ((-(vec2<f32>(x_2078.x, x_2078.y)) * vec2<f32>(x_2081.x, x_2081.y)) + vec2<f32>(x_2084.y, x_2084.w));
            let x_2087 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2086.x, x_2086.y, x_2087.z, x_2087.w);
            let x_2089 : vec2<f32> = u_xlat54;
            u_xlat54 = (x_2089 + vec2<f32>(1.0f, 1.0f));
            let x_2091 : vec4<f32> = u_xlat8;
            let x_2093 : vec2<f32> = (vec2<f32>(x_2091.x, x_2091.y) + vec2<f32>(1.0f, 1.0f));
            let x_2094 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2093.x, x_2093.y, x_2094.z, x_2094.w);
            let x_2096 : vec4<f32> = u_xlat9;
            let x_2098 : vec2<f32> = (vec2<f32>(x_2096.x, x_2096.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2099 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2098.x, x_2098.y, x_2099.z, x_2099.w);
            let x_2101 : vec4<f32> = u_xlat10;
            let x_2103 : vec2<f32> = (vec2<f32>(x_2101.x, x_2101.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2104 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2103.x, x_2103.y, x_2104.z, x_2104.w);
            let x_2106 : vec2<f32> = u_xlat54;
            let x_2107 : vec2<f32> = (x_2106 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2108 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2107.x, x_2107.y, x_2108.z, x_2108.w);
            let x_2110 : vec4<f32> = u_xlat8;
            let x_2112 : vec2<f32> = (vec2<f32>(x_2110.x, x_2110.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2113 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2112.x, x_2112.y, x_2113.z, x_2113.w);
            let x_2115 : vec4<f32> = u_xlat9;
            let x_2117 : vec2<f32> = (vec2<f32>(x_2115.y, x_2115.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2118 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2117.x, x_2117.y, x_2118.z, x_2118.w);
            let x_2121 : f32 = u_xlat10.x;
            u_xlat11.z = x_2121;
            let x_2124 : f32 = u_xlat8.x;
            u_xlat11.w = x_2124;
            let x_2127 : f32 = u_xlat13.x;
            u_xlat12.z = x_2127;
            let x_2130 : f32 = u_xlat52.x;
            u_xlat12.w = x_2130;
            let x_2132 : vec4<f32> = u_xlat11;
            let x_2134 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2132.z, x_2132.w, x_2132.x, x_2132.z) + vec4<f32>(x_2134.z, x_2134.w, x_2134.x, x_2134.z));
            let x_2138 : f32 = u_xlat11.y;
            u_xlat10.z = x_2138;
            let x_2141 : f32 = u_xlat8.y;
            u_xlat10.w = x_2141;
            let x_2144 : f32 = u_xlat12.y;
            u_xlat13.z = x_2144;
            let x_2147 : f32 = u_xlat52.y;
            u_xlat13.w = x_2147;
            let x_2149 : vec4<f32> = u_xlat10;
            let x_2151 : vec4<f32> = u_xlat13;
            let x_2153 : vec3<f32> = (vec3<f32>(x_2149.z, x_2149.y, x_2149.w) + vec3<f32>(x_2151.z, x_2151.y, x_2151.w));
            let x_2154 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2153.x, x_2153.y, x_2153.z, x_2154.w);
            let x_2156 : vec4<f32> = u_xlat12;
            let x_2158 : vec4<f32> = u_xlat9;
            let x_2160 : vec3<f32> = (vec3<f32>(x_2156.x, x_2156.z, x_2156.w) / vec3<f32>(x_2158.z, x_2158.w, x_2158.y));
            let x_2161 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2160.x, x_2160.y, x_2160.z, x_2161.w);
            let x_2163 : vec4<f32> = u_xlat10;
            let x_2165 : vec3<f32> = (vec3<f32>(x_2163.x, x_2163.y, x_2163.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2166 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2165.x, x_2165.y, x_2165.z, x_2166.w);
            let x_2168 : vec4<f32> = u_xlat13;
            let x_2170 : vec4<f32> = u_xlat8;
            let x_2172 : vec3<f32> = (vec3<f32>(x_2168.z, x_2168.y, x_2168.w) / vec3<f32>(x_2170.x, x_2170.y, x_2170.z));
            let x_2173 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2172.x, x_2172.y, x_2172.z, x_2173.w);
            let x_2175 : vec4<f32> = u_xlat11;
            let x_2177 : vec3<f32> = (vec3<f32>(x_2175.x, x_2175.y, x_2175.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2178 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2177.x, x_2177.y, x_2177.z, x_2178.w);
            let x_2180 : vec4<f32> = u_xlat10;
            let x_2183 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2185 : vec3<f32> = (vec3<f32>(x_2180.y, x_2180.x, x_2180.z) * vec3<f32>(x_2183.x, x_2183.x, x_2183.x));
            let x_2186 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2185.x, x_2185.y, x_2185.z, x_2186.w);
            let x_2188 : vec4<f32> = u_xlat11;
            let x_2191 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2193 : vec3<f32> = (vec3<f32>(x_2188.x, x_2188.y, x_2188.z) * vec3<f32>(x_2191.y, x_2191.y, x_2191.y));
            let x_2194 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2193.x, x_2193.y, x_2193.z, x_2194.w);
            let x_2197 : f32 = u_xlat11.x;
            u_xlat10.w = x_2197;
            let x_2199 : vec2<f32> = u_xlat29;
            let x_2202 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2205 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2199.x, x_2199.y, x_2199.x, x_2199.y) * vec4<f32>(x_2202.x, x_2202.y, x_2202.x, x_2202.y)) + vec4<f32>(x_2205.y, x_2205.w, x_2205.x, x_2205.w));
            let x_2208 : vec2<f32> = u_xlat29;
            let x_2210 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2213 : vec4<f32> = u_xlat10;
            let x_2215 : vec2<f32> = ((x_2208 * vec2<f32>(x_2210.x, x_2210.y)) + vec2<f32>(x_2213.z, x_2213.w));
            let x_2216 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2215.x, x_2215.y, x_2216.z, x_2216.w);
            let x_2219 : f32 = u_xlat10.y;
            u_xlat11.w = x_2219;
            let x_2221 : vec4<f32> = u_xlat11;
            let x_2222 : vec2<f32> = vec2<f32>(x_2221.y, x_2221.z);
            let x_2223 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2223.x, x_2222.x, x_2223.z, x_2222.y);
            let x_2225 : vec2<f32> = u_xlat29;
            let x_2228 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2231 : vec4<f32> = u_xlat10;
            u_xlat14 = ((vec4<f32>(x_2225.x, x_2225.y, x_2225.x, x_2225.y) * vec4<f32>(x_2228.x, x_2228.y, x_2228.x, x_2228.y)) + vec4<f32>(x_2231.x, x_2231.y, x_2231.z, x_2231.y));
            let x_2234 : vec2<f32> = u_xlat29;
            let x_2237 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2240 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2234.x, x_2234.y, x_2234.x, x_2234.y) * vec4<f32>(x_2237.x, x_2237.y, x_2237.x, x_2237.y)) + vec4<f32>(x_2240.w, x_2240.y, x_2240.w, x_2240.z));
            let x_2243 : vec2<f32> = u_xlat29;
            let x_2246 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2249 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2243.x, x_2243.y, x_2243.x, x_2243.y) * vec4<f32>(x_2246.x, x_2246.y, x_2246.x, x_2246.y)) + vec4<f32>(x_2249.x, x_2249.w, x_2249.z, x_2249.w));
            let x_2252 : vec4<f32> = u_xlat8;
            let x_2254 : vec4<f32> = u_xlat9;
            u_xlat15 = (vec4<f32>(x_2252.x, x_2252.x, x_2252.x, x_2252.y) * vec4<f32>(x_2254.z, x_2254.w, x_2254.y, x_2254.z));
            let x_2257 : vec4<f32> = u_xlat8;
            let x_2259 : vec4<f32> = u_xlat9;
            u_xlat16 = (vec4<f32>(x_2257.y, x_2257.y, x_2257.z, x_2257.z) * x_2259);
            let x_2262 : f32 = u_xlat8.z;
            let x_2264 : f32 = u_xlat9.y;
            u_xlat29.x = (x_2262 * x_2264);
            let x_2268 : vec4<f32> = u_xlat12;
            let x_2269 : vec2<f32> = vec2<f32>(x_2268.x, x_2268.y);
            let x_2271 : f32 = u_xlat28.z;
            txVec34 = vec3<f32>(x_2269.x, x_2269.y, x_2271);
            let x_2279 : vec3<f32> = txVec34;
            let x_2281 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2279.xy, x_2279.z);
            u_xlat51 = x_2281;
            let x_2283 : vec4<f32> = u_xlat12;
            let x_2284 : vec2<f32> = vec2<f32>(x_2283.z, x_2283.w);
            let x_2286 : f32 = u_xlat28.z;
            txVec35 = vec3<f32>(x_2284.x, x_2284.y, x_2286);
            let x_2294 : vec3<f32> = txVec35;
            let x_2296 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2294.xy, x_2294.z);
            u_xlat73 = x_2296;
            let x_2297 : f32 = u_xlat73;
            let x_2299 : f32 = u_xlat15.y;
            u_xlat73 = (x_2297 * x_2299);
            let x_2302 : f32 = u_xlat15.x;
            let x_2303 : f32 = u_xlat51;
            let x_2305 : f32 = u_xlat73;
            u_xlat51 = ((x_2302 * x_2303) + x_2305);
            let x_2308 : vec4<f32> = u_xlat13;
            let x_2309 : vec2<f32> = vec2<f32>(x_2308.x, x_2308.y);
            let x_2311 : f32 = u_xlat28.z;
            txVec36 = vec3<f32>(x_2309.x, x_2309.y, x_2311);
            let x_2318 : vec3<f32> = txVec36;
            let x_2320 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2318.xy, x_2318.z);
            u_xlat73 = x_2320;
            let x_2322 : f32 = u_xlat15.z;
            let x_2323 : f32 = u_xlat73;
            let x_2325 : f32 = u_xlat51;
            u_xlat51 = ((x_2322 * x_2323) + x_2325);
            let x_2328 : vec4<f32> = u_xlat11;
            let x_2329 : vec2<f32> = vec2<f32>(x_2328.x, x_2328.y);
            let x_2331 : f32 = u_xlat28.z;
            txVec37 = vec3<f32>(x_2329.x, x_2329.y, x_2331);
            let x_2338 : vec3<f32> = txVec37;
            let x_2340 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2338.xy, x_2338.z);
            u_xlat73 = x_2340;
            let x_2342 : f32 = u_xlat15.w;
            let x_2343 : f32 = u_xlat73;
            let x_2345 : f32 = u_xlat51;
            u_xlat51 = ((x_2342 * x_2343) + x_2345);
            let x_2348 : vec4<f32> = u_xlat14;
            let x_2349 : vec2<f32> = vec2<f32>(x_2348.x, x_2348.y);
            let x_2351 : f32 = u_xlat28.z;
            txVec38 = vec3<f32>(x_2349.x, x_2349.y, x_2351);
            let x_2358 : vec3<f32> = txVec38;
            let x_2360 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2358.xy, x_2358.z);
            u_xlat73 = x_2360;
            let x_2362 : f32 = u_xlat16.x;
            let x_2363 : f32 = u_xlat73;
            let x_2365 : f32 = u_xlat51;
            u_xlat51 = ((x_2362 * x_2363) + x_2365);
            let x_2368 : vec4<f32> = u_xlat14;
            let x_2369 : vec2<f32> = vec2<f32>(x_2368.z, x_2368.w);
            let x_2371 : f32 = u_xlat28.z;
            txVec39 = vec3<f32>(x_2369.x, x_2369.y, x_2371);
            let x_2378 : vec3<f32> = txVec39;
            let x_2380 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2378.xy, x_2378.z);
            u_xlat73 = x_2380;
            let x_2382 : f32 = u_xlat16.y;
            let x_2383 : f32 = u_xlat73;
            let x_2385 : f32 = u_xlat51;
            u_xlat51 = ((x_2382 * x_2383) + x_2385);
            let x_2388 : vec4<f32> = u_xlat11;
            let x_2389 : vec2<f32> = vec2<f32>(x_2388.z, x_2388.w);
            let x_2391 : f32 = u_xlat28.z;
            txVec40 = vec3<f32>(x_2389.x, x_2389.y, x_2391);
            let x_2398 : vec3<f32> = txVec40;
            let x_2400 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2398.xy, x_2398.z);
            u_xlat73 = x_2400;
            let x_2402 : f32 = u_xlat16.z;
            let x_2403 : f32 = u_xlat73;
            let x_2405 : f32 = u_xlat51;
            u_xlat51 = ((x_2402 * x_2403) + x_2405);
            let x_2408 : vec4<f32> = u_xlat10;
            let x_2409 : vec2<f32> = vec2<f32>(x_2408.x, x_2408.y);
            let x_2411 : f32 = u_xlat28.z;
            txVec41 = vec3<f32>(x_2409.x, x_2409.y, x_2411);
            let x_2418 : vec3<f32> = txVec41;
            let x_2420 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2418.xy, x_2418.z);
            u_xlat73 = x_2420;
            let x_2422 : f32 = u_xlat16.w;
            let x_2423 : f32 = u_xlat73;
            let x_2425 : f32 = u_xlat51;
            u_xlat51 = ((x_2422 * x_2423) + x_2425);
            let x_2428 : vec4<f32> = u_xlat10;
            let x_2429 : vec2<f32> = vec2<f32>(x_2428.z, x_2428.w);
            let x_2431 : f32 = u_xlat28.z;
            txVec42 = vec3<f32>(x_2429.x, x_2429.y, x_2431);
            let x_2438 : vec3<f32> = txVec42;
            let x_2440 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2438.xy, x_2438.z);
            u_xlat73 = x_2440;
            let x_2442 : f32 = u_xlat29.x;
            let x_2443 : f32 = u_xlat73;
            let x_2445 : f32 = u_xlat51;
            u_xlat7.x = ((x_2442 * x_2443) + x_2445);
          } else {
            let x_2449 : vec3<f32> = u_xlat28;
            let x_2452 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            u_xlat29 = ((vec2<f32>(x_2449.x, x_2449.y) * vec2<f32>(x_2452.z, x_2452.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2456 : vec2<f32> = u_xlat29;
            u_xlat29 = floor(x_2456);
            let x_2458 : vec3<f32> = u_xlat28;
            let x_2461 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2464 : vec2<f32> = u_xlat29;
            let x_2466 : vec2<f32> = ((vec2<f32>(x_2458.x, x_2458.y) * vec2<f32>(x_2461.z, x_2461.w)) + -(x_2464));
            let x_2467 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2466.x, x_2466.y, x_2467.z, x_2467.w);
            let x_2469 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2469.x, x_2469.x, x_2469.y, x_2469.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2472 : vec4<f32> = u_xlat9;
            let x_2474 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2472.x, x_2472.x, x_2472.z, x_2472.z) * vec4<f32>(x_2474.x, x_2474.x, x_2474.z, x_2474.z));
            let x_2477 : vec4<f32> = u_xlat10;
            let x_2479 : vec2<f32> = (vec2<f32>(x_2477.y, x_2477.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2480 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2480.x, x_2479.x, x_2480.z, x_2479.y);
            let x_2482 : vec4<f32> = u_xlat10;
            let x_2485 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2482.x, x_2482.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2485.x, x_2485.y)));
            let x_2489 : vec4<f32> = u_xlat8;
            let x_2492 : vec2<f32> = (-(vec2<f32>(x_2489.x, x_2489.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2493 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2492.x, x_2493.y, x_2492.y, x_2493.w);
            let x_2495 : vec4<f32> = u_xlat8;
            let x_2497 : vec2<f32> = min(vec2<f32>(x_2495.x, x_2495.y), vec2<f32>(0.0f, 0.0f));
            let x_2498 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2497.x, x_2497.y, x_2498.z, x_2498.w);
            let x_2500 : vec4<f32> = u_xlat10;
            let x_2503 : vec4<f32> = u_xlat10;
            let x_2506 : vec4<f32> = u_xlat9;
            let x_2508 : vec2<f32> = ((-(vec2<f32>(x_2500.x, x_2500.y)) * vec2<f32>(x_2503.x, x_2503.y)) + vec2<f32>(x_2506.x, x_2506.z));
            let x_2509 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2508.x, x_2509.y, x_2508.y, x_2509.w);
            let x_2511 : vec4<f32> = u_xlat8;
            let x_2513 : vec2<f32> = max(vec2<f32>(x_2511.x, x_2511.y), vec2<f32>(0.0f, 0.0f));
            let x_2514 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2513.x, x_2513.y, x_2514.z, x_2514.w);
            let x_2516 : vec4<f32> = u_xlat10;
            let x_2519 : vec4<f32> = u_xlat10;
            let x_2522 : vec4<f32> = u_xlat9;
            let x_2524 : vec2<f32> = ((-(vec2<f32>(x_2516.x, x_2516.y)) * vec2<f32>(x_2519.x, x_2519.y)) + vec2<f32>(x_2522.y, x_2522.w));
            let x_2525 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2525.x, x_2524.x, x_2525.z, x_2524.y);
            let x_2527 : vec4<f32> = u_xlat9;
            u_xlat9 = (x_2527 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2531 : f32 = u_xlat9.y;
            u_xlat10.z = (x_2531 * 0.08163200318813323975f);
            let x_2534 : vec2<f32> = u_xlat52;
            let x_2536 : vec2<f32> = (vec2<f32>(x_2534.y, x_2534.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2537 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2536.x, x_2536.y, x_2537.z, x_2537.w);
            let x_2539 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2539.x, x_2539.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2543 : f32 = u_xlat9.w;
            u_xlat12.z = (x_2543 * 0.08163200318813323975f);
            let x_2547 : f32 = u_xlat12.y;
            u_xlat10.x = x_2547;
            let x_2549 : vec4<f32> = u_xlat8;
            let x_2552 : vec2<f32> = ((vec2<f32>(x_2549.x, x_2549.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2553 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2553.x, x_2552.x, x_2553.z, x_2552.y);
            let x_2555 : vec4<f32> = u_xlat8;
            let x_2558 : vec2<f32> = ((vec2<f32>(x_2555.x, x_2555.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2559 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2558.x, x_2559.y, x_2558.y, x_2559.w);
            let x_2562 : f32 = u_xlat52.x;
            u_xlat9.y = x_2562;
            let x_2565 : f32 = u_xlat11.y;
            u_xlat9.w = x_2565;
            let x_2567 : vec4<f32> = u_xlat9;
            let x_2568 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2567 + x_2568);
            let x_2570 : vec4<f32> = u_xlat8;
            let x_2573 : vec2<f32> = ((vec2<f32>(x_2570.y, x_2570.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2574 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2574.x, x_2573.x, x_2574.z, x_2573.y);
            let x_2576 : vec4<f32> = u_xlat8;
            let x_2579 : vec2<f32> = ((vec2<f32>(x_2576.y, x_2576.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2580 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2579.x, x_2580.y, x_2579.y, x_2580.w);
            let x_2583 : f32 = u_xlat52.y;
            u_xlat11.y = x_2583;
            let x_2585 : vec4<f32> = u_xlat11;
            let x_2586 : vec4<f32> = u_xlat12;
            u_xlat8 = (x_2585 + x_2586);
            let x_2588 : vec4<f32> = u_xlat9;
            let x_2589 : vec4<f32> = u_xlat10;
            u_xlat9 = (x_2588 / x_2589);
            let x_2591 : vec4<f32> = u_xlat9;
            u_xlat9 = (x_2591 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2593 : vec4<f32> = u_xlat11;
            let x_2594 : vec4<f32> = u_xlat8;
            u_xlat11 = (x_2593 / x_2594);
            let x_2596 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2596 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2598 : vec4<f32> = u_xlat9;
            let x_2601 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            u_xlat9 = (vec4<f32>(x_2598.w, x_2598.x, x_2598.y, x_2598.z) * vec4<f32>(x_2601.x, x_2601.x, x_2601.x, x_2601.x));
            let x_2604 : vec4<f32> = u_xlat11;
            let x_2607 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2604.x, x_2604.w, x_2604.y, x_2604.z) * vec4<f32>(x_2607.y, x_2607.y, x_2607.y, x_2607.y));
            let x_2610 : vec4<f32> = u_xlat9;
            let x_2611 : vec3<f32> = vec3<f32>(x_2610.y, x_2610.z, x_2610.w);
            let x_2612 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2611.x, x_2612.y, x_2611.y, x_2611.z);
            let x_2615 : f32 = u_xlat11.x;
            u_xlat12.y = x_2615;
            let x_2617 : vec2<f32> = u_xlat29;
            let x_2620 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2623 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2617.x, x_2617.y, x_2617.x, x_2617.y) * vec4<f32>(x_2620.x, x_2620.y, x_2620.x, x_2620.y)) + vec4<f32>(x_2623.x, x_2623.y, x_2623.z, x_2623.y));
            let x_2626 : vec2<f32> = u_xlat29;
            let x_2628 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2631 : vec4<f32> = u_xlat12;
            let x_2633 : vec2<f32> = ((x_2626 * vec2<f32>(x_2628.x, x_2628.y)) + vec2<f32>(x_2631.w, x_2631.y));
            let x_2634 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2633.x, x_2633.y, x_2634.z, x_2634.w);
            let x_2637 : f32 = u_xlat12.y;
            u_xlat9.y = x_2637;
            let x_2640 : f32 = u_xlat11.z;
            u_xlat12.y = x_2640;
            let x_2642 : vec2<f32> = u_xlat29;
            let x_2645 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2648 : vec4<f32> = u_xlat12;
            u_xlat15 = ((vec4<f32>(x_2642.x, x_2642.y, x_2642.x, x_2642.y) * vec4<f32>(x_2645.x, x_2645.y, x_2645.x, x_2645.y)) + vec4<f32>(x_2648.x, x_2648.y, x_2648.z, x_2648.y));
            let x_2652 : vec2<f32> = u_xlat29;
            let x_2654 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2657 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2652 * vec2<f32>(x_2654.x, x_2654.y)) + vec2<f32>(x_2657.w, x_2657.y));
            let x_2661 : f32 = u_xlat12.y;
            u_xlat9.z = x_2661;
            let x_2663 : vec2<f32> = u_xlat29;
            let x_2666 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2669 : vec4<f32> = u_xlat9;
            u_xlat16 = ((vec4<f32>(x_2663.x, x_2663.y, x_2663.x, x_2663.y) * vec4<f32>(x_2666.x, x_2666.y, x_2666.x, x_2666.y)) + vec4<f32>(x_2669.x, x_2669.y, x_2669.x, x_2669.z));
            let x_2673 : f32 = u_xlat11.w;
            u_xlat12.y = x_2673;
            let x_2676 : vec2<f32> = u_xlat29;
            let x_2679 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2682 : vec4<f32> = u_xlat12;
            u_xlat17 = ((vec4<f32>(x_2676.x, x_2676.y, x_2676.x, x_2676.y) * vec4<f32>(x_2679.x, x_2679.y, x_2679.x, x_2679.y)) + vec4<f32>(x_2682.x, x_2682.y, x_2682.z, x_2682.y));
            let x_2686 : vec2<f32> = u_xlat29;
            let x_2688 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2691 : vec4<f32> = u_xlat12;
            u_xlat31 = ((x_2686 * vec2<f32>(x_2688.x, x_2688.y)) + vec2<f32>(x_2691.w, x_2691.y));
            let x_2695 : f32 = u_xlat12.y;
            u_xlat9.w = x_2695;
            let x_2698 : vec2<f32> = u_xlat29;
            let x_2700 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2703 : vec4<f32> = u_xlat9;
            u_xlat18 = ((x_2698 * vec2<f32>(x_2700.x, x_2700.y)) + vec2<f32>(x_2703.x, x_2703.w));
            let x_2706 : vec4<f32> = u_xlat12;
            let x_2707 : vec3<f32> = vec3<f32>(x_2706.x, x_2706.z, x_2706.w);
            let x_2708 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2707.x, x_2708.y, x_2707.y, x_2707.z);
            let x_2710 : vec2<f32> = u_xlat29;
            let x_2713 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2716 : vec4<f32> = u_xlat11;
            u_xlat12 = ((vec4<f32>(x_2710.x, x_2710.y, x_2710.x, x_2710.y) * vec4<f32>(x_2713.x, x_2713.y, x_2713.x, x_2713.y)) + vec4<f32>(x_2716.x, x_2716.y, x_2716.z, x_2716.y));
            let x_2719 : vec2<f32> = u_xlat29;
            let x_2721 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2724 : vec4<f32> = u_xlat11;
            u_xlat55 = ((x_2719 * vec2<f32>(x_2721.x, x_2721.y)) + vec2<f32>(x_2724.w, x_2724.y));
            let x_2728 : f32 = u_xlat9.x;
            u_xlat11.x = x_2728;
            let x_2730 : vec2<f32> = u_xlat29;
            let x_2732 : vec4<f32> = x_206.x_AdditionalShadowmapSize;
            let x_2735 : vec4<f32> = u_xlat11;
            u_xlat29 = ((x_2730 * vec2<f32>(x_2732.x, x_2732.y)) + vec2<f32>(x_2735.x, x_2735.y));
            let x_2739 : vec4<f32> = u_xlat8;
            let x_2741 : vec4<f32> = u_xlat10;
            u_xlat19 = (vec4<f32>(x_2739.x, x_2739.x, x_2739.x, x_2739.x) * x_2741);
            let x_2744 : vec4<f32> = u_xlat8;
            let x_2746 : vec4<f32> = u_xlat10;
            u_xlat20 = (vec4<f32>(x_2744.y, x_2744.y, x_2744.y, x_2744.y) * x_2746);
            let x_2749 : vec4<f32> = u_xlat8;
            let x_2751 : vec4<f32> = u_xlat10;
            u_xlat21 = (vec4<f32>(x_2749.z, x_2749.z, x_2749.z, x_2749.z) * x_2751);
            let x_2753 : vec4<f32> = u_xlat8;
            let x_2755 : vec4<f32> = u_xlat10;
            u_xlat8 = (vec4<f32>(x_2753.w, x_2753.w, x_2753.w, x_2753.w) * x_2755);
            let x_2758 : vec4<f32> = u_xlat13;
            let x_2759 : vec2<f32> = vec2<f32>(x_2758.x, x_2758.y);
            let x_2761 : f32 = u_xlat28.z;
            txVec43 = vec3<f32>(x_2759.x, x_2759.y, x_2761);
            let x_2768 : vec3<f32> = txVec43;
            let x_2770 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2768.xy, x_2768.z);
            u_xlat73 = x_2770;
            let x_2772 : vec4<f32> = u_xlat13;
            let x_2773 : vec2<f32> = vec2<f32>(x_2772.z, x_2772.w);
            let x_2775 : f32 = u_xlat28.z;
            txVec44 = vec3<f32>(x_2773.x, x_2773.y, x_2775);
            let x_2782 : vec3<f32> = txVec44;
            let x_2784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2782.xy, x_2782.z);
            u_xlat9.x = x_2784;
            let x_2787 : f32 = u_xlat9.x;
            let x_2789 : f32 = u_xlat19.y;
            u_xlat9.x = (x_2787 * x_2789);
            let x_2793 : f32 = u_xlat19.x;
            let x_2794 : f32 = u_xlat73;
            let x_2797 : f32 = u_xlat9.x;
            u_xlat73 = ((x_2793 * x_2794) + x_2797);
            let x_2800 : vec4<f32> = u_xlat14;
            let x_2801 : vec2<f32> = vec2<f32>(x_2800.x, x_2800.y);
            let x_2803 : f32 = u_xlat28.z;
            txVec45 = vec3<f32>(x_2801.x, x_2801.y, x_2803);
            let x_2810 : vec3<f32> = txVec45;
            let x_2812 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2810.xy, x_2810.z);
            u_xlat9.x = x_2812;
            let x_2815 : f32 = u_xlat19.z;
            let x_2817 : f32 = u_xlat9.x;
            let x_2819 : f32 = u_xlat73;
            u_xlat73 = ((x_2815 * x_2817) + x_2819);
            let x_2822 : vec4<f32> = u_xlat16;
            let x_2823 : vec2<f32> = vec2<f32>(x_2822.x, x_2822.y);
            let x_2825 : f32 = u_xlat28.z;
            txVec46 = vec3<f32>(x_2823.x, x_2823.y, x_2825);
            let x_2832 : vec3<f32> = txVec46;
            let x_2834 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2832.xy, x_2832.z);
            u_xlat9.x = x_2834;
            let x_2837 : f32 = u_xlat19.w;
            let x_2839 : f32 = u_xlat9.x;
            let x_2841 : f32 = u_xlat73;
            u_xlat73 = ((x_2837 * x_2839) + x_2841);
            let x_2844 : vec4<f32> = u_xlat15;
            let x_2845 : vec2<f32> = vec2<f32>(x_2844.x, x_2844.y);
            let x_2847 : f32 = u_xlat28.z;
            txVec47 = vec3<f32>(x_2845.x, x_2845.y, x_2847);
            let x_2854 : vec3<f32> = txVec47;
            let x_2856 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2854.xy, x_2854.z);
            u_xlat9.x = x_2856;
            let x_2859 : f32 = u_xlat20.x;
            let x_2861 : f32 = u_xlat9.x;
            let x_2863 : f32 = u_xlat73;
            u_xlat73 = ((x_2859 * x_2861) + x_2863);
            let x_2866 : vec4<f32> = u_xlat15;
            let x_2867 : vec2<f32> = vec2<f32>(x_2866.z, x_2866.w);
            let x_2869 : f32 = u_xlat28.z;
            txVec48 = vec3<f32>(x_2867.x, x_2867.y, x_2869);
            let x_2876 : vec3<f32> = txVec48;
            let x_2878 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2876.xy, x_2876.z);
            u_xlat9.x = x_2878;
            let x_2881 : f32 = u_xlat20.y;
            let x_2883 : f32 = u_xlat9.x;
            let x_2885 : f32 = u_xlat73;
            u_xlat73 = ((x_2881 * x_2883) + x_2885);
            let x_2888 : vec2<f32> = u_xlat58;
            let x_2890 : f32 = u_xlat28.z;
            txVec49 = vec3<f32>(x_2888.x, x_2888.y, x_2890);
            let x_2897 : vec3<f32> = txVec49;
            let x_2899 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2897.xy, x_2897.z);
            u_xlat9.x = x_2899;
            let x_2902 : f32 = u_xlat20.z;
            let x_2904 : f32 = u_xlat9.x;
            let x_2906 : f32 = u_xlat73;
            u_xlat73 = ((x_2902 * x_2904) + x_2906);
            let x_2909 : vec4<f32> = u_xlat16;
            let x_2910 : vec2<f32> = vec2<f32>(x_2909.z, x_2909.w);
            let x_2912 : f32 = u_xlat28.z;
            txVec50 = vec3<f32>(x_2910.x, x_2910.y, x_2912);
            let x_2919 : vec3<f32> = txVec50;
            let x_2921 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2919.xy, x_2919.z);
            u_xlat9.x = x_2921;
            let x_2924 : f32 = u_xlat20.w;
            let x_2926 : f32 = u_xlat9.x;
            let x_2928 : f32 = u_xlat73;
            u_xlat73 = ((x_2924 * x_2926) + x_2928);
            let x_2931 : vec4<f32> = u_xlat17;
            let x_2932 : vec2<f32> = vec2<f32>(x_2931.x, x_2931.y);
            let x_2934 : f32 = u_xlat28.z;
            txVec51 = vec3<f32>(x_2932.x, x_2932.y, x_2934);
            let x_2941 : vec3<f32> = txVec51;
            let x_2943 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2941.xy, x_2941.z);
            u_xlat9.x = x_2943;
            let x_2946 : f32 = u_xlat21.x;
            let x_2948 : f32 = u_xlat9.x;
            let x_2950 : f32 = u_xlat73;
            u_xlat73 = ((x_2946 * x_2948) + x_2950);
            let x_2953 : vec4<f32> = u_xlat17;
            let x_2954 : vec2<f32> = vec2<f32>(x_2953.z, x_2953.w);
            let x_2956 : f32 = u_xlat28.z;
            txVec52 = vec3<f32>(x_2954.x, x_2954.y, x_2956);
            let x_2963 : vec3<f32> = txVec52;
            let x_2965 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2963.xy, x_2963.z);
            u_xlat9.x = x_2965;
            let x_2968 : f32 = u_xlat21.y;
            let x_2970 : f32 = u_xlat9.x;
            let x_2972 : f32 = u_xlat73;
            u_xlat73 = ((x_2968 * x_2970) + x_2972);
            let x_2975 : vec2<f32> = u_xlat31;
            let x_2977 : f32 = u_xlat28.z;
            txVec53 = vec3<f32>(x_2975.x, x_2975.y, x_2977);
            let x_2984 : vec3<f32> = txVec53;
            let x_2986 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2984.xy, x_2984.z);
            u_xlat9.x = x_2986;
            let x_2989 : f32 = u_xlat21.z;
            let x_2991 : f32 = u_xlat9.x;
            let x_2993 : f32 = u_xlat73;
            u_xlat73 = ((x_2989 * x_2991) + x_2993);
            let x_2996 : vec2<f32> = u_xlat18;
            let x_2998 : f32 = u_xlat28.z;
            txVec54 = vec3<f32>(x_2996.x, x_2996.y, x_2998);
            let x_3005 : vec3<f32> = txVec54;
            let x_3007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3005.xy, x_3005.z);
            u_xlat9.x = x_3007;
            let x_3010 : f32 = u_xlat21.w;
            let x_3012 : f32 = u_xlat9.x;
            let x_3014 : f32 = u_xlat73;
            u_xlat73 = ((x_3010 * x_3012) + x_3014);
            let x_3017 : vec4<f32> = u_xlat12;
            let x_3018 : vec2<f32> = vec2<f32>(x_3017.x, x_3017.y);
            let x_3020 : f32 = u_xlat28.z;
            txVec55 = vec3<f32>(x_3018.x, x_3018.y, x_3020);
            let x_3027 : vec3<f32> = txVec55;
            let x_3029 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3027.xy, x_3027.z);
            u_xlat9.x = x_3029;
            let x_3032 : f32 = u_xlat8.x;
            let x_3034 : f32 = u_xlat9.x;
            let x_3036 : f32 = u_xlat73;
            u_xlat73 = ((x_3032 * x_3034) + x_3036);
            let x_3039 : vec4<f32> = u_xlat12;
            let x_3040 : vec2<f32> = vec2<f32>(x_3039.z, x_3039.w);
            let x_3042 : f32 = u_xlat28.z;
            txVec56 = vec3<f32>(x_3040.x, x_3040.y, x_3042);
            let x_3049 : vec3<f32> = txVec56;
            let x_3051 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3049.xy, x_3049.z);
            u_xlat8.x = x_3051;
            let x_3054 : f32 = u_xlat8.y;
            let x_3056 : f32 = u_xlat8.x;
            let x_3058 : f32 = u_xlat73;
            u_xlat73 = ((x_3054 * x_3056) + x_3058);
            let x_3061 : vec2<f32> = u_xlat55;
            let x_3063 : f32 = u_xlat28.z;
            txVec57 = vec3<f32>(x_3061.x, x_3061.y, x_3063);
            let x_3070 : vec3<f32> = txVec57;
            let x_3072 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3070.xy, x_3070.z);
            u_xlat8.x = x_3072;
            let x_3075 : f32 = u_xlat8.z;
            let x_3077 : f32 = u_xlat8.x;
            let x_3079 : f32 = u_xlat73;
            u_xlat73 = ((x_3075 * x_3077) + x_3079);
            let x_3082 : vec2<f32> = u_xlat29;
            let x_3084 : f32 = u_xlat28.z;
            txVec58 = vec3<f32>(x_3082.x, x_3082.y, x_3084);
            let x_3091 : vec3<f32> = txVec58;
            let x_3093 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3091.xy, x_3091.z);
            u_xlat29.x = x_3093;
            let x_3096 : f32 = u_xlat8.w;
            let x_3098 : f32 = u_xlat29.x;
            let x_3100 : f32 = u_xlat73;
            u_xlat7.x = ((x_3096 * x_3098) + x_3100);
          }
        }
      } else {
        let x_3105 : vec3<f32> = u_xlat28;
        let x_3106 : vec2<f32> = vec2<f32>(x_3105.x, x_3105.y);
        let x_3108 : f32 = u_xlat28.z;
        txVec59 = vec3<f32>(x_3106.x, x_3106.y, x_3108);
        let x_3115 : vec3<f32> = txVec59;
        let x_3117 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3115.xy, x_3115.z);
        u_xlat7.x = x_3117;
      }
      let x_3119 : i32 = u_xlati5;
      let x_3121 : f32 = x_206.x_AdditionalShadowParams[x_3119].x;
      u_xlat28.x = (1.0f + -(x_3121));
      let x_3126 : f32 = u_xlat7.x;
      let x_3127 : i32 = u_xlati5;
      let x_3129 : f32 = x_206.x_AdditionalShadowParams[x_3127].x;
      let x_3132 : f32 = u_xlat28.x;
      u_xlat28.x = ((x_3126 * x_3129) + x_3132);
      let x_3136 : f32 = u_xlat28.z;
      u_xlatb50 = (0.0f >= x_3136);
      let x_3140 : f32 = u_xlat28.z;
      u_xlatb72 = (x_3140 >= 1.0f);
      let x_3142 : bool = u_xlatb72;
      let x_3143 : bool = u_xlatb50;
      u_xlatb50 = (x_3142 | x_3143);
      let x_3145 : bool = u_xlatb50;
      if (x_3145) {
        x_3146 = 1.0f;
      } else {
        let x_3151 : f32 = u_xlat28.x;
        x_3146 = x_3151;
      }
      let x_3152 : f32 = x_3146;
      u_xlat28.x = x_3152;
    } else {
      u_xlat28.x = 1.0f;
    }
    let x_3157 : f32 = u_xlat28.x;
    u_xlat50.x = (-(x_3157) + 1.0f);
    let x_3162 : f32 = u_xlat3.x;
    let x_3164 : f32 = u_xlat50.x;
    let x_3167 : f32 = u_xlat28.x;
    u_xlat28.x = ((x_3162 * x_3164) + x_3167);
    let x_3171 : f32 = u_xlat28.x;
    let x_3173 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3171 * x_3173);
    let x_3176 : vec4<f32> = u_xlat6;
    let x_3178 : i32 = u_xlati5;
    let x_3180 : vec4<f32> = x_1663.x_AdditionalLightsColor[x_3178];
    let x_3182 : vec3<f32> = (vec3<f32>(x_3176.x, x_3176.x, x_3176.x) * vec3<f32>(x_3180.x, x_3180.y, x_3180.z));
    let x_3183 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3182.x, x_3182.y, x_3182.z, x_3183.w);
    let x_3185 : vec4<f32> = u_xlat1;
    let x_3187 : vec3<f32> = u_xlat27;
    u_xlat5.x = dot(vec3<f32>(x_3185.x, x_3185.y, x_3185.z), x_3187);
    let x_3191 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_3191, 0.0f, 1.0f);
    let x_3194 : vec4<f32> = u_xlat5;
    let x_3196 : vec4<f32> = u_xlat6;
    let x_3198 : vec3<f32> = (vec3<f32>(x_3194.x, x_3194.x, x_3194.x) * vec3<f32>(x_3196.x, x_3196.y, x_3196.z));
    let x_3199 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3198.x, x_3198.y, x_3198.z, x_3199.w);
    let x_3201 : vec4<f32> = u_xlat5;
    let x_3203 : vec4<f32> = u_xlat0;
    let x_3206 : vec4<f32> = u_xlat4;
    let x_3208 : vec3<f32> = ((vec3<f32>(x_3201.x, x_3201.y, x_3201.z) * vec3<f32>(x_3203.y, x_3203.z, x_3203.w)) + vec3<f32>(x_3206.x, x_3206.y, x_3206.z));
    let x_3209 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_3208.x, x_3208.y, x_3208.z, x_3209.w);

    continuing {
      let x_3211 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3211 + bitcast<u32>(1i));
    }
  }
  let x_3214 : vec3<f32> = u_xlat24;
  let x_3215 : vec4<f32> = u_xlat0;
  let x_3218 : vec3<f32> = u_xlat25;
  u_xlat22 = ((x_3214 * vec3<f32>(x_3215.y, x_3215.z, x_3215.w)) + x_3218);
  let x_3220 : vec4<f32> = u_xlat4;
  let x_3222 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_3220.x, x_3220.y, x_3220.z) + x_3222);
  let x_3224 : f32 = u_xlat2;
  let x_3225 : f32 = u_xlat2;
  u_xlat1.x = (x_3224 * -(x_3225));
  let x_3230 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3230);
  let x_3233 : vec3<f32> = u_xlat22;
  let x_3235 : vec4<f32> = x_28.unity_FogColor;
  u_xlat22 = (x_3233 + -(vec3<f32>(x_3235.x, x_3235.y, x_3235.z)));
  let x_3241 : vec4<f32> = u_xlat1;
  let x_3243 : vec3<f32> = u_xlat22;
  let x_3246 : vec4<f32> = x_28.unity_FogColor;
  let x_3248 : vec3<f32> = ((vec3<f32>(x_3241.x, x_3241.x, x_3241.x) * x_3243) + vec3<f32>(x_3246.x, x_3246.y, x_3246.z));
  let x_3249 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3248.x, x_3248.y, x_3248.z, x_3249.w);
  let x_3253 : f32 = x_41.x_Surface;
  u_xlatb22 = (x_3253 == 1.0f);
  let x_3255 : bool = u_xlatb22;
  if (x_3255) {
    let x_3260 : f32 = u_xlat0.x;
    x_3256 = x_3260;
  } else {
    x_3256 = 1.0f;
  }
  let x_3262 : f32 = x_3256;
  SV_Target0.w = x_3262;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


