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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat67 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlatb68 : bool;

@group(1) @binding(4) var<uniform> x_181 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb3 : bool;

var<private> u_xlat47 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

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

@group(1) @binding(2) var<uniform> x_1536 : UnityPerDraw;

var<private> u_xlatu68 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1642 : AdditionalLights;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlati28 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat72 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_1806 : f32;
  var x_1815 : f32;
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
  var x_3125 : f32;
  var x_3235 : f32;
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
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  let x_53 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_52, x_53);
  let x_58 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_58);
  let x_61 : vec3<f32> = u_xlat1;
  let x_63 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_61.x, x_61.x, x_61.x) * x_63);
  let x_70 : f32 = vs_TEXCOORD1.y;
  let x_74 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat67 = (x_70 * x_74);
  let x_77 : f32 = x_28.unity_MatrixV[0i].z;
  let x_79 : f32 = vs_TEXCOORD1.x;
  let x_81 : f32 = u_xlat67;
  u_xlat67 = ((x_77 * x_79) + x_81);
  let x_85 : f32 = x_28.unity_MatrixV[2i].z;
  let x_87 : f32 = vs_TEXCOORD1.z;
  let x_89 : f32 = u_xlat67;
  u_xlat67 = ((x_85 * x_87) + x_89);
  let x_91 : f32 = u_xlat67;
  let x_94 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat67 = (x_91 + x_94);
  let x_96 : f32 = u_xlat67;
  let x_100 : f32 = x_28.x_ProjectionParams.y;
  u_xlat67 = (-(x_96) + -(x_100));
  let x_103 : f32 = u_xlat67;
  u_xlat67 = max(x_103, 0.0f);
  let x_106 : f32 = u_xlat67;
  let x_109 : f32 = x_28.unity_FogParams.x;
  u_xlat67 = (x_106 * x_109);
  let x_118 : vec2<f32> = vs_TEXCOORD7;
  let x_120 : f32 = x_28.x_GlobalMipBias.x;
  let x_121 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_118, x_120);
  u_xlat2 = x_121;
  let x_127 : vec2<f32> = vs_TEXCOORD7;
  let x_129 : f32 = x_28.x_GlobalMipBias.x;
  let x_130 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_127, x_129);
  let x_131 : vec3<f32> = vec3<f32>(x_130.x, x_130.y, x_130.z);
  let x_132 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat2;
  let x_138 : vec3<f32> = (vec3<f32>(x_134.x, x_134.y, x_134.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_141 : vec3<f32> = u_xlat1;
  let x_142 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_141, vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_147 : f32 = u_xlat2.x;
  u_xlat2.x = (x_147 + 0.5f);
  let x_151 : vec4<f32> = u_xlat2;
  let x_153 : vec4<f32> = u_xlat3;
  let x_155 : vec3<f32> = (vec3<f32>(x_151.x, x_151.x, x_151.x) * vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_161 : f32 = u_xlat2.w;
  u_xlat68 = max(x_161, 0.00009999999747378752f);
  let x_164 : vec4<f32> = u_xlat2;
  let x_166 : f32 = u_xlat68;
  let x_168 : vec3<f32> = (vec3<f32>(x_164.x, x_164.y, x_164.z) / vec3<f32>(x_166, x_166, x_166));
  let x_169 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_183 : f32 = x_181.x_MainLightShadowParams.y;
  u_xlatb68 = (0.0f < x_183);
  let x_185 : bool = u_xlatb68;
  if (x_185) {
    let x_189 : f32 = x_181.x_MainLightShadowParams.y;
    u_xlatb68 = (x_189 == 1.0f);
    let x_192 : bool = u_xlatb68;
    if (x_192) {
      let x_197 : vec4<f32> = vs_TEXCOORD6;
      let x_200 : vec4<f32> = x_181.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_197.x, x_197.y, x_197.x, x_197.y) + x_200);
      let x_204 : vec4<f32> = u_xlat3;
      let x_205 : vec2<f32> = vec2<f32>(x_204.x, x_204.y);
      let x_207 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_205.x, x_205.y, x_207);
      let x_220 : vec3<f32> = txVec0;
      let x_222 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_220.xy, x_220.z);
      u_xlat4.x = x_222;
      let x_225 : vec4<f32> = u_xlat3;
      let x_226 : vec2<f32> = vec2<f32>(x_225.z, x_225.w);
      let x_228 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_226.x, x_226.y, x_228);
      let x_235 : vec3<f32> = txVec1;
      let x_237 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_235.xy, x_235.z);
      u_xlat4.y = x_237;
      let x_239 : vec4<f32> = vs_TEXCOORD6;
      let x_243 : vec4<f32> = x_181.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_239.x, x_239.y, x_239.x, x_239.y) + x_243);
      let x_246 : vec4<f32> = u_xlat3;
      let x_247 : vec2<f32> = vec2<f32>(x_246.x, x_246.y);
      let x_249 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_247.x, x_247.y, x_249);
      let x_256 : vec3<f32> = txVec2;
      let x_258 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_256.xy, x_256.z);
      u_xlat4.z = x_258;
      let x_261 : vec4<f32> = u_xlat3;
      let x_262 : vec2<f32> = vec2<f32>(x_261.z, x_261.w);
      let x_264 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_262.x, x_262.y, x_264);
      let x_271 : vec3<f32> = txVec3;
      let x_273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_271.xy, x_271.z);
      u_xlat4.w = x_273;
      let x_275 : vec4<f32> = u_xlat4;
      u_xlat68 = dot(x_275, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_282 : f32 = x_181.x_MainLightShadowParams.y;
      u_xlatb3 = (x_282 == 2.0f);
      let x_285 : bool = u_xlatb3;
      if (x_285) {
        let x_288 : vec4<f32> = vs_TEXCOORD6;
        let x_292 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_296 : vec2<f32> = ((vec2<f32>(x_288.x, x_288.y) * vec2<f32>(x_292.z, x_292.w)) + vec2<f32>(0.5f, 0.5f));
        let x_297 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_296.x, x_296.y, x_297.z, x_297.w);
        let x_299 : vec4<f32> = u_xlat3;
        let x_301 : vec2<f32> = floor(vec2<f32>(x_299.x, x_299.y));
        let x_302 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_301.x, x_301.y, x_302.z, x_302.w);
        let x_306 : vec4<f32> = vs_TEXCOORD6;
        let x_309 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_312 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_306.x, x_306.y) * vec2<f32>(x_309.z, x_309.w)) + -(vec2<f32>(x_312.x, x_312.y)));
        let x_316 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_316.x, x_316.x, x_316.y, x_316.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_321 : vec4<f32> = u_xlat4;
        let x_323 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_321.x, x_321.x, x_321.z, x_321.z) * vec4<f32>(x_323.x, x_323.x, x_323.z, x_323.z));
        let x_326 : vec4<f32> = u_xlat5;
        let x_330 : vec2<f32> = (vec2<f32>(x_326.y, x_326.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_331 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_330.x, x_331.y, x_330.y, x_331.w);
        let x_333 : vec4<f32> = u_xlat5;
        let x_336 : vec2<f32> = u_xlat47;
        let x_338 : vec2<f32> = ((vec2<f32>(x_333.x, x_333.z) * vec2<f32>(0.5f, 0.5f)) + -(x_336));
        let x_339 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_338.x, x_338.y, x_339.z, x_339.w);
        let x_342 : vec2<f32> = u_xlat47;
        u_xlat49 = (-(x_342) + vec2<f32>(1.0f, 1.0f));
        let x_347 : vec2<f32> = u_xlat47;
        let x_349 : vec2<f32> = min(x_347, vec2<f32>(0.0f, 0.0f));
        let x_350 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_349.x, x_349.y, x_350.z, x_350.w);
        let x_352 : vec4<f32> = u_xlat6;
        let x_355 : vec4<f32> = u_xlat6;
        let x_358 : vec2<f32> = u_xlat49;
        let x_359 : vec2<f32> = ((-(vec2<f32>(x_352.x, x_352.y)) * vec2<f32>(x_355.x, x_355.y)) + x_358);
        let x_360 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_359.x, x_359.y, x_360.z, x_360.w);
        let x_362 : vec2<f32> = u_xlat47;
        u_xlat47 = max(x_362, vec2<f32>(0.0f, 0.0f));
        let x_364 : vec2<f32> = u_xlat47;
        let x_366 : vec2<f32> = u_xlat47;
        let x_368 : vec4<f32> = u_xlat4;
        u_xlat47 = ((-(x_364) * x_366) + vec2<f32>(x_368.y, x_368.w));
        let x_371 : vec4<f32> = u_xlat6;
        let x_373 : vec2<f32> = (vec2<f32>(x_371.x, x_371.y) + vec2<f32>(1.0f, 1.0f));
        let x_374 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_373.x, x_373.y, x_374.z, x_374.w);
        let x_376 : vec2<f32> = u_xlat47;
        u_xlat47 = (x_376 + vec2<f32>(1.0f, 1.0f));
        let x_379 : vec4<f32> = u_xlat5;
        let x_383 : vec2<f32> = (vec2<f32>(x_379.x, x_379.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_384 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_383.x, x_383.y, x_384.z, x_384.w);
        let x_386 : vec2<f32> = u_xlat49;
        let x_387 : vec2<f32> = (x_386 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_388 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
        let x_390 : vec4<f32> = u_xlat6;
        let x_392 : vec2<f32> = (vec2<f32>(x_390.x, x_390.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_393 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
        let x_396 : vec2<f32> = u_xlat47;
        let x_397 : vec2<f32> = (x_396 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_398 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_397.x, x_397.y, x_398.z, x_398.w);
        let x_400 : vec4<f32> = u_xlat4;
        u_xlat47 = (vec2<f32>(x_400.y, x_400.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_404 : f32 = u_xlat6.x;
        u_xlat7.z = x_404;
        let x_407 : f32 = u_xlat47.x;
        u_xlat7.w = x_407;
        let x_410 : f32 = u_xlat8.x;
        u_xlat5.z = x_410;
        let x_413 : f32 = u_xlat4.x;
        u_xlat5.w = x_413;
        let x_416 : vec4<f32> = u_xlat5;
        let x_418 : vec4<f32> = u_xlat7;
        u_xlat9 = (vec4<f32>(x_416.z, x_416.w, x_416.x, x_416.z) + vec4<f32>(x_418.z, x_418.w, x_418.x, x_418.z));
        let x_422 : f32 = u_xlat7.y;
        u_xlat6.z = x_422;
        let x_425 : f32 = u_xlat47.y;
        u_xlat6.w = x_425;
        let x_428 : f32 = u_xlat5.y;
        u_xlat8.z = x_428;
        let x_431 : f32 = u_xlat4.z;
        u_xlat8.w = x_431;
        let x_433 : vec4<f32> = u_xlat6;
        let x_435 : vec4<f32> = u_xlat8;
        let x_437 : vec3<f32> = (vec3<f32>(x_433.z, x_433.y, x_433.w) + vec3<f32>(x_435.z, x_435.y, x_435.w));
        let x_438 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
        let x_440 : vec4<f32> = u_xlat5;
        let x_442 : vec4<f32> = u_xlat9;
        let x_444 : vec3<f32> = (vec3<f32>(x_440.x, x_440.z, x_440.w) / vec3<f32>(x_442.z, x_442.w, x_442.y));
        let x_445 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
        let x_447 : vec4<f32> = u_xlat5;
        let x_452 : vec3<f32> = (vec3<f32>(x_447.x, x_447.y, x_447.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_453 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
        let x_455 : vec4<f32> = u_xlat8;
        let x_457 : vec4<f32> = u_xlat4;
        let x_459 : vec3<f32> = (vec3<f32>(x_455.z, x_455.y, x_455.w) / vec3<f32>(x_457.x, x_457.y, x_457.z));
        let x_460 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
        let x_462 : vec4<f32> = u_xlat6;
        let x_464 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_465 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
        let x_467 : vec4<f32> = u_xlat5;
        let x_470 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_472 : vec3<f32> = (vec3<f32>(x_467.y, x_467.x, x_467.z) * vec3<f32>(x_470.x, x_470.x, x_470.x));
        let x_473 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
        let x_475 : vec4<f32> = u_xlat6;
        let x_478 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_480 : vec3<f32> = (vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(x_478.y, x_478.y, x_478.y));
        let x_481 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
        let x_484 : f32 = u_xlat6.x;
        u_xlat5.w = x_484;
        let x_486 : vec4<f32> = u_xlat3;
        let x_489 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_492 : vec4<f32> = u_xlat5;
        u_xlat7 = ((vec4<f32>(x_486.x, x_486.y, x_486.x, x_486.y) * vec4<f32>(x_489.x, x_489.y, x_489.x, x_489.y)) + vec4<f32>(x_492.y, x_492.w, x_492.x, x_492.w));
        let x_495 : vec4<f32> = u_xlat3;
        let x_498 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_501 : vec4<f32> = u_xlat5;
        u_xlat47 = ((vec2<f32>(x_495.x, x_495.y) * vec2<f32>(x_498.x, x_498.y)) + vec2<f32>(x_501.z, x_501.w));
        let x_505 : f32 = u_xlat5.y;
        u_xlat6.w = x_505;
        let x_507 : vec4<f32> = u_xlat6;
        let x_508 : vec2<f32> = vec2<f32>(x_507.y, x_507.z);
        let x_509 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_509.x, x_508.x, x_509.z, x_508.y);
        let x_511 : vec4<f32> = u_xlat3;
        let x_514 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_517 : vec4<f32> = u_xlat5;
        u_xlat8 = ((vec4<f32>(x_511.x, x_511.y, x_511.x, x_511.y) * vec4<f32>(x_514.x, x_514.y, x_514.x, x_514.y)) + vec4<f32>(x_517.x, x_517.y, x_517.z, x_517.y));
        let x_520 : vec4<f32> = u_xlat3;
        let x_523 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_526 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_520.x, x_520.y, x_520.x, x_520.y) * vec4<f32>(x_523.x, x_523.y, x_523.x, x_523.y)) + vec4<f32>(x_526.w, x_526.y, x_526.w, x_526.z));
        let x_529 : vec4<f32> = u_xlat3;
        let x_532 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_535 : vec4<f32> = u_xlat5;
        u_xlat5 = ((vec4<f32>(x_529.x, x_529.y, x_529.x, x_529.y) * vec4<f32>(x_532.x, x_532.y, x_532.x, x_532.y)) + vec4<f32>(x_535.x, x_535.w, x_535.z, x_535.w));
        let x_539 : vec4<f32> = u_xlat4;
        let x_541 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_539.x, x_539.x, x_539.x, x_539.y) * vec4<f32>(x_541.z, x_541.w, x_541.y, x_541.z));
        let x_545 : vec4<f32> = u_xlat4;
        let x_547 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_545.y, x_545.y, x_545.z, x_545.z) * x_547);
        let x_550 : f32 = u_xlat4.z;
        let x_552 : f32 = u_xlat9.y;
        u_xlat3.x = (x_550 * x_552);
        let x_556 : vec4<f32> = u_xlat7;
        let x_557 : vec2<f32> = vec2<f32>(x_556.x, x_556.y);
        let x_559 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_557.x, x_557.y, x_559);
        let x_567 : vec3<f32> = txVec4;
        let x_569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_567.xy, x_567.z);
        u_xlat25.x = x_569;
        let x_572 : vec4<f32> = u_xlat7;
        let x_573 : vec2<f32> = vec2<f32>(x_572.z, x_572.w);
        let x_575 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_573.x, x_573.y, x_575);
        let x_582 : vec3<f32> = txVec5;
        let x_584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_582.xy, x_582.z);
        u_xlat4.x = x_584;
        let x_587 : f32 = u_xlat4.x;
        let x_589 : f32 = u_xlat10.y;
        u_xlat4.x = (x_587 * x_589);
        let x_593 : f32 = u_xlat10.x;
        let x_595 : f32 = u_xlat25.x;
        let x_598 : f32 = u_xlat4.x;
        u_xlat25.x = ((x_593 * x_595) + x_598);
        let x_602 : vec2<f32> = u_xlat47;
        let x_604 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_602.x, x_602.y, x_604);
        let x_611 : vec3<f32> = txVec6;
        let x_613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_611.xy, x_611.z);
        u_xlat47.x = x_613;
        let x_616 : f32 = u_xlat10.z;
        let x_618 : f32 = u_xlat47.x;
        let x_621 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_616 * x_618) + x_621);
        let x_625 : vec4<f32> = u_xlat6;
        let x_626 : vec2<f32> = vec2<f32>(x_625.x, x_625.y);
        let x_628 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_626.x, x_626.y, x_628);
        let x_635 : vec3<f32> = txVec7;
        let x_637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_635.xy, x_635.z);
        u_xlat47.x = x_637;
        let x_640 : f32 = u_xlat10.w;
        let x_642 : f32 = u_xlat47.x;
        let x_645 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_640 * x_642) + x_645);
        let x_649 : vec4<f32> = u_xlat8;
        let x_650 : vec2<f32> = vec2<f32>(x_649.x, x_649.y);
        let x_652 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_650.x, x_650.y, x_652);
        let x_659 : vec3<f32> = txVec8;
        let x_661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_659.xy, x_659.z);
        u_xlat47.x = x_661;
        let x_664 : f32 = u_xlat11.x;
        let x_666 : f32 = u_xlat47.x;
        let x_669 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_664 * x_666) + x_669);
        let x_673 : vec4<f32> = u_xlat8;
        let x_674 : vec2<f32> = vec2<f32>(x_673.z, x_673.w);
        let x_676 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_674.x, x_674.y, x_676);
        let x_683 : vec3<f32> = txVec9;
        let x_685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_683.xy, x_683.z);
        u_xlat47.x = x_685;
        let x_688 : f32 = u_xlat11.y;
        let x_690 : f32 = u_xlat47.x;
        let x_693 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_688 * x_690) + x_693);
        let x_697 : vec4<f32> = u_xlat6;
        let x_698 : vec2<f32> = vec2<f32>(x_697.z, x_697.w);
        let x_700 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_698.x, x_698.y, x_700);
        let x_707 : vec3<f32> = txVec10;
        let x_709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_707.xy, x_707.z);
        u_xlat47.x = x_709;
        let x_712 : f32 = u_xlat11.z;
        let x_714 : f32 = u_xlat47.x;
        let x_717 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_712 * x_714) + x_717);
        let x_721 : vec4<f32> = u_xlat5;
        let x_722 : vec2<f32> = vec2<f32>(x_721.x, x_721.y);
        let x_724 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_722.x, x_722.y, x_724);
        let x_731 : vec3<f32> = txVec11;
        let x_733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_731.xy, x_731.z);
        u_xlat47.x = x_733;
        let x_736 : f32 = u_xlat11.w;
        let x_738 : f32 = u_xlat47.x;
        let x_741 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_736 * x_738) + x_741);
        let x_745 : vec4<f32> = u_xlat5;
        let x_746 : vec2<f32> = vec2<f32>(x_745.z, x_745.w);
        let x_748 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_746.x, x_746.y, x_748);
        let x_755 : vec3<f32> = txVec12;
        let x_757 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_755.xy, x_755.z);
        u_xlat47.x = x_757;
        let x_760 : f32 = u_xlat3.x;
        let x_762 : f32 = u_xlat47.x;
        let x_765 : f32 = u_xlat25.x;
        u_xlat68 = ((x_760 * x_762) + x_765);
      } else {
        let x_768 : vec4<f32> = vs_TEXCOORD6;
        let x_771 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_774 : vec2<f32> = ((vec2<f32>(x_768.x, x_768.y) * vec2<f32>(x_771.z, x_771.w)) + vec2<f32>(0.5f, 0.5f));
        let x_775 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_774.x, x_774.y, x_775.z, x_775.w);
        let x_777 : vec4<f32> = u_xlat3;
        let x_779 : vec2<f32> = floor(vec2<f32>(x_777.x, x_777.y));
        let x_780 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_779.x, x_779.y, x_780.z, x_780.w);
        let x_782 : vec4<f32> = vs_TEXCOORD6;
        let x_785 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_788 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_782.x, x_782.y) * vec2<f32>(x_785.z, x_785.w)) + -(vec2<f32>(x_788.x, x_788.y)));
        let x_792 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_792.x, x_792.x, x_792.y, x_792.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_795 : vec4<f32> = u_xlat4;
        let x_797 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_795.x, x_795.x, x_795.z, x_795.z) * vec4<f32>(x_797.x, x_797.x, x_797.z, x_797.z));
        let x_800 : vec4<f32> = u_xlat5;
        let x_804 : vec2<f32> = (vec2<f32>(x_800.y, x_800.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_805 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_805.x, x_804.x, x_805.z, x_804.y);
        let x_807 : vec4<f32> = u_xlat5;
        let x_810 : vec2<f32> = u_xlat47;
        let x_812 : vec2<f32> = ((vec2<f32>(x_807.x, x_807.z) * vec2<f32>(0.5f, 0.5f)) + -(x_810));
        let x_813 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_812.x, x_813.y, x_812.y, x_813.w);
        let x_815 : vec2<f32> = u_xlat47;
        let x_817 : vec2<f32> = (-(x_815) + vec2<f32>(1.0f, 1.0f));
        let x_818 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_817.x, x_817.y, x_818.z, x_818.w);
        let x_820 : vec2<f32> = u_xlat47;
        u_xlat49 = min(x_820, vec2<f32>(0.0f, 0.0f));
        let x_822 : vec2<f32> = u_xlat49;
        let x_824 : vec2<f32> = u_xlat49;
        let x_826 : vec4<f32> = u_xlat5;
        let x_828 : vec2<f32> = ((-(x_822) * x_824) + vec2<f32>(x_826.x, x_826.y));
        let x_829 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_828.x, x_828.y, x_829.z, x_829.w);
        let x_831 : vec2<f32> = u_xlat47;
        u_xlat49 = max(x_831, vec2<f32>(0.0f, 0.0f));
        let x_834 : vec2<f32> = u_xlat49;
        let x_836 : vec2<f32> = u_xlat49;
        let x_838 : vec4<f32> = u_xlat4;
        let x_840 : vec2<f32> = ((-(x_834) * x_836) + vec2<f32>(x_838.y, x_838.w));
        let x_841 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_840.x, x_841.y, x_840.y);
        let x_843 : vec4<f32> = u_xlat5;
        let x_846 : vec2<f32> = (vec2<f32>(x_843.x, x_843.y) + vec2<f32>(2.0f, 2.0f));
        let x_847 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_846.x, x_846.y, x_847.z, x_847.w);
        let x_849 : vec3<f32> = u_xlat26;
        let x_851 : vec2<f32> = (vec2<f32>(x_849.x, x_849.z) + vec2<f32>(2.0f, 2.0f));
        let x_852 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_852.x, x_851.x, x_852.z, x_851.y);
        let x_855 : f32 = u_xlat4.y;
        u_xlat7.z = (x_855 * 0.08163200318813323975f);
        let x_859 : vec4<f32> = u_xlat4;
        let x_862 : vec3<f32> = (vec3<f32>(x_859.z, x_859.x, x_859.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_863 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
        let x_865 : vec4<f32> = u_xlat5;
        let x_868 : vec2<f32> = (vec2<f32>(x_865.x, x_865.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_869 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_868.x, x_868.y, x_869.z, x_869.w);
        let x_872 : f32 = u_xlat8.y;
        u_xlat7.x = x_872;
        let x_874 : vec2<f32> = u_xlat47;
        let x_881 : vec2<f32> = ((vec2<f32>(x_874.x, x_874.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_882 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_882.x, x_881.x, x_882.z, x_881.y);
        let x_884 : vec2<f32> = u_xlat47;
        let x_888 : vec2<f32> = ((vec2<f32>(x_884.x, x_884.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_889 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_888.x, x_889.y, x_888.y, x_889.w);
        let x_892 : f32 = u_xlat4.x;
        u_xlat5.y = x_892;
        let x_895 : f32 = u_xlat6.y;
        u_xlat5.w = x_895;
        let x_897 : vec4<f32> = u_xlat5;
        let x_898 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_897 + x_898);
        let x_900 : vec2<f32> = u_xlat47;
        let x_903 : vec2<f32> = ((vec2<f32>(x_900.y, x_900.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_904 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_904.x, x_903.x, x_904.z, x_903.y);
        let x_906 : vec2<f32> = u_xlat47;
        let x_909 : vec2<f32> = ((vec2<f32>(x_906.y, x_906.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_910 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_909.x, x_910.y, x_909.y, x_910.w);
        let x_913 : f32 = u_xlat4.y;
        u_xlat6.y = x_913;
        let x_915 : vec4<f32> = u_xlat6;
        let x_916 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_915 + x_916);
        let x_918 : vec4<f32> = u_xlat5;
        let x_919 : vec4<f32> = u_xlat7;
        u_xlat5 = (x_918 / x_919);
        let x_921 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_921 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_927 : vec4<f32> = u_xlat6;
        let x_928 : vec4<f32> = u_xlat4;
        u_xlat6 = (x_927 / x_928);
        let x_930 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_930 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_932 : vec4<f32> = u_xlat5;
        let x_935 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_932.w, x_932.x, x_932.y, x_932.z) * vec4<f32>(x_935.x, x_935.x, x_935.x, x_935.x));
        let x_938 : vec4<f32> = u_xlat6;
        let x_941 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_938.x, x_938.w, x_938.y, x_938.z) * vec4<f32>(x_941.y, x_941.y, x_941.y, x_941.y));
        let x_944 : vec4<f32> = u_xlat5;
        let x_945 : vec3<f32> = vec3<f32>(x_944.y, x_944.z, x_944.w);
        let x_946 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_945.x, x_946.y, x_945.y, x_945.z);
        let x_949 : f32 = u_xlat6.x;
        u_xlat8.y = x_949;
        let x_951 : vec4<f32> = u_xlat3;
        let x_954 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_957 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_951.x, x_951.y, x_951.x, x_951.y) * vec4<f32>(x_954.x, x_954.y, x_954.x, x_954.y)) + vec4<f32>(x_957.x, x_957.y, x_957.z, x_957.y));
        let x_960 : vec4<f32> = u_xlat3;
        let x_963 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_966 : vec4<f32> = u_xlat8;
        u_xlat47 = ((vec2<f32>(x_960.x, x_960.y) * vec2<f32>(x_963.x, x_963.y)) + vec2<f32>(x_966.w, x_966.y));
        let x_970 : f32 = u_xlat8.y;
        u_xlat5.y = x_970;
        let x_973 : f32 = u_xlat6.z;
        u_xlat8.y = x_973;
        let x_975 : vec4<f32> = u_xlat3;
        let x_978 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_981 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_975.x, x_975.y, x_975.x, x_975.y) * vec4<f32>(x_978.x, x_978.y, x_978.x, x_978.y)) + vec4<f32>(x_981.x, x_981.y, x_981.z, x_981.y));
        let x_984 : vec4<f32> = u_xlat3;
        let x_987 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_990 : vec4<f32> = u_xlat8;
        let x_992 : vec2<f32> = ((vec2<f32>(x_984.x, x_984.y) * vec2<f32>(x_987.x, x_987.y)) + vec2<f32>(x_990.w, x_990.y));
        let x_993 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_992.x, x_992.y, x_993.z, x_993.w);
        let x_996 : f32 = u_xlat8.y;
        u_xlat5.z = x_996;
        let x_999 : vec4<f32> = u_xlat3;
        let x_1002 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1005 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_999.x, x_999.y, x_999.x, x_999.y) * vec4<f32>(x_1002.x, x_1002.y, x_1002.x, x_1002.y)) + vec4<f32>(x_1005.x, x_1005.y, x_1005.x, x_1005.z));
        let x_1009 : f32 = u_xlat6.w;
        u_xlat8.y = x_1009;
        let x_1012 : vec4<f32> = u_xlat3;
        let x_1015 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1018 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1012.x, x_1012.y, x_1012.x, x_1012.y) * vec4<f32>(x_1015.x, x_1015.y, x_1015.x, x_1015.y)) + vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1018.y));
        let x_1022 : vec4<f32> = u_xlat3;
        let x_1025 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1028 : vec4<f32> = u_xlat8;
        let x_1030 : vec2<f32> = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1025.x, x_1025.y)) + vec2<f32>(x_1028.w, x_1028.y));
        let x_1031 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1030.x, x_1030.y, x_1031.z);
        let x_1034 : f32 = u_xlat8.y;
        u_xlat5.w = x_1034;
        let x_1037 : vec4<f32> = u_xlat3;
        let x_1040 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1043 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_1037.x, x_1037.y) * vec2<f32>(x_1040.x, x_1040.y)) + vec2<f32>(x_1043.x, x_1043.w));
        let x_1046 : vec4<f32> = u_xlat8;
        let x_1047 : vec3<f32> = vec3<f32>(x_1046.x, x_1046.z, x_1046.w);
        let x_1048 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1047.x, x_1048.y, x_1047.y, x_1047.z);
        let x_1050 : vec4<f32> = u_xlat3;
        let x_1053 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.y) * vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y)) + vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1056.y));
        let x_1060 : vec4<f32> = u_xlat3;
        let x_1063 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1066 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_1060.x, x_1060.y) * vec2<f32>(x_1063.x, x_1063.y)) + vec2<f32>(x_1066.w, x_1066.y));
        let x_1070 : f32 = u_xlat5.x;
        u_xlat6.x = x_1070;
        let x_1072 : vec4<f32> = u_xlat3;
        let x_1075 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat6;
        let x_1080 : vec2<f32> = ((vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(x_1075.x, x_1075.y)) + vec2<f32>(x_1078.x, x_1078.y));
        let x_1081 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1080.x, x_1080.y, x_1081.z, x_1081.w);
        let x_1084 : vec4<f32> = u_xlat4;
        let x_1086 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1084.x, x_1084.x, x_1084.x, x_1084.x) * x_1086);
        let x_1089 : vec4<f32> = u_xlat4;
        let x_1091 : vec4<f32> = u_xlat7;
        u_xlat15 = (vec4<f32>(x_1089.y, x_1089.y, x_1089.y, x_1089.y) * x_1091);
        let x_1094 : vec4<f32> = u_xlat4;
        let x_1096 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1094.z, x_1094.z, x_1094.z, x_1094.z) * x_1096);
        let x_1098 : vec4<f32> = u_xlat4;
        let x_1100 : vec4<f32> = u_xlat7;
        u_xlat4 = (vec4<f32>(x_1098.w, x_1098.w, x_1098.w, x_1098.w) * x_1100);
        let x_1103 : vec4<f32> = u_xlat9;
        let x_1104 : vec2<f32> = vec2<f32>(x_1103.x, x_1103.y);
        let x_1106 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1104.x, x_1104.y, x_1106);
        let x_1113 : vec3<f32> = txVec13;
        let x_1115 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1113.xy, x_1113.z);
        u_xlat5.x = x_1115;
        let x_1118 : vec4<f32> = u_xlat9;
        let x_1119 : vec2<f32> = vec2<f32>(x_1118.z, x_1118.w);
        let x_1121 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1119.x, x_1119.y, x_1121);
        let x_1129 : vec3<f32> = txVec14;
        let x_1131 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1129.xy, x_1129.z);
        u_xlat71 = x_1131;
        let x_1132 : f32 = u_xlat71;
        let x_1134 : f32 = u_xlat14.y;
        u_xlat71 = (x_1132 * x_1134);
        let x_1137 : f32 = u_xlat14.x;
        let x_1139 : f32 = u_xlat5.x;
        let x_1141 : f32 = u_xlat71;
        u_xlat5.x = ((x_1137 * x_1139) + x_1141);
        let x_1145 : vec2<f32> = u_xlat47;
        let x_1147 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1145.x, x_1145.y, x_1147);
        let x_1154 : vec3<f32> = txVec15;
        let x_1156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1154.xy, x_1154.z);
        u_xlat47.x = x_1156;
        let x_1159 : f32 = u_xlat14.z;
        let x_1161 : f32 = u_xlat47.x;
        let x_1164 : f32 = u_xlat5.x;
        u_xlat47.x = ((x_1159 * x_1161) + x_1164);
        let x_1168 : vec4<f32> = u_xlat12;
        let x_1169 : vec2<f32> = vec2<f32>(x_1168.x, x_1168.y);
        let x_1171 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1169.x, x_1169.y, x_1171);
        let x_1179 : vec3<f32> = txVec16;
        let x_1181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1179.xy, x_1179.z);
        u_xlat69 = x_1181;
        let x_1183 : f32 = u_xlat14.w;
        let x_1184 : f32 = u_xlat69;
        let x_1187 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1183 * x_1184) + x_1187);
        let x_1191 : vec4<f32> = u_xlat10;
        let x_1192 : vec2<f32> = vec2<f32>(x_1191.x, x_1191.y);
        let x_1194 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1192.x, x_1192.y, x_1194);
        let x_1201 : vec3<f32> = txVec17;
        let x_1203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1201.xy, x_1201.z);
        u_xlat69 = x_1203;
        let x_1205 : f32 = u_xlat15.x;
        let x_1206 : f32 = u_xlat69;
        let x_1209 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1205 * x_1206) + x_1209);
        let x_1213 : vec4<f32> = u_xlat10;
        let x_1214 : vec2<f32> = vec2<f32>(x_1213.z, x_1213.w);
        let x_1216 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1214.x, x_1214.y, x_1216);
        let x_1223 : vec3<f32> = txVec18;
        let x_1225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1223.xy, x_1223.z);
        u_xlat69 = x_1225;
        let x_1227 : f32 = u_xlat15.y;
        let x_1228 : f32 = u_xlat69;
        let x_1231 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1227 * x_1228) + x_1231);
        let x_1235 : vec4<f32> = u_xlat11;
        let x_1236 : vec2<f32> = vec2<f32>(x_1235.x, x_1235.y);
        let x_1238 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1236.x, x_1236.y, x_1238);
        let x_1245 : vec3<f32> = txVec19;
        let x_1247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1245.xy, x_1245.z);
        u_xlat69 = x_1247;
        let x_1249 : f32 = u_xlat15.z;
        let x_1250 : f32 = u_xlat69;
        let x_1253 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1249 * x_1250) + x_1253);
        let x_1257 : vec4<f32> = u_xlat12;
        let x_1258 : vec2<f32> = vec2<f32>(x_1257.z, x_1257.w);
        let x_1260 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1258.x, x_1258.y, x_1260);
        let x_1267 : vec3<f32> = txVec20;
        let x_1269 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1267.xy, x_1267.z);
        u_xlat69 = x_1269;
        let x_1271 : f32 = u_xlat15.w;
        let x_1272 : f32 = u_xlat69;
        let x_1275 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1271 * x_1272) + x_1275);
        let x_1279 : vec4<f32> = u_xlat13;
        let x_1280 : vec2<f32> = vec2<f32>(x_1279.x, x_1279.y);
        let x_1282 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1280.x, x_1280.y, x_1282);
        let x_1289 : vec3<f32> = txVec21;
        let x_1291 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1289.xy, x_1289.z);
        u_xlat69 = x_1291;
        let x_1293 : f32 = u_xlat16.x;
        let x_1294 : f32 = u_xlat69;
        let x_1297 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1293 * x_1294) + x_1297);
        let x_1301 : vec4<f32> = u_xlat13;
        let x_1302 : vec2<f32> = vec2<f32>(x_1301.z, x_1301.w);
        let x_1304 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1311 : vec3<f32> = txVec22;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1311.xy, x_1311.z);
        u_xlat69 = x_1313;
        let x_1315 : f32 = u_xlat16.y;
        let x_1316 : f32 = u_xlat69;
        let x_1319 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1315 * x_1316) + x_1319);
        let x_1323 : vec3<f32> = u_xlat27;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.x, x_1323.y);
        let x_1326 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1333 : vec3<f32> = txVec23;
        let x_1335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1333.xy, x_1333.z);
        u_xlat69 = x_1335;
        let x_1337 : f32 = u_xlat16.z;
        let x_1338 : f32 = u_xlat69;
        let x_1341 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1337 * x_1338) + x_1341);
        let x_1345 : vec2<f32> = u_xlat55;
        let x_1347 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec24;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1354.xy, x_1354.z);
        u_xlat69 = x_1356;
        let x_1358 : f32 = u_xlat16.w;
        let x_1359 : f32 = u_xlat69;
        let x_1362 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1358 * x_1359) + x_1362);
        let x_1366 : vec4<f32> = u_xlat8;
        let x_1367 : vec2<f32> = vec2<f32>(x_1366.x, x_1366.y);
        let x_1369 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1367.x, x_1367.y, x_1369);
        let x_1376 : vec3<f32> = txVec25;
        let x_1378 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1376.xy, x_1376.z);
        u_xlat69 = x_1378;
        let x_1380 : f32 = u_xlat4.x;
        let x_1381 : f32 = u_xlat69;
        let x_1384 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1380 * x_1381) + x_1384);
        let x_1388 : vec4<f32> = u_xlat8;
        let x_1389 : vec2<f32> = vec2<f32>(x_1388.z, x_1388.w);
        let x_1391 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1389.x, x_1389.y, x_1391);
        let x_1398 : vec3<f32> = txVec26;
        let x_1400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1398.xy, x_1398.z);
        u_xlat69 = x_1400;
        let x_1402 : f32 = u_xlat4.y;
        let x_1403 : f32 = u_xlat69;
        let x_1406 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1402 * x_1403) + x_1406);
        let x_1410 : vec2<f32> = u_xlat50;
        let x_1412 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec27;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1419.xy, x_1419.z);
        u_xlat69 = x_1421;
        let x_1423 : f32 = u_xlat4.z;
        let x_1424 : f32 = u_xlat69;
        let x_1427 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1423 * x_1424) + x_1427);
        let x_1431 : vec4<f32> = u_xlat3;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec28;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat3.x = x_1443;
        let x_1446 : f32 = u_xlat4.w;
        let x_1448 : f32 = u_xlat3.x;
        let x_1451 : f32 = u_xlat47.x;
        u_xlat68 = ((x_1446 * x_1448) + x_1451);
      }
    }
  } else {
    let x_1455 : vec4<f32> = vs_TEXCOORD6;
    let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
    let x_1458 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
    let x_1465 : vec3<f32> = txVec29;
    let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
    u_xlat68 = x_1467;
  }
  let x_1469 : f32 = x_181.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1469) + 1.0f);
  let x_1473 : f32 = u_xlat68;
  let x_1475 : f32 = x_181.x_MainLightShadowParams.x;
  let x_1478 : f32 = u_xlat3.x;
  u_xlat68 = ((x_1473 * x_1475) + x_1478);
  let x_1481 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (0.0f >= x_1481);
  let x_1485 : f32 = vs_TEXCOORD6.z;
  u_xlatb25 = (x_1485 >= 1.0f);
  let x_1487 : bool = u_xlatb25;
  let x_1488 : bool = u_xlatb3;
  u_xlatb3 = (x_1487 | x_1488);
  let x_1490 : bool = u_xlatb3;
  let x_1491 : f32 = u_xlat68;
  u_xlat68 = select(x_1491, 1.0f, x_1490);
  let x_1493 : vec3<f32> = vs_TEXCOORD1;
  let x_1497 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1499 : vec3<f32> = (x_1493 + -(x_1497));
  let x_1500 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
  let x_1502 : vec4<f32> = u_xlat3;
  let x_1504 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_1502.x, x_1502.y, x_1502.z), vec3<f32>(x_1504.x, x_1504.y, x_1504.z));
  let x_1509 : f32 = u_xlat3.x;
  let x_1511 : f32 = x_181.x_MainLightShadowParams.z;
  let x_1514 : f32 = x_181.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_1509 * x_1511) + x_1514);
  let x_1518 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1518, 0.0f, 1.0f);
  let x_1521 : f32 = u_xlat68;
  u_xlat47.x = (-(x_1521) + 1.0f);
  let x_1526 : f32 = u_xlat25.x;
  let x_1528 : f32 = u_xlat47.x;
  let x_1530 : f32 = u_xlat68;
  u_xlat68 = ((x_1526 * x_1528) + x_1530);
  let x_1532 : f32 = u_xlat68;
  let x_1538 : f32 = x_1536.unity_LightData.z;
  u_xlat68 = (x_1532 * x_1538);
  let x_1540 : f32 = u_xlat68;
  let x_1543 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat25 = (vec3<f32>(x_1540, x_1540, x_1540) * vec3<f32>(x_1543.x, x_1543.y, x_1543.z));
  let x_1546 : vec3<f32> = u_xlat1;
  let x_1548 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat68 = dot(x_1546, vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
  let x_1551 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1551, 0.0f, 1.0f);
  let x_1553 : f32 = u_xlat68;
  let x_1555 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1553, x_1553, x_1553) * x_1555);
  let x_1557 : vec4<f32> = u_xlat0;
  let x_1559 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1557.y, x_1557.z, x_1557.w) * x_1559);
  let x_1562 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1564 : f32 = x_1536.unity_LightData.y;
  u_xlat68 = min(x_1562, x_1564);
  let x_1568 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_1568));
  let x_1572 : f32 = u_xlat3.x;
  let x_1575 : f32 = x_181.x_AdditionalShadowFadeParams.x;
  let x_1578 : f32 = x_181.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1572 * x_1575) + x_1578);
  let x_1582 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1582, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1595 : u32 = u_xlatu_loop_1;
    let x_1596 : u32 = u_xlatu68;
    if ((x_1595 < x_1596)) {
    } else {
      break;
    }
    let x_1599 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1599 >> 2u);
    let x_1603 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_1603 & 3u));
    let x_1606 : u32 = u_xlatu5;
    let x_1609 : vec4<f32> = x_1536.unity_LightIndices[bitcast<i32>(x_1606)];
    let x_1619 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1624 : vec4<u32> = indexable[x_1619];
    u_xlat5.x = dot(x_1609, bitcast<vec4<f32>>(x_1624));
    let x_1630 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1630);
    let x_1632 : vec3<f32> = vs_TEXCOORD1;
    let x_1643 : i32 = u_xlati5;
    let x_1645 : vec4<f32> = x_1642.x_AdditionalLightsPosition[x_1643];
    let x_1648 : i32 = u_xlati5;
    let x_1650 : vec4<f32> = x_1642.x_AdditionalLightsPosition[x_1648];
    u_xlat27 = ((-(x_1632) * vec3<f32>(x_1645.w, x_1645.w, x_1645.w)) + vec3<f32>(x_1650.x, x_1650.y, x_1650.z));
    let x_1653 : vec3<f32> = u_xlat27;
    let x_1654 : vec3<f32> = u_xlat27;
    u_xlat6.x = dot(x_1653, x_1654);
    let x_1658 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1658, 0.00006103515625f);
    let x_1664 : f32 = u_xlat6.x;
    u_xlat28.x = inverseSqrt(x_1664);
    let x_1667 : vec3<f32> = u_xlat27;
    let x_1668 : vec3<f32> = u_xlat28;
    u_xlat27 = (x_1667 * vec3<f32>(x_1668.x, x_1668.x, x_1668.x));
    let x_1672 : f32 = u_xlat6.x;
    u_xlat28.x = (1.0f / x_1672);
    let x_1676 : f32 = u_xlat6.x;
    let x_1677 : i32 = u_xlati5;
    let x_1679 : f32 = x_1642.x_AdditionalLightsAttenuation[x_1677].x;
    u_xlat6.x = (x_1676 * x_1679);
    let x_1683 : f32 = u_xlat6.x;
    let x_1686 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1683) * x_1686) + 1.0f);
    let x_1691 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1691, 0.0f);
    let x_1695 : f32 = u_xlat6.x;
    let x_1697 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1695 * x_1697);
    let x_1701 : f32 = u_xlat6.x;
    let x_1703 : f32 = u_xlat28.x;
    u_xlat6.x = (x_1701 * x_1703);
    let x_1706 : i32 = u_xlati5;
    let x_1708 : vec4<f32> = x_1642.x_AdditionalLightsSpotDir[x_1706];
    let x_1710 : vec3<f32> = u_xlat27;
    u_xlat28.x = dot(vec3<f32>(x_1708.x, x_1708.y, x_1708.z), x_1710);
    let x_1714 : f32 = u_xlat28.x;
    let x_1715 : i32 = u_xlati5;
    let x_1717 : f32 = x_1642.x_AdditionalLightsAttenuation[x_1715].z;
    let x_1719 : i32 = u_xlati5;
    let x_1721 : f32 = x_1642.x_AdditionalLightsAttenuation[x_1719].w;
    u_xlat28.x = ((x_1714 * x_1717) + x_1721);
    let x_1725 : f32 = u_xlat28.x;
    u_xlat28.x = clamp(x_1725, 0.0f, 1.0f);
    let x_1729 : f32 = u_xlat28.x;
    let x_1731 : f32 = u_xlat28.x;
    u_xlat28.x = (x_1729 * x_1731);
    let x_1735 : f32 = u_xlat28.x;
    let x_1737 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1735 * x_1737);
    let x_1742 : i32 = u_xlati5;
    let x_1744 : f32 = x_181.x_AdditionalShadowParams[x_1742].w;
    u_xlati28 = i32(x_1744);
    let x_1747 : i32 = u_xlati28;
    u_xlatb50 = (x_1747 >= 0i);
    let x_1749 : bool = u_xlatb50;
    if (x_1749) {
      let x_1753 : i32 = u_xlati5;
      let x_1755 : f32 = x_181.x_AdditionalShadowParams[x_1753].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1755, x_1755, x_1755, x_1755))));
      let x_1760 : bool = u_xlatb50;
      if (x_1760) {
        let x_1765 : vec3<f32> = u_xlat27;
        let x_1768 : vec3<f32> = u_xlat27;
        let x_1771 : vec4<bool> = (abs(vec4<f32>(x_1765.z, x_1765.z, x_1765.y, x_1765.z)) >= abs(vec4<f32>(x_1768.x, x_1768.y, x_1768.x, x_1768.x)));
        let x_1773 : vec3<bool> = vec3<bool>(x_1771.x, x_1771.y, x_1771.z);
        let x_1774 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
        let x_1777 : bool = u_xlatb7.y;
        let x_1779 : bool = u_xlatb7.x;
        u_xlatb50 = (x_1777 & x_1779);
        let x_1781 : vec3<f32> = u_xlat27;
        let x_1784 : vec4<bool> = (-(vec4<f32>(x_1781.z, x_1781.y, x_1781.z, x_1781.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1785 : vec3<bool> = vec3<bool>(x_1784.x, x_1784.y, x_1784.w);
        let x_1786 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1785.x, x_1785.y, x_1786.z, x_1785.z);
        let x_1789 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1789);
        let x_1795 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1795);
        let x_1801 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1801);
        let x_1804 : bool = u_xlatb7.z;
        if (x_1804) {
          let x_1810 : f32 = u_xlat7.y;
          x_1806 = x_1810;
        } else {
          let x_1812 : f32 = u_xlat72;
          x_1806 = x_1812;
        }
        let x_1813 : f32 = x_1806;
        u_xlat72 = x_1813;
        let x_1814 : bool = u_xlatb50;
        if (x_1814) {
          let x_1819 : f32 = u_xlat7.x;
          x_1815 = x_1819;
        } else {
          let x_1821 : f32 = u_xlat72;
          x_1815 = x_1821;
        }
        let x_1822 : f32 = x_1815;
        u_xlat50.x = x_1822;
        let x_1824 : i32 = u_xlati5;
        let x_1826 : f32 = x_181.x_AdditionalShadowParams[x_1824].w;
        u_xlat72 = trunc(x_1826);
        let x_1829 : f32 = u_xlat50.x;
        let x_1830 : f32 = u_xlat72;
        u_xlat50.x = (x_1829 + x_1830);
        let x_1834 : f32 = u_xlat50.x;
        u_xlati28 = i32(x_1834);
      }
      let x_1836 : i32 = u_xlati28;
      u_xlati28 = (x_1836 << bitcast<u32>(2i));
      let x_1838 : vec3<f32> = vs_TEXCOORD1;
      let x_1841 : i32 = u_xlati28;
      let x_1844 : i32 = u_xlati28;
      let x_1848 : vec4<f32> = x_181.x_AdditionalLightsWorldToShadow[((x_1841 + 1i) / 4i)][((x_1844 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1838.y, x_1838.y, x_1838.y, x_1838.y) * x_1848);
      let x_1850 : i32 = u_xlati28;
      let x_1852 : i32 = u_xlati28;
      let x_1855 : vec4<f32> = x_181.x_AdditionalLightsWorldToShadow[(x_1850 / 4i)][(x_1852 % 4i)];
      let x_1856 : vec3<f32> = vs_TEXCOORD1;
      let x_1859 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1855 * vec4<f32>(x_1856.x, x_1856.x, x_1856.x, x_1856.x)) + x_1859);
      let x_1861 : i32 = u_xlati28;
      let x_1864 : i32 = u_xlati28;
      let x_1868 : vec4<f32> = x_181.x_AdditionalLightsWorldToShadow[((x_1861 + 2i) / 4i)][((x_1864 + 2i) % 4i)];
      let x_1869 : vec3<f32> = vs_TEXCOORD1;
      let x_1872 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1868 * vec4<f32>(x_1869.z, x_1869.z, x_1869.z, x_1869.z)) + x_1872);
      let x_1874 : vec4<f32> = u_xlat7;
      let x_1875 : i32 = u_xlati28;
      let x_1878 : i32 = u_xlati28;
      let x_1882 : vec4<f32> = x_181.x_AdditionalLightsWorldToShadow[((x_1875 + 3i) / 4i)][((x_1878 + 3i) % 4i)];
      u_xlat7 = (x_1874 + x_1882);
      let x_1884 : vec4<f32> = u_xlat7;
      let x_1886 : vec4<f32> = u_xlat7;
      u_xlat28 = (vec3<f32>(x_1884.x, x_1884.y, x_1884.z) / vec3<f32>(x_1886.w, x_1886.w, x_1886.w));
      let x_1889 : i32 = u_xlati5;
      let x_1891 : f32 = x_181.x_AdditionalShadowParams[x_1889].y;
      u_xlatb7.x = (0.0f < x_1891);
      let x_1895 : bool = u_xlatb7.x;
      if (x_1895) {
        let x_1898 : i32 = u_xlati5;
        let x_1900 : f32 = x_181.x_AdditionalShadowParams[x_1898].y;
        u_xlatb7.x = (1.0f == x_1900);
        let x_1904 : bool = u_xlatb7.x;
        if (x_1904) {
          let x_1907 : vec3<f32> = u_xlat28;
          let x_1911 : vec4<f32> = x_181.x_AdditionalShadowOffset0;
          u_xlat7 = (vec4<f32>(x_1907.x, x_1907.y, x_1907.x, x_1907.y) + x_1911);
          let x_1914 : vec4<f32> = u_xlat7;
          let x_1915 : vec2<f32> = vec2<f32>(x_1914.x, x_1914.y);
          let x_1917 : f32 = u_xlat28.z;
          txVec30 = vec3<f32>(x_1915.x, x_1915.y, x_1917);
          let x_1925 : vec3<f32> = txVec30;
          let x_1927 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1925.xy, x_1925.z);
          u_xlat8.x = x_1927;
          let x_1930 : vec4<f32> = u_xlat7;
          let x_1931 : vec2<f32> = vec2<f32>(x_1930.z, x_1930.w);
          let x_1933 : f32 = u_xlat28.z;
          txVec31 = vec3<f32>(x_1931.x, x_1931.y, x_1933);
          let x_1940 : vec3<f32> = txVec31;
          let x_1942 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1940.xy, x_1940.z);
          u_xlat8.y = x_1942;
          let x_1944 : vec3<f32> = u_xlat28;
          let x_1948 : vec4<f32> = x_181.x_AdditionalShadowOffset1;
          u_xlat7 = (vec4<f32>(x_1944.x, x_1944.y, x_1944.x, x_1944.y) + x_1948);
          let x_1951 : vec4<f32> = u_xlat7;
          let x_1952 : vec2<f32> = vec2<f32>(x_1951.x, x_1951.y);
          let x_1954 : f32 = u_xlat28.z;
          txVec32 = vec3<f32>(x_1952.x, x_1952.y, x_1954);
          let x_1961 : vec3<f32> = txVec32;
          let x_1963 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1961.xy, x_1961.z);
          u_xlat8.z = x_1963;
          let x_1966 : vec4<f32> = u_xlat7;
          let x_1967 : vec2<f32> = vec2<f32>(x_1966.z, x_1966.w);
          let x_1969 : f32 = u_xlat28.z;
          txVec33 = vec3<f32>(x_1967.x, x_1967.y, x_1969);
          let x_1976 : vec3<f32> = txVec33;
          let x_1978 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1976.xy, x_1976.z);
          u_xlat8.w = x_1978;
          let x_1980 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(x_1980, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_1985 : i32 = u_xlati5;
          let x_1987 : f32 = x_181.x_AdditionalShadowParams[x_1985].y;
          u_xlatb29 = (2.0f == x_1987);
          let x_1989 : bool = u_xlatb29;
          if (x_1989) {
            let x_1993 : vec3<f32> = u_xlat28;
            let x_1997 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            u_xlat29 = ((vec2<f32>(x_1993.x, x_1993.y) * vec2<f32>(x_1997.z, x_1997.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2001 : vec2<f32> = u_xlat29;
            u_xlat29 = floor(x_2001);
            let x_2003 : vec3<f32> = u_xlat28;
            let x_2006 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2009 : vec2<f32> = u_xlat29;
            let x_2011 : vec2<f32> = ((vec2<f32>(x_2003.x, x_2003.y) * vec2<f32>(x_2006.z, x_2006.w)) + -(x_2009));
            let x_2012 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2011.x, x_2011.y, x_2012.z, x_2012.w);
            let x_2014 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2014.x, x_2014.x, x_2014.y, x_2014.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2017 : vec4<f32> = u_xlat9;
            let x_2019 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2017.x, x_2017.x, x_2017.z, x_2017.z) * vec4<f32>(x_2019.x, x_2019.x, x_2019.z, x_2019.z));
            let x_2023 : vec4<f32> = u_xlat10;
            u_xlat52 = (vec2<f32>(x_2023.y, x_2023.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2026 : vec4<f32> = u_xlat10;
            let x_2029 : vec4<f32> = u_xlat8;
            let x_2032 : vec2<f32> = ((vec2<f32>(x_2026.x, x_2026.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2029.x, x_2029.y)));
            let x_2033 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2032.x, x_2033.y, x_2032.y, x_2033.w);
            let x_2035 : vec4<f32> = u_xlat8;
            let x_2038 : vec2<f32> = (-(vec2<f32>(x_2035.x, x_2035.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2039 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2038.x, x_2038.y, x_2039.z, x_2039.w);
            let x_2042 : vec4<f32> = u_xlat8;
            u_xlat54 = min(vec2<f32>(x_2042.x, x_2042.y), vec2<f32>(0.0f, 0.0f));
            let x_2045 : vec2<f32> = u_xlat54;
            let x_2047 : vec2<f32> = u_xlat54;
            let x_2049 : vec4<f32> = u_xlat10;
            u_xlat54 = ((-(x_2045) * x_2047) + vec2<f32>(x_2049.x, x_2049.y));
            let x_2052 : vec4<f32> = u_xlat8;
            let x_2054 : vec2<f32> = max(vec2<f32>(x_2052.x, x_2052.y), vec2<f32>(0.0f, 0.0f));
            let x_2055 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2054.x, x_2054.y, x_2055.z, x_2055.w);
            let x_2057 : vec4<f32> = u_xlat8;
            let x_2060 : vec4<f32> = u_xlat8;
            let x_2063 : vec4<f32> = u_xlat9;
            let x_2065 : vec2<f32> = ((-(vec2<f32>(x_2057.x, x_2057.y)) * vec2<f32>(x_2060.x, x_2060.y)) + vec2<f32>(x_2063.y, x_2063.w));
            let x_2066 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2065.x, x_2065.y, x_2066.z, x_2066.w);
            let x_2068 : vec2<f32> = u_xlat54;
            u_xlat54 = (x_2068 + vec2<f32>(1.0f, 1.0f));
            let x_2070 : vec4<f32> = u_xlat8;
            let x_2072 : vec2<f32> = (vec2<f32>(x_2070.x, x_2070.y) + vec2<f32>(1.0f, 1.0f));
            let x_2073 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2072.x, x_2072.y, x_2073.z, x_2073.w);
            let x_2075 : vec4<f32> = u_xlat9;
            let x_2077 : vec2<f32> = (vec2<f32>(x_2075.x, x_2075.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2078 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2077.x, x_2077.y, x_2078.z, x_2078.w);
            let x_2080 : vec4<f32> = u_xlat10;
            let x_2082 : vec2<f32> = (vec2<f32>(x_2080.x, x_2080.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2083 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2082.x, x_2082.y, x_2083.z, x_2083.w);
            let x_2085 : vec2<f32> = u_xlat54;
            let x_2086 : vec2<f32> = (x_2085 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2087 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2086.x, x_2086.y, x_2087.z, x_2087.w);
            let x_2089 : vec4<f32> = u_xlat8;
            let x_2091 : vec2<f32> = (vec2<f32>(x_2089.x, x_2089.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2092 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2091.x, x_2091.y, x_2092.z, x_2092.w);
            let x_2094 : vec4<f32> = u_xlat9;
            let x_2096 : vec2<f32> = (vec2<f32>(x_2094.y, x_2094.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2097 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2096.x, x_2096.y, x_2097.z, x_2097.w);
            let x_2100 : f32 = u_xlat10.x;
            u_xlat11.z = x_2100;
            let x_2103 : f32 = u_xlat8.x;
            u_xlat11.w = x_2103;
            let x_2106 : f32 = u_xlat13.x;
            u_xlat12.z = x_2106;
            let x_2109 : f32 = u_xlat52.x;
            u_xlat12.w = x_2109;
            let x_2111 : vec4<f32> = u_xlat11;
            let x_2113 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2111.z, x_2111.w, x_2111.x, x_2111.z) + vec4<f32>(x_2113.z, x_2113.w, x_2113.x, x_2113.z));
            let x_2117 : f32 = u_xlat11.y;
            u_xlat10.z = x_2117;
            let x_2120 : f32 = u_xlat8.y;
            u_xlat10.w = x_2120;
            let x_2123 : f32 = u_xlat12.y;
            u_xlat13.z = x_2123;
            let x_2126 : f32 = u_xlat52.y;
            u_xlat13.w = x_2126;
            let x_2128 : vec4<f32> = u_xlat10;
            let x_2130 : vec4<f32> = u_xlat13;
            let x_2132 : vec3<f32> = (vec3<f32>(x_2128.z, x_2128.y, x_2128.w) + vec3<f32>(x_2130.z, x_2130.y, x_2130.w));
            let x_2133 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2132.x, x_2132.y, x_2132.z, x_2133.w);
            let x_2135 : vec4<f32> = u_xlat12;
            let x_2137 : vec4<f32> = u_xlat9;
            let x_2139 : vec3<f32> = (vec3<f32>(x_2135.x, x_2135.z, x_2135.w) / vec3<f32>(x_2137.z, x_2137.w, x_2137.y));
            let x_2140 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2139.x, x_2139.y, x_2139.z, x_2140.w);
            let x_2142 : vec4<f32> = u_xlat10;
            let x_2144 : vec3<f32> = (vec3<f32>(x_2142.x, x_2142.y, x_2142.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2145 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2144.x, x_2144.y, x_2144.z, x_2145.w);
            let x_2147 : vec4<f32> = u_xlat13;
            let x_2149 : vec4<f32> = u_xlat8;
            let x_2151 : vec3<f32> = (vec3<f32>(x_2147.z, x_2147.y, x_2147.w) / vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
            let x_2152 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2151.x, x_2151.y, x_2151.z, x_2152.w);
            let x_2154 : vec4<f32> = u_xlat11;
            let x_2156 : vec3<f32> = (vec3<f32>(x_2154.x, x_2154.y, x_2154.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2157 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2156.x, x_2156.y, x_2156.z, x_2157.w);
            let x_2159 : vec4<f32> = u_xlat10;
            let x_2162 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2164 : vec3<f32> = (vec3<f32>(x_2159.y, x_2159.x, x_2159.z) * vec3<f32>(x_2162.x, x_2162.x, x_2162.x));
            let x_2165 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2164.x, x_2164.y, x_2164.z, x_2165.w);
            let x_2167 : vec4<f32> = u_xlat11;
            let x_2170 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2172 : vec3<f32> = (vec3<f32>(x_2167.x, x_2167.y, x_2167.z) * vec3<f32>(x_2170.y, x_2170.y, x_2170.y));
            let x_2173 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2172.x, x_2172.y, x_2172.z, x_2173.w);
            let x_2176 : f32 = u_xlat11.x;
            u_xlat10.w = x_2176;
            let x_2178 : vec2<f32> = u_xlat29;
            let x_2181 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2184 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2178.x, x_2178.y, x_2178.x, x_2178.y) * vec4<f32>(x_2181.x, x_2181.y, x_2181.x, x_2181.y)) + vec4<f32>(x_2184.y, x_2184.w, x_2184.x, x_2184.w));
            let x_2187 : vec2<f32> = u_xlat29;
            let x_2189 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2192 : vec4<f32> = u_xlat10;
            let x_2194 : vec2<f32> = ((x_2187 * vec2<f32>(x_2189.x, x_2189.y)) + vec2<f32>(x_2192.z, x_2192.w));
            let x_2195 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2194.x, x_2194.y, x_2195.z, x_2195.w);
            let x_2198 : f32 = u_xlat10.y;
            u_xlat11.w = x_2198;
            let x_2200 : vec4<f32> = u_xlat11;
            let x_2201 : vec2<f32> = vec2<f32>(x_2200.y, x_2200.z);
            let x_2202 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2202.x, x_2201.x, x_2202.z, x_2201.y);
            let x_2204 : vec2<f32> = u_xlat29;
            let x_2207 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2210 : vec4<f32> = u_xlat10;
            u_xlat14 = ((vec4<f32>(x_2204.x, x_2204.y, x_2204.x, x_2204.y) * vec4<f32>(x_2207.x, x_2207.y, x_2207.x, x_2207.y)) + vec4<f32>(x_2210.x, x_2210.y, x_2210.z, x_2210.y));
            let x_2213 : vec2<f32> = u_xlat29;
            let x_2216 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2219 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2213.x, x_2213.y, x_2213.x, x_2213.y) * vec4<f32>(x_2216.x, x_2216.y, x_2216.x, x_2216.y)) + vec4<f32>(x_2219.w, x_2219.y, x_2219.w, x_2219.z));
            let x_2222 : vec2<f32> = u_xlat29;
            let x_2225 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2228 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2222.x, x_2222.y, x_2222.x, x_2222.y) * vec4<f32>(x_2225.x, x_2225.y, x_2225.x, x_2225.y)) + vec4<f32>(x_2228.x, x_2228.w, x_2228.z, x_2228.w));
            let x_2231 : vec4<f32> = u_xlat8;
            let x_2233 : vec4<f32> = u_xlat9;
            u_xlat15 = (vec4<f32>(x_2231.x, x_2231.x, x_2231.x, x_2231.y) * vec4<f32>(x_2233.z, x_2233.w, x_2233.y, x_2233.z));
            let x_2236 : vec4<f32> = u_xlat8;
            let x_2238 : vec4<f32> = u_xlat9;
            u_xlat16 = (vec4<f32>(x_2236.y, x_2236.y, x_2236.z, x_2236.z) * x_2238);
            let x_2241 : f32 = u_xlat8.z;
            let x_2243 : f32 = u_xlat9.y;
            u_xlat29.x = (x_2241 * x_2243);
            let x_2247 : vec4<f32> = u_xlat12;
            let x_2248 : vec2<f32> = vec2<f32>(x_2247.x, x_2247.y);
            let x_2250 : f32 = u_xlat28.z;
            txVec34 = vec3<f32>(x_2248.x, x_2248.y, x_2250);
            let x_2258 : vec3<f32> = txVec34;
            let x_2260 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2258.xy, x_2258.z);
            u_xlat51 = x_2260;
            let x_2262 : vec4<f32> = u_xlat12;
            let x_2263 : vec2<f32> = vec2<f32>(x_2262.z, x_2262.w);
            let x_2265 : f32 = u_xlat28.z;
            txVec35 = vec3<f32>(x_2263.x, x_2263.y, x_2265);
            let x_2273 : vec3<f32> = txVec35;
            let x_2275 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2273.xy, x_2273.z);
            u_xlat73 = x_2275;
            let x_2276 : f32 = u_xlat73;
            let x_2278 : f32 = u_xlat15.y;
            u_xlat73 = (x_2276 * x_2278);
            let x_2281 : f32 = u_xlat15.x;
            let x_2282 : f32 = u_xlat51;
            let x_2284 : f32 = u_xlat73;
            u_xlat51 = ((x_2281 * x_2282) + x_2284);
            let x_2287 : vec4<f32> = u_xlat13;
            let x_2288 : vec2<f32> = vec2<f32>(x_2287.x, x_2287.y);
            let x_2290 : f32 = u_xlat28.z;
            txVec36 = vec3<f32>(x_2288.x, x_2288.y, x_2290);
            let x_2297 : vec3<f32> = txVec36;
            let x_2299 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2297.xy, x_2297.z);
            u_xlat73 = x_2299;
            let x_2301 : f32 = u_xlat15.z;
            let x_2302 : f32 = u_xlat73;
            let x_2304 : f32 = u_xlat51;
            u_xlat51 = ((x_2301 * x_2302) + x_2304);
            let x_2307 : vec4<f32> = u_xlat11;
            let x_2308 : vec2<f32> = vec2<f32>(x_2307.x, x_2307.y);
            let x_2310 : f32 = u_xlat28.z;
            txVec37 = vec3<f32>(x_2308.x, x_2308.y, x_2310);
            let x_2317 : vec3<f32> = txVec37;
            let x_2319 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2317.xy, x_2317.z);
            u_xlat73 = x_2319;
            let x_2321 : f32 = u_xlat15.w;
            let x_2322 : f32 = u_xlat73;
            let x_2324 : f32 = u_xlat51;
            u_xlat51 = ((x_2321 * x_2322) + x_2324);
            let x_2327 : vec4<f32> = u_xlat14;
            let x_2328 : vec2<f32> = vec2<f32>(x_2327.x, x_2327.y);
            let x_2330 : f32 = u_xlat28.z;
            txVec38 = vec3<f32>(x_2328.x, x_2328.y, x_2330);
            let x_2337 : vec3<f32> = txVec38;
            let x_2339 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2337.xy, x_2337.z);
            u_xlat73 = x_2339;
            let x_2341 : f32 = u_xlat16.x;
            let x_2342 : f32 = u_xlat73;
            let x_2344 : f32 = u_xlat51;
            u_xlat51 = ((x_2341 * x_2342) + x_2344);
            let x_2347 : vec4<f32> = u_xlat14;
            let x_2348 : vec2<f32> = vec2<f32>(x_2347.z, x_2347.w);
            let x_2350 : f32 = u_xlat28.z;
            txVec39 = vec3<f32>(x_2348.x, x_2348.y, x_2350);
            let x_2357 : vec3<f32> = txVec39;
            let x_2359 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2357.xy, x_2357.z);
            u_xlat73 = x_2359;
            let x_2361 : f32 = u_xlat16.y;
            let x_2362 : f32 = u_xlat73;
            let x_2364 : f32 = u_xlat51;
            u_xlat51 = ((x_2361 * x_2362) + x_2364);
            let x_2367 : vec4<f32> = u_xlat11;
            let x_2368 : vec2<f32> = vec2<f32>(x_2367.z, x_2367.w);
            let x_2370 : f32 = u_xlat28.z;
            txVec40 = vec3<f32>(x_2368.x, x_2368.y, x_2370);
            let x_2377 : vec3<f32> = txVec40;
            let x_2379 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2377.xy, x_2377.z);
            u_xlat73 = x_2379;
            let x_2381 : f32 = u_xlat16.z;
            let x_2382 : f32 = u_xlat73;
            let x_2384 : f32 = u_xlat51;
            u_xlat51 = ((x_2381 * x_2382) + x_2384);
            let x_2387 : vec4<f32> = u_xlat10;
            let x_2388 : vec2<f32> = vec2<f32>(x_2387.x, x_2387.y);
            let x_2390 : f32 = u_xlat28.z;
            txVec41 = vec3<f32>(x_2388.x, x_2388.y, x_2390);
            let x_2397 : vec3<f32> = txVec41;
            let x_2399 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2397.xy, x_2397.z);
            u_xlat73 = x_2399;
            let x_2401 : f32 = u_xlat16.w;
            let x_2402 : f32 = u_xlat73;
            let x_2404 : f32 = u_xlat51;
            u_xlat51 = ((x_2401 * x_2402) + x_2404);
            let x_2407 : vec4<f32> = u_xlat10;
            let x_2408 : vec2<f32> = vec2<f32>(x_2407.z, x_2407.w);
            let x_2410 : f32 = u_xlat28.z;
            txVec42 = vec3<f32>(x_2408.x, x_2408.y, x_2410);
            let x_2417 : vec3<f32> = txVec42;
            let x_2419 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2417.xy, x_2417.z);
            u_xlat73 = x_2419;
            let x_2421 : f32 = u_xlat29.x;
            let x_2422 : f32 = u_xlat73;
            let x_2424 : f32 = u_xlat51;
            u_xlat7.x = ((x_2421 * x_2422) + x_2424);
          } else {
            let x_2428 : vec3<f32> = u_xlat28;
            let x_2431 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            u_xlat29 = ((vec2<f32>(x_2428.x, x_2428.y) * vec2<f32>(x_2431.z, x_2431.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2435 : vec2<f32> = u_xlat29;
            u_xlat29 = floor(x_2435);
            let x_2437 : vec3<f32> = u_xlat28;
            let x_2440 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2443 : vec2<f32> = u_xlat29;
            let x_2445 : vec2<f32> = ((vec2<f32>(x_2437.x, x_2437.y) * vec2<f32>(x_2440.z, x_2440.w)) + -(x_2443));
            let x_2446 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2445.x, x_2445.y, x_2446.z, x_2446.w);
            let x_2448 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2448.x, x_2448.x, x_2448.y, x_2448.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2451 : vec4<f32> = u_xlat9;
            let x_2453 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2451.x, x_2451.x, x_2451.z, x_2451.z) * vec4<f32>(x_2453.x, x_2453.x, x_2453.z, x_2453.z));
            let x_2456 : vec4<f32> = u_xlat10;
            let x_2458 : vec2<f32> = (vec2<f32>(x_2456.y, x_2456.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2459 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2459.x, x_2458.x, x_2459.z, x_2458.y);
            let x_2461 : vec4<f32> = u_xlat10;
            let x_2464 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2461.x, x_2461.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2464.x, x_2464.y)));
            let x_2468 : vec4<f32> = u_xlat8;
            let x_2471 : vec2<f32> = (-(vec2<f32>(x_2468.x, x_2468.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2472 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2471.x, x_2472.y, x_2471.y, x_2472.w);
            let x_2474 : vec4<f32> = u_xlat8;
            let x_2476 : vec2<f32> = min(vec2<f32>(x_2474.x, x_2474.y), vec2<f32>(0.0f, 0.0f));
            let x_2477 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2476.x, x_2476.y, x_2477.z, x_2477.w);
            let x_2479 : vec4<f32> = u_xlat10;
            let x_2482 : vec4<f32> = u_xlat10;
            let x_2485 : vec4<f32> = u_xlat9;
            let x_2487 : vec2<f32> = ((-(vec2<f32>(x_2479.x, x_2479.y)) * vec2<f32>(x_2482.x, x_2482.y)) + vec2<f32>(x_2485.x, x_2485.z));
            let x_2488 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2487.x, x_2488.y, x_2487.y, x_2488.w);
            let x_2490 : vec4<f32> = u_xlat8;
            let x_2492 : vec2<f32> = max(vec2<f32>(x_2490.x, x_2490.y), vec2<f32>(0.0f, 0.0f));
            let x_2493 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2492.x, x_2492.y, x_2493.z, x_2493.w);
            let x_2495 : vec4<f32> = u_xlat10;
            let x_2498 : vec4<f32> = u_xlat10;
            let x_2501 : vec4<f32> = u_xlat9;
            let x_2503 : vec2<f32> = ((-(vec2<f32>(x_2495.x, x_2495.y)) * vec2<f32>(x_2498.x, x_2498.y)) + vec2<f32>(x_2501.y, x_2501.w));
            let x_2504 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2504.x, x_2503.x, x_2504.z, x_2503.y);
            let x_2506 : vec4<f32> = u_xlat9;
            u_xlat9 = (x_2506 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2510 : f32 = u_xlat9.y;
            u_xlat10.z = (x_2510 * 0.08163200318813323975f);
            let x_2513 : vec2<f32> = u_xlat52;
            let x_2515 : vec2<f32> = (vec2<f32>(x_2513.y, x_2513.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2516 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2515.x, x_2515.y, x_2516.z, x_2516.w);
            let x_2518 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2518.x, x_2518.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2522 : f32 = u_xlat9.w;
            u_xlat12.z = (x_2522 * 0.08163200318813323975f);
            let x_2526 : f32 = u_xlat12.y;
            u_xlat10.x = x_2526;
            let x_2528 : vec4<f32> = u_xlat8;
            let x_2531 : vec2<f32> = ((vec2<f32>(x_2528.x, x_2528.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2532 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2532.x, x_2531.x, x_2532.z, x_2531.y);
            let x_2534 : vec4<f32> = u_xlat8;
            let x_2537 : vec2<f32> = ((vec2<f32>(x_2534.x, x_2534.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2538 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2537.x, x_2538.y, x_2537.y, x_2538.w);
            let x_2541 : f32 = u_xlat52.x;
            u_xlat9.y = x_2541;
            let x_2544 : f32 = u_xlat11.y;
            u_xlat9.w = x_2544;
            let x_2546 : vec4<f32> = u_xlat9;
            let x_2547 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2546 + x_2547);
            let x_2549 : vec4<f32> = u_xlat8;
            let x_2552 : vec2<f32> = ((vec2<f32>(x_2549.y, x_2549.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2553 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2553.x, x_2552.x, x_2553.z, x_2552.y);
            let x_2555 : vec4<f32> = u_xlat8;
            let x_2558 : vec2<f32> = ((vec2<f32>(x_2555.y, x_2555.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2559 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2558.x, x_2559.y, x_2558.y, x_2559.w);
            let x_2562 : f32 = u_xlat52.y;
            u_xlat11.y = x_2562;
            let x_2564 : vec4<f32> = u_xlat11;
            let x_2565 : vec4<f32> = u_xlat12;
            u_xlat8 = (x_2564 + x_2565);
            let x_2567 : vec4<f32> = u_xlat9;
            let x_2568 : vec4<f32> = u_xlat10;
            u_xlat9 = (x_2567 / x_2568);
            let x_2570 : vec4<f32> = u_xlat9;
            u_xlat9 = (x_2570 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2572 : vec4<f32> = u_xlat11;
            let x_2573 : vec4<f32> = u_xlat8;
            u_xlat11 = (x_2572 / x_2573);
            let x_2575 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2575 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2577 : vec4<f32> = u_xlat9;
            let x_2580 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            u_xlat9 = (vec4<f32>(x_2577.w, x_2577.x, x_2577.y, x_2577.z) * vec4<f32>(x_2580.x, x_2580.x, x_2580.x, x_2580.x));
            let x_2583 : vec4<f32> = u_xlat11;
            let x_2586 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2583.x, x_2583.w, x_2583.y, x_2583.z) * vec4<f32>(x_2586.y, x_2586.y, x_2586.y, x_2586.y));
            let x_2589 : vec4<f32> = u_xlat9;
            let x_2590 : vec3<f32> = vec3<f32>(x_2589.y, x_2589.z, x_2589.w);
            let x_2591 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2590.x, x_2591.y, x_2590.y, x_2590.z);
            let x_2594 : f32 = u_xlat11.x;
            u_xlat12.y = x_2594;
            let x_2596 : vec2<f32> = u_xlat29;
            let x_2599 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2602 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2596.x, x_2596.y, x_2596.x, x_2596.y) * vec4<f32>(x_2599.x, x_2599.y, x_2599.x, x_2599.y)) + vec4<f32>(x_2602.x, x_2602.y, x_2602.z, x_2602.y));
            let x_2605 : vec2<f32> = u_xlat29;
            let x_2607 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2610 : vec4<f32> = u_xlat12;
            let x_2612 : vec2<f32> = ((x_2605 * vec2<f32>(x_2607.x, x_2607.y)) + vec2<f32>(x_2610.w, x_2610.y));
            let x_2613 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2612.x, x_2612.y, x_2613.z, x_2613.w);
            let x_2616 : f32 = u_xlat12.y;
            u_xlat9.y = x_2616;
            let x_2619 : f32 = u_xlat11.z;
            u_xlat12.y = x_2619;
            let x_2621 : vec2<f32> = u_xlat29;
            let x_2624 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2627 : vec4<f32> = u_xlat12;
            u_xlat15 = ((vec4<f32>(x_2621.x, x_2621.y, x_2621.x, x_2621.y) * vec4<f32>(x_2624.x, x_2624.y, x_2624.x, x_2624.y)) + vec4<f32>(x_2627.x, x_2627.y, x_2627.z, x_2627.y));
            let x_2631 : vec2<f32> = u_xlat29;
            let x_2633 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2636 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2631 * vec2<f32>(x_2633.x, x_2633.y)) + vec2<f32>(x_2636.w, x_2636.y));
            let x_2640 : f32 = u_xlat12.y;
            u_xlat9.z = x_2640;
            let x_2642 : vec2<f32> = u_xlat29;
            let x_2645 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2648 : vec4<f32> = u_xlat9;
            u_xlat16 = ((vec4<f32>(x_2642.x, x_2642.y, x_2642.x, x_2642.y) * vec4<f32>(x_2645.x, x_2645.y, x_2645.x, x_2645.y)) + vec4<f32>(x_2648.x, x_2648.y, x_2648.x, x_2648.z));
            let x_2652 : f32 = u_xlat11.w;
            u_xlat12.y = x_2652;
            let x_2655 : vec2<f32> = u_xlat29;
            let x_2658 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2661 : vec4<f32> = u_xlat12;
            u_xlat17 = ((vec4<f32>(x_2655.x, x_2655.y, x_2655.x, x_2655.y) * vec4<f32>(x_2658.x, x_2658.y, x_2658.x, x_2658.y)) + vec4<f32>(x_2661.x, x_2661.y, x_2661.z, x_2661.y));
            let x_2665 : vec2<f32> = u_xlat29;
            let x_2667 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2670 : vec4<f32> = u_xlat12;
            u_xlat31 = ((x_2665 * vec2<f32>(x_2667.x, x_2667.y)) + vec2<f32>(x_2670.w, x_2670.y));
            let x_2674 : f32 = u_xlat12.y;
            u_xlat9.w = x_2674;
            let x_2677 : vec2<f32> = u_xlat29;
            let x_2679 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2682 : vec4<f32> = u_xlat9;
            u_xlat18 = ((x_2677 * vec2<f32>(x_2679.x, x_2679.y)) + vec2<f32>(x_2682.x, x_2682.w));
            let x_2685 : vec4<f32> = u_xlat12;
            let x_2686 : vec3<f32> = vec3<f32>(x_2685.x, x_2685.z, x_2685.w);
            let x_2687 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2686.x, x_2687.y, x_2686.y, x_2686.z);
            let x_2689 : vec2<f32> = u_xlat29;
            let x_2692 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2695 : vec4<f32> = u_xlat11;
            u_xlat12 = ((vec4<f32>(x_2689.x, x_2689.y, x_2689.x, x_2689.y) * vec4<f32>(x_2692.x, x_2692.y, x_2692.x, x_2692.y)) + vec4<f32>(x_2695.x, x_2695.y, x_2695.z, x_2695.y));
            let x_2698 : vec2<f32> = u_xlat29;
            let x_2700 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2703 : vec4<f32> = u_xlat11;
            u_xlat55 = ((x_2698 * vec2<f32>(x_2700.x, x_2700.y)) + vec2<f32>(x_2703.w, x_2703.y));
            let x_2707 : f32 = u_xlat9.x;
            u_xlat11.x = x_2707;
            let x_2709 : vec2<f32> = u_xlat29;
            let x_2711 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2714 : vec4<f32> = u_xlat11;
            u_xlat29 = ((x_2709 * vec2<f32>(x_2711.x, x_2711.y)) + vec2<f32>(x_2714.x, x_2714.y));
            let x_2718 : vec4<f32> = u_xlat8;
            let x_2720 : vec4<f32> = u_xlat10;
            u_xlat19 = (vec4<f32>(x_2718.x, x_2718.x, x_2718.x, x_2718.x) * x_2720);
            let x_2723 : vec4<f32> = u_xlat8;
            let x_2725 : vec4<f32> = u_xlat10;
            u_xlat20 = (vec4<f32>(x_2723.y, x_2723.y, x_2723.y, x_2723.y) * x_2725);
            let x_2728 : vec4<f32> = u_xlat8;
            let x_2730 : vec4<f32> = u_xlat10;
            u_xlat21 = (vec4<f32>(x_2728.z, x_2728.z, x_2728.z, x_2728.z) * x_2730);
            let x_2732 : vec4<f32> = u_xlat8;
            let x_2734 : vec4<f32> = u_xlat10;
            u_xlat8 = (vec4<f32>(x_2732.w, x_2732.w, x_2732.w, x_2732.w) * x_2734);
            let x_2737 : vec4<f32> = u_xlat13;
            let x_2738 : vec2<f32> = vec2<f32>(x_2737.x, x_2737.y);
            let x_2740 : f32 = u_xlat28.z;
            txVec43 = vec3<f32>(x_2738.x, x_2738.y, x_2740);
            let x_2747 : vec3<f32> = txVec43;
            let x_2749 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2747.xy, x_2747.z);
            u_xlat73 = x_2749;
            let x_2751 : vec4<f32> = u_xlat13;
            let x_2752 : vec2<f32> = vec2<f32>(x_2751.z, x_2751.w);
            let x_2754 : f32 = u_xlat28.z;
            txVec44 = vec3<f32>(x_2752.x, x_2752.y, x_2754);
            let x_2761 : vec3<f32> = txVec44;
            let x_2763 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2761.xy, x_2761.z);
            u_xlat9.x = x_2763;
            let x_2766 : f32 = u_xlat9.x;
            let x_2768 : f32 = u_xlat19.y;
            u_xlat9.x = (x_2766 * x_2768);
            let x_2772 : f32 = u_xlat19.x;
            let x_2773 : f32 = u_xlat73;
            let x_2776 : f32 = u_xlat9.x;
            u_xlat73 = ((x_2772 * x_2773) + x_2776);
            let x_2779 : vec4<f32> = u_xlat14;
            let x_2780 : vec2<f32> = vec2<f32>(x_2779.x, x_2779.y);
            let x_2782 : f32 = u_xlat28.z;
            txVec45 = vec3<f32>(x_2780.x, x_2780.y, x_2782);
            let x_2789 : vec3<f32> = txVec45;
            let x_2791 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2789.xy, x_2789.z);
            u_xlat9.x = x_2791;
            let x_2794 : f32 = u_xlat19.z;
            let x_2796 : f32 = u_xlat9.x;
            let x_2798 : f32 = u_xlat73;
            u_xlat73 = ((x_2794 * x_2796) + x_2798);
            let x_2801 : vec4<f32> = u_xlat16;
            let x_2802 : vec2<f32> = vec2<f32>(x_2801.x, x_2801.y);
            let x_2804 : f32 = u_xlat28.z;
            txVec46 = vec3<f32>(x_2802.x, x_2802.y, x_2804);
            let x_2811 : vec3<f32> = txVec46;
            let x_2813 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2811.xy, x_2811.z);
            u_xlat9.x = x_2813;
            let x_2816 : f32 = u_xlat19.w;
            let x_2818 : f32 = u_xlat9.x;
            let x_2820 : f32 = u_xlat73;
            u_xlat73 = ((x_2816 * x_2818) + x_2820);
            let x_2823 : vec4<f32> = u_xlat15;
            let x_2824 : vec2<f32> = vec2<f32>(x_2823.x, x_2823.y);
            let x_2826 : f32 = u_xlat28.z;
            txVec47 = vec3<f32>(x_2824.x, x_2824.y, x_2826);
            let x_2833 : vec3<f32> = txVec47;
            let x_2835 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2833.xy, x_2833.z);
            u_xlat9.x = x_2835;
            let x_2838 : f32 = u_xlat20.x;
            let x_2840 : f32 = u_xlat9.x;
            let x_2842 : f32 = u_xlat73;
            u_xlat73 = ((x_2838 * x_2840) + x_2842);
            let x_2845 : vec4<f32> = u_xlat15;
            let x_2846 : vec2<f32> = vec2<f32>(x_2845.z, x_2845.w);
            let x_2848 : f32 = u_xlat28.z;
            txVec48 = vec3<f32>(x_2846.x, x_2846.y, x_2848);
            let x_2855 : vec3<f32> = txVec48;
            let x_2857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2855.xy, x_2855.z);
            u_xlat9.x = x_2857;
            let x_2860 : f32 = u_xlat20.y;
            let x_2862 : f32 = u_xlat9.x;
            let x_2864 : f32 = u_xlat73;
            u_xlat73 = ((x_2860 * x_2862) + x_2864);
            let x_2867 : vec2<f32> = u_xlat58;
            let x_2869 : f32 = u_xlat28.z;
            txVec49 = vec3<f32>(x_2867.x, x_2867.y, x_2869);
            let x_2876 : vec3<f32> = txVec49;
            let x_2878 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2876.xy, x_2876.z);
            u_xlat9.x = x_2878;
            let x_2881 : f32 = u_xlat20.z;
            let x_2883 : f32 = u_xlat9.x;
            let x_2885 : f32 = u_xlat73;
            u_xlat73 = ((x_2881 * x_2883) + x_2885);
            let x_2888 : vec4<f32> = u_xlat16;
            let x_2889 : vec2<f32> = vec2<f32>(x_2888.z, x_2888.w);
            let x_2891 : f32 = u_xlat28.z;
            txVec50 = vec3<f32>(x_2889.x, x_2889.y, x_2891);
            let x_2898 : vec3<f32> = txVec50;
            let x_2900 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2898.xy, x_2898.z);
            u_xlat9.x = x_2900;
            let x_2903 : f32 = u_xlat20.w;
            let x_2905 : f32 = u_xlat9.x;
            let x_2907 : f32 = u_xlat73;
            u_xlat73 = ((x_2903 * x_2905) + x_2907);
            let x_2910 : vec4<f32> = u_xlat17;
            let x_2911 : vec2<f32> = vec2<f32>(x_2910.x, x_2910.y);
            let x_2913 : f32 = u_xlat28.z;
            txVec51 = vec3<f32>(x_2911.x, x_2911.y, x_2913);
            let x_2920 : vec3<f32> = txVec51;
            let x_2922 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2920.xy, x_2920.z);
            u_xlat9.x = x_2922;
            let x_2925 : f32 = u_xlat21.x;
            let x_2927 : f32 = u_xlat9.x;
            let x_2929 : f32 = u_xlat73;
            u_xlat73 = ((x_2925 * x_2927) + x_2929);
            let x_2932 : vec4<f32> = u_xlat17;
            let x_2933 : vec2<f32> = vec2<f32>(x_2932.z, x_2932.w);
            let x_2935 : f32 = u_xlat28.z;
            txVec52 = vec3<f32>(x_2933.x, x_2933.y, x_2935);
            let x_2942 : vec3<f32> = txVec52;
            let x_2944 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2942.xy, x_2942.z);
            u_xlat9.x = x_2944;
            let x_2947 : f32 = u_xlat21.y;
            let x_2949 : f32 = u_xlat9.x;
            let x_2951 : f32 = u_xlat73;
            u_xlat73 = ((x_2947 * x_2949) + x_2951);
            let x_2954 : vec2<f32> = u_xlat31;
            let x_2956 : f32 = u_xlat28.z;
            txVec53 = vec3<f32>(x_2954.x, x_2954.y, x_2956);
            let x_2963 : vec3<f32> = txVec53;
            let x_2965 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2963.xy, x_2963.z);
            u_xlat9.x = x_2965;
            let x_2968 : f32 = u_xlat21.z;
            let x_2970 : f32 = u_xlat9.x;
            let x_2972 : f32 = u_xlat73;
            u_xlat73 = ((x_2968 * x_2970) + x_2972);
            let x_2975 : vec2<f32> = u_xlat18;
            let x_2977 : f32 = u_xlat28.z;
            txVec54 = vec3<f32>(x_2975.x, x_2975.y, x_2977);
            let x_2984 : vec3<f32> = txVec54;
            let x_2986 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2984.xy, x_2984.z);
            u_xlat9.x = x_2986;
            let x_2989 : f32 = u_xlat21.w;
            let x_2991 : f32 = u_xlat9.x;
            let x_2993 : f32 = u_xlat73;
            u_xlat73 = ((x_2989 * x_2991) + x_2993);
            let x_2996 : vec4<f32> = u_xlat12;
            let x_2997 : vec2<f32> = vec2<f32>(x_2996.x, x_2996.y);
            let x_2999 : f32 = u_xlat28.z;
            txVec55 = vec3<f32>(x_2997.x, x_2997.y, x_2999);
            let x_3006 : vec3<f32> = txVec55;
            let x_3008 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3006.xy, x_3006.z);
            u_xlat9.x = x_3008;
            let x_3011 : f32 = u_xlat8.x;
            let x_3013 : f32 = u_xlat9.x;
            let x_3015 : f32 = u_xlat73;
            u_xlat73 = ((x_3011 * x_3013) + x_3015);
            let x_3018 : vec4<f32> = u_xlat12;
            let x_3019 : vec2<f32> = vec2<f32>(x_3018.z, x_3018.w);
            let x_3021 : f32 = u_xlat28.z;
            txVec56 = vec3<f32>(x_3019.x, x_3019.y, x_3021);
            let x_3028 : vec3<f32> = txVec56;
            let x_3030 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3028.xy, x_3028.z);
            u_xlat8.x = x_3030;
            let x_3033 : f32 = u_xlat8.y;
            let x_3035 : f32 = u_xlat8.x;
            let x_3037 : f32 = u_xlat73;
            u_xlat73 = ((x_3033 * x_3035) + x_3037);
            let x_3040 : vec2<f32> = u_xlat55;
            let x_3042 : f32 = u_xlat28.z;
            txVec57 = vec3<f32>(x_3040.x, x_3040.y, x_3042);
            let x_3049 : vec3<f32> = txVec57;
            let x_3051 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3049.xy, x_3049.z);
            u_xlat8.x = x_3051;
            let x_3054 : f32 = u_xlat8.z;
            let x_3056 : f32 = u_xlat8.x;
            let x_3058 : f32 = u_xlat73;
            u_xlat73 = ((x_3054 * x_3056) + x_3058);
            let x_3061 : vec2<f32> = u_xlat29;
            let x_3063 : f32 = u_xlat28.z;
            txVec58 = vec3<f32>(x_3061.x, x_3061.y, x_3063);
            let x_3070 : vec3<f32> = txVec58;
            let x_3072 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3070.xy, x_3070.z);
            u_xlat29.x = x_3072;
            let x_3075 : f32 = u_xlat8.w;
            let x_3077 : f32 = u_xlat29.x;
            let x_3079 : f32 = u_xlat73;
            u_xlat7.x = ((x_3075 * x_3077) + x_3079);
          }
        }
      } else {
        let x_3084 : vec3<f32> = u_xlat28;
        let x_3085 : vec2<f32> = vec2<f32>(x_3084.x, x_3084.y);
        let x_3087 : f32 = u_xlat28.z;
        txVec59 = vec3<f32>(x_3085.x, x_3085.y, x_3087);
        let x_3094 : vec3<f32> = txVec59;
        let x_3096 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3094.xy, x_3094.z);
        u_xlat7.x = x_3096;
      }
      let x_3098 : i32 = u_xlati5;
      let x_3100 : f32 = x_181.x_AdditionalShadowParams[x_3098].x;
      u_xlat28.x = (1.0f + -(x_3100));
      let x_3105 : f32 = u_xlat7.x;
      let x_3106 : i32 = u_xlati5;
      let x_3108 : f32 = x_181.x_AdditionalShadowParams[x_3106].x;
      let x_3111 : f32 = u_xlat28.x;
      u_xlat28.x = ((x_3105 * x_3108) + x_3111);
      let x_3115 : f32 = u_xlat28.z;
      u_xlatb50 = (0.0f >= x_3115);
      let x_3119 : f32 = u_xlat28.z;
      u_xlatb72 = (x_3119 >= 1.0f);
      let x_3121 : bool = u_xlatb72;
      let x_3122 : bool = u_xlatb50;
      u_xlatb50 = (x_3121 | x_3122);
      let x_3124 : bool = u_xlatb50;
      if (x_3124) {
        x_3125 = 1.0f;
      } else {
        let x_3130 : f32 = u_xlat28.x;
        x_3125 = x_3130;
      }
      let x_3131 : f32 = x_3125;
      u_xlat28.x = x_3131;
    } else {
      u_xlat28.x = 1.0f;
    }
    let x_3136 : f32 = u_xlat28.x;
    u_xlat50.x = (-(x_3136) + 1.0f);
    let x_3141 : f32 = u_xlat3.x;
    let x_3143 : f32 = u_xlat50.x;
    let x_3146 : f32 = u_xlat28.x;
    u_xlat28.x = ((x_3141 * x_3143) + x_3146);
    let x_3150 : f32 = u_xlat28.x;
    let x_3152 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3150 * x_3152);
    let x_3155 : vec4<f32> = u_xlat6;
    let x_3157 : i32 = u_xlati5;
    let x_3159 : vec4<f32> = x_1642.x_AdditionalLightsColor[x_3157];
    let x_3161 : vec3<f32> = (vec3<f32>(x_3155.x, x_3155.x, x_3155.x) * vec3<f32>(x_3159.x, x_3159.y, x_3159.z));
    let x_3162 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3161.x, x_3161.y, x_3161.z, x_3162.w);
    let x_3164 : vec3<f32> = u_xlat1;
    let x_3165 : vec3<f32> = u_xlat27;
    u_xlat5.x = dot(x_3164, x_3165);
    let x_3169 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_3169, 0.0f, 1.0f);
    let x_3172 : vec4<f32> = u_xlat5;
    let x_3174 : vec4<f32> = u_xlat6;
    let x_3176 : vec3<f32> = (vec3<f32>(x_3172.x, x_3172.x, x_3172.x) * vec3<f32>(x_3174.x, x_3174.y, x_3174.z));
    let x_3177 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3176.x, x_3176.y, x_3176.z, x_3177.w);
    let x_3179 : vec4<f32> = u_xlat5;
    let x_3181 : vec4<f32> = u_xlat0;
    let x_3184 : vec4<f32> = u_xlat4;
    let x_3186 : vec3<f32> = ((vec3<f32>(x_3179.x, x_3179.y, x_3179.z) * vec3<f32>(x_3181.y, x_3181.z, x_3181.w)) + vec3<f32>(x_3184.x, x_3184.y, x_3184.z));
    let x_3187 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_3186.x, x_3186.y, x_3186.z, x_3187.w);

    continuing {
      let x_3189 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3189 + bitcast<u32>(1i));
    }
  }
  let x_3192 : vec4<f32> = u_xlat2;
  let x_3194 : vec4<f32> = u_xlat0;
  let x_3197 : vec3<f32> = u_xlat25;
  u_xlat22 = ((vec3<f32>(x_3192.x, x_3192.y, x_3192.z) * vec3<f32>(x_3194.y, x_3194.z, x_3194.w)) + x_3197);
  let x_3199 : vec4<f32> = u_xlat4;
  let x_3201 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_3199.x, x_3199.y, x_3199.z) + x_3201);
  let x_3203 : f32 = u_xlat67;
  let x_3204 : f32 = u_xlat67;
  u_xlat1.x = (x_3203 * -(x_3204));
  let x_3209 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3209);
  let x_3212 : vec3<f32> = u_xlat22;
  let x_3214 : vec4<f32> = x_28.unity_FogColor;
  u_xlat22 = (x_3212 + -(vec3<f32>(x_3214.x, x_3214.y, x_3214.z)));
  let x_3220 : vec3<f32> = u_xlat1;
  let x_3222 : vec3<f32> = u_xlat22;
  let x_3225 : vec4<f32> = x_28.unity_FogColor;
  let x_3227 : vec3<f32> = ((vec3<f32>(x_3220.x, x_3220.x, x_3220.x) * x_3222) + vec3<f32>(x_3225.x, x_3225.y, x_3225.z));
  let x_3228 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3227.x, x_3227.y, x_3227.z, x_3228.w);
  let x_3232 : f32 = x_41.x_Surface;
  u_xlatb22 = (x_3232 == 1.0f);
  let x_3234 : bool = u_xlatb22;
  if (x_3234) {
    let x_3239 : f32 = u_xlat0.x;
    x_3235 = x_3239;
  } else {
    x_3235 = 1.0f;
  }
  let x_3241 : f32 = x_3235;
  SV_Target0.w = x_3241;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


