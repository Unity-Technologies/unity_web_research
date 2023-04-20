diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_SRGBRead : u32,
  /* @offset(12) */
  x_SRGBWrite : u32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_SourceTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlatb1 : vec2<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb3 : vec3<bool>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec3<f32>;
  var x_117 : f32;
  var x_130 : f32;
  var x_143 : f32;
  var x_157 : vec3<f32>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_199 : f32;
  var x_211 : f32;
  var x_223 : f32;
  var x_237 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_27.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_SourceTex, sampler_LinearClamp, x_23, x_33);
  u_xlat0 = x_34;
  let x_42 : u32 = x_27.x_SRGBRead;
  let x_45 : u32 = x_27.x_SRGBWrite;
  let x_47 : u32 = x_27.x_SRGBRead;
  let x_49 : u32 = x_27.x_SRGBRead;
  let x_56 : vec4<bool> = (bitcast<vec4<i32>>(vec4<u32>(x_42, x_45, x_47, x_49)) != vec4<i32>(0i, 0i, 0i, 0i));
  u_xlatb1 = vec2<bool>(x_56.x, x_56.y);
  let x_61 : bool = u_xlatb1.y;
  let x_63 : bool = u_xlatb1.x;
  u_xlatb1.x = (x_61 & x_63);
  let x_67 : bool = u_xlatb1.x;
  if (x_67) {
    let x_72 : vec4<f32> = u_xlat0;
    SV_Target0 = x_72;
    return;
  }
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_77.x, x_77.y, x_77.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_83 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_83.x, x_83.y, x_83.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_88 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_88 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(abs(x_92));
  let x_95 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_95 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_99 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_99);
  let x_107 : vec4<f32> = u_xlat0;
  let x_109 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_107.x, x_107.y, x_107.z, x_107.x));
  u_xlatb3 = vec3<bool>(x_109.x, x_109.y, x_109.z);
  let x_113 : vec3<f32> = u_xlat1;
  hlslcc_movcTemp = x_113;
  let x_115 : bool = u_xlatb3.x;
  if (x_115) {
    let x_122 : f32 = u_xlat1.x;
    x_117 = x_122;
  } else {
    let x_125 : f32 = u_xlat2.x;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  hlslcc_movcTemp.x = x_126;
  let x_129 : bool = u_xlatb3.y;
  if (x_129) {
    let x_134 : f32 = u_xlat1.y;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat2.y;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  hlslcc_movcTemp.y = x_138;
  let x_142 : bool = u_xlatb3.z;
  if (x_142) {
    let x_147 : f32 = u_xlat1.z;
    x_143 = x_147;
  } else {
    let x_150 : f32 = u_xlat2.z;
    x_143 = x_150;
  }
  let x_151 : f32 = x_143;
  hlslcc_movcTemp.z = x_151;
  let x_153 : vec3<f32> = hlslcc_movcTemp;
  u_xlat1 = x_153;
  let x_155 : u32 = x_27.x_SRGBRead;
  if ((x_155 != 0u)) {
    let x_160 : vec3<f32> = u_xlat1;
    x_157 = x_160;
  } else {
    let x_162 : vec4<f32> = u_xlat0;
    x_157 = vec3<f32>(x_162.x, x_162.y, x_162.z);
  }
  let x_164 : vec3<f32> = x_157;
  let x_165 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_167 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_167.x, x_167.y, x_167.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat2 = log2(abs(vec3<f32>(x_172.x, x_172.y, x_172.z)));
  let x_176 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_176 * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_180 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_180);
  let x_182 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_182 * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_191 : vec4<f32> = u_xlat0;
  let x_193 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_191.x, x_191.y, x_191.z, x_191.x));
  u_xlatb3 = vec3<bool>(x_193.x, x_193.y, x_193.z);
  let x_196 : vec3<f32> = u_xlat1;
  hlslcc_movcTemp_1 = x_196;
  let x_198 : bool = u_xlatb3.x;
  if (x_198) {
    let x_203 : f32 = u_xlat1.x;
    x_199 = x_203;
  } else {
    let x_206 : f32 = u_xlat2.x;
    x_199 = x_206;
  }
  let x_207 : f32 = x_199;
  hlslcc_movcTemp_1.x = x_207;
  let x_210 : bool = u_xlatb3.y;
  if (x_210) {
    let x_215 : f32 = u_xlat1.y;
    x_211 = x_215;
  } else {
    let x_218 : f32 = u_xlat2.y;
    x_211 = x_218;
  }
  let x_219 : f32 = x_211;
  hlslcc_movcTemp_1.y = x_219;
  let x_222 : bool = u_xlatb3.z;
  if (x_222) {
    let x_227 : f32 = u_xlat1.z;
    x_223 = x_227;
  } else {
    let x_230 : f32 = u_xlat2.z;
    x_223 = x_230;
  }
  let x_231 : f32 = x_223;
  hlslcc_movcTemp_1.z = x_231;
  let x_233 : vec3<f32> = hlslcc_movcTemp_1;
  u_xlat1 = x_233;
  let x_235 : u32 = x_27.x_SRGBWrite;
  if ((x_235 != 0u)) {
    let x_240 : vec3<f32> = u_xlat1;
    x_237 = x_240;
  } else {
    let x_242 : vec4<f32> = u_xlat0;
    x_237 = vec3<f32>(x_242.x, x_242.y, x_242.z);
  }
  let x_244 : vec3<f32> = x_237;
  let x_245 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_249 : f32 = u_xlat0.w;
  SV_Target0.w = x_249;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


