diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(1) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(3) var sampler_PointRepeat : sampler;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb3 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_141 : f32;
  var x_154 : f32;
  var x_167 : f32;
  var x_215 : f32;
  var x_228 : f32;
  var x_240 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_Dithering_Params;
  let x_26 : vec4<f32> = x_17.x_Dithering_Params;
  let x_28 : vec2<f32> = ((x_13 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_28.x, x_28.y, x_29.z);
  let x_41 : vec3<f32> = u_xlat0;
  let x_48 : f32 = x_17.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_41.x, x_41.y), x_48);
  u_xlat0.x = x_49.w;
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_55 * 2.0f) + -1.0f);
  let x_63 : f32 = u_xlat0.x;
  u_xlat3.x = (-(abs(x_63)) + 1.0f);
  let x_74 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_74 >= 0.0f);
  let x_80 : bool = u_xlatb0.x;
  u_xlat0.x = select(-1.0f, 1.0f, x_80);
  let x_84 : f32 = u_xlat3.x;
  u_xlat3.x = sqrt(x_84);
  let x_88 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_88) + 1.0f);
  let x_93 : f32 = u_xlat3.x;
  let x_95 : f32 = u_xlat0.x;
  u_xlat0.x = (x_93 * x_95);
  let x_103 : vec2<f32> = vs_TEXCOORD0;
  let x_105 : f32 = x_17.x_GlobalMipBias.x;
  let x_106 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_103, x_105);
  u_xlat3 = vec3<f32>(x_106.x, x_106.y, x_106.z);
  let x_109 : vec3<f32> = u_xlat3;
  u_xlat1 = log2(abs(x_109));
  let x_112 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_112 * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_116 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_116);
  let x_118 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_118 * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_126 : vec3<f32> = u_xlat3;
  u_xlat2 = (x_126 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_133 : vec3<f32> = u_xlat3;
  let x_136 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f) >= vec4<f32>(x_133.x, x_133.y, x_133.z, x_133.z));
  u_xlatb3 = vec3<bool>(x_136.x, x_136.y, x_136.z);
  let x_139 : bool = u_xlatb3.x;
  if (x_139) {
    let x_145 : f32 = u_xlat2.x;
    x_141 = x_145;
  } else {
    let x_148 : f32 = u_xlat1.x;
    x_141 = x_148;
  }
  let x_149 : f32 = x_141;
  u_xlat3.x = x_149;
  let x_153 : bool = u_xlatb3.y;
  if (x_153) {
    let x_158 : f32 = u_xlat2.y;
    x_154 = x_158;
  } else {
    let x_161 : f32 = u_xlat1.y;
    x_154 = x_161;
  }
  let x_162 : f32 = x_154;
  u_xlat3.y = x_162;
  let x_166 : bool = u_xlatb3.z;
  if (x_166) {
    let x_171 : f32 = u_xlat2.z;
    x_167 = x_171;
  } else {
    let x_174 : f32 = u_xlat1.z;
    x_167 = x_174;
  }
  let x_175 : f32 = x_167;
  u_xlat3.z = x_175;
  let x_177 : vec3<f32> = u_xlat0;
  let x_182 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_177.x, x_177.x, x_177.x) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + x_182);
  let x_184 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_184 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_188 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_188 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_192 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(abs(x_192));
  let x_195 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_195 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_199 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_199);
  let x_201 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_201 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_207 : vec3<f32> = u_xlat0;
  let x_209 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_207.x, x_207.y, x_207.z, x_207.x));
  u_xlatb0 = vec3<bool>(x_209.x, x_209.y, x_209.z);
  let x_214 : bool = u_xlatb0.x;
  if (x_214) {
    let x_219 : f32 = u_xlat2.x;
    x_215 = x_219;
  } else {
    let x_222 : f32 = u_xlat1.x;
    x_215 = x_222;
  }
  let x_223 : f32 = x_215;
  SV_Target0.x = x_223;
  let x_227 : bool = u_xlatb0.y;
  if (x_227) {
    let x_232 : f32 = u_xlat2.y;
    x_228 = x_232;
  } else {
    let x_235 : f32 = u_xlat1.y;
    x_228 = x_235;
  }
  let x_236 : f32 = x_228;
  SV_Target0.y = x_236;
  let x_239 : bool = u_xlatb0.z;
  if (x_239) {
    let x_244 : f32 = u_xlat2.z;
    x_240 = x_244;
  } else {
    let x_247 : f32 = u_xlat1.z;
    x_240 = x_247;
  }
  let x_248 : f32 = x_240;
  SV_Target0.z = x_248;
  SV_Target0.w = 1.0f;
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


