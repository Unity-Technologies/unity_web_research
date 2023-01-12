struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Gradient_ST : vec4<f32>,
}

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(5) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_131 : VGlobals;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat3 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat10 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = in_TEXCOORD0;
  let x_26 : vec4<f32> = textureSampleLevel(x_Gradient, sampler_Gradient, vec2<f32>(x_23.x, x_23.y), 0.0f);
  u_xlat0.x = x_26.y;
  let x_33 : vec4<f32> = u_xlat0;
  let x_38 : vec3<f32> = in_NORMAL0;
  let x_40 : vec2<f32> = (vec2<f32>(x_33.x, x_33.x) * vec2<f32>(x_38.x, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_41.z, x_41.w);
  let x_43 : vec4<f32> = u_xlat0;
  let x_47 : vec2<f32> = (vec2<f32>(x_43.x, x_43.y) * vec2<f32>(0.02f, 0.02f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_52 : vec4<f32> = in_TEXCOORD0;
  u_xlat6 = (vec2<f32>(x_52.z, x_52.z) + vec2<f32>(-1.0f, -0.300000012f));
  let x_58 : vec2<f32> = u_xlat6;
  u_xlat6 = (x_58 * vec2<f32>(-9.999998093f, 50.000049591f));
  let x_63 : vec2<f32> = u_xlat6;
  u_xlat6 = clamp(x_63, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec2<f32> = u_xlat6;
  let x_75 : vec4<f32> = in_POSITION0;
  let x_77 : vec2<f32> = ((vec2<f32>(x_69.x, x_69.y) * vec2<f32>(x_71.y, x_71.y)) + vec2<f32>(x_75.x, x_75.z));
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_78.y, x_77.y, x_78.w);
  let x_81 : f32 = u_xlat6.x;
  let x_85 : f32 = in_TEXCOORD0.y;
  u_xlat0.y = (-(x_81) + x_85);
  let x_89 : f32 = in_TEXCOORD0.x;
  u_xlat0.x = x_89;
  let x_94 : vec4<f32> = u_xlat0;
  let x_96 : vec4<f32> = textureSampleLevel(x_Gradient, sampler_Gradient, vec2<f32>(x_94.x, x_94.y), 0.0f);
  u_xlat0.x = x_96.x;
  let x_99 : vec4<f32> = u_xlat0;
  let x_101 : vec3<f32> = in_NORMAL0;
  u_xlat0 = (vec4<f32>(x_99.x, x_99.x, x_99.x, x_99.x) * vec4<f32>(x_101.x, x_101.y, x_101.z, x_101.x));
  let x_105 : f32 = in_POSITION0.y;
  u_xlat1.y = x_105;
  let x_107 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(0.449999988f, 0.449999988f, 0.449999988f)) + vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_120 : f32 = u_xlat0.w;
  let x_124 : f32 = u_xlat0.y;
  u_xlat3 = ((x_120 * 0.25f) + x_124);
  let x_126 : f32 = u_xlat3;
  let x_137 : vec4<f32> = x_131.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_126, x_126, x_126, x_126) * x_137);
  let x_140 : vec4<f32> = x_131.unity_ObjectToWorld[0i];
  let x_141 : vec4<f32> = u_xlat0;
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_140 * vec4<f32>(x_141.x, x_141.x, x_141.x, x_141.x)) + x_144);
  let x_148 : vec4<f32> = x_131.unity_ObjectToWorld[2i];
  let x_149 : vec4<f32> = u_xlat0;
  let x_152 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_148 * vec4<f32>(x_149.z, x_149.z, x_149.z, x_149.z)) + x_152);
  let x_154 : vec4<f32> = u_xlat0;
  let x_157 : vec4<f32> = x_131.unity_ObjectToWorld[3i];
  u_xlat1 = (x_154 + x_157);
  let x_160 : vec4<f32> = u_xlat1;
  let x_163 : vec4<f32> = x_131.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_160.y, x_160.y, x_160.y, x_160.y) * x_163);
  let x_166 : vec4<f32> = x_131.unity_MatrixVP[0i];
  let x_167 : vec4<f32> = u_xlat1;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_166 * vec4<f32>(x_167.x, x_167.x, x_167.x, x_167.x)) + x_170);
  let x_173 : vec4<f32> = x_131.unity_MatrixVP[2i];
  let x_174 : vec4<f32> = u_xlat1;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_173 * vec4<f32>(x_174.z, x_174.z, x_174.z, x_174.z)) + x_177);
  let x_180 : vec4<f32> = x_131.unity_MatrixVP[3i];
  let x_181 : vec4<f32> = u_xlat1;
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_180 * vec4<f32>(x_181.w, x_181.w, x_181.w, x_181.w)) + x_184);
  let x_190 : vec4<f32> = u_xlat1;
  gl_Position = x_190;
  let x_197 : f32 = u_xlat1.z;
  vs_TEXCOORD6 = x_197;
  let x_200 : vec4<f32> = in_TEXCOORD0;
  let x_204 : vec4<f32> = x_131.x_Gradient_ST;
  let x_208 : vec4<f32> = x_131.x_Gradient_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_200.x, x_200.y) * vec2<f32>(x_204.x, x_204.y)) + vec2<f32>(x_208.z, x_208.w));
  let x_213 : f32 = in_TEXCOORD0.z;
  vs_TEXCOORD3 = x_213;
  let x_214 : vec3<f32> = in_NORMAL0;
  let x_216 : vec4<f32> = x_131.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_214, vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_220 : vec3<f32> = in_NORMAL0;
  let x_222 : vec4<f32> = x_131.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_220, vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_226 : vec3<f32> = in_NORMAL0;
  let x_228 : vec4<f32> = x_131.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_226, vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_233 : vec4<f32> = u_xlat1;
  let x_235 : vec4<f32> = u_xlat1;
  u_xlat10 = dot(vec3<f32>(x_233.x, x_233.y, x_233.z), vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_238);
  let x_242 : f32 = u_xlat10;
  let x_244 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = (vec3<f32>(x_242, x_242, x_242) * vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_249 : vec4<f32> = x_131.unity_ObjectToWorld[3i];
  let x_251 : vec4<f32> = in_POSITION0;
  let x_254 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_251.w, x_251.w, x_251.w)) + vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_258 : vec4<f32> = x_131.unity_ObjectToWorld[3i];
  let x_259 : vec4<f32> = in_POSITION0;
  let x_262 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_258 * vec4<f32>(x_259.w, x_259.w, x_259.w, x_259.w)) + x_262);
  let x_264 : vec4<f32> = u_xlat0;
  let x_267 : vec4<f32> = x_131.unity_WorldToLight[1i];
  let x_269 : vec3<f32> = (vec3<f32>(x_264.y, x_264.y, x_264.y) * vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : vec4<f32> = x_131.unity_WorldToLight[0i];
  let x_275 : vec4<f32> = u_xlat0;
  let x_278 : vec4<f32> = u_xlat1;
  let x_280 : vec3<f32> = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275.x, x_275.x, x_275.x)) + vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_284 : vec4<f32> = x_131.unity_WorldToLight[2i];
  let x_286 : vec4<f32> = u_xlat0;
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec3<f32> = ((vec3<f32>(x_284.x, x_284.y, x_284.z) * vec3<f32>(x_286.z, x_286.z, x_286.z)) + vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_297 : vec4<f32> = x_131.unity_WorldToLight[3i];
  let x_299 : vec4<f32> = u_xlat0;
  let x_302 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.w, x_299.w, x_299.w)) + vec3<f32>(x_302.x, x_302.y, x_302.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD6_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD3_1 : f32,
  @location(3)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD2_1 : vec3<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD6, vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD1, vs_TEXCOORD2);
}

