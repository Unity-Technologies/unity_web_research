struct VGlobals {
  x_SinTime : vec4<f32>,
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

@group(0) @binding(8) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(9) var sampler_DisplacementNoise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : f32;
  var u_xlat2 : vec3<f32>;
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
  let x_139 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_134.y, x_134.y, x_134.y, x_134.y) * x_139);
  let x_142 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_143 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_142 * vec4<f32>(x_143.x, x_143.x, x_143.x, x_143.x)) + x_146);
  let x_150 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_151 : vec4<f32> = u_xlat0;
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_150 * vec4<f32>(x_151.z, x_151.z, x_151.z, x_151.z)) + x_154);
  let x_156 : vec4<f32> = u_xlat0;
  let x_159 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat1 = (x_156 + x_159);
  let x_164 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_166 : vec4<f32> = in_POSITION0;
  let x_169 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_166.w, x_166.w, x_166.w)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat1;
  let x_176 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_172.y, x_172.y, x_172.y, x_172.y) * x_176);
  let x_179 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_180 : vec4<f32> = u_xlat1;
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_179 * vec4<f32>(x_180.x, x_180.x, x_180.x, x_180.x)) + x_183);
  let x_186 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_187 : vec4<f32> = u_xlat1;
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_186 * vec4<f32>(x_187.z, x_187.z, x_187.z, x_187.z)) + x_190);
  let x_193 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_194 : vec4<f32> = u_xlat1;
  let x_197 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_193 * vec4<f32>(x_194.w, x_194.w, x_194.w, x_194.w)) + x_197);
  let x_203 : vec4<f32> = u_xlat0;
  gl_Position = x_203;
  let x_209 : f32 = u_xlat0.z;
  vs_TEXCOORD6 = x_209;
  let x_214 : vec4<f32> = in_TEXCOORD0;
  let x_218 : vec4<f32> = x_19.x_MainTex_ST;
  let x_222 : vec4<f32> = x_19.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_214.x, x_214.y) * vec2<f32>(x_218.x, x_218.y)) + vec2<f32>(x_222.z, x_222.w));
  let x_225 : vec3<f32> = in_NORMAL0;
  let x_227 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat0.y = dot(x_225, vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_231 : vec3<f32> = in_NORMAL0;
  let x_233 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat0.z = dot(x_231, vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_237 : vec3<f32> = in_NORMAL0;
  let x_239 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat0.x = dot(x_237, vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_244 : vec4<f32> = u_xlat0;
  let x_246 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_244.x, x_244.y, x_244.z), vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_249);
  let x_251 : f32 = u_xlat9;
  let x_253 : vec4<f32> = u_xlat0;
  let x_255 : vec3<f32> = (vec3<f32>(x_251, x_251, x_251) * vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : vec4<f32> = in_TANGENT0;
  let x_262 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_264 : vec3<f32> = (vec3<f32>(x_259.y, x_259.y, x_259.y) * vec3<f32>(x_262.y, x_262.z, x_262.x));
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_270 : vec4<f32> = in_TANGENT0;
  let x_273 : vec4<f32> = u_xlat1;
  let x_275 : vec3<f32> = ((vec3<f32>(x_268.y, x_268.z, x_268.x) * vec3<f32>(x_270.x, x_270.x, x_270.x)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_279 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_281 : vec4<f32> = in_TANGENT0;
  let x_284 : vec4<f32> = u_xlat1;
  let x_286 : vec3<f32> = ((vec3<f32>(x_279.y, x_279.z, x_279.x) * vec3<f32>(x_281.z, x_281.z, x_281.z)) + vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_294);
  let x_296 : f32 = u_xlat9;
  let x_298 : vec4<f32> = u_xlat1;
  let x_300 : vec3<f32> = (vec3<f32>(x_296, x_296, x_296) * vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_305 : vec4<f32> = u_xlat0;
  let x_307 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat0;
  let x_312 : vec4<f32> = u_xlat1;
  let x_315 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_310.z, x_310.x, x_310.y) * vec3<f32>(x_312.y, x_312.z, x_312.x)) + -(x_315));
  let x_320 : f32 = in_TANGENT0.w;
  let x_322 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat9 = (x_320 * x_322);
  let x_324 : f32 = u_xlat9;
  let x_326 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_324, x_324, x_324) * x_326);
  let x_330 : f32 = u_xlat2.x;
  vs_TEXCOORD1.y = x_330;
  let x_333 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_333;
  let x_336 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_336;
  let x_340 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_340;
  let x_344 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_344;
  let x_347 : f32 = u_xlat0.z;
  vs_TEXCOORD2.z = x_347;
  let x_350 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = x_350;
  let x_353 : f32 = u_xlat2.y;
  vs_TEXCOORD2.y = x_353;
  let x_356 : f32 = u_xlat2.z;
  vs_TEXCOORD3.y = x_356;
  return;
}

struct main_out {
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD6_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(vs_TEXCOORD4, gl_Position, vs_TEXCOORD6, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

