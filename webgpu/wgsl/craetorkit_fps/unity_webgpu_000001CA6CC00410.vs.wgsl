struct VGlobals {
  x_SinTime : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Displacement : f32,
  x_DisplacementScale : f32,
  x_DisplacementSpeed : f32,
  x_DisplacementIndex : i32,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

@group(0) @binding(5) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(17) var sampler_DisplacementNoise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_23 : f32 = x_19.x_DisplacementScale;
  let x_25 : f32 = x_19.x_DisplacementScale;
  let x_27 : f32 = x_19.x_DisplacementScale;
  let x_28 : vec3<f32> = vec3<f32>(x_23, x_25, x_27);
  let x_33 : vec3<f32> = (vec3<f32>(x_13.x, x_13.y, x_13.z) * vec3<f32>(x_28.x, x_28.y, x_28.z));
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_33.x, x_33.y, x_33.z, x_34.w);
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = in_COLOR0;
  let x_41 : vec3<f32> = (vec3<f32>(x_36.x, x_36.y, x_36.z) * vec3<f32>(x_39.z, x_39.z, x_39.z));
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_41.x, x_41.y, x_41.z, x_42.w);
  let x_49 : f32 = x_19.x_SinTime.y;
  let x_52 : f32 = x_19.x_DisplacementSpeed;
  u_xlat1.y = (x_49 * x_52);
  u_xlat1.x = 0.0f;
  u_xlat1.z = 0.0f;
  let x_61 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = in_COLOR0;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_63.y, x_63.y, x_63.y)) + vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = textureSampleLevel(x_DisplacementNoise, sampler_DisplacementNoise, vec3<f32>(x_81.x, x_81.y, x_81.z), 0.0f);
  u_xlat0 = x_83;
  let x_89 : i32 = x_19.x_DisplacementIndex;
  u_xlati1 = x_89;
  let x_90 : vec4<f32> = u_xlat0;
  let x_100 : i32 = u_xlati1;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_105 : vec4<u32> = indexable[x_100];
  u_xlat0.x = dot(x_90, bitcast<vec4<f32>>(x_105));
  let x_110 : f32 = u_xlat0.x;
  let x_113 : f32 = x_19.x_Displacement;
  u_xlat0.x = (x_110 * x_113);
  let x_117 : f32 = u_xlat0.x;
  let x_120 : f32 = in_COLOR0.x;
  u_xlat0.x = (x_117 * x_120);
  let x_125 : vec3<f32> = in_NORMAL0;
  let x_126 : vec4<f32> = u_xlat0;
  let x_129 : vec4<f32> = in_POSITION0;
  let x_131 : vec3<f32> = ((x_125 * vec3<f32>(x_126.x, x_126.x, x_126.x)) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat0;
  let x_140 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_134.y, x_134.y, x_134.y, x_134.y) * x_140);
  let x_143 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_144 : vec4<f32> = u_xlat0;
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_143 * vec4<f32>(x_144.x, x_144.x, x_144.x, x_144.x)) + x_147);
  let x_151 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_152 : vec4<f32> = u_xlat0;
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_151 * vec4<f32>(x_152.z, x_152.z, x_152.z, x_152.z)) + x_155);
  let x_157 : vec4<f32> = u_xlat0;
  let x_160 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat1 = (x_157 + x_160);
  let x_163 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_165 : vec4<f32> = in_POSITION0;
  let x_168 : vec4<f32> = u_xlat0;
  let x_170 : vec3<f32> = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.w, x_165.w, x_165.w)) + vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : vec4<f32> = u_xlat1;
  let x_178 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_174.y, x_174.y, x_174.y, x_174.y) * x_178);
  let x_181 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_182 : vec4<f32> = u_xlat1;
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_181 * vec4<f32>(x_182.x, x_182.x, x_182.x, x_182.x)) + x_185);
  let x_188 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_189 : vec4<f32> = u_xlat1;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_188 * vec4<f32>(x_189.z, x_189.z, x_189.z, x_189.z)) + x_192);
  let x_199 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_200 : vec4<f32> = u_xlat1;
  let x_203 : vec4<f32> = u_xlat2;
  gl_Position = ((x_199 * vec4<f32>(x_200.w, x_200.w, x_200.w, x_200.w)) + x_203);
  let x_211 : vec4<f32> = in_TEXCOORD0;
  let x_215 : vec4<f32> = x_19.x_MainTex_ST;
  let x_219 : vec4<f32> = x_19.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_211.x, x_211.y) * vec2<f32>(x_215.x, x_215.y)) + vec2<f32>(x_219.z, x_219.w));
  let x_224 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_224;
  let x_229 : vec4<f32> = in_TANGENT0;
  let x_232 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_234 : vec3<f32> = (vec3<f32>(x_229.y, x_229.y, x_229.y) * vec3<f32>(x_232.y, x_232.z, x_232.x));
  let x_235 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_238 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_240 : vec4<f32> = in_TANGENT0;
  let x_243 : vec4<f32> = u_xlat1;
  let x_245 : vec3<f32> = ((vec3<f32>(x_238.y, x_238.z, x_238.x) * vec3<f32>(x_240.x, x_240.x, x_240.x)) + vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_249 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_251 : vec4<f32> = in_TANGENT0;
  let x_254 : vec4<f32> = u_xlat1;
  let x_256 : vec3<f32> = ((vec3<f32>(x_249.y, x_249.z, x_249.x) * vec3<f32>(x_251.z, x_251.z, x_251.z)) + vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : vec4<f32> = u_xlat1;
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_259.x, x_259.y, x_259.z), vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_266 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_266);
  let x_269 : vec4<f32> = u_xlat0;
  let x_271 : vec4<f32> = u_xlat1;
  let x_273 : vec3<f32> = (vec3<f32>(x_269.x, x_269.x, x_269.x) * vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_277;
  let x_279 : vec3<f32> = in_NORMAL0;
  let x_282 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_279, vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_286 : vec3<f32> = in_NORMAL0;
  let x_288 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_286, vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_292 : vec3<f32> = in_NORMAL0;
  let x_294 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_292, vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_298 : vec4<f32> = u_xlat2;
  let x_300 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_298.x, x_298.y, x_298.z), vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_305 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_305);
  let x_308 : vec4<f32> = u_xlat0;
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_308.x, x_308.x, x_308.x, x_308.x) * vec4<f32>(x_310.x, x_310.y, x_310.z, x_310.z));
  let x_315 : vec4<f32> = u_xlat1;
  let x_317 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.w, x_317.x, x_317.y));
  let x_320 : vec4<f32> = u_xlat2;
  let x_322 : vec4<f32> = u_xlat1;
  let x_325 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_320.y, x_320.w, x_320.x) * vec3<f32>(x_322.y, x_322.z, x_322.x)) + -(x_325));
  let x_329 : f32 = in_TANGENT0.w;
  let x_332 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat0.x = (x_329 * x_332);
  let x_335 : vec4<f32> = u_xlat0;
  let x_337 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_335.x, x_335.x, x_335.x) * x_337);
  let x_340 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_340;
  let x_343 : f32 = u_xlat2.x;
  vs_TEXCOORD1.z = x_343;
  let x_347 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_347;
  let x_351 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_351;
  let x_354 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_354;
  let x_357 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_357;
  let x_360 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_360;
  let x_363 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_363;
  let x_366 : f32 = u_xlat2.y;
  vs_TEXCOORD2.z = x_366;
  let x_369 : f32 = u_xlat2.w;
  vs_TEXCOORD3.z = x_369;
  let x_372 : f32 = u_xlat2.y;
  let x_374 : f32 = u_xlat2.y;
  u_xlat0.x = (x_372 * x_374);
  let x_378 : f32 = u_xlat2.x;
  let x_380 : f32 = u_xlat2.x;
  let x_383 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_378 * x_380) + -(x_383));
  let x_387 : vec4<f32> = u_xlat2;
  let x_389 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_387.y, x_387.w, x_387.z, x_387.x) * x_389);
  let x_392 : vec4<f32> = x_19.unity_SHBr;
  let x_393 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_392, x_393);
  let x_397 : vec4<f32> = x_19.unity_SHBg;
  let x_398 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_397, x_398);
  let x_402 : vec4<f32> = x_19.unity_SHBb;
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_402, x_403);
  let x_410 : vec4<f32> = x_19.unity_SHC;
  let x_412 : vec4<f32> = u_xlat0;
  let x_415 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412.x, x_412.x, x_412.x)) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}
