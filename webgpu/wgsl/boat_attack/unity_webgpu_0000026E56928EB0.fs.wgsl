diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_77 : f32;
  var x_92 : f32;
  var x_105 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_33);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_38 : vec3<f32> = u_xlat0;
  u_xlat1 = log2(abs(x_38));
  let x_41 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_41 * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_45 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_45);
  let x_47 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_47 * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_55 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_55 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_66 : vec3<f32> = u_xlat0;
  let x_69 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_66.x, x_66.y, x_66.z, x_66.x));
  u_xlatb0 = vec3<bool>(x_69.x, x_69.y, x_69.z);
  let x_75 : bool = u_xlatb0.x;
  if (x_75) {
    let x_82 : f32 = u_xlat2.x;
    x_77 = x_82;
  } else {
    let x_85 : f32 = u_xlat1.x;
    x_77 = x_85;
  }
  let x_86 : f32 = x_77;
  SV_Target0.x = x_86;
  let x_91 : bool = u_xlatb0.y;
  if (x_91) {
    let x_96 : f32 = u_xlat2.y;
    x_92 = x_96;
  } else {
    let x_99 : f32 = u_xlat1.y;
    x_92 = x_99;
  }
  let x_100 : f32 = x_92;
  SV_Target0.y = x_100;
  let x_104 : bool = u_xlatb0.z;
  if (x_104) {
    let x_109 : f32 = u_xlat2.z;
    x_105 = x_109;
  } else {
    let x_112 : f32 = u_xlat1.z;
    x_105 = x_112;
  }
  let x_113 : f32 = x_105;
  SV_Target0.z = x_113;
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


