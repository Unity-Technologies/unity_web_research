struct VGlobals {
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
  let x_35 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_49 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec3<f32> = ((vec3<f32>(x_49.x, x_49.y, x_49.z) * vec3<f32>(x_51.w, x_51.w, x_51.w)) + vec3<f32>(x_54.x, x_54.y, x_54.z));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_60 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_60.y, x_60.y, x_60.y, x_60.y) * x_64);
  let x_67 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_68 : vec4<f32> = u_xlat1;
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_67 * vec4<f32>(x_68.x, x_68.x, x_68.x, x_68.x)) + x_71);
  let x_74 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_75 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_74 * vec4<f32>(x_75.z, x_75.z, x_75.z, x_75.z)) + x_78);
  let x_87 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_88 : vec4<f32> = u_xlat1;
  let x_91 : vec4<f32> = u_xlat2;
  gl_Position = ((x_87 * vec4<f32>(x_88.w, x_88.w, x_88.w, x_88.w)) + x_91);
  let x_99 : vec4<f32> = in_TEXCOORD0;
  let x_103 : vec4<f32> = x_17.x_MainTex_ST;
  let x_107 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_99.x, x_99.y) * vec2<f32>(x_103.x, x_103.y)) + vec2<f32>(x_107.z, x_107.w));
  let x_114 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_114;
  let x_119 : vec4<f32> = in_TANGENT0;
  let x_122 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_124 : vec3<f32> = (vec3<f32>(x_119.y, x_119.y, x_119.y) * vec3<f32>(x_122.y, x_122.z, x_122.x));
  let x_125 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_128 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_130 : vec4<f32> = in_TANGENT0;
  let x_133 : vec4<f32> = u_xlat1;
  let x_135 : vec3<f32> = ((vec3<f32>(x_128.y, x_128.z, x_128.x) * vec3<f32>(x_130.x, x_130.x, x_130.x)) + vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_141 : vec4<f32> = in_TANGENT0;
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec3<f32> = ((vec3<f32>(x_139.y, x_139.z, x_139.x) * vec3<f32>(x_141.z, x_141.z, x_141.z)) + vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_149 : vec4<f32> = u_xlat1;
  let x_151 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_149.x, x_149.y, x_149.z), vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_156 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_156);
  let x_159 : vec4<f32> = u_xlat0;
  let x_161 : vec4<f32> = u_xlat1;
  let x_163 : vec3<f32> = (vec3<f32>(x_159.x, x_159.x, x_159.x) * vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_164 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_168 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_168;
  let x_172 : vec3<f32> = in_NORMAL0;
  let x_175 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_172, vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_179 : vec3<f32> = in_NORMAL0;
  let x_181 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_179, vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_185 : vec3<f32> = in_NORMAL0;
  let x_187 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_185, vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_191 : vec4<f32> = u_xlat2;
  let x_193 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_198 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_198);
  let x_201 : vec4<f32> = u_xlat0;
  let x_203 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_201.x, x_201.x, x_201.x, x_201.x) * vec4<f32>(x_203.x, x_203.y, x_203.z, x_203.z));
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_210.w, x_210.x, x_210.y));
  let x_213 : vec4<f32> = u_xlat2;
  let x_215 : vec4<f32> = u_xlat1;
  let x_218 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_213.y, x_213.w, x_213.x) * vec3<f32>(x_215.y, x_215.z, x_215.x)) + -(x_218));
  let x_223 : f32 = in_TANGENT0.w;
  let x_227 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_223 * x_227);
  let x_230 : vec4<f32> = u_xlat0;
  let x_232 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_230.x, x_230.x, x_230.x) * x_232);
  let x_235 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_235;
  let x_238 : f32 = u_xlat2.x;
  vs_TEXCOORD1.z = x_238;
  let x_242 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_242;
  let x_246 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_246;
  let x_249 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_249;
  let x_252 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_252;
  let x_255 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_255;
  let x_258 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_258;
  let x_261 : f32 = u_xlat2.y;
  vs_TEXCOORD2.z = x_261;
  let x_264 : f32 = u_xlat2.w;
  vs_TEXCOORD3.z = x_264;
  let x_267 : f32 = u_xlat2.y;
  let x_269 : f32 = u_xlat2.y;
  u_xlat0.x = (x_267 * x_269);
  let x_273 : f32 = u_xlat2.x;
  let x_275 : f32 = u_xlat2.x;
  let x_278 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_273 * x_275) + -(x_278));
  let x_282 : vec4<f32> = u_xlat2;
  let x_284 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_282.y, x_282.w, x_282.z, x_282.x) * x_284);
  let x_287 : vec4<f32> = x_17.unity_SHBr;
  let x_288 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_287, x_288);
  let x_292 : vec4<f32> = x_17.unity_SHBg;
  let x_293 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_292, x_293);
  let x_297 : vec4<f32> = x_17.unity_SHBb;
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_297, x_298);
  let x_304 : vec4<f32> = x_17.unity_SHC;
  let x_306 : vec4<f32> = u_xlat0;
  let x_309 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.x, x_306.x, x_306.x)) + vec3<f32>(x_309.x, x_309.y, x_309.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

