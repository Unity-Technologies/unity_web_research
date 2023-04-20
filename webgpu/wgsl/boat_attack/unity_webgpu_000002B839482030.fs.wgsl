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

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicTex : sampler;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> u_xlat27 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb54 : bool;

@group(1) @binding(3) var<uniform> x_273 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat54 : f32;

var<private> u_xlatb79 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1673 : UnityPerDraw;

var<private> u_xlatu75 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_1904 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat60 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat85 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb60 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

var<private> u_xlatb81 : bool;

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
  var x_2055 : f32;
  var x_2066 : f32;
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
  var x_3396 : f32;
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
  let x_82 : vec4<f32> = vs_TEXCOORD3;
  let x_84 : vec4<f32> = vs_TEXCOORD3;
  u_xlat26.x = dot(vec3<f32>(x_82.x, x_82.y, x_82.z), vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_89 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_89);
  let x_92 : vec3<f32> = u_xlat26;
  let x_94 : vec4<f32> = vs_TEXCOORD3;
  u_xlat26 = (vec3<f32>(x_92.x, x_92.x, x_92.x) * vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_103 : f32 = vs_TEXCOORD7.y;
  let x_107 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2 = (x_103 * x_107);
  let x_110 : f32 = x_29.unity_MatrixV[0i].z;
  let x_112 : f32 = vs_TEXCOORD7.x;
  let x_114 : f32 = u_xlat2;
  u_xlat2 = ((x_110 * x_112) + x_114);
  let x_118 : f32 = x_29.unity_MatrixV[2i].z;
  let x_120 : f32 = vs_TEXCOORD7.z;
  let x_122 : f32 = u_xlat2;
  u_xlat2 = ((x_118 * x_120) + x_122);
  let x_124 : f32 = u_xlat2;
  let x_127 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat2 = (x_124 + x_127);
  let x_129 : f32 = u_xlat2;
  let x_133 : f32 = x_29.x_ProjectionParams.y;
  u_xlat2 = (-(x_129) + -(x_133));
  let x_136 : f32 = u_xlat2;
  u_xlat2 = max(x_136, 0.0f);
  let x_138 : f32 = u_xlat2;
  let x_141 : f32 = x_29.unity_FogParams.x;
  u_xlat2 = (x_138 * x_141);
  let x_149 : vec4<f32> = vs_TEXCOORD0;
  let x_152 : f32 = x_29.x_GlobalMipBias.x;
  let x_153 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_149.z, x_149.w), x_152);
  u_xlat3 = x_153;
  let x_159 : vec4<f32> = vs_TEXCOORD0;
  let x_162 : f32 = x_29.x_GlobalMipBias.x;
  let x_163 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_159.z, x_159.w), x_162);
  u_xlat27 = vec3<f32>(x_163.x, x_163.y, x_163.z);
  let x_165 : vec4<f32> = u_xlat3;
  let x_169 : vec3<f32> = (vec3<f32>(x_165.x, x_165.y, x_165.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_170 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_172 : vec3<f32> = u_xlat26;
  let x_173 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_172, vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_178 : f32 = u_xlat3.x;
  u_xlat3.x = (x_178 + 0.5f);
  let x_182 : vec3<f32> = u_xlat27;
  let x_183 : vec4<f32> = u_xlat3;
  u_xlat27 = (x_182 * vec3<f32>(x_183.x, x_183.x, x_183.x));
  let x_188 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_188, 0.00009999999747378752f);
  let x_192 : vec3<f32> = u_xlat27;
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat27 = (x_192 / vec3<f32>(x_193.x, x_193.x, x_193.x));
  let x_196 : f32 = u_xlat1;
  u_xlat3.x = ((-(x_196) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_204 : f32 = u_xlat3.x;
  u_xlat28 = (-(x_204) + 1.0f);
  let x_208 : vec4<f32> = u_xlat0;
  let x_210 : vec4<f32> = u_xlat3;
  let x_212 : vec3<f32> = (vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_210.x, x_210.x, x_210.x));
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_212.x, x_213.y, x_212.y, x_212.z);
  let x_215 : vec4<f32> = u_xlat0;
  let x_219 : vec3<f32> = (vec3<f32>(x_215.x, x_215.y, x_215.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_220 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : f32 = u_xlat1;
  let x_224 : vec4<f32> = u_xlat0;
  let x_229 : vec3<f32> = ((vec3<f32>(x_222, x_222, x_222) * vec3<f32>(x_224.x, x_224.y, x_224.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_230 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_233) + 1.0f);
  let x_237 : f32 = u_xlat1;
  let x_238 : f32 = u_xlat1;
  u_xlat4.x = (x_237 * x_238);
  let x_242 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_242, 0.0078125f);
  let x_248 : f32 = u_xlat4.x;
  let x_250 : f32 = u_xlat4.x;
  u_xlat29 = (x_248 * x_250);
  let x_254 : f32 = u_xlat0.w;
  let x_255 : f32 = u_xlat28;
  u_xlat75 = (x_254 + x_255);
  let x_257 : f32 = u_xlat75;
  u_xlat75 = clamp(x_257, 0.0f, 1.0f);
  let x_260 : f32 = u_xlat4.x;
  u_xlat28 = ((x_260 * 4.0f) + 2.0f);
  let x_275 : f32 = x_273.x_MainLightShadowParams.y;
  u_xlatb54 = (0.0f < x_275);
  let x_277 : bool = u_xlatb54;
  if (x_277) {
    let x_281 : f32 = x_273.x_MainLightShadowParams.y;
    u_xlatb54 = (x_281 == 1.0f);
    let x_283 : bool = u_xlatb54;
    if (x_283) {
      let x_288 : vec4<f32> = vs_TEXCOORD8;
      let x_292 : vec4<f32> = x_273.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_288.x, x_288.y, x_288.x, x_288.y) + x_292);
      let x_296 : vec4<f32> = u_xlat5;
      let x_297 : vec2<f32> = vec2<f32>(x_296.x, x_296.y);
      let x_299 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_297.x, x_297.y, x_299);
      let x_312 : vec3<f32> = txVec0;
      let x_314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_312.xy, x_312.z);
      u_xlat6.x = x_314;
      let x_317 : vec4<f32> = u_xlat5;
      let x_318 : vec2<f32> = vec2<f32>(x_317.z, x_317.w);
      let x_320 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_318.x, x_318.y, x_320);
      let x_327 : vec3<f32> = txVec1;
      let x_329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_327.xy, x_327.z);
      u_xlat6.y = x_329;
      let x_331 : vec4<f32> = vs_TEXCOORD8;
      let x_335 : vec4<f32> = x_273.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_331.x, x_331.y, x_331.x, x_331.y) + x_335);
      let x_338 : vec4<f32> = u_xlat5;
      let x_339 : vec2<f32> = vec2<f32>(x_338.x, x_338.y);
      let x_341 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_339.x, x_339.y, x_341);
      let x_348 : vec3<f32> = txVec2;
      let x_350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_348.xy, x_348.z);
      u_xlat6.z = x_350;
      let x_353 : vec4<f32> = u_xlat5;
      let x_354 : vec2<f32> = vec2<f32>(x_353.z, x_353.w);
      let x_356 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_354.x, x_354.y, x_356);
      let x_363 : vec3<f32> = txVec3;
      let x_365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_363.xy, x_363.z);
      u_xlat6.w = x_365;
      let x_368 : vec4<f32> = u_xlat6;
      u_xlat54 = dot(x_368, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_375 : f32 = x_273.x_MainLightShadowParams.y;
      u_xlatb79 = (x_375 == 2.0f);
      let x_377 : bool = u_xlatb79;
      if (x_377) {
        let x_380 : vec4<f32> = vs_TEXCOORD8;
        let x_384 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_388 : vec2<f32> = ((vec2<f32>(x_380.x, x_380.y) * vec2<f32>(x_384.z, x_384.w)) + vec2<f32>(0.5f, 0.5f));
        let x_389 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
        let x_391 : vec4<f32> = u_xlat5;
        let x_393 : vec2<f32> = floor(vec2<f32>(x_391.x, x_391.y));
        let x_394 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_393.x, x_393.y, x_394.z, x_394.w);
        let x_398 : vec4<f32> = vs_TEXCOORD8;
        let x_401 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_404 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_398.x, x_398.y) * vec2<f32>(x_401.z, x_401.w)) + -(vec2<f32>(x_404.x, x_404.y)));
        let x_408 : vec2<f32> = u_xlat55;
        u_xlat6 = (vec4<f32>(x_408.x, x_408.x, x_408.y, x_408.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_413 : vec4<f32> = u_xlat6;
        let x_415 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_413.x, x_413.x, x_413.z, x_413.z) * vec4<f32>(x_415.x, x_415.x, x_415.z, x_415.z));
        let x_418 : vec4<f32> = u_xlat7;
        let x_422 : vec2<f32> = (vec2<f32>(x_418.y, x_418.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_423 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_422.x, x_423.y, x_422.y, x_423.w);
        let x_425 : vec4<f32> = u_xlat7;
        let x_428 : vec2<f32> = u_xlat55;
        let x_430 : vec2<f32> = ((vec2<f32>(x_425.x, x_425.z) * vec2<f32>(0.5f, 0.5f)) + -(x_428));
        let x_431 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
        let x_434 : vec2<f32> = u_xlat55;
        u_xlat57 = (-(x_434) + vec2<f32>(1.0f, 1.0f));
        let x_439 : vec2<f32> = u_xlat55;
        let x_441 : vec2<f32> = min(x_439, vec2<f32>(0.0f, 0.0f));
        let x_442 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_441.x, x_441.y, x_442.z, x_442.w);
        let x_444 : vec4<f32> = u_xlat8;
        let x_447 : vec4<f32> = u_xlat8;
        let x_450 : vec2<f32> = u_xlat57;
        let x_451 : vec2<f32> = ((-(vec2<f32>(x_444.x, x_444.y)) * vec2<f32>(x_447.x, x_447.y)) + x_450);
        let x_452 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_451.x, x_451.y, x_452.z, x_452.w);
        let x_454 : vec2<f32> = u_xlat55;
        u_xlat55 = max(x_454, vec2<f32>(0.0f, 0.0f));
        let x_456 : vec2<f32> = u_xlat55;
        let x_458 : vec2<f32> = u_xlat55;
        let x_460 : vec4<f32> = u_xlat6;
        u_xlat55 = ((-(x_456) * x_458) + vec2<f32>(x_460.y, x_460.w));
        let x_463 : vec4<f32> = u_xlat8;
        let x_465 : vec2<f32> = (vec2<f32>(x_463.x, x_463.y) + vec2<f32>(1.0f, 1.0f));
        let x_466 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
        let x_468 : vec2<f32> = u_xlat55;
        u_xlat55 = (x_468 + vec2<f32>(1.0f, 1.0f));
        let x_471 : vec4<f32> = u_xlat7;
        let x_475 : vec2<f32> = (vec2<f32>(x_471.x, x_471.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_476 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
        let x_478 : vec2<f32> = u_xlat57;
        let x_479 : vec2<f32> = (x_478 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_480 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_482 : vec4<f32> = u_xlat8;
        let x_484 : vec2<f32> = (vec2<f32>(x_482.x, x_482.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_485 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
        let x_488 : vec2<f32> = u_xlat55;
        let x_489 : vec2<f32> = (x_488 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_490 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
        let x_492 : vec4<f32> = u_xlat6;
        u_xlat55 = (vec2<f32>(x_492.y, x_492.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_496 : f32 = u_xlat8.x;
        u_xlat9.z = x_496;
        let x_499 : f32 = u_xlat55.x;
        u_xlat9.w = x_499;
        let x_502 : f32 = u_xlat10.x;
        u_xlat7.z = x_502;
        let x_505 : f32 = u_xlat6.x;
        u_xlat7.w = x_505;
        let x_508 : vec4<f32> = u_xlat7;
        let x_510 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_508.z, x_508.w, x_508.x, x_508.z) + vec4<f32>(x_510.z, x_510.w, x_510.x, x_510.z));
        let x_514 : f32 = u_xlat9.y;
        u_xlat8.z = x_514;
        let x_517 : f32 = u_xlat55.y;
        u_xlat8.w = x_517;
        let x_520 : f32 = u_xlat7.y;
        u_xlat10.z = x_520;
        let x_523 : f32 = u_xlat6.z;
        u_xlat10.w = x_523;
        let x_525 : vec4<f32> = u_xlat8;
        let x_527 : vec4<f32> = u_xlat10;
        let x_529 : vec3<f32> = (vec3<f32>(x_525.z, x_525.y, x_525.w) + vec3<f32>(x_527.z, x_527.y, x_527.w));
        let x_530 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat7;
        let x_534 : vec4<f32> = u_xlat11;
        let x_536 : vec3<f32> = (vec3<f32>(x_532.x, x_532.z, x_532.w) / vec3<f32>(x_534.z, x_534.w, x_534.y));
        let x_537 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
        let x_539 : vec4<f32> = u_xlat7;
        let x_544 : vec3<f32> = (vec3<f32>(x_539.x, x_539.y, x_539.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_545 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
        let x_547 : vec4<f32> = u_xlat10;
        let x_549 : vec4<f32> = u_xlat6;
        let x_551 : vec3<f32> = (vec3<f32>(x_547.z, x_547.y, x_547.w) / vec3<f32>(x_549.x, x_549.y, x_549.z));
        let x_552 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
        let x_554 : vec4<f32> = u_xlat8;
        let x_556 : vec3<f32> = (vec3<f32>(x_554.x, x_554.y, x_554.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_557 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
        let x_559 : vec4<f32> = u_xlat7;
        let x_562 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_564 : vec3<f32> = (vec3<f32>(x_559.y, x_559.x, x_559.z) * vec3<f32>(x_562.x, x_562.x, x_562.x));
        let x_565 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat8;
        let x_570 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_572 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(x_570.y, x_570.y, x_570.y));
        let x_573 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
        let x_576 : f32 = u_xlat8.x;
        u_xlat7.w = x_576;
        let x_578 : vec4<f32> = u_xlat5;
        let x_581 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_584 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_578.x, x_578.y, x_578.x, x_578.y) * vec4<f32>(x_581.x, x_581.y, x_581.x, x_581.y)) + vec4<f32>(x_584.y, x_584.w, x_584.x, x_584.w));
        let x_587 : vec4<f32> = u_xlat5;
        let x_590 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_593 : vec4<f32> = u_xlat7;
        u_xlat55 = ((vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_590.x, x_590.y)) + vec2<f32>(x_593.z, x_593.w));
        let x_597 : f32 = u_xlat7.y;
        u_xlat8.w = x_597;
        let x_599 : vec4<f32> = u_xlat8;
        let x_600 : vec2<f32> = vec2<f32>(x_599.y, x_599.z);
        let x_601 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_601.x, x_600.x, x_601.z, x_600.y);
        let x_603 : vec4<f32> = u_xlat5;
        let x_606 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_609 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_603.x, x_603.y, x_603.x, x_603.y) * vec4<f32>(x_606.x, x_606.y, x_606.x, x_606.y)) + vec4<f32>(x_609.x, x_609.y, x_609.z, x_609.y));
        let x_612 : vec4<f32> = u_xlat5;
        let x_615 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_618 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_612.x, x_612.y, x_612.x, x_612.y) * vec4<f32>(x_615.x, x_615.y, x_615.x, x_615.y)) + vec4<f32>(x_618.w, x_618.y, x_618.w, x_618.z));
        let x_621 : vec4<f32> = u_xlat5;
        let x_624 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_627 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_621.x, x_621.y, x_621.x, x_621.y) * vec4<f32>(x_624.x, x_624.y, x_624.x, x_624.y)) + vec4<f32>(x_627.x, x_627.w, x_627.z, x_627.w));
        let x_631 : vec4<f32> = u_xlat6;
        let x_633 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_631.x, x_631.x, x_631.x, x_631.y) * vec4<f32>(x_633.z, x_633.w, x_633.y, x_633.z));
        let x_637 : vec4<f32> = u_xlat6;
        let x_639 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_637.y, x_637.y, x_637.z, x_637.z) * x_639);
        let x_643 : f32 = u_xlat6.z;
        let x_645 : f32 = u_xlat11.y;
        u_xlat79 = (x_643 * x_645);
        let x_648 : vec4<f32> = u_xlat9;
        let x_649 : vec2<f32> = vec2<f32>(x_648.x, x_648.y);
        let x_651 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_649.x, x_649.y, x_651);
        let x_658 : vec3<f32> = txVec4;
        let x_660 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_658.xy, x_658.z);
        u_xlat5.x = x_660;
        let x_663 : vec4<f32> = u_xlat9;
        let x_664 : vec2<f32> = vec2<f32>(x_663.z, x_663.w);
        let x_666 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_664.x, x_664.y, x_666);
        let x_674 : vec3<f32> = txVec5;
        let x_676 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_674.xy, x_674.z);
        u_xlat30 = x_676;
        let x_677 : f32 = u_xlat30;
        let x_679 : f32 = u_xlat12.y;
        u_xlat30 = (x_677 * x_679);
        let x_682 : f32 = u_xlat12.x;
        let x_684 : f32 = u_xlat5.x;
        let x_686 : f32 = u_xlat30;
        u_xlat5.x = ((x_682 * x_684) + x_686);
        let x_690 : vec2<f32> = u_xlat55;
        let x_692 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_690.x, x_690.y, x_692);
        let x_699 : vec3<f32> = txVec6;
        let x_701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_699.xy, x_699.z);
        u_xlat30 = x_701;
        let x_703 : f32 = u_xlat12.z;
        let x_704 : f32 = u_xlat30;
        let x_707 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_703 * x_704) + x_707);
        let x_711 : vec4<f32> = u_xlat8;
        let x_712 : vec2<f32> = vec2<f32>(x_711.x, x_711.y);
        let x_714 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_712.x, x_712.y, x_714);
        let x_721 : vec3<f32> = txVec7;
        let x_723 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_721.xy, x_721.z);
        u_xlat30 = x_723;
        let x_725 : f32 = u_xlat12.w;
        let x_726 : f32 = u_xlat30;
        let x_729 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_725 * x_726) + x_729);
        let x_733 : vec4<f32> = u_xlat10;
        let x_734 : vec2<f32> = vec2<f32>(x_733.x, x_733.y);
        let x_736 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_734.x, x_734.y, x_736);
        let x_743 : vec3<f32> = txVec8;
        let x_745 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_743.xy, x_743.z);
        u_xlat30 = x_745;
        let x_747 : f32 = u_xlat13.x;
        let x_748 : f32 = u_xlat30;
        let x_751 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_747 * x_748) + x_751);
        let x_755 : vec4<f32> = u_xlat10;
        let x_756 : vec2<f32> = vec2<f32>(x_755.z, x_755.w);
        let x_758 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_756.x, x_756.y, x_758);
        let x_765 : vec3<f32> = txVec9;
        let x_767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_765.xy, x_765.z);
        u_xlat30 = x_767;
        let x_769 : f32 = u_xlat13.y;
        let x_770 : f32 = u_xlat30;
        let x_773 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_769 * x_770) + x_773);
        let x_777 : vec4<f32> = u_xlat8;
        let x_778 : vec2<f32> = vec2<f32>(x_777.z, x_777.w);
        let x_780 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_778.x, x_778.y, x_780);
        let x_787 : vec3<f32> = txVec10;
        let x_789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_787.xy, x_787.z);
        u_xlat30 = x_789;
        let x_791 : f32 = u_xlat13.z;
        let x_792 : f32 = u_xlat30;
        let x_795 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_791 * x_792) + x_795);
        let x_799 : vec4<f32> = u_xlat7;
        let x_800 : vec2<f32> = vec2<f32>(x_799.x, x_799.y);
        let x_802 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_800.x, x_800.y, x_802);
        let x_809 : vec3<f32> = txVec11;
        let x_811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_809.xy, x_809.z);
        u_xlat30 = x_811;
        let x_813 : f32 = u_xlat13.w;
        let x_814 : f32 = u_xlat30;
        let x_817 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_813 * x_814) + x_817);
        let x_821 : vec4<f32> = u_xlat7;
        let x_822 : vec2<f32> = vec2<f32>(x_821.z, x_821.w);
        let x_824 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_822.x, x_822.y, x_824);
        let x_831 : vec3<f32> = txVec12;
        let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_831.xy, x_831.z);
        u_xlat30 = x_833;
        let x_834 : f32 = u_xlat79;
        let x_835 : f32 = u_xlat30;
        let x_838 : f32 = u_xlat5.x;
        u_xlat54 = ((x_834 * x_835) + x_838);
      } else {
        let x_841 : vec4<f32> = vs_TEXCOORD8;
        let x_844 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_847 : vec2<f32> = ((vec2<f32>(x_841.x, x_841.y) * vec2<f32>(x_844.z, x_844.w)) + vec2<f32>(0.5f, 0.5f));
        let x_848 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_847.x, x_847.y, x_848.z, x_848.w);
        let x_850 : vec4<f32> = u_xlat5;
        let x_852 : vec2<f32> = floor(vec2<f32>(x_850.x, x_850.y));
        let x_853 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_852.x, x_852.y, x_853.z, x_853.w);
        let x_855 : vec4<f32> = vs_TEXCOORD8;
        let x_858 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_861 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_855.x, x_855.y) * vec2<f32>(x_858.z, x_858.w)) + -(vec2<f32>(x_861.x, x_861.y)));
        let x_865 : vec2<f32> = u_xlat55;
        u_xlat6 = (vec4<f32>(x_865.x, x_865.x, x_865.y, x_865.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_868 : vec4<f32> = u_xlat6;
        let x_870 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_868.x, x_868.x, x_868.z, x_868.z) * vec4<f32>(x_870.x, x_870.x, x_870.z, x_870.z));
        let x_873 : vec4<f32> = u_xlat7;
        let x_877 : vec2<f32> = (vec2<f32>(x_873.y, x_873.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_878 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_878.x, x_877.x, x_878.z, x_877.y);
        let x_880 : vec4<f32> = u_xlat7;
        let x_883 : vec2<f32> = u_xlat55;
        let x_885 : vec2<f32> = ((vec2<f32>(x_880.x, x_880.z) * vec2<f32>(0.5f, 0.5f)) + -(x_883));
        let x_886 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_885.x, x_886.y, x_885.y, x_886.w);
        let x_888 : vec2<f32> = u_xlat55;
        let x_890 : vec2<f32> = (-(x_888) + vec2<f32>(1.0f, 1.0f));
        let x_891 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_890.x, x_890.y, x_891.z, x_891.w);
        let x_893 : vec2<f32> = u_xlat55;
        u_xlat57 = min(x_893, vec2<f32>(0.0f, 0.0f));
        let x_895 : vec2<f32> = u_xlat57;
        let x_897 : vec2<f32> = u_xlat57;
        let x_899 : vec4<f32> = u_xlat7;
        let x_901 : vec2<f32> = ((-(x_895) * x_897) + vec2<f32>(x_899.x, x_899.y));
        let x_902 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
        let x_904 : vec2<f32> = u_xlat55;
        u_xlat57 = max(x_904, vec2<f32>(0.0f, 0.0f));
        let x_907 : vec2<f32> = u_xlat57;
        let x_909 : vec2<f32> = u_xlat57;
        let x_911 : vec4<f32> = u_xlat6;
        let x_913 : vec2<f32> = ((-(x_907) * x_909) + vec2<f32>(x_911.y, x_911.w));
        let x_914 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_913.x, x_914.y, x_913.y);
        let x_916 : vec4<f32> = u_xlat7;
        let x_919 : vec2<f32> = (vec2<f32>(x_916.x, x_916.y) + vec2<f32>(2.0f, 2.0f));
        let x_920 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_919.x, x_919.y, x_920.z, x_920.w);
        let x_922 : vec3<f32> = u_xlat31;
        let x_924 : vec2<f32> = (vec2<f32>(x_922.x, x_922.z) + vec2<f32>(2.0f, 2.0f));
        let x_925 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_925.x, x_924.x, x_925.z, x_924.y);
        let x_928 : f32 = u_xlat6.y;
        u_xlat9.z = (x_928 * 0.08163200318813323975f);
        let x_932 : vec4<f32> = u_xlat6;
        let x_935 : vec3<f32> = (vec3<f32>(x_932.z, x_932.x, x_932.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_936 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat7;
        let x_941 : vec2<f32> = (vec2<f32>(x_938.x, x_938.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_942 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_945 : f32 = u_xlat10.y;
        u_xlat9.x = x_945;
        let x_947 : vec2<f32> = u_xlat55;
        let x_954 : vec2<f32> = ((vec2<f32>(x_947.x, x_947.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_955 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_955.x, x_954.x, x_955.z, x_954.y);
        let x_957 : vec2<f32> = u_xlat55;
        let x_961 : vec2<f32> = ((vec2<f32>(x_957.x, x_957.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_962 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_961.x, x_962.y, x_961.y, x_962.w);
        let x_965 : f32 = u_xlat6.x;
        u_xlat7.y = x_965;
        let x_968 : f32 = u_xlat8.y;
        u_xlat7.w = x_968;
        let x_970 : vec4<f32> = u_xlat7;
        let x_971 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_970 + x_971);
        let x_973 : vec2<f32> = u_xlat55;
        let x_976 : vec2<f32> = ((vec2<f32>(x_973.y, x_973.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_977 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_977.x, x_976.x, x_977.z, x_976.y);
        let x_979 : vec2<f32> = u_xlat55;
        let x_982 : vec2<f32> = ((vec2<f32>(x_979.y, x_979.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_983 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_982.x, x_983.y, x_982.y, x_983.w);
        let x_986 : f32 = u_xlat6.y;
        u_xlat8.y = x_986;
        let x_988 : vec4<f32> = u_xlat8;
        let x_989 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_988 + x_989);
        let x_991 : vec4<f32> = u_xlat7;
        let x_992 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_991 / x_992);
        let x_994 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_994 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1000 : vec4<f32> = u_xlat8;
        let x_1001 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1000 / x_1001);
        let x_1003 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1003 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1005 : vec4<f32> = u_xlat7;
        let x_1008 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1005.w, x_1005.x, x_1005.y, x_1005.z) * vec4<f32>(x_1008.x, x_1008.x, x_1008.x, x_1008.x));
        let x_1011 : vec4<f32> = u_xlat8;
        let x_1014 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1011.x, x_1011.w, x_1011.y, x_1011.z) * vec4<f32>(x_1014.y, x_1014.y, x_1014.y, x_1014.y));
        let x_1017 : vec4<f32> = u_xlat7;
        let x_1018 : vec3<f32> = vec3<f32>(x_1017.y, x_1017.z, x_1017.w);
        let x_1019 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1018.x, x_1019.y, x_1018.y, x_1018.z);
        let x_1022 : f32 = u_xlat8.x;
        u_xlat10.y = x_1022;
        let x_1024 : vec4<f32> = u_xlat5;
        let x_1027 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_1030 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1024.x, x_1024.y, x_1024.x, x_1024.y) * vec4<f32>(x_1027.x, x_1027.y, x_1027.x, x_1027.y)) + vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1030.y));
        let x_1033 : vec4<f32> = u_xlat5;
        let x_1036 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_1039 : vec4<f32> = u_xlat10;
        u_xlat55 = ((vec2<f32>(x_1033.x, x_1033.y) * vec2<f32>(x_1036.x, x_1036.y)) + vec2<f32>(x_1039.w, x_1039.y));
        let x_1043 : f32 = u_xlat10.y;
        u_xlat7.y = x_1043;
        let x_1046 : f32 = u_xlat8.z;
        u_xlat10.y = x_1046;
        let x_1048 : vec4<f32> = u_xlat5;
        let x_1051 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y) * vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y)) + vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1054.y));
        let x_1057 : vec4<f32> = u_xlat5;
        let x_1060 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_1063 : vec4<f32> = u_xlat10;
        let x_1065 : vec2<f32> = ((vec2<f32>(x_1057.x, x_1057.y) * vec2<f32>(x_1060.x, x_1060.y)) + vec2<f32>(x_1063.w, x_1063.y));
        let x_1066 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1069 : f32 = u_xlat10.y;
        u_xlat7.z = x_1069;
        let x_1072 : vec4<f32> = u_xlat5;
        let x_1075 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y) * vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y)) + vec4<f32>(x_1078.x, x_1078.y, x_1078.x, x_1078.z));
        let x_1082 : f32 = u_xlat8.w;
        u_xlat10.y = x_1082;
        let x_1085 : vec4<f32> = u_xlat5;
        let x_1088 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_1091 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y) * vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y)) + vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1091.y));
        let x_1095 : vec4<f32> = u_xlat5;
        let x_1098 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_1101 : vec4<f32> = u_xlat10;
        let x_1103 : vec2<f32> = ((vec2<f32>(x_1095.x, x_1095.y) * vec2<f32>(x_1098.x, x_1098.y)) + vec2<f32>(x_1101.w, x_1101.y));
        let x_1104 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1103.x, x_1103.y, x_1104.z);
        let x_1107 : f32 = u_xlat10.y;
        u_xlat7.w = x_1107;
        let x_1110 : vec4<f32> = u_xlat5;
        let x_1113 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat7;
        u_xlat63 = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.x, x_1116.w));
        let x_1119 : vec4<f32> = u_xlat10;
        let x_1120 : vec3<f32> = vec3<f32>(x_1119.x, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1120.x, x_1121.y, x_1120.y, x_1120.z);
        let x_1123 : vec4<f32> = u_xlat5;
        let x_1126 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y) * vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y)) + vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1129.y));
        let x_1133 : vec4<f32> = u_xlat5;
        let x_1136 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_1139 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1133.x, x_1133.y) * vec2<f32>(x_1136.x, x_1136.y)) + vec2<f32>(x_1139.w, x_1139.y));
        let x_1143 : f32 = u_xlat7.x;
        u_xlat8.x = x_1143;
        let x_1145 : vec4<f32> = u_xlat5;
        let x_1148 : vec4<f32> = x_273.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat8;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(x_1151.x, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1157 : vec4<f32> = u_xlat6;
        let x_1159 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1157.x, x_1157.x, x_1157.x, x_1157.x) * x_1159);
        let x_1162 : vec4<f32> = u_xlat6;
        let x_1164 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1162.y, x_1162.y, x_1162.y, x_1162.y) * x_1164);
        let x_1167 : vec4<f32> = u_xlat6;
        let x_1169 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1167.z, x_1167.z, x_1167.z, x_1167.z) * x_1169);
        let x_1171 : vec4<f32> = u_xlat6;
        let x_1173 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1171.w, x_1171.w, x_1171.w, x_1171.w) * x_1173);
        let x_1176 : vec4<f32> = u_xlat11;
        let x_1177 : vec2<f32> = vec2<f32>(x_1176.x, x_1176.y);
        let x_1179 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1177.x, x_1177.y, x_1179);
        let x_1186 : vec3<f32> = txVec13;
        let x_1188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1186.xy, x_1186.z);
        u_xlat79 = x_1188;
        let x_1190 : vec4<f32> = u_xlat11;
        let x_1191 : vec2<f32> = vec2<f32>(x_1190.z, x_1190.w);
        let x_1193 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1191.x, x_1191.y, x_1193);
        let x_1200 : vec3<f32> = txVec14;
        let x_1202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1200.xy, x_1200.z);
        u_xlat7.x = x_1202;
        let x_1205 : f32 = u_xlat7.x;
        let x_1207 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1205 * x_1207);
        let x_1211 : f32 = u_xlat16.x;
        let x_1212 : f32 = u_xlat79;
        let x_1215 : f32 = u_xlat7.x;
        u_xlat79 = ((x_1211 * x_1212) + x_1215);
        let x_1218 : vec2<f32> = u_xlat55;
        let x_1220 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec15;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1227.xy, x_1227.z);
        u_xlat55.x = x_1229;
        let x_1232 : f32 = u_xlat16.z;
        let x_1234 : f32 = u_xlat55.x;
        let x_1236 : f32 = u_xlat79;
        u_xlat79 = ((x_1232 * x_1234) + x_1236);
        let x_1239 : vec4<f32> = u_xlat14;
        let x_1240 : vec2<f32> = vec2<f32>(x_1239.x, x_1239.y);
        let x_1242 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1240.x, x_1240.y, x_1242);
        let x_1249 : vec3<f32> = txVec16;
        let x_1251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1249.xy, x_1249.z);
        u_xlat55.x = x_1251;
        let x_1254 : f32 = u_xlat16.w;
        let x_1256 : f32 = u_xlat55.x;
        let x_1258 : f32 = u_xlat79;
        u_xlat79 = ((x_1254 * x_1256) + x_1258);
        let x_1261 : vec4<f32> = u_xlat12;
        let x_1262 : vec2<f32> = vec2<f32>(x_1261.x, x_1261.y);
        let x_1264 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1262.x, x_1262.y, x_1264);
        let x_1271 : vec3<f32> = txVec17;
        let x_1273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1271.xy, x_1271.z);
        u_xlat55.x = x_1273;
        let x_1276 : f32 = u_xlat17.x;
        let x_1278 : f32 = u_xlat55.x;
        let x_1280 : f32 = u_xlat79;
        u_xlat79 = ((x_1276 * x_1278) + x_1280);
        let x_1283 : vec4<f32> = u_xlat12;
        let x_1284 : vec2<f32> = vec2<f32>(x_1283.z, x_1283.w);
        let x_1286 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1284.x, x_1284.y, x_1286);
        let x_1293 : vec3<f32> = txVec18;
        let x_1295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1293.xy, x_1293.z);
        u_xlat55.x = x_1295;
        let x_1298 : f32 = u_xlat17.y;
        let x_1300 : f32 = u_xlat55.x;
        let x_1302 : f32 = u_xlat79;
        u_xlat79 = ((x_1298 * x_1300) + x_1302);
        let x_1305 : vec4<f32> = u_xlat13;
        let x_1306 : vec2<f32> = vec2<f32>(x_1305.x, x_1305.y);
        let x_1308 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
        let x_1315 : vec3<f32> = txVec19;
        let x_1317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1315.xy, x_1315.z);
        u_xlat55.x = x_1317;
        let x_1320 : f32 = u_xlat17.z;
        let x_1322 : f32 = u_xlat55.x;
        let x_1324 : f32 = u_xlat79;
        u_xlat79 = ((x_1320 * x_1322) + x_1324);
        let x_1327 : vec4<f32> = u_xlat14;
        let x_1328 : vec2<f32> = vec2<f32>(x_1327.z, x_1327.w);
        let x_1330 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1328.x, x_1328.y, x_1330);
        let x_1337 : vec3<f32> = txVec20;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1337.xy, x_1337.z);
        u_xlat55.x = x_1339;
        let x_1342 : f32 = u_xlat17.w;
        let x_1344 : f32 = u_xlat55.x;
        let x_1346 : f32 = u_xlat79;
        u_xlat79 = ((x_1342 * x_1344) + x_1346);
        let x_1349 : vec4<f32> = u_xlat15;
        let x_1350 : vec2<f32> = vec2<f32>(x_1349.x, x_1349.y);
        let x_1352 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec21;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1359.xy, x_1359.z);
        u_xlat55.x = x_1361;
        let x_1364 : f32 = u_xlat18.x;
        let x_1366 : f32 = u_xlat55.x;
        let x_1368 : f32 = u_xlat79;
        u_xlat79 = ((x_1364 * x_1366) + x_1368);
        let x_1371 : vec4<f32> = u_xlat15;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.z, x_1371.w);
        let x_1374 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec22;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1381.xy, x_1381.z);
        u_xlat55.x = x_1383;
        let x_1386 : f32 = u_xlat18.y;
        let x_1388 : f32 = u_xlat55.x;
        let x_1390 : f32 = u_xlat79;
        u_xlat79 = ((x_1386 * x_1388) + x_1390);
        let x_1393 : vec3<f32> = u_xlat32;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.x, x_1393.y);
        let x_1396 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec23;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1403.xy, x_1403.z);
        u_xlat55.x = x_1405;
        let x_1408 : f32 = u_xlat18.z;
        let x_1410 : f32 = u_xlat55.x;
        let x_1412 : f32 = u_xlat79;
        u_xlat79 = ((x_1408 * x_1410) + x_1412);
        let x_1415 : vec2<f32> = u_xlat63;
        let x_1417 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1424 : vec3<f32> = txVec24;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1424.xy, x_1424.z);
        u_xlat55.x = x_1426;
        let x_1429 : f32 = u_xlat18.w;
        let x_1431 : f32 = u_xlat55.x;
        let x_1433 : f32 = u_xlat79;
        u_xlat79 = ((x_1429 * x_1431) + x_1433);
        let x_1436 : vec4<f32> = u_xlat10;
        let x_1437 : vec2<f32> = vec2<f32>(x_1436.x, x_1436.y);
        let x_1439 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec25;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1446.xy, x_1446.z);
        u_xlat55.x = x_1448;
        let x_1451 : f32 = u_xlat6.x;
        let x_1453 : f32 = u_xlat55.x;
        let x_1455 : f32 = u_xlat79;
        u_xlat79 = ((x_1451 * x_1453) + x_1455);
        let x_1458 : vec4<f32> = u_xlat10;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.z, x_1458.w);
        let x_1461 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1468 : vec3<f32> = txVec26;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1468.xy, x_1468.z);
        u_xlat55.x = x_1470;
        let x_1473 : f32 = u_xlat6.y;
        let x_1475 : f32 = u_xlat55.x;
        let x_1477 : f32 = u_xlat79;
        u_xlat79 = ((x_1473 * x_1475) + x_1477);
        let x_1480 : vec2<f32> = u_xlat58;
        let x_1482 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1489 : vec3<f32> = txVec27;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1489.xy, x_1489.z);
        u_xlat55.x = x_1491;
        let x_1494 : f32 = u_xlat6.z;
        let x_1496 : f32 = u_xlat55.x;
        let x_1498 : f32 = u_xlat79;
        u_xlat79 = ((x_1494 * x_1496) + x_1498);
        let x_1501 : vec4<f32> = u_xlat5;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.x, x_1501.y);
        let x_1504 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec28;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1511.xy, x_1511.z);
        u_xlat5.x = x_1513;
        let x_1516 : f32 = u_xlat6.w;
        let x_1518 : f32 = u_xlat5.x;
        let x_1520 : f32 = u_xlat79;
        u_xlat54 = ((x_1516 * x_1518) + x_1520);
      }
    }
  } else {
    let x_1524 : vec4<f32> = vs_TEXCOORD8;
    let x_1525 : vec2<f32> = vec2<f32>(x_1524.x, x_1524.y);
    let x_1527 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
    let x_1534 : vec3<f32> = txVec29;
    let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1534.xy, x_1534.z);
    u_xlat54 = x_1536;
  }
  let x_1538 : f32 = x_273.x_MainLightShadowParams.x;
  u_xlat79 = (-(x_1538) + 1.0f);
  let x_1541 : f32 = u_xlat54;
  let x_1543 : f32 = x_273.x_MainLightShadowParams.x;
  let x_1545 : f32 = u_xlat79;
  u_xlat54 = ((x_1541 * x_1543) + x_1545);
  let x_1548 : f32 = vs_TEXCOORD8.z;
  u_xlatb79 = (0.0f >= x_1548);
  let x_1552 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (x_1552 >= 1.0f);
  let x_1554 : bool = u_xlatb79;
  let x_1555 : bool = u_xlatb5;
  u_xlatb79 = (x_1554 | x_1555);
  let x_1557 : bool = u_xlatb79;
  let x_1558 : f32 = u_xlat54;
  u_xlat54 = select(x_1558, 1.0f, x_1557);
  let x_1560 : vec3<f32> = vs_TEXCOORD7;
  let x_1564 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1566 : vec3<f32> = (x_1560 + -(x_1564));
  let x_1567 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1567.w);
  let x_1569 : vec4<f32> = u_xlat5;
  let x_1571 : vec4<f32> = u_xlat5;
  u_xlat79 = dot(vec3<f32>(x_1569.x, x_1569.y, x_1569.z), vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
  let x_1574 : f32 = u_xlat79;
  let x_1576 : f32 = x_273.x_MainLightShadowParams.z;
  let x_1579 : f32 = x_273.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1574 * x_1576) + x_1579);
  let x_1583 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1583, 0.0f, 1.0f);
  let x_1586 : f32 = u_xlat54;
  u_xlat30 = (-(x_1586) + 1.0f);
  let x_1590 : f32 = u_xlat5.x;
  let x_1591 : f32 = u_xlat30;
  let x_1593 : f32 = u_xlat54;
  u_xlat54 = ((x_1590 * x_1591) + x_1593);
  let x_1596 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_1596;
  let x_1600 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_1600;
  let x_1604 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_1604;
  let x_1607 : vec4<f32> = u_xlat5;
  let x_1610 : vec3<f32> = u_xlat26;
  u_xlat80 = dot(-(vec3<f32>(x_1607.x, x_1607.y, x_1607.z)), x_1610);
  let x_1612 : f32 = u_xlat80;
  let x_1613 : f32 = u_xlat80;
  u_xlat80 = (x_1612 + x_1613);
  let x_1615 : vec3<f32> = u_xlat26;
  let x_1616 : f32 = u_xlat80;
  let x_1620 : vec4<f32> = u_xlat5;
  let x_1623 : vec3<f32> = ((x_1615 * -(vec3<f32>(x_1616, x_1616, x_1616))) + -(vec3<f32>(x_1620.x, x_1620.y, x_1620.z)));
  let x_1624 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1623.x, x_1623.y, x_1623.z, x_1624.w);
  let x_1626 : vec3<f32> = u_xlat26;
  let x_1627 : vec4<f32> = u_xlat5;
  u_xlat80 = dot(x_1626, vec3<f32>(x_1627.x, x_1627.y, x_1627.z));
  let x_1630 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1630, 0.0f, 1.0f);
  let x_1632 : f32 = u_xlat80;
  u_xlat80 = (-(x_1632) + 1.0f);
  let x_1635 : f32 = u_xlat80;
  let x_1636 : f32 = u_xlat80;
  u_xlat80 = (x_1635 * x_1636);
  let x_1638 : f32 = u_xlat80;
  let x_1639 : f32 = u_xlat80;
  u_xlat80 = (x_1638 * x_1639);
  let x_1642 : f32 = u_xlat1;
  u_xlat81 = ((-(x_1642) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1648 : f32 = u_xlat1;
  let x_1649 : f32 = u_xlat81;
  u_xlat1 = (x_1648 * x_1649);
  let x_1651 : f32 = u_xlat1;
  u_xlat1 = (x_1651 * 6.0f);
  let x_1662 : vec4<f32> = u_xlat6;
  let x_1664 : f32 = u_xlat1;
  let x_1665 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1662.x, x_1662.y, x_1662.z), x_1664);
  u_xlat6 = x_1665;
  let x_1667 : f32 = u_xlat6.w;
  u_xlat1 = (x_1667 + -1.0f);
  let x_1675 : f32 = x_1673.unity_SpecCube0_HDR.w;
  let x_1676 : f32 = u_xlat1;
  u_xlat1 = ((x_1675 * x_1676) + 1.0f);
  let x_1679 : f32 = u_xlat1;
  u_xlat1 = max(x_1679, 0.0f);
  let x_1681 : f32 = u_xlat1;
  u_xlat1 = log2(x_1681);
  let x_1683 : f32 = u_xlat1;
  let x_1685 : f32 = x_1673.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1683 * x_1685);
  let x_1687 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1687);
  let x_1689 : f32 = u_xlat1;
  let x_1691 : f32 = x_1673.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1689 * x_1691);
  let x_1693 : vec4<f32> = u_xlat6;
  let x_1695 : f32 = u_xlat1;
  let x_1697 : vec3<f32> = (vec3<f32>(x_1693.x, x_1693.y, x_1693.z) * vec3<f32>(x_1695, x_1695, x_1695));
  let x_1698 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1697.x, x_1697.y, x_1697.z, x_1698.w);
  let x_1700 : vec4<f32> = u_xlat4;
  let x_1702 : vec4<f32> = u_xlat4;
  let x_1706 : vec2<f32> = ((vec2<f32>(x_1700.x, x_1700.x) * vec2<f32>(x_1702.x, x_1702.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1707 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1706.x, x_1706.y, x_1707.z, x_1707.w);
  let x_1710 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_1710);
  let x_1712 : vec4<f32> = u_xlat0;
  let x_1715 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1712.x, x_1712.y, x_1712.z)) + vec3<f32>(x_1715, x_1715, x_1715));
  let x_1718 : f32 = u_xlat80;
  let x_1720 : vec3<f32> = u_xlat32;
  let x_1722 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1718, x_1718, x_1718) * x_1720) + vec3<f32>(x_1722.x, x_1722.y, x_1722.z));
  let x_1725 : f32 = u_xlat1;
  let x_1727 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1725, x_1725, x_1725) * x_1727);
  let x_1729 : vec4<f32> = u_xlat6;
  let x_1731 : vec3<f32> = u_xlat32;
  let x_1732 : vec3<f32> = (vec3<f32>(x_1729.x, x_1729.y, x_1729.z) * x_1731);
  let x_1733 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
  let x_1735 : vec3<f32> = u_xlat27;
  let x_1736 : vec4<f32> = u_xlat3;
  let x_1739 : vec4<f32> = u_xlat6;
  u_xlat27 = ((x_1735 * vec3<f32>(x_1736.x, x_1736.z, x_1736.w)) + vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
  let x_1742 : f32 = u_xlat54;
  let x_1744 : f32 = x_1673.unity_LightData.z;
  u_xlat75 = (x_1742 * x_1744);
  let x_1746 : vec3<f32> = u_xlat26;
  let x_1748 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_1746, vec3<f32>(x_1748.x, x_1748.y, x_1748.z));
  let x_1751 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1751, 0.0f, 1.0f);
  let x_1753 : f32 = u_xlat75;
  let x_1754 : f32 = u_xlat1;
  u_xlat75 = (x_1753 * x_1754);
  let x_1756 : f32 = u_xlat75;
  let x_1759 : vec4<f32> = x_29.x_MainLightColor;
  let x_1761 : vec3<f32> = (vec3<f32>(x_1756, x_1756, x_1756) * vec3<f32>(x_1759.x, x_1759.y, x_1759.z));
  let x_1762 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1761.x, x_1761.y, x_1761.z, x_1762.w);
  let x_1764 : vec4<f32> = u_xlat5;
  let x_1767 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat32 = (vec3<f32>(x_1764.x, x_1764.y, x_1764.z) + vec3<f32>(x_1767.x, x_1767.y, x_1767.z));
  let x_1770 : vec3<f32> = u_xlat32;
  let x_1771 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1770, x_1771);
  let x_1773 : f32 = u_xlat75;
  u_xlat75 = max(x_1773, 1.17549435e-38f);
  let x_1776 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1776);
  let x_1778 : f32 = u_xlat75;
  let x_1780 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1778, x_1778, x_1778) * x_1780);
  let x_1782 : vec3<f32> = u_xlat26;
  let x_1783 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1782, x_1783);
  let x_1785 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1785, 0.0f, 1.0f);
  let x_1788 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1790 : vec3<f32> = u_xlat32;
  u_xlat1 = dot(vec3<f32>(x_1788.x, x_1788.y, x_1788.z), x_1790);
  let x_1792 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1792, 0.0f, 1.0f);
  let x_1794 : f32 = u_xlat75;
  let x_1795 : f32 = u_xlat75;
  u_xlat75 = (x_1794 * x_1795);
  let x_1797 : f32 = u_xlat75;
  let x_1799 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1797 * x_1799) + 1.00001001358032226562f);
  let x_1803 : f32 = u_xlat1;
  let x_1804 : f32 = u_xlat1;
  u_xlat1 = (x_1803 * x_1804);
  let x_1806 : f32 = u_xlat75;
  let x_1807 : f32 = u_xlat75;
  u_xlat75 = (x_1806 * x_1807);
  let x_1809 : f32 = u_xlat1;
  u_xlat1 = max(x_1809, 0.10000000149011611938f);
  let x_1812 : f32 = u_xlat75;
  let x_1813 : f32 = u_xlat1;
  u_xlat75 = (x_1812 * x_1813);
  let x_1815 : f32 = u_xlat28;
  let x_1816 : f32 = u_xlat75;
  u_xlat75 = (x_1815 * x_1816);
  let x_1818 : f32 = u_xlat29;
  let x_1819 : f32 = u_xlat75;
  u_xlat75 = (x_1818 / x_1819);
  let x_1821 : vec4<f32> = u_xlat0;
  let x_1823 : f32 = u_xlat75;
  let x_1826 : vec4<f32> = u_xlat3;
  u_xlat32 = ((vec3<f32>(x_1821.x, x_1821.y, x_1821.z) * vec3<f32>(x_1823, x_1823, x_1823)) + vec3<f32>(x_1826.x, x_1826.z, x_1826.w));
  let x_1830 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1832 : f32 = x_1673.unity_LightData.y;
  u_xlat75 = min(x_1830, x_1832);
  let x_1836 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1836));
  let x_1839 : f32 = u_xlat79;
  let x_1842 : f32 = x_273.x_AdditionalShadowFadeParams.x;
  let x_1845 : f32 = x_273.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_1839 * x_1842) + x_1845);
  let x_1847 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1847, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1859 : u32 = u_xlatu_loop_1;
    let x_1860 : u32 = u_xlatu75;
    if ((x_1859 < x_1860)) {
    } else {
      break;
    }
    let x_1863 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_1863 >> 2u);
    let x_1867 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1867 & 3u));
    let x_1870 : u32 = u_xlatu81;
    let x_1873 : vec4<f32> = x_1673.unity_LightIndices[bitcast<i32>(x_1870)];
    let x_1883 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1888 : vec4<u32> = indexable[x_1883];
    u_xlat81 = dot(x_1873, bitcast<vec4<f32>>(x_1888));
    let x_1892 : f32 = u_xlat81;
    u_xlati81 = i32(x_1892);
    let x_1894 : vec3<f32> = vs_TEXCOORD7;
    let x_1905 : i32 = u_xlati81;
    let x_1907 : vec4<f32> = x_1904.x_AdditionalLightsPosition[x_1905];
    let x_1910 : i32 = u_xlati81;
    let x_1912 : vec4<f32> = x_1904.x_AdditionalLightsPosition[x_1910];
    let x_1914 : vec3<f32> = ((-(x_1894) * vec3<f32>(x_1907.w, x_1907.w, x_1907.w)) + vec3<f32>(x_1912.x, x_1912.y, x_1912.z));
    let x_1915 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1914.x, x_1914.y, x_1914.z, x_1915.w);
    let x_1918 : vec4<f32> = u_xlat8;
    let x_1920 : vec4<f32> = u_xlat8;
    u_xlat83 = dot(vec3<f32>(x_1918.x, x_1918.y, x_1918.z), vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
    let x_1923 : f32 = u_xlat83;
    u_xlat83 = max(x_1923, 0.00006103515625f);
    let x_1926 : f32 = u_xlat83;
    u_xlat9.x = inverseSqrt(x_1926);
    let x_1930 : vec4<f32> = u_xlat8;
    let x_1932 : vec4<f32> = u_xlat9;
    u_xlat34 = (vec3<f32>(x_1930.x, x_1930.y, x_1930.z) * vec3<f32>(x_1932.x, x_1932.x, x_1932.x));
    let x_1935 : f32 = u_xlat83;
    u_xlat10.x = (1.0f / x_1935);
    let x_1938 : f32 = u_xlat83;
    let x_1939 : i32 = u_xlati81;
    let x_1941 : f32 = x_1904.x_AdditionalLightsAttenuation[x_1939].x;
    u_xlat83 = (x_1938 * x_1941);
    let x_1943 : f32 = u_xlat83;
    let x_1945 : f32 = u_xlat83;
    u_xlat83 = ((-(x_1943) * x_1945) + 1.0f);
    let x_1948 : f32 = u_xlat83;
    u_xlat83 = max(x_1948, 0.0f);
    let x_1950 : f32 = u_xlat83;
    let x_1951 : f32 = u_xlat83;
    u_xlat83 = (x_1950 * x_1951);
    let x_1953 : f32 = u_xlat83;
    let x_1955 : f32 = u_xlat10.x;
    u_xlat83 = (x_1953 * x_1955);
    let x_1957 : i32 = u_xlati81;
    let x_1959 : vec4<f32> = x_1904.x_AdditionalLightsSpotDir[x_1957];
    let x_1961 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_1959.x, x_1959.y, x_1959.z), x_1961);
    let x_1965 : f32 = u_xlat10.x;
    let x_1966 : i32 = u_xlati81;
    let x_1968 : f32 = x_1904.x_AdditionalLightsAttenuation[x_1966].z;
    let x_1970 : i32 = u_xlati81;
    let x_1972 : f32 = x_1904.x_AdditionalLightsAttenuation[x_1970].w;
    u_xlat10.x = ((x_1965 * x_1968) + x_1972);
    let x_1976 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1976, 0.0f, 1.0f);
    let x_1980 : f32 = u_xlat10.x;
    let x_1982 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1980 * x_1982);
    let x_1985 : f32 = u_xlat83;
    let x_1987 : f32 = u_xlat10.x;
    u_xlat83 = (x_1985 * x_1987);
    let x_1991 : i32 = u_xlati81;
    let x_1993 : f32 = x_273.x_AdditionalShadowParams[x_1991].w;
    u_xlati10 = i32(x_1993);
    let x_1998 : i32 = u_xlati10;
    u_xlatb35.x = (x_1998 >= 0i);
    let x_2002 : bool = u_xlatb35.x;
    if (x_2002) {
      let x_2006 : i32 = u_xlati81;
      let x_2008 : f32 = x_273.x_AdditionalShadowParams[x_2006].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2008, x_2008, x_2008, x_2008))));
      let x_2015 : bool = u_xlatb35.x;
      if (x_2015) {
        let x_2018 : vec3<f32> = u_xlat34;
        let x_2021 : vec3<f32> = u_xlat34;
        let x_2024 : vec4<bool> = (abs(vec4<f32>(x_2018.z, x_2018.z, x_2018.y, x_2018.y)) >= abs(vec4<f32>(x_2021.x, x_2021.y, x_2021.x, x_2021.x)));
        u_xlatb35 = vec3<bool>(x_2024.x, x_2024.y, x_2024.z);
        let x_2027 : bool = u_xlatb35.y;
        let x_2029 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2027 & x_2029);
        let x_2033 : vec3<f32> = u_xlat34;
        let x_2036 : vec4<bool> = (-(vec4<f32>(x_2033.z, x_2033.y, x_2033.x, x_2033.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2036.x, x_2036.y, x_2036.z);
        let x_2039 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2039);
        let x_2044 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2044);
        let x_2050 : bool = u_xlatb11.z;
        u_xlat60 = select(0.0f, 1.0f, x_2050);
        let x_2053 : bool = u_xlatb35.z;
        if (x_2053) {
          let x_2059 : f32 = u_xlat11.y;
          x_2055 = x_2059;
        } else {
          let x_2061 : f32 = u_xlat60;
          x_2055 = x_2061;
        }
        let x_2062 : f32 = x_2055;
        u_xlat60 = x_2062;
        let x_2065 : bool = u_xlatb35.x;
        if (x_2065) {
          let x_2070 : f32 = u_xlat11.x;
          x_2066 = x_2070;
        } else {
          let x_2072 : f32 = u_xlat60;
          x_2066 = x_2072;
        }
        let x_2073 : f32 = x_2066;
        u_xlat35 = x_2073;
        let x_2074 : i32 = u_xlati81;
        let x_2076 : f32 = x_273.x_AdditionalShadowParams[x_2074].w;
        u_xlat60 = trunc(x_2076);
        let x_2078 : f32 = u_xlat35;
        let x_2079 : f32 = u_xlat60;
        u_xlat35 = (x_2078 + x_2079);
        let x_2081 : f32 = u_xlat35;
        u_xlati10 = i32(x_2081);
      }
      let x_2083 : i32 = u_xlati10;
      u_xlati10 = (x_2083 << bitcast<u32>(2i));
      let x_2085 : vec3<f32> = vs_TEXCOORD7;
      let x_2088 : i32 = u_xlati10;
      let x_2091 : i32 = u_xlati10;
      let x_2095 : vec4<f32> = x_273.x_AdditionalLightsWorldToShadow[((x_2088 + 1i) / 4i)][((x_2091 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2085.y, x_2085.y, x_2085.y, x_2085.y) * x_2095);
      let x_2097 : i32 = u_xlati10;
      let x_2099 : i32 = u_xlati10;
      let x_2102 : vec4<f32> = x_273.x_AdditionalLightsWorldToShadow[(x_2097 / 4i)][(x_2099 % 4i)];
      let x_2103 : vec3<f32> = vs_TEXCOORD7;
      let x_2106 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2102 * vec4<f32>(x_2103.x, x_2103.x, x_2103.x, x_2103.x)) + x_2106);
      let x_2108 : i32 = u_xlati10;
      let x_2111 : i32 = u_xlati10;
      let x_2115 : vec4<f32> = x_273.x_AdditionalLightsWorldToShadow[((x_2108 + 2i) / 4i)][((x_2111 + 2i) % 4i)];
      let x_2116 : vec3<f32> = vs_TEXCOORD7;
      let x_2119 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2115 * vec4<f32>(x_2116.z, x_2116.z, x_2116.z, x_2116.z)) + x_2119);
      let x_2121 : vec4<f32> = u_xlat11;
      let x_2122 : i32 = u_xlati10;
      let x_2125 : i32 = u_xlati10;
      let x_2129 : vec4<f32> = x_273.x_AdditionalLightsWorldToShadow[((x_2122 + 3i) / 4i)][((x_2125 + 3i) % 4i)];
      u_xlat10 = (x_2121 + x_2129);
      let x_2131 : vec4<f32> = u_xlat10;
      let x_2133 : vec4<f32> = u_xlat10;
      let x_2135 : vec3<f32> = (vec3<f32>(x_2131.x, x_2131.y, x_2131.z) / vec3<f32>(x_2133.w, x_2133.w, x_2133.w));
      let x_2136 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
      let x_2139 : i32 = u_xlati81;
      let x_2141 : f32 = x_273.x_AdditionalShadowParams[x_2139].y;
      u_xlatb85 = (0.0f < x_2141);
      let x_2143 : bool = u_xlatb85;
      if (x_2143) {
        let x_2146 : i32 = u_xlati81;
        let x_2148 : f32 = x_273.x_AdditionalShadowParams[x_2146].y;
        u_xlatb85 = (1.0f == x_2148);
        let x_2150 : bool = u_xlatb85;
        if (x_2150) {
          let x_2153 : vec4<f32> = u_xlat10;
          let x_2157 : vec4<f32> = x_273.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2153.x, x_2153.y, x_2153.x, x_2153.y) + x_2157);
          let x_2160 : vec4<f32> = u_xlat11;
          let x_2161 : vec2<f32> = vec2<f32>(x_2160.x, x_2160.y);
          let x_2163 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2161.x, x_2161.y, x_2163);
          let x_2171 : vec3<f32> = txVec30;
          let x_2173 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2171.xy, x_2171.z);
          u_xlat12.x = x_2173;
          let x_2176 : vec4<f32> = u_xlat11;
          let x_2177 : vec2<f32> = vec2<f32>(x_2176.z, x_2176.w);
          let x_2179 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2177.x, x_2177.y, x_2179);
          let x_2186 : vec3<f32> = txVec31;
          let x_2188 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2186.xy, x_2186.z);
          u_xlat12.y = x_2188;
          let x_2190 : vec4<f32> = u_xlat10;
          let x_2194 : vec4<f32> = x_273.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2190.x, x_2190.y, x_2190.x, x_2190.y) + x_2194);
          let x_2197 : vec4<f32> = u_xlat11;
          let x_2198 : vec2<f32> = vec2<f32>(x_2197.x, x_2197.y);
          let x_2200 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2198.x, x_2198.y, x_2200);
          let x_2207 : vec3<f32> = txVec32;
          let x_2209 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2207.xy, x_2207.z);
          u_xlat12.z = x_2209;
          let x_2212 : vec4<f32> = u_xlat11;
          let x_2213 : vec2<f32> = vec2<f32>(x_2212.z, x_2212.w);
          let x_2215 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2213.x, x_2213.y, x_2215);
          let x_2222 : vec3<f32> = txVec33;
          let x_2224 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2222.xy, x_2222.z);
          u_xlat12.w = x_2224;
          let x_2227 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_2227, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2230 : i32 = u_xlati81;
          let x_2232 : f32 = x_273.x_AdditionalShadowParams[x_2230].y;
          u_xlatb11.x = (2.0f == x_2232);
          let x_2236 : bool = u_xlatb11.x;
          if (x_2236) {
            let x_2239 : vec4<f32> = u_xlat10;
            let x_2243 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2246 : vec2<f32> = ((vec2<f32>(x_2239.x, x_2239.y) * vec2<f32>(x_2243.z, x_2243.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2247 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2246.x, x_2246.y, x_2247.z, x_2247.w);
            let x_2249 : vec4<f32> = u_xlat11;
            let x_2251 : vec2<f32> = floor(vec2<f32>(x_2249.x, x_2249.y));
            let x_2252 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2251.x, x_2251.y, x_2252.z, x_2252.w);
            let x_2255 : vec4<f32> = u_xlat10;
            let x_2258 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2261 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2255.x, x_2255.y) * vec2<f32>(x_2258.z, x_2258.w)) + -(vec2<f32>(x_2261.x, x_2261.y)));
            let x_2265 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2265.x, x_2265.x, x_2265.y, x_2265.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2268 : vec4<f32> = u_xlat12;
            let x_2270 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2268.x, x_2268.x, x_2268.z, x_2268.z) * vec4<f32>(x_2270.x, x_2270.x, x_2270.z, x_2270.z));
            let x_2273 : vec4<f32> = u_xlat13;
            let x_2275 : vec2<f32> = (vec2<f32>(x_2273.y, x_2273.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2276 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2275.x, x_2276.y, x_2275.y, x_2276.w);
            let x_2278 : vec4<f32> = u_xlat13;
            let x_2281 : vec2<f32> = u_xlat61;
            let x_2283 : vec2<f32> = ((vec2<f32>(x_2278.x, x_2278.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2281));
            let x_2284 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2283.x, x_2283.y, x_2284.z, x_2284.w);
            let x_2286 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2286) + vec2<f32>(1.0f, 1.0f));
            let x_2289 : vec2<f32> = u_xlat61;
            let x_2290 : vec2<f32> = min(x_2289, vec2<f32>(0.0f, 0.0f));
            let x_2291 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2290.x, x_2290.y, x_2291.z, x_2291.w);
            let x_2293 : vec4<f32> = u_xlat14;
            let x_2296 : vec4<f32> = u_xlat14;
            let x_2299 : vec2<f32> = u_xlat63;
            let x_2300 : vec2<f32> = ((-(vec2<f32>(x_2293.x, x_2293.y)) * vec2<f32>(x_2296.x, x_2296.y)) + x_2299);
            let x_2301 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2300.x, x_2300.y, x_2301.z, x_2301.w);
            let x_2303 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2303, vec2<f32>(0.0f, 0.0f));
            let x_2305 : vec2<f32> = u_xlat61;
            let x_2307 : vec2<f32> = u_xlat61;
            let x_2309 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2305) * x_2307) + vec2<f32>(x_2309.y, x_2309.w));
            let x_2312 : vec4<f32> = u_xlat14;
            let x_2314 : vec2<f32> = (vec2<f32>(x_2312.x, x_2312.y) + vec2<f32>(1.0f, 1.0f));
            let x_2315 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2314.x, x_2314.y, x_2315.z, x_2315.w);
            let x_2317 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2317 + vec2<f32>(1.0f, 1.0f));
            let x_2319 : vec4<f32> = u_xlat13;
            let x_2321 : vec2<f32> = (vec2<f32>(x_2319.x, x_2319.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2322 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2321.x, x_2321.y, x_2322.z, x_2322.w);
            let x_2324 : vec2<f32> = u_xlat63;
            let x_2325 : vec2<f32> = (x_2324 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2326 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2325.x, x_2325.y, x_2326.z, x_2326.w);
            let x_2328 : vec4<f32> = u_xlat14;
            let x_2330 : vec2<f32> = (vec2<f32>(x_2328.x, x_2328.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2331 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2330.x, x_2330.y, x_2331.z, x_2331.w);
            let x_2333 : vec2<f32> = u_xlat61;
            let x_2334 : vec2<f32> = (x_2333 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2335 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2334.x, x_2334.y, x_2335.z, x_2335.w);
            let x_2337 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2337.y, x_2337.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2341 : f32 = u_xlat14.x;
            u_xlat15.z = x_2341;
            let x_2344 : f32 = u_xlat61.x;
            u_xlat15.w = x_2344;
            let x_2347 : f32 = u_xlat16.x;
            u_xlat13.z = x_2347;
            let x_2350 : f32 = u_xlat12.x;
            u_xlat13.w = x_2350;
            let x_2352 : vec4<f32> = u_xlat13;
            let x_2354 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2352.z, x_2352.w, x_2352.x, x_2352.z) + vec4<f32>(x_2354.z, x_2354.w, x_2354.x, x_2354.z));
            let x_2358 : f32 = u_xlat15.y;
            u_xlat14.z = x_2358;
            let x_2361 : f32 = u_xlat61.y;
            u_xlat14.w = x_2361;
            let x_2364 : f32 = u_xlat13.y;
            u_xlat16.z = x_2364;
            let x_2367 : f32 = u_xlat12.z;
            u_xlat16.w = x_2367;
            let x_2369 : vec4<f32> = u_xlat14;
            let x_2371 : vec4<f32> = u_xlat16;
            let x_2373 : vec3<f32> = (vec3<f32>(x_2369.z, x_2369.y, x_2369.w) + vec3<f32>(x_2371.z, x_2371.y, x_2371.w));
            let x_2374 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
            let x_2376 : vec4<f32> = u_xlat13;
            let x_2378 : vec4<f32> = u_xlat17;
            let x_2380 : vec3<f32> = (vec3<f32>(x_2376.x, x_2376.z, x_2376.w) / vec3<f32>(x_2378.z, x_2378.w, x_2378.y));
            let x_2381 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2380.x, x_2380.y, x_2380.z, x_2381.w);
            let x_2383 : vec4<f32> = u_xlat13;
            let x_2385 : vec3<f32> = (vec3<f32>(x_2383.x, x_2383.y, x_2383.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2386 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2386.w);
            let x_2388 : vec4<f32> = u_xlat16;
            let x_2390 : vec4<f32> = u_xlat12;
            let x_2392 : vec3<f32> = (vec3<f32>(x_2388.z, x_2388.y, x_2388.w) / vec3<f32>(x_2390.x, x_2390.y, x_2390.z));
            let x_2393 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2392.x, x_2392.y, x_2392.z, x_2393.w);
            let x_2395 : vec4<f32> = u_xlat14;
            let x_2397 : vec3<f32> = (vec3<f32>(x_2395.x, x_2395.y, x_2395.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2398 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2397.x, x_2397.y, x_2397.z, x_2398.w);
            let x_2400 : vec4<f32> = u_xlat13;
            let x_2403 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2405 : vec3<f32> = (vec3<f32>(x_2400.y, x_2400.x, x_2400.z) * vec3<f32>(x_2403.x, x_2403.x, x_2403.x));
            let x_2406 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
            let x_2408 : vec4<f32> = u_xlat14;
            let x_2411 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2413 : vec3<f32> = (vec3<f32>(x_2408.x, x_2408.y, x_2408.z) * vec3<f32>(x_2411.y, x_2411.y, x_2411.y));
            let x_2414 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2413.x, x_2413.y, x_2413.z, x_2414.w);
            let x_2417 : f32 = u_xlat14.x;
            u_xlat13.w = x_2417;
            let x_2419 : vec4<f32> = u_xlat11;
            let x_2422 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2425 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2419.x, x_2419.y, x_2419.x, x_2419.y) * vec4<f32>(x_2422.x, x_2422.y, x_2422.x, x_2422.y)) + vec4<f32>(x_2425.y, x_2425.w, x_2425.x, x_2425.w));
            let x_2428 : vec4<f32> = u_xlat11;
            let x_2431 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2434 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2428.x, x_2428.y) * vec2<f32>(x_2431.x, x_2431.y)) + vec2<f32>(x_2434.z, x_2434.w));
            let x_2438 : f32 = u_xlat13.y;
            u_xlat14.w = x_2438;
            let x_2440 : vec4<f32> = u_xlat14;
            let x_2441 : vec2<f32> = vec2<f32>(x_2440.y, x_2440.z);
            let x_2442 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2442.x, x_2441.x, x_2442.z, x_2441.y);
            let x_2444 : vec4<f32> = u_xlat11;
            let x_2447 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2450 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2444.x, x_2444.y, x_2444.x, x_2444.y) * vec4<f32>(x_2447.x, x_2447.y, x_2447.x, x_2447.y)) + vec4<f32>(x_2450.x, x_2450.y, x_2450.z, x_2450.y));
            let x_2453 : vec4<f32> = u_xlat11;
            let x_2456 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2459 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2453.x, x_2453.y, x_2453.x, x_2453.y) * vec4<f32>(x_2456.x, x_2456.y, x_2456.x, x_2456.y)) + vec4<f32>(x_2459.w, x_2459.y, x_2459.w, x_2459.z));
            let x_2462 : vec4<f32> = u_xlat11;
            let x_2465 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2468 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2462.x, x_2462.y, x_2462.x, x_2462.y) * vec4<f32>(x_2465.x, x_2465.y, x_2465.x, x_2465.y)) + vec4<f32>(x_2468.x, x_2468.w, x_2468.z, x_2468.w));
            let x_2471 : vec4<f32> = u_xlat12;
            let x_2473 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2471.x, x_2471.x, x_2471.x, x_2471.y) * vec4<f32>(x_2473.z, x_2473.w, x_2473.y, x_2473.z));
            let x_2477 : vec4<f32> = u_xlat12;
            let x_2479 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2477.y, x_2477.y, x_2477.z, x_2477.z) * x_2479);
            let x_2482 : f32 = u_xlat12.z;
            let x_2484 : f32 = u_xlat17.y;
            u_xlat11.x = (x_2482 * x_2484);
            let x_2488 : vec4<f32> = u_xlat15;
            let x_2489 : vec2<f32> = vec2<f32>(x_2488.x, x_2488.y);
            let x_2491 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2489.x, x_2489.y, x_2491);
            let x_2499 : vec3<f32> = txVec34;
            let x_2501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2499.xy, x_2499.z);
            u_xlat36 = x_2501;
            let x_2503 : vec4<f32> = u_xlat15;
            let x_2504 : vec2<f32> = vec2<f32>(x_2503.z, x_2503.w);
            let x_2506 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2504.x, x_2504.y, x_2506);
            let x_2513 : vec3<f32> = txVec35;
            let x_2515 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2513.xy, x_2513.z);
            u_xlat12.x = x_2515;
            let x_2518 : f32 = u_xlat12.x;
            let x_2520 : f32 = u_xlat18.y;
            u_xlat12.x = (x_2518 * x_2520);
            let x_2524 : f32 = u_xlat18.x;
            let x_2525 : f32 = u_xlat36;
            let x_2528 : f32 = u_xlat12.x;
            u_xlat36 = ((x_2524 * x_2525) + x_2528);
            let x_2531 : vec2<f32> = u_xlat61;
            let x_2533 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2531.x, x_2531.y, x_2533);
            let x_2540 : vec3<f32> = txVec36;
            let x_2542 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2540.xy, x_2540.z);
            u_xlat61.x = x_2542;
            let x_2545 : f32 = u_xlat18.z;
            let x_2547 : f32 = u_xlat61.x;
            let x_2549 : f32 = u_xlat36;
            u_xlat36 = ((x_2545 * x_2547) + x_2549);
            let x_2552 : vec4<f32> = u_xlat14;
            let x_2553 : vec2<f32> = vec2<f32>(x_2552.x, x_2552.y);
            let x_2555 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2553.x, x_2553.y, x_2555);
            let x_2562 : vec3<f32> = txVec37;
            let x_2564 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2562.xy, x_2562.z);
            u_xlat61.x = x_2564;
            let x_2567 : f32 = u_xlat18.w;
            let x_2569 : f32 = u_xlat61.x;
            let x_2571 : f32 = u_xlat36;
            u_xlat36 = ((x_2567 * x_2569) + x_2571);
            let x_2574 : vec4<f32> = u_xlat16;
            let x_2575 : vec2<f32> = vec2<f32>(x_2574.x, x_2574.y);
            let x_2577 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2575.x, x_2575.y, x_2577);
            let x_2584 : vec3<f32> = txVec38;
            let x_2586 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2584.xy, x_2584.z);
            u_xlat61.x = x_2586;
            let x_2589 : f32 = u_xlat19.x;
            let x_2591 : f32 = u_xlat61.x;
            let x_2593 : f32 = u_xlat36;
            u_xlat36 = ((x_2589 * x_2591) + x_2593);
            let x_2596 : vec4<f32> = u_xlat16;
            let x_2597 : vec2<f32> = vec2<f32>(x_2596.z, x_2596.w);
            let x_2599 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2597.x, x_2597.y, x_2599);
            let x_2606 : vec3<f32> = txVec39;
            let x_2608 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2606.xy, x_2606.z);
            u_xlat61.x = x_2608;
            let x_2611 : f32 = u_xlat19.y;
            let x_2613 : f32 = u_xlat61.x;
            let x_2615 : f32 = u_xlat36;
            u_xlat36 = ((x_2611 * x_2613) + x_2615);
            let x_2618 : vec4<f32> = u_xlat14;
            let x_2619 : vec2<f32> = vec2<f32>(x_2618.z, x_2618.w);
            let x_2621 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2619.x, x_2619.y, x_2621);
            let x_2628 : vec3<f32> = txVec40;
            let x_2630 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2628.xy, x_2628.z);
            u_xlat61.x = x_2630;
            let x_2633 : f32 = u_xlat19.z;
            let x_2635 : f32 = u_xlat61.x;
            let x_2637 : f32 = u_xlat36;
            u_xlat36 = ((x_2633 * x_2635) + x_2637);
            let x_2640 : vec4<f32> = u_xlat13;
            let x_2641 : vec2<f32> = vec2<f32>(x_2640.x, x_2640.y);
            let x_2643 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2641.x, x_2641.y, x_2643);
            let x_2650 : vec3<f32> = txVec41;
            let x_2652 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2650.xy, x_2650.z);
            u_xlat61.x = x_2652;
            let x_2655 : f32 = u_xlat19.w;
            let x_2657 : f32 = u_xlat61.x;
            let x_2659 : f32 = u_xlat36;
            u_xlat36 = ((x_2655 * x_2657) + x_2659);
            let x_2662 : vec4<f32> = u_xlat13;
            let x_2663 : vec2<f32> = vec2<f32>(x_2662.z, x_2662.w);
            let x_2665 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2663.x, x_2663.y, x_2665);
            let x_2672 : vec3<f32> = txVec42;
            let x_2674 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2672.xy, x_2672.z);
            u_xlat61.x = x_2674;
            let x_2677 : f32 = u_xlat11.x;
            let x_2679 : f32 = u_xlat61.x;
            let x_2681 : f32 = u_xlat36;
            u_xlat85 = ((x_2677 * x_2679) + x_2681);
          } else {
            let x_2684 : vec4<f32> = u_xlat10;
            let x_2687 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2690 : vec2<f32> = ((vec2<f32>(x_2684.x, x_2684.y) * vec2<f32>(x_2687.z, x_2687.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2691 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2690.x, x_2690.y, x_2691.z, x_2691.w);
            let x_2693 : vec4<f32> = u_xlat11;
            let x_2695 : vec2<f32> = floor(vec2<f32>(x_2693.x, x_2693.y));
            let x_2696 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2695.x, x_2695.y, x_2696.z, x_2696.w);
            let x_2698 : vec4<f32> = u_xlat10;
            let x_2701 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2704 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2698.x, x_2698.y) * vec2<f32>(x_2701.z, x_2701.w)) + -(vec2<f32>(x_2704.x, x_2704.y)));
            let x_2708 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2708.x, x_2708.x, x_2708.y, x_2708.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2711 : vec4<f32> = u_xlat12;
            let x_2713 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2711.x, x_2711.x, x_2711.z, x_2711.z) * vec4<f32>(x_2713.x, x_2713.x, x_2713.z, x_2713.z));
            let x_2716 : vec4<f32> = u_xlat13;
            let x_2718 : vec2<f32> = (vec2<f32>(x_2716.y, x_2716.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2719 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2719.x, x_2718.x, x_2719.z, x_2718.y);
            let x_2721 : vec4<f32> = u_xlat13;
            let x_2724 : vec2<f32> = u_xlat61;
            let x_2726 : vec2<f32> = ((vec2<f32>(x_2721.x, x_2721.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2724));
            let x_2727 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2726.x, x_2727.y, x_2726.y, x_2727.w);
            let x_2729 : vec2<f32> = u_xlat61;
            let x_2731 : vec2<f32> = (-(x_2729) + vec2<f32>(1.0f, 1.0f));
            let x_2732 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2731.x, x_2731.y, x_2732.z, x_2732.w);
            let x_2734 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2734, vec2<f32>(0.0f, 0.0f));
            let x_2736 : vec2<f32> = u_xlat63;
            let x_2738 : vec2<f32> = u_xlat63;
            let x_2740 : vec4<f32> = u_xlat13;
            let x_2742 : vec2<f32> = ((-(x_2736) * x_2738) + vec2<f32>(x_2740.x, x_2740.y));
            let x_2743 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2742.x, x_2742.y, x_2743.z, x_2743.w);
            let x_2745 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2745, vec2<f32>(0.0f, 0.0f));
            let x_2748 : vec2<f32> = u_xlat63;
            let x_2750 : vec2<f32> = u_xlat63;
            let x_2752 : vec4<f32> = u_xlat12;
            let x_2754 : vec2<f32> = ((-(x_2748) * x_2750) + vec2<f32>(x_2752.y, x_2752.w));
            let x_2755 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2754.x, x_2755.y, x_2754.y);
            let x_2757 : vec4<f32> = u_xlat13;
            let x_2759 : vec2<f32> = (vec2<f32>(x_2757.x, x_2757.y) + vec2<f32>(2.0f, 2.0f));
            let x_2760 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2759.x, x_2759.y, x_2760.z, x_2760.w);
            let x_2762 : vec3<f32> = u_xlat37;
            let x_2764 : vec2<f32> = (vec2<f32>(x_2762.x, x_2762.z) + vec2<f32>(2.0f, 2.0f));
            let x_2765 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2765.x, x_2764.x, x_2765.z, x_2764.y);
            let x_2768 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2768 * 0.08163200318813323975f);
            let x_2771 : vec4<f32> = u_xlat12;
            let x_2773 : vec3<f32> = (vec3<f32>(x_2771.z, x_2771.x, x_2771.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2774 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2773.x, x_2773.y, x_2773.z, x_2774.w);
            let x_2776 : vec4<f32> = u_xlat13;
            let x_2778 : vec2<f32> = (vec2<f32>(x_2776.x, x_2776.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2779 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2778.x, x_2778.y, x_2779.z, x_2779.w);
            let x_2782 : f32 = u_xlat16.y;
            u_xlat15.x = x_2782;
            let x_2784 : vec2<f32> = u_xlat61;
            let x_2787 : vec2<f32> = ((vec2<f32>(x_2784.x, x_2784.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2788 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2788.x, x_2787.x, x_2788.z, x_2787.y);
            let x_2790 : vec2<f32> = u_xlat61;
            let x_2793 : vec2<f32> = ((vec2<f32>(x_2790.x, x_2790.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2794 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2793.x, x_2794.y, x_2793.y, x_2794.w);
            let x_2797 : f32 = u_xlat12.x;
            u_xlat13.y = x_2797;
            let x_2800 : f32 = u_xlat14.y;
            u_xlat13.w = x_2800;
            let x_2802 : vec4<f32> = u_xlat13;
            let x_2803 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2802 + x_2803);
            let x_2805 : vec2<f32> = u_xlat61;
            let x_2808 : vec2<f32> = ((vec2<f32>(x_2805.y, x_2805.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2809 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2809.x, x_2808.x, x_2809.z, x_2808.y);
            let x_2811 : vec2<f32> = u_xlat61;
            let x_2814 : vec2<f32> = ((vec2<f32>(x_2811.y, x_2811.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2815 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2814.x, x_2815.y, x_2814.y, x_2815.w);
            let x_2818 : f32 = u_xlat12.y;
            u_xlat14.y = x_2818;
            let x_2820 : vec4<f32> = u_xlat14;
            let x_2821 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2820 + x_2821);
            let x_2823 : vec4<f32> = u_xlat13;
            let x_2824 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2823 / x_2824);
            let x_2826 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2826 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2828 : vec4<f32> = u_xlat14;
            let x_2829 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2828 / x_2829);
            let x_2831 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2831 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2833 : vec4<f32> = u_xlat13;
            let x_2836 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2833.w, x_2833.x, x_2833.y, x_2833.z) * vec4<f32>(x_2836.x, x_2836.x, x_2836.x, x_2836.x));
            let x_2839 : vec4<f32> = u_xlat14;
            let x_2842 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2839.x, x_2839.w, x_2839.y, x_2839.z) * vec4<f32>(x_2842.y, x_2842.y, x_2842.y, x_2842.y));
            let x_2845 : vec4<f32> = u_xlat13;
            let x_2846 : vec3<f32> = vec3<f32>(x_2845.y, x_2845.z, x_2845.w);
            let x_2847 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2846.x, x_2847.y, x_2846.y, x_2846.z);
            let x_2850 : f32 = u_xlat14.x;
            u_xlat16.y = x_2850;
            let x_2852 : vec4<f32> = u_xlat11;
            let x_2855 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2858 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2852.x, x_2852.y, x_2852.x, x_2852.y) * vec4<f32>(x_2855.x, x_2855.y, x_2855.x, x_2855.y)) + vec4<f32>(x_2858.x, x_2858.y, x_2858.z, x_2858.y));
            let x_2861 : vec4<f32> = u_xlat11;
            let x_2864 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2867 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_2861.x, x_2861.y) * vec2<f32>(x_2864.x, x_2864.y)) + vec2<f32>(x_2867.w, x_2867.y));
            let x_2871 : f32 = u_xlat16.y;
            u_xlat13.y = x_2871;
            let x_2874 : f32 = u_xlat14.z;
            u_xlat16.y = x_2874;
            let x_2876 : vec4<f32> = u_xlat11;
            let x_2879 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2882 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_2876.x, x_2876.y, x_2876.x, x_2876.y) * vec4<f32>(x_2879.x, x_2879.y, x_2879.x, x_2879.y)) + vec4<f32>(x_2882.x, x_2882.y, x_2882.z, x_2882.y));
            let x_2885 : vec4<f32> = u_xlat11;
            let x_2888 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2891 : vec4<f32> = u_xlat16;
            let x_2893 : vec2<f32> = ((vec2<f32>(x_2885.x, x_2885.y) * vec2<f32>(x_2888.x, x_2888.y)) + vec2<f32>(x_2891.w, x_2891.y));
            let x_2894 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_2893.x, x_2893.y, x_2894.z, x_2894.w);
            let x_2897 : f32 = u_xlat16.y;
            u_xlat13.z = x_2897;
            let x_2900 : vec4<f32> = u_xlat11;
            let x_2903 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2906 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_2900.x, x_2900.y, x_2900.x, x_2900.y) * vec4<f32>(x_2903.x, x_2903.y, x_2903.x, x_2903.y)) + vec4<f32>(x_2906.x, x_2906.y, x_2906.x, x_2906.z));
            let x_2910 : f32 = u_xlat14.w;
            u_xlat16.y = x_2910;
            let x_2913 : vec4<f32> = u_xlat11;
            let x_2916 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2919 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_2913.x, x_2913.y, x_2913.x, x_2913.y) * vec4<f32>(x_2916.x, x_2916.y, x_2916.x, x_2916.y)) + vec4<f32>(x_2919.x, x_2919.y, x_2919.z, x_2919.y));
            let x_2923 : vec4<f32> = u_xlat11;
            let x_2926 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2929 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_2923.x, x_2923.y) * vec2<f32>(x_2926.x, x_2926.y)) + vec2<f32>(x_2929.w, x_2929.y));
            let x_2933 : f32 = u_xlat16.y;
            u_xlat13.w = x_2933;
            let x_2936 : vec4<f32> = u_xlat11;
            let x_2939 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2942 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_2936.x, x_2936.y) * vec2<f32>(x_2939.x, x_2939.y)) + vec2<f32>(x_2942.x, x_2942.w));
            let x_2945 : vec4<f32> = u_xlat16;
            let x_2946 : vec3<f32> = vec3<f32>(x_2945.x, x_2945.z, x_2945.w);
            let x_2947 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2946.x, x_2947.y, x_2946.y, x_2946.z);
            let x_2949 : vec4<f32> = u_xlat11;
            let x_2952 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2955 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2949.x, x_2949.y, x_2949.x, x_2949.y) * vec4<f32>(x_2952.x, x_2952.y, x_2952.x, x_2952.y)) + vec4<f32>(x_2955.x, x_2955.y, x_2955.z, x_2955.y));
            let x_2959 : vec4<f32> = u_xlat11;
            let x_2962 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2965 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2959.x, x_2959.y) * vec2<f32>(x_2962.x, x_2962.y)) + vec2<f32>(x_2965.w, x_2965.y));
            let x_2969 : f32 = u_xlat13.x;
            u_xlat14.x = x_2969;
            let x_2971 : vec4<f32> = u_xlat11;
            let x_2974 : vec4<f32> = x_273.x_AdditionalShadowmapSize;
            let x_2977 : vec4<f32> = u_xlat14;
            let x_2979 : vec2<f32> = ((vec2<f32>(x_2971.x, x_2971.y) * vec2<f32>(x_2974.x, x_2974.y)) + vec2<f32>(x_2977.x, x_2977.y));
            let x_2980 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2979.x, x_2979.y, x_2980.z, x_2980.w);
            let x_2983 : vec4<f32> = u_xlat12;
            let x_2985 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_2983.x, x_2983.x, x_2983.x, x_2983.x) * x_2985);
            let x_2988 : vec4<f32> = u_xlat12;
            let x_2990 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_2988.y, x_2988.y, x_2988.y, x_2988.y) * x_2990);
            let x_2993 : vec4<f32> = u_xlat12;
            let x_2995 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_2993.z, x_2993.z, x_2993.z, x_2993.z) * x_2995);
            let x_2997 : vec4<f32> = u_xlat12;
            let x_2999 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_2997.w, x_2997.w, x_2997.w, x_2997.w) * x_2999);
            let x_3002 : vec4<f32> = u_xlat17;
            let x_3003 : vec2<f32> = vec2<f32>(x_3002.x, x_3002.y);
            let x_3005 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3003.x, x_3003.y, x_3005);
            let x_3012 : vec3<f32> = txVec43;
            let x_3014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3012.xy, x_3012.z);
            u_xlat13.x = x_3014;
            let x_3017 : vec4<f32> = u_xlat17;
            let x_3018 : vec2<f32> = vec2<f32>(x_3017.z, x_3017.w);
            let x_3020 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3018.x, x_3018.y, x_3020);
            let x_3028 : vec3<f32> = txVec44;
            let x_3030 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3028.xy, x_3028.z);
            u_xlat88 = x_3030;
            let x_3031 : f32 = u_xlat88;
            let x_3033 : f32 = u_xlat22.y;
            u_xlat88 = (x_3031 * x_3033);
            let x_3036 : f32 = u_xlat22.x;
            let x_3038 : f32 = u_xlat13.x;
            let x_3040 : f32 = u_xlat88;
            u_xlat13.x = ((x_3036 * x_3038) + x_3040);
            let x_3044 : vec2<f32> = u_xlat61;
            let x_3046 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3044.x, x_3044.y, x_3046);
            let x_3053 : vec3<f32> = txVec45;
            let x_3055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3053.xy, x_3053.z);
            u_xlat61.x = x_3055;
            let x_3058 : f32 = u_xlat22.z;
            let x_3060 : f32 = u_xlat61.x;
            let x_3063 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3058 * x_3060) + x_3063);
            let x_3067 : vec4<f32> = u_xlat20;
            let x_3068 : vec2<f32> = vec2<f32>(x_3067.x, x_3067.y);
            let x_3070 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3068.x, x_3068.y, x_3070);
            let x_3078 : vec3<f32> = txVec46;
            let x_3080 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3078.xy, x_3078.z);
            u_xlat86 = x_3080;
            let x_3082 : f32 = u_xlat22.w;
            let x_3083 : f32 = u_xlat86;
            let x_3086 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3082 * x_3083) + x_3086);
            let x_3090 : vec4<f32> = u_xlat18;
            let x_3091 : vec2<f32> = vec2<f32>(x_3090.x, x_3090.y);
            let x_3093 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3091.x, x_3091.y, x_3093);
            let x_3100 : vec3<f32> = txVec47;
            let x_3102 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3100.xy, x_3100.z);
            u_xlat86 = x_3102;
            let x_3104 : f32 = u_xlat23.x;
            let x_3105 : f32 = u_xlat86;
            let x_3108 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3104 * x_3105) + x_3108);
            let x_3112 : vec4<f32> = u_xlat18;
            let x_3113 : vec2<f32> = vec2<f32>(x_3112.z, x_3112.w);
            let x_3115 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3113.x, x_3113.y, x_3115);
            let x_3122 : vec3<f32> = txVec48;
            let x_3124 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3122.xy, x_3122.z);
            u_xlat86 = x_3124;
            let x_3126 : f32 = u_xlat23.y;
            let x_3127 : f32 = u_xlat86;
            let x_3130 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3126 * x_3127) + x_3130);
            let x_3134 : vec4<f32> = u_xlat19;
            let x_3135 : vec2<f32> = vec2<f32>(x_3134.x, x_3134.y);
            let x_3137 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3135.x, x_3135.y, x_3137);
            let x_3144 : vec3<f32> = txVec49;
            let x_3146 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3144.xy, x_3144.z);
            u_xlat86 = x_3146;
            let x_3148 : f32 = u_xlat23.z;
            let x_3149 : f32 = u_xlat86;
            let x_3152 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3148 * x_3149) + x_3152);
            let x_3156 : vec4<f32> = u_xlat20;
            let x_3157 : vec2<f32> = vec2<f32>(x_3156.z, x_3156.w);
            let x_3159 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3157.x, x_3157.y, x_3159);
            let x_3166 : vec3<f32> = txVec50;
            let x_3168 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3166.xy, x_3166.z);
            u_xlat86 = x_3168;
            let x_3170 : f32 = u_xlat23.w;
            let x_3171 : f32 = u_xlat86;
            let x_3174 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3170 * x_3171) + x_3174);
            let x_3178 : vec4<f32> = u_xlat21;
            let x_3179 : vec2<f32> = vec2<f32>(x_3178.x, x_3178.y);
            let x_3181 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3179.x, x_3179.y, x_3181);
            let x_3188 : vec3<f32> = txVec51;
            let x_3190 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3188.xy, x_3188.z);
            u_xlat86 = x_3190;
            let x_3192 : f32 = u_xlat24.x;
            let x_3193 : f32 = u_xlat86;
            let x_3196 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3192 * x_3193) + x_3196);
            let x_3200 : vec4<f32> = u_xlat21;
            let x_3201 : vec2<f32> = vec2<f32>(x_3200.z, x_3200.w);
            let x_3203 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3201.x, x_3201.y, x_3203);
            let x_3210 : vec3<f32> = txVec52;
            let x_3212 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3210.xy, x_3210.z);
            u_xlat86 = x_3212;
            let x_3214 : f32 = u_xlat24.y;
            let x_3215 : f32 = u_xlat86;
            let x_3218 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3214 * x_3215) + x_3218);
            let x_3222 : vec2<f32> = u_xlat38;
            let x_3224 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3222.x, x_3222.y, x_3224);
            let x_3231 : vec3<f32> = txVec53;
            let x_3233 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3231.xy, x_3231.z);
            u_xlat86 = x_3233;
            let x_3235 : f32 = u_xlat24.z;
            let x_3236 : f32 = u_xlat86;
            let x_3239 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3235 * x_3236) + x_3239);
            let x_3243 : vec2<f32> = u_xlat69;
            let x_3245 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3243.x, x_3243.y, x_3245);
            let x_3252 : vec3<f32> = txVec54;
            let x_3254 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3252.xy, x_3252.z);
            u_xlat86 = x_3254;
            let x_3256 : f32 = u_xlat24.w;
            let x_3257 : f32 = u_xlat86;
            let x_3260 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3256 * x_3257) + x_3260);
            let x_3264 : vec4<f32> = u_xlat16;
            let x_3265 : vec2<f32> = vec2<f32>(x_3264.x, x_3264.y);
            let x_3267 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3265.x, x_3265.y, x_3267);
            let x_3274 : vec3<f32> = txVec55;
            let x_3276 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3274.xy, x_3274.z);
            u_xlat86 = x_3276;
            let x_3278 : f32 = u_xlat12.x;
            let x_3279 : f32 = u_xlat86;
            let x_3282 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3278 * x_3279) + x_3282);
            let x_3286 : vec4<f32> = u_xlat16;
            let x_3287 : vec2<f32> = vec2<f32>(x_3286.z, x_3286.w);
            let x_3289 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3287.x, x_3287.y, x_3289);
            let x_3296 : vec3<f32> = txVec56;
            let x_3298 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3296.xy, x_3296.z);
            u_xlat86 = x_3298;
            let x_3300 : f32 = u_xlat12.y;
            let x_3301 : f32 = u_xlat86;
            let x_3304 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3300 * x_3301) + x_3304);
            let x_3308 : vec2<f32> = u_xlat64;
            let x_3310 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3308.x, x_3308.y, x_3310);
            let x_3317 : vec3<f32> = txVec57;
            let x_3319 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3317.xy, x_3317.z);
            u_xlat86 = x_3319;
            let x_3321 : f32 = u_xlat12.z;
            let x_3322 : f32 = u_xlat86;
            let x_3325 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3321 * x_3322) + x_3325);
            let x_3329 : vec4<f32> = u_xlat11;
            let x_3330 : vec2<f32> = vec2<f32>(x_3329.x, x_3329.y);
            let x_3332 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3330.x, x_3330.y, x_3332);
            let x_3339 : vec3<f32> = txVec58;
            let x_3341 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3339.xy, x_3339.z);
            u_xlat11.x = x_3341;
            let x_3344 : f32 = u_xlat12.w;
            let x_3346 : f32 = u_xlat11.x;
            let x_3349 : f32 = u_xlat61.x;
            u_xlat85 = ((x_3344 * x_3346) + x_3349);
          }
        }
      } else {
        let x_3353 : vec4<f32> = u_xlat10;
        let x_3354 : vec2<f32> = vec2<f32>(x_3353.x, x_3353.y);
        let x_3356 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3354.x, x_3354.y, x_3356);
        let x_3363 : vec3<f32> = txVec59;
        let x_3365 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3363.xy, x_3363.z);
        u_xlat85 = x_3365;
      }
      let x_3366 : i32 = u_xlati81;
      let x_3368 : f32 = x_273.x_AdditionalShadowParams[x_3366].x;
      u_xlat10.x = (1.0f + -(x_3368));
      let x_3372 : f32 = u_xlat85;
      let x_3373 : i32 = u_xlati81;
      let x_3375 : f32 = x_273.x_AdditionalShadowParams[x_3373].x;
      let x_3378 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_3372 * x_3375) + x_3378);
      let x_3382 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_3382);
      let x_3387 : f32 = u_xlat10.z;
      u_xlatb60 = (x_3387 >= 1.0f);
      let x_3389 : bool = u_xlatb60;
      let x_3391 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_3389 | x_3391);
      let x_3395 : bool = u_xlatb35.x;
      if (x_3395) {
        x_3396 = 1.0f;
      } else {
        let x_3401 : f32 = u_xlat10.x;
        x_3396 = x_3401;
      }
      let x_3402 : f32 = x_3396;
      u_xlat10.x = x_3402;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_3407 : f32 = u_xlat10.x;
    u_xlat35 = (-(x_3407) + 1.0f);
    let x_3410 : f32 = u_xlat1;
    let x_3411 : f32 = u_xlat35;
    let x_3414 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_3410 * x_3411) + x_3414);
    let x_3417 : f32 = u_xlat83;
    let x_3419 : f32 = u_xlat10.x;
    u_xlat83 = (x_3417 * x_3419);
    let x_3421 : vec3<f32> = u_xlat26;
    let x_3422 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(x_3421, x_3422);
    let x_3426 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_3426, 0.0f, 1.0f);
    let x_3429 : f32 = u_xlat83;
    let x_3431 : f32 = u_xlat10.x;
    u_xlat83 = (x_3429 * x_3431);
    let x_3433 : f32 = u_xlat83;
    let x_3435 : i32 = u_xlati81;
    let x_3437 : vec4<f32> = x_1904.x_AdditionalLightsColor[x_3435];
    let x_3439 : vec3<f32> = (vec3<f32>(x_3433, x_3433, x_3433) * vec3<f32>(x_3437.x, x_3437.y, x_3437.z));
    let x_3440 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3439.x, x_3439.y, x_3439.z, x_3440.w);
    let x_3442 : vec4<f32> = u_xlat8;
    let x_3444 : vec4<f32> = u_xlat9;
    let x_3447 : vec4<f32> = u_xlat5;
    let x_3449 : vec3<f32> = ((vec3<f32>(x_3442.x, x_3442.y, x_3442.z) * vec3<f32>(x_3444.x, x_3444.x, x_3444.x)) + vec3<f32>(x_3447.x, x_3447.y, x_3447.z));
    let x_3450 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3449.x, x_3449.y, x_3449.z, x_3450.w);
    let x_3452 : vec4<f32> = u_xlat8;
    let x_3454 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3452.x, x_3452.y, x_3452.z), vec3<f32>(x_3454.x, x_3454.y, x_3454.z));
    let x_3457 : f32 = u_xlat81;
    u_xlat81 = max(x_3457, 1.17549435e-38f);
    let x_3459 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3459);
    let x_3461 : f32 = u_xlat81;
    let x_3463 : vec4<f32> = u_xlat8;
    let x_3465 : vec3<f32> = (vec3<f32>(x_3461, x_3461, x_3461) * vec3<f32>(x_3463.x, x_3463.y, x_3463.z));
    let x_3466 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3465.x, x_3465.y, x_3465.z, x_3466.w);
    let x_3468 : vec3<f32> = u_xlat26;
    let x_3469 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(x_3468, vec3<f32>(x_3469.x, x_3469.y, x_3469.z));
    let x_3472 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3472, 0.0f, 1.0f);
    let x_3474 : vec3<f32> = u_xlat34;
    let x_3475 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_3474, vec3<f32>(x_3475.x, x_3475.y, x_3475.z));
    let x_3480 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3480, 0.0f, 1.0f);
    let x_3483 : f32 = u_xlat81;
    let x_3484 : f32 = u_xlat81;
    u_xlat81 = (x_3483 * x_3484);
    let x_3486 : f32 = u_xlat81;
    let x_3488 : f32 = u_xlat7.x;
    u_xlat81 = ((x_3486 * x_3488) + 1.00001001358032226562f);
    let x_3492 : f32 = u_xlat8.x;
    let x_3494 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3492 * x_3494);
    let x_3497 : f32 = u_xlat81;
    let x_3498 : f32 = u_xlat81;
    u_xlat81 = (x_3497 * x_3498);
    let x_3501 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3501, 0.10000000149011611938f);
    let x_3504 : f32 = u_xlat81;
    let x_3506 : f32 = u_xlat8.x;
    u_xlat81 = (x_3504 * x_3506);
    let x_3508 : f32 = u_xlat28;
    let x_3509 : f32 = u_xlat81;
    u_xlat81 = (x_3508 * x_3509);
    let x_3511 : f32 = u_xlat29;
    let x_3512 : f32 = u_xlat81;
    u_xlat81 = (x_3511 / x_3512);
    let x_3514 : vec4<f32> = u_xlat0;
    let x_3516 : f32 = u_xlat81;
    let x_3519 : vec4<f32> = u_xlat3;
    let x_3521 : vec3<f32> = ((vec3<f32>(x_3514.x, x_3514.y, x_3514.z) * vec3<f32>(x_3516, x_3516, x_3516)) + vec3<f32>(x_3519.x, x_3519.z, x_3519.w));
    let x_3522 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3521.x, x_3521.y, x_3521.z, x_3522.w);
    let x_3524 : vec4<f32> = u_xlat8;
    let x_3526 : vec4<f32> = u_xlat10;
    let x_3529 : vec4<f32> = u_xlat4;
    let x_3531 : vec3<f32> = ((vec3<f32>(x_3524.x, x_3524.y, x_3524.z) * vec3<f32>(x_3526.x, x_3526.y, x_3526.z)) + vec3<f32>(x_3529.x, x_3529.z, x_3529.w));
    let x_3532 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_3531.x, x_3532.y, x_3531.y, x_3531.z);

    continuing {
      let x_3534 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3534 + bitcast<u32>(1i));
    }
  }
  let x_3536 : vec3<f32> = u_xlat32;
  let x_3537 : vec4<f32> = u_xlat6;
  let x_3540 : vec3<f32> = u_xlat27;
  let x_3541 : vec3<f32> = ((x_3536 * vec3<f32>(x_3537.x, x_3537.y, x_3537.z)) + x_3540);
  let x_3542 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3541.x, x_3541.y, x_3541.z, x_3542.w);
  let x_3544 : vec4<f32> = u_xlat4;
  let x_3546 : vec4<f32> = u_xlat0;
  let x_3548 : vec3<f32> = (vec3<f32>(x_3544.x, x_3544.z, x_3544.w) + vec3<f32>(x_3546.x, x_3546.y, x_3546.z));
  let x_3549 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3548.x, x_3548.y, x_3548.z, x_3549.w);
  let x_3551 : f32 = u_xlat2;
  let x_3552 : f32 = u_xlat2;
  u_xlat75 = (x_3551 * -(x_3552));
  let x_3555 : f32 = u_xlat75;
  u_xlat75 = exp2(x_3555);
  let x_3557 : vec4<f32> = u_xlat0;
  let x_3560 : vec4<f32> = x_29.unity_FogColor;
  let x_3563 : vec3<f32> = (vec3<f32>(x_3557.x, x_3557.y, x_3557.z) + -(vec3<f32>(x_3560.x, x_3560.y, x_3560.z)));
  let x_3564 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3563.x, x_3563.y, x_3563.z, x_3564.w);
  let x_3568 : f32 = u_xlat75;
  let x_3570 : vec4<f32> = u_xlat0;
  let x_3574 : vec4<f32> = x_29.unity_FogColor;
  let x_3576 : vec3<f32> = ((vec3<f32>(x_3568, x_3568, x_3568) * vec3<f32>(x_3570.x, x_3570.y, x_3570.z)) + vec3<f32>(x_3574.x, x_3574.y, x_3574.z));
  let x_3577 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3576.x, x_3576.y, x_3576.z, x_3577.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


