diagnostic(off, derivative_uniformity);

struct TerrainGrass {
  /* @offset(0) */
  x_WavingTint : vec4<f32>,
  /* @offset(16) */
  x_WaveAndDistance : vec4<f32>,
  /* @offset(32) */
  x_CameraPosition : vec4<f32>,
  /* @offset(48) */
  x_CameraRight : vec3<f32>,
  /* @offset(64) */
  x_CameraUp : vec3<f32>,
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

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_19 : TerrainGrass;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : f32;

@group(1) @binding(3) var<uniform> x_244 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_286 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_12;
  let x_24 : vec4<f32> = x_19.x_WaveAndDistance;
  u_xlat0 = (vec4<f32>(x_24.y, x_24.y, x_24.y, x_24.y) * vec4<f32>(0.00600000005215406418f, 0.01999999955296516418f, 0.01999999955296516418f, 0.05000000074505805969f));
  let x_31 : vec4<f32> = u_xlat0;
  let x_34 : vec4<f32> = in_POSITION0;
  u_xlat0 = (x_31 * vec4<f32>(x_34.z, x_34.z, x_34.z, x_34.z));
  let x_39 : vec4<f32> = x_19.x_WaveAndDistance;
  u_xlat1 = (vec4<f32>(x_39.y, x_39.y, x_39.y, x_39.y) * vec4<f32>(0.01200000010430812836f, 0.01999999955296516418f, 0.05999999865889549255f, 0.02400000020861625671f));
  let x_46 : vec4<f32> = in_POSITION0;
  let x_48 : vec4<f32> = u_xlat1;
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_46.x, x_46.x, x_46.x, x_46.x) * x_48) + x_50);
  let x_53 : vec4<f32> = x_19.x_WaveAndDistance;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_53.x, x_53.x, x_53.x, x_53.x) * vec4<f32>(1.20000004768371582031f, 2.0f, 1.60000002384185791016f, 4.80000019073486328125f)) + x_61);
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_63);
  let x_65 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_65 * vec4<f32>(6.40884876251220703125f, 6.40884876251220703125f, 6.40884876251220703125f, 6.40884876251220703125f)) + vec4<f32>(-3.14159274101257324219f, -3.14159274101257324219f, -3.14159274101257324219f, -3.14159274101257324219f));
  let x_72 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_72 * x_73);
  let x_76 : vec4<f32> = u_xlat0;
  let x_77 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_76 * x_77);
  let x_79 : vec4<f32> = u_xlat2;
  let x_83 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_79 * vec4<f32>(-0.16161616146564483643f, -0.16161616146564483643f, -0.16161616146564483643f, -0.16161616146564483643f)) + x_83);
  let x_85 : vec4<f32> = u_xlat1;
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_85 * x_86);
  let x_88 : vec4<f32> = u_xlat1;
  let x_89 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_88 * x_89);
  let x_91 : vec4<f32> = u_xlat2;
  let x_95 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_91 * vec4<f32>(0.00833330024033784866f, 0.00833330024033784866f, 0.00833330024033784866f, 0.00833330024033784866f)) + x_95);
  let x_97 : vec4<f32> = u_xlat1;
  let x_101 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_97 * vec4<f32>(-0.00019840999448206276f, -0.00019840999448206276f, -0.00019840999448206276f, -0.00019840999448206276f)) + x_101);
  let x_103 : vec4<f32> = u_xlat0;
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_103 * x_104);
  let x_106 : vec4<f32> = u_xlat0;
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_106 * x_107);
  let x_109 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_109, vec4<f32>(0.67419987916946411133f, 0.67419987916946411133f, 0.26967993378639221191f, 0.13483996689319610596f));
  let x_120 : f32 = u_xlat1.x;
  u_xlat1.x = (x_120 * 0.69999998807907104492f);
  let x_128 : vec4<f32> = x_19.x_WavingTint;
  u_xlat4 = (vec3<f32>(x_128.x, x_128.y, x_128.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_133 : vec4<f32> = u_xlat1;
  let x_135 : vec3<f32> = u_xlat4;
  let x_139 : vec3<f32> = ((vec3<f32>(x_133.x, x_133.x, x_133.x) * x_135) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_140 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_142 : vec4<f32> = u_xlat1;
  let x_145 : vec4<f32> = in_COLOR0;
  let x_147 : vec3<f32> = (vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_152 : vec4<f32> = u_xlat1;
  let x_154 : vec4<f32> = u_xlat1;
  let x_156 : vec3<f32> = (vec3<f32>(x_152.x, x_152.y, x_152.z) + vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_162 : f32 = in_COLOR0.w;
  let x_166 : f32 = x_19.x_WaveAndDistance.z;
  u_xlat1.x = (x_162 * x_166);
  let x_169 : vec4<f32> = u_xlat0;
  let x_170 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_169 * vec4<f32>(x_170.x, x_170.x, x_170.x, x_170.x));
  let x_173 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_173, vec4<f32>(0.02400000020861625671f, 0.03999999910593032837f, -0.11999999731779098511f, 0.09600000083446502686f));
  let x_180 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(x_180, vec4<f32>(0.00600000005215406418f, 0.01999999955296516418f, -0.01999999955296516418f, 0.10000000149011611938f));
  let x_186 : vec4<f32> = u_xlat1;
  let x_190 : vec4<f32> = x_19.x_WaveAndDistance;
  let x_193 : vec4<f32> = in_POSITION0;
  let x_195 : vec2<f32> = ((-(vec2<f32>(x_186.x, x_186.z)) * vec2<f32>(x_190.z, x_190.z)) + vec2<f32>(x_193.x, x_193.z));
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_195.x, x_196.y, x_195.y, x_196.w);
  let x_200 : f32 = in_POSITION0.y;
  u_xlat0.y = x_200;
  let x_202 : vec4<f32> = u_xlat0;
  let x_206 : vec4<f32> = x_19.x_CameraPosition;
  let x_209 : vec3<f32> = (vec3<f32>(x_202.x, x_202.y, x_202.z) + -(vec3<f32>(x_206.x, x_206.y, x_206.z)));
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_213 : vec4<f32> = u_xlat1;
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat3 = dot(vec3<f32>(x_213.x, x_213.y, x_213.z), vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : f32 = u_xlat3;
  let x_221 : f32 = x_19.x_WaveAndDistance.w;
  u_xlat3 = (-(x_218) + x_221);
  let x_223 : f32 = u_xlat3;
  let x_224 : f32 = u_xlat3;
  u_xlat3 = (x_223 + x_224);
  let x_226 : f32 = u_xlat3;
  let x_228 : f32 = x_19.x_CameraPosition.w;
  vs_TEXCOORD1.w = (x_226 * x_228);
  let x_233 : f32 = vs_TEXCOORD1.w;
  vs_TEXCOORD1.w = clamp(x_233, 0.0f, 1.0f);
  let x_238 : vec4<f32> = in_POSITION0;
  let x_246 : vec4<f32> = x_244.unity_ObjectToWorld[1i];
  let x_248 : vec3<f32> = (vec3<f32>(x_238.y, x_238.y, x_238.y) * vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_252 : vec4<f32> = x_244.unity_ObjectToWorld[0i];
  let x_254 : vec4<f32> = u_xlat0;
  let x_257 : vec4<f32> = u_xlat1;
  let x_259 : vec3<f32> = ((vec3<f32>(x_252.x, x_252.y, x_252.z) * vec3<f32>(x_254.x, x_254.x, x_254.x)) + vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_259.x, x_259.y, x_260.z, x_259.z);
  let x_263 : vec4<f32> = x_244.unity_ObjectToWorld[2i];
  let x_265 : vec4<f32> = u_xlat0;
  let x_268 : vec4<f32> = u_xlat0;
  let x_270 : vec3<f32> = ((vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_265.z, x_265.z, x_265.z)) + vec3<f32>(x_268.x, x_268.y, x_268.w));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = x_244.unity_ObjectToWorld[3i];
  let x_279 : vec3<f32> = (vec3<f32>(x_273.x, x_273.y, x_273.z) + vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : vec4<f32> = u_xlat0;
  let x_288 : vec4<f32> = x_286.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_282.y, x_282.y, x_282.y, x_282.y) * x_288);
  let x_291 : vec4<f32> = x_286.unity_MatrixVP[0i];
  let x_292 : vec4<f32> = u_xlat0;
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_291 * vec4<f32>(x_292.x, x_292.x, x_292.x, x_292.x)) + x_295);
  let x_298 : vec4<f32> = x_286.unity_MatrixVP[2i];
  let x_299 : vec4<f32> = u_xlat0;
  let x_302 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_298 * vec4<f32>(x_299.z, x_299.z, x_299.z, x_299.z)) + x_302);
  let x_308 : vec4<f32> = u_xlat0;
  let x_310 : vec4<f32> = x_286.unity_MatrixVP[3i];
  gl_Position = (x_308 + x_310);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, gl_Position);
}


