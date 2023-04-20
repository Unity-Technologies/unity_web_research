diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_SourceTexLowMip : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> u_xlat6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_SourceTexLowMip, sampler_LinearClamp, x_23, x_33);
  u_xlat0 = x_34;
  let x_36 : vec4<f32> = u_xlat0;
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = (vec3<f32>(x_36.w, x_36.w, x_36.w) * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_48 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_26.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_48, x_50);
  u_xlat1 = x_51;
  let x_52 : vec4<f32> = u_xlat1;
  let x_54 : vec4<f32> = u_xlat1;
  let x_56 : vec3<f32> = (vec3<f32>(x_52.w, x_52.w, x_52.w) * vec3<f32>(x_54.x, x_54.y, x_54.z));
  let x_57 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec3<f32> = (vec3<f32>(x_59.x, x_59.y, x_59.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_66 : vec4<f32> = u_xlat0;
  let x_69 : vec4<f32> = u_xlat1;
  let x_72 : vec3<f32> = ((vec3<f32>(x_66.x, x_66.y, x_66.z) * vec3<f32>(8.0f, 8.0f, 8.0f)) + -(vec3<f32>(x_69.x, x_69.y, x_69.z)));
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_72.x, x_72.y, x_72.z, x_73.w);
  let x_78 : vec4<f32> = x_26.x_Params;
  let x_80 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = u_xlat1;
  let x_85 : vec3<f32> = ((vec3<f32>(x_78.x, x_78.x, x_78.x) * vec3<f32>(x_80.x, x_80.y, x_80.z)) + vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat0;
  let x_92 : vec3<f32> = (vec3<f32>(x_88.x, x_88.y, x_88.z) * vec3<f32>(0.125f, 0.125f, 0.125f));
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_99 : f32 = u_xlat0.y;
  let x_101 : f32 = u_xlat0.x;
  u_xlat6 = max(x_99, x_101);
  let x_105 : f32 = u_xlat0.z;
  u_xlat1.x = max(x_105, 0.00000999999974737875f);
  let x_109 : f32 = u_xlat6;
  let x_111 : f32 = u_xlat1.x;
  u_xlat6 = max(x_109, x_111);
  let x_113 : f32 = u_xlat6;
  u_xlat6 = (x_113 * 255.0f);
  let x_116 : f32 = u_xlat6;
  u_xlat6 = ceil(x_116);
  let x_118 : f32 = u_xlat6;
  u_xlat6 = (x_118 * 0.0039215688593685627f);
  let x_123 : vec4<f32> = u_xlat0;
  let x_125 : f32 = u_xlat6;
  let x_127 : vec3<f32> = (vec3<f32>(x_123.x, x_123.y, x_123.z) / vec3<f32>(x_125, x_125, x_125));
  let x_128 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : f32 = u_xlat6;
  SV_Target0.w = x_130;
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


