diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_Grain_Params : vec2<f32>,
  /* @offset(16) */
  x_Grain_TilingParams : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearRepeat : sampler;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_154 : f32;
  var x_167 : f32;
  var x_180 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_Grain_TilingParams;
  let x_26 : vec4<f32> = x_17.x_Grain_TilingParams;
  let x_28 : vec2<f32> = ((x_13 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_28.x, x_28.y, x_29.z);
  let x_41 : vec3<f32> = u_xlat0;
  let x_48 : f32 = x_17.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_41.x, x_41.y), x_48);
  u_xlat0.x = x_49.w;
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = (x_55 + -0.5f);
  let x_60 : f32 = u_xlat0.x;
  let x_62 : f32 = u_xlat0.x;
  u_xlat0.x = (x_60 + x_62);
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_17.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_71, x_73);
  u_xlat3 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_77 : vec3<f32> = u_xlat0;
  let x_79 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_77.x, x_77.x, x_77.x) * x_79);
  let x_81 : vec3<f32> = u_xlat1;
  let x_85 : vec2<f32> = x_17.x_Grain_Params;
  u_xlat1 = (x_81 * vec3<f32>(x_85.x, x_85.x, x_85.x));
  let x_88 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_88, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_96 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_96);
  let x_101 : f32 = x_17.x_Grain_Params.y;
  let x_103 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_101 * -(x_103)) + 1.0f);
  let x_109 : vec3<f32> = u_xlat1;
  let x_110 : vec3<f32> = u_xlat0;
  let x_113 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_109 * vec3<f32>(x_110.x, x_110.x, x_110.x)) + x_113);
  let x_115 : vec3<f32> = u_xlat0;
  u_xlat1 = log2(abs(x_115));
  let x_118 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_118 * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_122 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_122);
  let x_124 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_124 * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_132 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_132 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_143 : vec3<f32> = u_xlat0;
  let x_146 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_143.x, x_143.y, x_143.z, x_143.x));
  u_xlatb0 = vec3<bool>(x_146.x, x_146.y, x_146.z);
  let x_152 : bool = u_xlatb0.x;
  if (x_152) {
    let x_158 : f32 = u_xlat2.x;
    x_154 = x_158;
  } else {
    let x_161 : f32 = u_xlat1.x;
    x_154 = x_161;
  }
  let x_162 : f32 = x_154;
  SV_Target0.x = x_162;
  let x_166 : bool = u_xlatb0.y;
  if (x_166) {
    let x_171 : f32 = u_xlat2.y;
    x_167 = x_171;
  } else {
    let x_174 : f32 = u_xlat1.y;
    x_167 = x_174;
  }
  let x_175 : f32 = x_167;
  SV_Target0.y = x_175;
  let x_179 : bool = u_xlatb0.z;
  if (x_179) {
    let x_184 : f32 = u_xlat2.z;
    x_180 = x_184;
  } else {
    let x_187 : f32 = u_xlat1.z;
    x_180 = x_187;
  }
  let x_188 : f32 = x_180;
  SV_Target0.z = x_188;
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


