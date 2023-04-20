diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_BlitMipLevel : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_PointClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_85 : f32;
  var x_98 : f32;
  var x_111 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_31 : f32 = x_26.x_BlitMipLevel;
  let x_32 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_PointClamp, x_23, x_31);
  u_xlat0 = x_32;
  let x_36 : vec4<f32> = u_xlat0;
  u_xlat1 = log2(abs(vec3<f32>(x_36.x, x_36.y, x_36.z)));
  let x_40 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_40 * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_44 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_44);
  let x_46 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_46 * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_54 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_54.x, x_54.y, x_54.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_66 : vec4<f32> = u_xlat0;
  let x_69 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_66.x, x_66.y, x_66.z, x_66.x));
  u_xlatb0 = vec3<bool>(x_69.x, x_69.y, x_69.z);
  let x_77 : f32 = u_xlat0.w;
  SV_Target0.w = x_77;
  let x_83 : bool = u_xlatb0.x;
  if (x_83) {
    let x_89 : f32 = u_xlat2.x;
    x_85 = x_89;
  } else {
    let x_92 : f32 = u_xlat1.x;
    x_85 = x_92;
  }
  let x_93 : f32 = x_85;
  SV_Target0.x = x_93;
  let x_97 : bool = u_xlatb0.y;
  if (x_97) {
    let x_102 : f32 = u_xlat2.y;
    x_98 = x_102;
  } else {
    let x_105 : f32 = u_xlat1.y;
    x_98 = x_105;
  }
  let x_106 : f32 = x_98;
  SV_Target0.y = x_106;
  let x_110 : bool = u_xlatb0.z;
  if (x_110) {
    let x_115 : f32 = u_xlat2.z;
    x_111 = x_115;
  } else {
    let x_118 : f32 = u_xlat1.z;
    x_111 = x_118;
  }
  let x_119 : f32 = x_111;
  SV_Target0.z = x_119;
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


