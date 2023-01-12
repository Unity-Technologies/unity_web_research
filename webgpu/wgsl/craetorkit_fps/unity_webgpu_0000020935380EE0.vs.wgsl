struct VGlobals {
  x_SinTime : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Displacement : f32,
  x_DisplacementScale : f32,
  x_DisplacementSpeed : f32,
  x_DisplacementIndex : i32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

@group(0) @binding(12) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(14) var sampler_DisplacementNoise : sampler;

@group(0) @binding(13) var x_DisplacementRamp : texture_2d<f32>;

@group(0) @binding(15) var sampler_DisplacementRamp : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat12 : f32;
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
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : vec4<f32> = textureSampleLevel(x_DisplacementRamp, sampler_DisplacementRamp, vec2<f32>(x_118.x, x_118.x), 0.0f);
  u_xlat0.x = x_120.x;
  let x_124 : f32 = u_xlat0.x;
  let x_127 : f32 = x_19.x_Displacement;
  u_xlat0.x = (x_124 * x_127);
  let x_131 : f32 = u_xlat0.x;
  let x_134 : f32 = in_COLOR0.x;
  u_xlat0.x = (x_131 * x_134);
  let x_139 : vec3<f32> = in_NORMAL0;
  let x_140 : vec4<f32> = u_xlat0;
  let x_143 : vec4<f32> = in_POSITION0;
  let x_145 : vec3<f32> = ((x_139 * vec3<f32>(x_140.x, x_140.x, x_140.x)) + vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_148 : vec4<f32> = u_xlat0;
  let x_154 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_148.y, x_148.y, x_148.y, x_148.y) * x_154);
  let x_157 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_158 : vec4<f32> = u_xlat0;
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_157 * vec4<f32>(x_158.x, x_158.x, x_158.x, x_158.x)) + x_161);
  let x_165 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_166 : vec4<f32> = u_xlat0;
  let x_169 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_165 * vec4<f32>(x_166.z, x_166.z, x_166.z, x_166.z)) + x_169);
  let x_171 : vec4<f32> = u_xlat0;
  let x_174 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat1 = (x_171 + x_174);
  let x_179 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_181 : vec4<f32> = in_POSITION0;
  let x_184 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = ((vec3<f32>(x_179.x, x_179.y, x_179.z) * vec3<f32>(x_181.w, x_181.w, x_181.w)) + vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : vec4<f32> = u_xlat1;
  let x_191 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_187.y, x_187.y, x_187.y, x_187.y) * x_191);
  let x_194 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_195 : vec4<f32> = u_xlat1;
  let x_198 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_194 * vec4<f32>(x_195.x, x_195.x, x_195.x, x_195.x)) + x_198);
  let x_201 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_202 : vec4<f32> = u_xlat1;
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_201 * vec4<f32>(x_202.z, x_202.z, x_202.z, x_202.z)) + x_205);
  let x_212 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_213 : vec4<f32> = u_xlat1;
  let x_216 : vec4<f32> = u_xlat0;
  gl_Position = ((x_212 * vec4<f32>(x_213.w, x_213.w, x_213.w, x_213.w)) + x_216);
  let x_220 : vec3<f32> = in_NORMAL0;
  let x_223 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_220, vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_227 : vec3<f32> = in_NORMAL0;
  let x_229 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_227, vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_233 : vec3<f32> = in_NORMAL0;
  let x_235 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_233, vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_240 : vec4<f32> = u_xlat0;
  let x_242 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_240.x, x_240.y, x_240.z), vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_245);
  let x_247 : f32 = u_xlat12;
  let x_249 : vec4<f32> = u_xlat0;
  let x_251 : vec3<f32> = (vec3<f32>(x_247, x_247, x_247) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = vec3<f32>(x_255.x, x_255.y, x_255.z);
  let x_258 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_258;
  let x_260 : f32 = u_xlat0.y;
  let x_262 : f32 = u_xlat0.y;
  u_xlat1.x = (x_260 * x_262);
  let x_266 : f32 = u_xlat0.x;
  let x_268 : f32 = u_xlat0.x;
  let x_271 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_266 * x_268) + -(x_271));
  let x_276 : vec4<f32> = u_xlat0;
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec4<f32>(x_276.y, x_276.z, x_276.z, x_276.x) * vec4<f32>(x_278.x, x_278.y, x_278.z, x_278.z));
  let x_285 : vec4<f32> = x_19.unity_SHBr;
  let x_286 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_285, x_286);
  let x_291 : vec4<f32> = x_19.unity_SHBg;
  let x_292 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_291, x_292);
  let x_297 : vec4<f32> = x_19.unity_SHBb;
  let x_298 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_297, x_298);
  let x_303 : vec4<f32> = x_19.unity_SHC;
  let x_305 : vec4<f32> = u_xlat1;
  let x_308 : vec3<f32> = u_xlat3;
  let x_309 : vec3<f32> = ((vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_305.x, x_305.x, x_305.x)) + x_308);
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  u_xlat0.w = 1.0f;
  let x_316 : vec4<f32> = x_19.unity_SHAr;
  let x_317 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_316, x_317);
  let x_321 : vec4<f32> = x_19.unity_SHAg;
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_321, x_322);
  let x_326 : vec4<f32> = x_19.unity_SHAb;
  let x_327 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_326, x_327);
  let x_330 : vec4<f32> = u_xlat1;
  let x_332 : vec4<f32> = u_xlat2;
  let x_334 : vec3<f32> = (vec3<f32>(x_330.x, x_330.y, x_330.z) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = max(vec3<f32>(x_338.x, x_338.y, x_338.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  vs_TEXCOORD4 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2);
}

