struct VGlobals {
  x_SinTime : vec4<f32>,
  x_ProjectionParams : vec4<f32>,
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

@group(0) @binding(13) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(15) var sampler_DisplacementNoise : sampler;

@group(0) @binding(14) var x_DisplacementRamp : texture_2d<f32>;

@group(0) @binding(16) var sampler_DisplacementRamp : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat10 : f32;
  var u_xlat2 : vec4<f32>;
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
  let x_208 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_209 : vec4<f32> = u_xlat1;
  let x_212 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_208 * vec4<f32>(x_209.w, x_209.w, x_209.w, x_209.w)) + x_212);
  let x_218 : vec4<f32> = u_xlat0;
  gl_Position = x_218;
  let x_224 : f32 = u_xlat0.z;
  vs_TEXCOORD3 = x_224;
  let x_225 : vec3<f32> = in_NORMAL0;
  let x_228 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_225, vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_232 : vec3<f32> = in_NORMAL0;
  let x_234 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_232, vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_238 : vec3<f32> = in_NORMAL0;
  let x_240 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_238, vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_245 : vec4<f32> = u_xlat1;
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat10 = dot(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_250);
  let x_252 : f32 = u_xlat10;
  let x_254 : vec4<f32> = u_xlat1;
  let x_256 : vec3<f32> = (vec3<f32>(x_252, x_252, x_252) * vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_260 : vec4<f32> = u_xlat1;
  vs_TEXCOORD0 = vec3<f32>(x_260.x, x_260.y, x_260.z);
  let x_263 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_263;
  let x_265 : f32 = u_xlat1.y;
  let x_267 : f32 = u_xlat1.y;
  u_xlat10 = (x_265 * x_267);
  let x_270 : f32 = u_xlat1.x;
  let x_272 : f32 = u_xlat1.x;
  let x_274 : f32 = u_xlat10;
  u_xlat10 = ((x_270 * x_272) + -(x_274));
  let x_278 : vec4<f32> = u_xlat1;
  let x_280 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_278.y, x_278.z, x_278.z, x_278.x) * vec4<f32>(x_280.x, x_280.y, x_280.z, x_280.z));
  let x_284 : vec4<f32> = x_19.unity_SHBr;
  let x_285 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(x_284, x_285);
  let x_289 : vec4<f32> = x_19.unity_SHBg;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat1.y = dot(x_289, x_290);
  let x_295 : vec4<f32> = x_19.unity_SHBb;
  let x_296 : vec4<f32> = u_xlat2;
  u_xlat1.z = dot(x_295, x_296);
  let x_302 : vec4<f32> = x_19.unity_SHC;
  let x_304 : f32 = u_xlat10;
  let x_307 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = ((vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_304, x_304, x_304)) + vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_311 : f32 = u_xlat0.y;
  let x_313 : f32 = x_19.x_ProjectionParams.x;
  u_xlat0.y = (x_311 * x_313);
  let x_316 : vec4<f32> = u_xlat0;
  let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.w, x_316.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_321 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_320.x, x_321.y, x_320.y, x_320.z);
  let x_324 : vec4<f32> = u_xlat0;
  let x_325 : vec2<f32> = vec2<f32>(x_324.z, x_324.w);
  let x_326 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_326.x, x_326.y, x_325.x, x_325.y);
  let x_328 : vec4<f32> = u_xlat1;
  let x_330 : vec4<f32> = u_xlat1;
  let x_332 : vec2<f32> = (vec2<f32>(x_328.z, x_328.z) + vec2<f32>(x_330.x, x_330.w));
  let x_333 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_332.x, x_332.y, x_333.z, x_333.w);
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD3_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD3, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD4);
}

