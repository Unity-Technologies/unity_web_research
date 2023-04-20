diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(16) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(80) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(144) */
  unity_FogParams : vec4<f32>,
  /* @offset(160) */
  x_TreeBillboardCameraPos : vec4<f32>,
  /* @offset(176) */
  x_TreeBillboardDistances : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> u_xlat9 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb9 : bool;

var<private> u_xlat4 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatb3 : bool;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : f32;

var<private> u_xlatb0 : bool;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_56 : vec2<f32>;
  var x_217 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_18.x_TreeBillboardCameraPos;
  let x_26 : vec3<f32> = (vec3<f32>(x_13.y, x_13.z, x_13.x) + -(vec3<f32>(x_23.y, x_23.z, x_23.x)));
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_26.z, x_27.w);
  let x_31 : vec4<f32> = u_xlat0;
  let x_33 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_31.x, x_31.y, x_31.z), vec3<f32>(x_33.x, x_33.y, x_33.z));
  let x_37 : f32 = u_xlat9;
  u_xlat1.x = sqrt(x_37);
  let x_48 : f32 = x_18.x_TreeBillboardDistances.x;
  let x_49 : f32 = u_xlat9;
  u_xlatb9 = (x_48 < x_49);
  let x_54 : bool = u_xlatb9;
  if (x_54) {
    x_56 = vec2<f32>(0.0f, 0.0f);
  } else {
    let x_64 : vec2<f32> = in_TEXCOORD1;
    x_56 = x_64;
  }
  let x_65 : vec2<f32> = x_56;
  u_xlat4 = x_65;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat1;
  let x_70 : vec3<f32> = (vec3<f32>(x_66.x, x_66.y, x_66.z) / vec3<f32>(x_68.x, x_68.x, x_68.x));
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_74 : f32 = u_xlat1.x;
  let x_77 : f32 = x_18.x_TreeBillboardDistances.z;
  u_xlat9 = (x_74 + -(x_77));
  let x_81 : vec4<f32> = u_xlat0;
  let x_85 : vec3<f32> = (vec3<f32>(x_81.x, x_81.y, x_81.z) * vec3<f32>(0.0f, 0.0f, 1.0f));
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat0;
  let x_92 : vec4<f32> = u_xlat2;
  let x_95 : vec3<f32> = ((vec3<f32>(x_88.y, x_88.z, x_88.x) * vec3<f32>(1.0f, 0.0f, 0.0f)) + -(vec3<f32>(x_92.x, x_92.y, x_92.z)));
  let x_96 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_98 : vec4<f32> = u_xlat0;
  let x_100 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_98.x, x_98.z), vec2<f32>(x_100.x, x_100.z));
  let x_105 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_105);
  let x_108 : vec4<f32> = u_xlat0;
  let x_110 : vec4<f32> = u_xlat1;
  let x_112 : vec3<f32> = (vec3<f32>(x_108.x, x_108.y, x_108.z) * vec3<f32>(x_110.x, x_110.x, x_110.x));
  let x_113 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_115 : vec4<f32> = u_xlat0;
  let x_117 : vec2<f32> = u_xlat4;
  let x_120 : vec4<f32> = in_POSITION0;
  let x_122 : vec3<f32> = ((vec3<f32>(x_115.x, x_115.y, x_115.z) * vec3<f32>(x_117.x, x_117.x, x_117.x)) + vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec2<f32> = u_xlat4;
  let x_129 : vec4<f32> = u_xlat0;
  let x_131 : vec3<f32> = ((vec3<f32>(x_125.y, x_125.y, x_125.y) * vec3<f32>(0.0f, 1.0f, 0.0f)) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat0;
  let x_138 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_134.y, x_134.y, x_134.y, x_134.y) * x_138);
  let x_142 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_143 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_142 * vec4<f32>(x_143.x, x_143.x, x_143.x, x_143.x)) + x_146);
  let x_150 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_151 : vec4<f32> = u_xlat0;
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_150 * vec4<f32>(x_151.z, x_151.z, x_151.z, x_151.z)) + x_154);
  let x_156 : vec4<f32> = u_xlat1;
  let x_159 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat1 = (x_156 + x_159);
  let x_161 : vec4<f32> = u_xlat1;
  let x_164 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_161.y, x_161.y, x_161.y, x_161.y) * x_164);
  let x_167 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_168 : vec4<f32> = u_xlat1;
  let x_171 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_167 * vec4<f32>(x_168.x, x_168.x, x_168.x, x_168.x)) + x_171);
  let x_174 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_175 : vec4<f32> = u_xlat1;
  let x_178 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_174 * vec4<f32>(x_175.z, x_175.z, x_175.z, x_175.z)) + x_178);
  let x_181 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_182 : vec4<f32> = u_xlat1;
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_181 * vec4<f32>(x_182.w, x_182.w, x_182.w, x_182.w)) + x_185);
  let x_192 : vec4<f32> = u_xlat1;
  gl_Position = x_192;
  let x_197 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_197;
  let x_198 : f32 = u_xlat9;
  let x_201 : f32 = x_18.x_TreeBillboardDistances.w;
  u_xlat0.x = (x_198 / x_201);
  let x_205 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_205, 0.0f, 1.0f);
  let x_210 : f32 = x_18.x_TreeBillboardDistances.w;
  let x_211 : f32 = u_xlat9;
  u_xlatb3 = (x_210 < x_211);
  let x_215 : bool = u_xlatb3;
  if (x_215) {
    x_217 = 1.0f;
  } else {
    let x_222 : f32 = u_xlat0.x;
    x_217 = x_222;
  }
  let x_223 : f32 = x_217;
  vs_TEXCOORD0.z = x_223;
  let x_227 : f32 = u_xlat1.z;
  let x_229 : f32 = x_18.x_ProjectionParams.y;
  u_xlat0.x = (x_227 / x_229);
  let x_233 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_233) + 1.0f);
  let x_238 : f32 = u_xlat0.x;
  let x_240 : f32 = x_18.x_ProjectionParams.z;
  u_xlat0.x = (x_238 * x_240);
  let x_244 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_244, 0.0f);
  let x_248 : f32 = u_xlat0.x;
  let x_250 : f32 = x_18.unity_FogParams.x;
  u_xlat0.x = (x_248 * x_250);
  let x_254 : f32 = u_xlat0.x;
  let x_256 : f32 = u_xlat0.x;
  u_xlat0.x = (x_254 * -(x_256));
  let x_262 : f32 = u_xlat0.x;
  vs_TEXCOORD1 = exp2(x_262);
  let x_268 : f32 = in_TEXCOORD0.y;
  u_xlatb0 = (0.0f < x_268);
  let x_270 : bool = u_xlatb0;
  vs_TEXCOORD0.y = select(0.0f, 1.0f, x_270);
  let x_274 : f32 = in_TEXCOORD0.x;
  vs_TEXCOORD0.x = x_274;
  let x_277 : f32 = u_xlat1.y;
  let x_279 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.x = (x_277 * x_279);
  let x_283 : f32 = u_xlat0.x;
  u_xlat0.w = (x_283 * 0.5f);
  let x_287 : vec4<f32> = u_xlat1;
  let x_290 : vec2<f32> = (vec2<f32>(x_287.x, x_287.w) * vec2<f32>(0.5f, 0.5f));
  let x_291 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_290.x, x_291.y, x_290.y, x_291.w);
  let x_294 : vec4<f32> = u_xlat1;
  let x_295 : vec2<f32> = vec2<f32>(x_294.z, x_294.w);
  let x_296 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_296.x, x_296.y, x_295.x, x_295.y);
  let x_298 : vec4<f32> = u_xlat0;
  let x_300 : vec4<f32> = u_xlat0;
  let x_302 : vec2<f32> = (vec2<f32>(x_298.z, x_298.z) + vec2<f32>(x_300.x, x_300.w));
  let x_303 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_302.x, x_302.y, x_303.z, x_303.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD0, vs_TEXCOORD1);
}


