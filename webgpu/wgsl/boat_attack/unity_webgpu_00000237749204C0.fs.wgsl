diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_SourceTexArraySlice : u32,
  /* @offset(12) */
  x_SRGBRead : u32,
  /* @offset(16) */
  x_SRGBWrite : u32,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_SourceTex : texture_2d_array<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> u_xlatb1 : vec2<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb3 : vec3<bool>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec3<f32>;
  var x_128 : f32;
  var x_140 : f32;
  var x_152 : f32;
  var x_166 : vec3<f32>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_208 : f32;
  var x_220 : f32;
  var x_232 : f32;
  var x_246 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : u32 = x_14.x_SourceTexArraySlice;
  u_xlat0.z = f32(x_19);
  let x_26 : vec2<f32> = vs_TEXCOORD0;
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_40 : vec4<f32> = u_xlat0;
  let x_46 : f32 = x_14.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_SourceTex, sampler_LinearClamp, vec3<f32>(x_40.x, x_40.y, x_40.z).xy, i32(round(vec3<f32>(x_40.x, x_40.y, x_40.z).z)), x_46);
  u_xlat0 = x_47;
  let x_54 : u32 = x_14.x_SRGBRead;
  let x_57 : u32 = x_14.x_SRGBWrite;
  let x_59 : u32 = x_14.x_SRGBRead;
  let x_61 : u32 = x_14.x_SRGBRead;
  let x_68 : vec4<bool> = (bitcast<vec4<i32>>(vec4<u32>(x_54, x_57, x_59, x_61)) != vec4<i32>(0i, 0i, 0i, 0i));
  u_xlatb1 = vec2<bool>(x_68.x, x_68.y);
  let x_73 : bool = u_xlatb1.y;
  let x_75 : bool = u_xlatb1.x;
  u_xlatb1.x = (x_73 & x_75);
  let x_79 : bool = u_xlatb1.x;
  if (x_79) {
    let x_84 : vec4<f32> = u_xlat0;
    SV_Target0 = x_84;
    return;
  }
  let x_88 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_88.x, x_88.y, x_88.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_94 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_94.x, x_94.y, x_94.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_99 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_99 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_103 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(abs(x_103));
  let x_106 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_106 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_110 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_110);
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_118.x, x_118.y, x_118.z, x_118.x));
  u_xlatb3 = vec3<bool>(x_120.x, x_120.y, x_120.z);
  let x_124 : vec3<f32> = u_xlat1;
  hlslcc_movcTemp = x_124;
  let x_126 : bool = u_xlatb3.x;
  if (x_126) {
    let x_132 : f32 = u_xlat1.x;
    x_128 = x_132;
  } else {
    let x_135 : f32 = u_xlat2.x;
    x_128 = x_135;
  }
  let x_136 : f32 = x_128;
  hlslcc_movcTemp.x = x_136;
  let x_139 : bool = u_xlatb3.y;
  if (x_139) {
    let x_144 : f32 = u_xlat1.y;
    x_140 = x_144;
  } else {
    let x_147 : f32 = u_xlat2.y;
    x_140 = x_147;
  }
  let x_148 : f32 = x_140;
  hlslcc_movcTemp.y = x_148;
  let x_151 : bool = u_xlatb3.z;
  if (x_151) {
    let x_156 : f32 = u_xlat1.z;
    x_152 = x_156;
  } else {
    let x_159 : f32 = u_xlat2.z;
    x_152 = x_159;
  }
  let x_160 : f32 = x_152;
  hlslcc_movcTemp.z = x_160;
  let x_162 : vec3<f32> = hlslcc_movcTemp;
  u_xlat1 = x_162;
  let x_164 : u32 = x_14.x_SRGBRead;
  if ((x_164 != 0u)) {
    let x_169 : vec3<f32> = u_xlat1;
    x_166 = x_169;
  } else {
    let x_171 : vec4<f32> = u_xlat0;
    x_166 = vec3<f32>(x_171.x, x_171.y, x_171.z);
  }
  let x_173 : vec3<f32> = x_166;
  let x_174 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_176.x, x_176.y, x_176.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_181 : vec4<f32> = u_xlat0;
  u_xlat2 = log2(abs(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_185 * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_189 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_189);
  let x_191 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_191 * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_200 : vec4<f32> = u_xlat0;
  let x_202 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_200.x, x_200.y, x_200.z, x_200.x));
  u_xlatb3 = vec3<bool>(x_202.x, x_202.y, x_202.z);
  let x_205 : vec3<f32> = u_xlat1;
  hlslcc_movcTemp_1 = x_205;
  let x_207 : bool = u_xlatb3.x;
  if (x_207) {
    let x_212 : f32 = u_xlat1.x;
    x_208 = x_212;
  } else {
    let x_215 : f32 = u_xlat2.x;
    x_208 = x_215;
  }
  let x_216 : f32 = x_208;
  hlslcc_movcTemp_1.x = x_216;
  let x_219 : bool = u_xlatb3.y;
  if (x_219) {
    let x_224 : f32 = u_xlat1.y;
    x_220 = x_224;
  } else {
    let x_227 : f32 = u_xlat2.y;
    x_220 = x_227;
  }
  let x_228 : f32 = x_220;
  hlslcc_movcTemp_1.y = x_228;
  let x_231 : bool = u_xlatb3.z;
  if (x_231) {
    let x_236 : f32 = u_xlat1.z;
    x_232 = x_236;
  } else {
    let x_239 : f32 = u_xlat2.z;
    x_232 = x_239;
  }
  let x_240 : f32 = x_232;
  hlslcc_movcTemp_1.z = x_240;
  let x_242 : vec3<f32> = hlslcc_movcTemp_1;
  u_xlat1 = x_242;
  let x_244 : u32 = x_14.x_SRGBWrite;
  if ((x_244 != 0u)) {
    let x_249 : vec3<f32> = u_xlat1;
    x_246 = x_249;
  } else {
    let x_251 : vec4<f32> = u_xlat0;
    x_246 = vec3<f32>(x_251.x, x_251.y, x_251.z);
  }
  let x_253 : vec3<f32> = x_246;
  let x_254 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_258 : f32 = u_xlat0.w;
  SV_Target0.w = x_258;
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


