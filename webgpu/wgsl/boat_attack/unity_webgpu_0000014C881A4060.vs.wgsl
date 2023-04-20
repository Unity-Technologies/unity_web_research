diagnostic(off, derivative_uniformity);

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

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4<f32>,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4<f32>,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4<f32>,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4<f32>,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4<f32>,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4<f32>,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4<f32>,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4<f32>,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4<f32>,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4<f32>,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4<f32>,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4<f32>,
  /* @offset(240) */
  x_Control_ST : vec4<f32>,
  /* @offset(256) */
  x_Control_TexelSize : vec4<f32>,
  /* @offset(272) */
  x_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  x_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  x_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  x_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4<f32>,
  /* @offset(320) */
  x_Splat1_ST : vec4<f32>,
  /* @offset(336) */
  x_Splat2_ST : vec4<f32>,
  /* @offset(352) */
  x_Splat3_ST : vec4<f32>,
  /* @offset(368) */
  x_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
}

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(32) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(96) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_20 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : x_Terrain;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_189 : VGlobals;

var<private> u_xlatb12 : bool;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_221 : f32;
  var x_282 : f32;
  var x_295 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = in_TEXCOORD0;
  let x_25 : vec4<f32> = x_20.unity_LightmapST;
  let x_29 : vec4<f32> = x_20.unity_LightmapST;
  let x_31 : vec2<f32> = ((x_13 * vec2<f32>(x_25.x, x_25.y)) + vec2<f32>(x_29.z, x_29.w));
  let x_32 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_32.x, x_32.y, x_31.x, x_31.y);
  let x_34 : vec2<f32> = in_TEXCOORD0;
  let x_35 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_34.x, x_34.y, x_35.z, x_35.w);
  let x_38 : vec2<f32> = in_TEXCOORD0;
  let x_44 : vec4<f32> = x_41.x_Splat0_ST;
  let x_48 : vec4<f32> = x_41.x_Splat0_ST;
  let x_50 : vec2<f32> = ((x_38 * vec2<f32>(x_44.x, x_44.y)) + vec2<f32>(x_48.z, x_48.w));
  let x_51 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_50.x, x_50.y, x_51.z, x_51.w);
  let x_53 : vec2<f32> = in_TEXCOORD0;
  let x_56 : vec4<f32> = x_41.x_Splat1_ST;
  let x_60 : vec4<f32> = x_41.x_Splat1_ST;
  let x_62 : vec2<f32> = ((x_53 * vec2<f32>(x_56.x, x_56.y)) + vec2<f32>(x_60.z, x_60.w));
  let x_63 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_63.x, x_63.y, x_62.x, x_62.y);
  let x_66 : vec2<f32> = in_TEXCOORD0;
  let x_69 : vec4<f32> = x_41.x_Splat2_ST;
  let x_73 : vec4<f32> = x_41.x_Splat2_ST;
  let x_75 : vec2<f32> = ((x_66 * vec2<f32>(x_69.x, x_69.y)) + vec2<f32>(x_73.z, x_73.w));
  let x_76 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_75.x, x_75.y, x_76.z, x_76.w);
  let x_78 : vec2<f32> = in_TEXCOORD0;
  let x_81 : vec4<f32> = x_41.x_Splat3_ST;
  let x_85 : vec4<f32> = x_41.x_Splat3_ST;
  let x_87 : vec2<f32> = ((x_78 * vec2<f32>(x_81.x, x_81.y)) + vec2<f32>(x_85.z, x_85.w));
  let x_88 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_88.x, x_88.y, x_87.x, x_87.y);
  let x_95 : vec3<f32> = in_NORMAL0;
  let x_100 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_102 : vec3<f32> = (vec3<f32>(x_95.y, x_95.y, x_95.y) * vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_106 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_108 : vec3<f32> = in_NORMAL0;
  let x_111 : vec4<f32> = u_xlat0;
  let x_113 : vec3<f32> = ((vec3<f32>(x_106.x, x_106.y, x_106.z) * vec3<f32>(x_108.x, x_108.x, x_108.x)) + vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_118 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_120 : vec3<f32> = in_NORMAL0;
  let x_123 : vec4<f32> = u_xlat0;
  let x_125 : vec3<f32> = ((vec3<f32>(x_118.x, x_118.y, x_118.z) * vec3<f32>(x_120.z, x_120.z, x_120.z)) + vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_130 : vec4<f32> = u_xlat0;
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_130.x, x_130.y, x_130.z), vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_135 : f32 = u_xlat12;
  u_xlat12 = max(x_135, 1.17549435e-38f);
  let x_138 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_138);
  let x_140 : f32 = u_xlat12;
  let x_142 : vec4<f32> = u_xlat0;
  let x_144 : vec3<f32> = (vec3<f32>(x_140, x_140, x_140) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_148 : vec4<f32> = u_xlat0;
  let x_149 : vec3<f32> = vec3<f32>(x_148.x, x_148.y, x_148.z);
  let x_150 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_156 : vec4<f32> = in_POSITION0;
  let x_159 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat1 = (vec3<f32>(x_156.y, x_156.y, x_156.y) * vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_163 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_165 : vec4<f32> = in_POSITION0;
  let x_168 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.x, x_165.x, x_165.x)) + x_168);
  let x_171 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_173 : vec4<f32> = in_POSITION0;
  let x_176 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_171.x, x_171.y, x_171.z) * vec3<f32>(x_173.z, x_173.z, x_173.z)) + x_176);
  let x_178 : vec3<f32> = u_xlat1;
  let x_181 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat1 = (x_178 + vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_185 : vec3<f32> = u_xlat1;
  let x_192 : vec3<f32> = x_189.x_WorldSpaceCameraPos;
  let x_193 : vec3<f32> = (-(x_185) + x_192);
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat2;
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_201 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_201);
  let x_203 : f32 = u_xlat12;
  let x_205 : vec4<f32> = u_xlat2;
  let x_207 : vec3<f32> = (vec3<f32>(x_203, x_203, x_203) * vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_216 : f32 = x_189.unity_OrthoParams.w;
  u_xlatb12 = (x_216 == 0.0f);
  let x_219 : bool = u_xlatb12;
  if (x_219) {
    let x_226 : f32 = u_xlat2.x;
    x_221 = x_226;
  } else {
    let x_229 : f32 = x_189.unity_MatrixV[0i].z;
    x_221 = x_229;
  }
  let x_230 : f32 = x_221;
  vs_TEXCOORD3.w = x_230;
  let x_233 : vec3<f32> = in_NORMAL0;
  let x_237 : vec2<f32> = (vec2<f32>(x_233.y, x_233.z) * vec2<f32>(1.0f, 0.0f));
  let x_238 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_237.x, x_238.y, x_238.z, x_237.y);
  let x_240 : vec3<f32> = in_NORMAL0;
  let x_244 : vec4<f32> = u_xlat2;
  let x_247 : vec2<f32> = ((vec2<f32>(x_240.z, x_240.x) * vec2<f32>(0.0f, 1.0f)) + -(vec2<f32>(x_244.x, x_244.w)));
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_247.x, x_248.y, x_248.z, x_247.y);
  let x_251 : vec4<f32> = u_xlat2;
  let x_254 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_251.w, x_251.w, x_251.w) * vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_258 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_260 : vec4<f32> = u_xlat2;
  let x_263 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.x, x_260.x, x_260.x)) + x_263);
  let x_266 : vec3<f32> = u_xlat3;
  let x_267 : vec3<f32> = u_xlat3;
  u_xlat13 = dot(x_266, x_267);
  let x_269 : f32 = u_xlat13;
  u_xlat13 = max(x_269, 1.17549435e-38f);
  let x_271 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_271);
  let x_273 : f32 = u_xlat13;
  let x_275 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_273, x_273, x_273) * x_275);
  let x_278 : vec3<f32> = u_xlat3;
  let x_279 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_281 : bool = u_xlatb12;
  if (x_281) {
    let x_287 : f32 = u_xlat2.y;
    x_282 = x_287;
  } else {
    let x_290 : f32 = x_189.unity_MatrixV[1i].z;
    x_282 = x_290;
  }
  let x_291 : f32 = x_282;
  vs_TEXCOORD4.w = x_291;
  let x_294 : bool = u_xlatb12;
  if (x_294) {
    let x_299 : f32 = u_xlat2.z;
    x_295 = x_299;
  } else {
    let x_302 : f32 = x_189.unity_MatrixV[2i].z;
    x_295 = x_302;
  }
  let x_303 : f32 = x_295;
  vs_TEXCOORD5.w = x_303;
  let x_305 : vec4<f32> = u_xlat0;
  let x_307 : vec3<f32> = u_xlat3;
  let x_309 : vec3<f32> = (vec3<f32>(x_305.z, x_305.x, x_305.y) * vec3<f32>(x_307.y, x_307.z, x_307.x));
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat0;
  let x_314 : vec3<f32> = u_xlat3;
  let x_317 : vec4<f32> = u_xlat2;
  let x_320 : vec3<f32> = ((vec3<f32>(x_312.y, x_312.z, x_312.x) * vec3<f32>(x_314.z, x_314.x, x_314.y)) + -(vec3<f32>(x_317.x, x_317.y, x_317.z)));
  let x_321 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_324 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlatb12 = (x_324 >= 0.0f);
  let x_326 : bool = u_xlatb12;
  u_xlat12 = select(-1.0f, 1.0f, x_326);
  let x_329 : f32 = u_xlat12;
  let x_331 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = (vec3<f32>(x_329, x_329, x_329) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  vs_TEXCOORD6 = 0.0f;
  let x_339 : vec3<f32> = u_xlat1;
  vs_TEXCOORD7 = x_339;
  let x_340 : vec3<f32> = u_xlat1;
  let x_343 : vec4<f32> = x_189.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_340.y, x_340.y, x_340.y, x_340.y) * x_343);
  let x_346 : vec4<f32> = x_189.unity_MatrixVP[0i];
  let x_347 : vec3<f32> = u_xlat1;
  let x_350 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_346 * vec4<f32>(x_347.x, x_347.x, x_347.x, x_347.x)) + x_350);
  let x_353 : vec4<f32> = x_189.unity_MatrixVP[2i];
  let x_354 : vec3<f32> = u_xlat1;
  let x_357 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_353 * vec4<f32>(x_354.z, x_354.z, x_354.z, x_354.z)) + x_357);
  let x_363 : vec4<f32> = u_xlat0;
  let x_365 : vec4<f32> = x_189.unity_MatrixVP[3i];
  gl_Position = (x_363 + x_365);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD7_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7, gl_Position);
}


