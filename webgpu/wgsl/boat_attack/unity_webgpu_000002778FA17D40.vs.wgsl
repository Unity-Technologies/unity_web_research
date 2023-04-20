diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_ScreenParams : vec4<f32>,
  /* @offset(16) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(80) */
  glstate_matrix_projection : mat4x4<f32>,
  /* @offset(144) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(208) */
  x_Color : vec4<f32>,
  /* @offset(224) */
  x_ClipRect : vec4<f32>,
  /* @offset(240) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(256) */
  x_UIMaskSoftnessX : f32,
  /* @offset(260) */
  x_UIMaskSoftnessY : f32,
  /* @offset(264) */
  x_UIVertexColorAlwaysGammaSpace : i32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatb2 : vec3<bool>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_143 : f32;
  var x_156 : f32;
  var x_169 : f32;
  var x_186 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
  let x_26 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_40 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_40 + x_43);
  let x_46 : vec4<f32> = u_xlat0;
  let x_49 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_46.y, x_46.y, x_46.y, x_46.y) * x_49);
  let x_52 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_53 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_52 * vec4<f32>(x_53.x, x_53.x, x_53.x, x_53.x)) + x_56);
  let x_59 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_60 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_59 * vec4<f32>(x_60.z, x_60.z, x_60.z, x_60.z)) + x_63);
  let x_66 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_67 : vec4<f32> = u_xlat0;
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_66 * vec4<f32>(x_67.w, x_67.w, x_67.w, x_67.w)) + x_70);
  let x_78 : vec4<f32> = u_xlat0;
  gl_Position = x_78;
  let x_83 : vec4<f32> = in_COLOR0;
  let x_90 : vec3<f32> = ((vec3<f32>(x_83.x, x_83.y, x_83.z) * vec3<f32>(0.26588499546051025391f, 0.26588499546051025391f, 0.26588499546051025391f)) + vec3<f32>(0.73658400774002075195f, 0.73658400774002075195f, 0.73658400774002075195f));
  let x_91 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_93 : vec4<f32> = in_COLOR0;
  let x_95 : vec4<f32> = u_xlat0;
  let x_100 : vec3<f32> = ((vec3<f32>(x_93.x, x_93.y, x_93.z) * vec3<f32>(x_95.x, x_95.y, x_95.z)) + vec3<f32>(-0.0098018404096364975f, -0.0098018404096364975f, -0.0098018404096364975f));
  let x_101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_103 : vec4<f32> = in_COLOR0;
  let x_105 : vec4<f32> = u_xlat0;
  let x_110 : vec3<f32> = ((vec3<f32>(x_103.x, x_103.y, x_103.z) * vec3<f32>(x_105.x, x_105.y, x_105.z)) + vec3<f32>(0.00319697009399533272f, 0.00319697009399533272f, 0.00319697009399533272f));
  let x_111 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_113 : vec4<f32> = in_COLOR0;
  let x_120 : vec3<f32> = ((vec3<f32>(x_113.x, x_113.y, x_113.z) * vec3<f32>(0.08497100323438644409f, 0.08497100323438644409f, 0.08497100323438644409f)) + vec3<f32>(-0.00016302900621667504f, -0.00016302900621667504f, -0.00016302900621667504f));
  let x_121 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_127 : vec4<f32> = in_COLOR0;
  let x_133 : vec4<bool> = (vec4<f32>(x_127.x, x_127.y, x_127.z, x_127.x) < vec4<f32>(0.07254900038242340088f, 0.07254900038242340088f, 0.07254900038242340088f, 0.0f));
  u_xlatb2 = vec3<bool>(x_133.x, x_133.y, x_133.z);
  let x_137 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_137;
  let x_141 : bool = u_xlatb2.x;
  if (x_141) {
    let x_148 : f32 = u_xlat1.x;
    x_143 = x_148;
  } else {
    let x_151 : f32 = u_xlat0.x;
    x_143 = x_151;
  }
  let x_152 : f32 = x_143;
  hlslcc_movcTemp.x = x_152;
  let x_155 : bool = u_xlatb2.y;
  if (x_155) {
    let x_160 : f32 = u_xlat1.y;
    x_156 = x_160;
  } else {
    let x_163 : f32 = u_xlat0.y;
    x_156 = x_163;
  }
  let x_164 : f32 = x_156;
  hlslcc_movcTemp.y = x_164;
  let x_168 : bool = u_xlatb2.z;
  if (x_168) {
    let x_173 : f32 = u_xlat1.z;
    x_169 = x_173;
  } else {
    let x_176 : f32 = u_xlat0.z;
    x_169 = x_176;
  }
  let x_177 : f32 = x_169;
  hlslcc_movcTemp.z = x_177;
  let x_179 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_179;
  let x_183 : i32 = x_18.x_UIVertexColorAlwaysGammaSpace;
  if ((x_183 != 0i)) {
    let x_189 : vec4<f32> = u_xlat0;
    x_186 = vec3<f32>(x_189.x, x_189.y, x_189.z);
  } else {
    let x_192 : vec4<f32> = in_COLOR0;
    x_186 = vec3<f32>(x_192.x, x_192.y, x_192.z);
  }
  let x_194 : vec3<f32> = x_186;
  let x_195 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_200 : f32 = in_COLOR0.w;
  u_xlat1.w = x_200;
  let x_203 : vec4<f32> = u_xlat1;
  let x_206 : vec4<f32> = x_18.x_Color;
  vs_COLOR0 = (x_203 * x_206);
  let x_213 : vec2<f32> = in_TEXCOORD0;
  let x_216 : vec4<f32> = x_18.x_MainTex_ST;
  let x_220 : vec4<f32> = x_18.x_MainTex_ST;
  vs_TEXCOORD0 = ((x_213 * vec2<f32>(x_216.x, x_216.y)) + vec2<f32>(x_220.z, x_220.w));
  let x_224 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD1 = x_224;
  let x_226 : vec4<f32> = x_18.x_ScreenParams;
  let x_229 : vec4<f32> = x_18.glstate_matrix_projection[1i];
  let x_231 : vec2<f32> = (vec2<f32>(x_226.y, x_226.y) * vec2<f32>(x_229.x, x_229.y));
  let x_232 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_232.w);
  let x_235 : vec4<f32> = x_18.glstate_matrix_projection[0i];
  let x_238 : vec4<f32> = x_18.x_ScreenParams;
  let x_241 : vec4<f32> = u_xlat0;
  let x_243 : vec2<f32> = ((vec2<f32>(x_235.x, x_235.y) * vec2<f32>(x_238.x, x_238.x)) + vec2<f32>(x_241.x, x_241.y));
  let x_244 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_243.x, x_243.y, x_244.z, x_244.w);
  let x_246 : vec4<f32> = u_xlat0;
  let x_248 : vec4<f32> = u_xlat0;
  let x_251 : vec2<f32> = (vec2<f32>(x_246.w, x_246.w) / abs(vec2<f32>(x_248.x, x_248.y)));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_251.y, x_252.z, x_252.w);
  let x_257 : f32 = x_18.x_UIMaskSoftnessX;
  let x_260 : f32 = x_18.x_UIMaskSoftnessY;
  let x_265 : vec4<f32> = u_xlat0;
  let x_268 : vec2<f32> = ((vec2<f32>(x_257, x_260) * vec2<f32>(0.25f, 0.25f)) + abs(vec2<f32>(x_265.x, x_265.y)));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_269.z, x_269.w);
  let x_272 : vec4<f32> = u_xlat0;
  let x_274 : vec2<f32> = (vec2<f32>(0.25f, 0.25f) / vec2<f32>(x_272.x, x_272.y));
  let x_275 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_275.x, x_275.y, x_274.x, x_274.y);
  let x_279 : vec4<f32> = x_18.x_ClipRect;
  u_xlat0 = max(x_279, vec4<f32>(-20000000000.0f, -20000000000.0f, -20000000000.0f, -20000000000.0f));
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_283, vec4<f32>(20000000000.0f, 20000000000.0f, 20000000000.0f, 20000000000.0f));
  let x_287 : vec4<f32> = in_POSITION0;
  let x_292 : vec4<f32> = u_xlat0;
  let x_295 : vec2<f32> = ((vec2<f32>(x_287.x, x_287.y) * vec2<f32>(2.0f, 2.0f)) + -(vec2<f32>(x_292.x, x_292.y)));
  let x_296 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_295.x, x_295.y, x_296.z, x_296.w);
  let x_298 : vec4<f32> = u_xlat0;
  let x_301 : vec4<f32> = u_xlat0;
  let x_303 : vec2<f32> = (-(vec2<f32>(x_298.z, x_298.w)) + vec2<f32>(x_301.x, x_301.y));
  let x_304 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_303.x, x_303.y, x_304.z, x_304.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD0, vs_TEXCOORD2);
}


